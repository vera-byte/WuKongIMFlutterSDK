import 'dart:convert';

import 'package:isar/isar.dart';
import 'package:wkim_flutter_sdk/common/logs.dart';
import 'package:wkim_flutter_sdk/core/interface/message_manager_interface.dart';
import 'package:wkim_flutter_sdk/proto/packet.dart';
import 'package:wkim_flutter_sdk/type/const.dart';
import 'package:wkim_flutter_sdk/wkim.dart';
import 'package:wkim_flutter_sdk_example/db/wk_db.dart';
import 'package:wkim_flutter_sdk_example/entity/channel.dart';
import 'package:wkim_flutter_sdk_example/entity/conversation.dart';
import 'package:wkim_flutter_sdk_example/entity/message.dart';

class DefaultWKMessageManager extends WKMessageManager {
  DefaultWKMessageManager._privateConstructor();
  static final DefaultWKMessageManager _instance = DefaultWKMessageManager._privateConstructor();
  static DefaultWKMessageManager get shared => _instance;
  final _isar = WKDB.shared.getDB()!;

  Stream<List<WKMessage>> getChatMessages(String channelId, int channelType) {
    return _isar.wKMessages.filter().channelIdEqualTo(channelId).channelTypeEqualTo(channelType).sortByTimestampDesc().watch(fireImmediately: true);
  }

  @override
  Future<RecvPacket> saveRecvMsg(RecvPacket recvMsg) async {
    print("用户实现saveRecvMsg");

    try {
      WKMessage msg = WKMessage()
        ..channelId = recvMsg.channelId
        ..channelType = recvMsg.channelType
        ..clientMsgNo = recvMsg.clientMsgNO
        ..timestamp = recvMsg.messageTime
        ..messageSeq = recvMsg.messageSeq
        ..setting = recvMsg.setting.encode()
        ..header.syncOnce = recvMsg.header.syncOnce
        ..header.noPersist = recvMsg.header.noPersist
        ..header.redDot = recvMsg.header.showUnread
        ..messageIdStr = recvMsg.messageID.toString()
        ..expireTime = recvMsg.expire
        ..status = WKSendMsgResult.sendSuccess
        ..topicID = recvMsg.topic
        ..fromUid = recvMsg.fromUID;
      if (msg.expireTime > 0) {
        msg.expireTimestamp = msg.expireTime + msg.timestamp;
      }
      dynamic contentJson = jsonDecode(recvMsg.payload);
      msg.payload = Payload.fromJson(contentJson);
      msg.contentType = WKDBConst.readInt(contentJson, 'type');
      msg.isDeleted = _isDeletedMsg(contentJson);
      msg.searchableWord = contentJson["content"];
      if (msg.isDeleted == 0 && !msg.header.noPersist && msg.contentType != WkMessageContentType.insideMsg) {
        // int row = await WKIM.shared.messageManager.saveMsg(msg);
        // msg.clientSeq = row;
        // WKUIConversationMsg? uiMsg = await WKIM.shared.conversationManager.saveWithLiMMsg(msg, msg.header.redDot ? 1 : 0);
        // if (uiMsg != null) {
        //   List<WKUIConversationMsg> list = [];
        //   list.add(uiMsg);
        //   WKIM.shared.conversationManager.setRefreshUIMsgs(list);
        // }
        /// 存储前必须查询数据库是否存在 否则唯一索引冲突
        WKConversation conv = await wk.conversationManager.getConversationWithAsync(msg.channelId, msg.channelType);
        if (msg.channelType == WKChannelType.communityTopic && msg.channelId != '') {
          if (msg.channelId.contains("@")) {
            var str = msg.channelId.split("@");
            conv.parentChannelID = str[0];
            conv.parentChannelType = WKChannelType.community;
          }
        }
        conv.lastMsgTimestamp = msg.timestamp;
        conv.channelId = msg.channelId;
        conv.channelType = msg.channelType;
        conv.lastClientMsgNo = msg.clientMsgNo;
        conv.lastMsgSeq = msg.messageSeq;
        conv.unreadCount = msg.readed;
        // conv.lastMessage.value = msg;
        WKChannel channel = WKChannel(msg.channelId, msg.channelType);
        channel = await wk.channelManager.getChannelWithAsync(channel.channelId, channel.channelType, true);

        /// 确定关系
        conv.channel.value = channel;
        if (msg.channelType == WKChannelType.group) {
          /// 群的时候不一样
          WKChannel fromChannel = WKChannel(msg.fromUid, 1);
          fromChannel = await wk.channelManager.getChannelWithAsync(fromChannel.channelId, fromChannel.channelType, true);
          msg.fromChannel.value = fromChannel;
        }

        /// 确定关系
        msg.channel.value = channel;

        /// 确定关系
        msg.conversation.value = conv;
        _isar.writeTxnSync(() {
          _isar.wKMessages.putByMessageIdStrSync(msg);
        });

        /// end 存储完成
      } else {
        Logs.debug('消息不能存库:is_deleted=${msg.isDeleted},no_persist=${msg.header.noPersist},content_type:${msg.contentType}');
      }

      return Future.value(recvMsg);
    } catch (e) {
      rethrow;
    }
  }

  @override
  syncMessage(List msgs) async {
    try {
      if (msgs is List<WKMessage>) {
        // final newRecentMsgs = await Future.wait(msgs.map((e) async {
        //   /// 更新会话
        //   // super.wk.conversationManager.update(WKConversation(e.channelId, e.channelType));
        //   return e;
        // }));
        _isar.writeTxnSync(() {
          _isar.wKMessages.putAllByMessageIdStrSync(msgs);
        });
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  getLastMessage(String messageId) {
    WKMessage msg = WKMessage()..messageIdStr = messageId;
    final findMsg = _isar.wKMessages.where().filter().clientMsgNoEqualTo(messageId).findFirstSync();
    if (findMsg != null) {
      return findMsg;
    } else {
      return msg;
    }
  }

  int _isDeletedMsg(dynamic jsonObject) {
    int isDelete = 0;
    if (jsonObject != null) {
      var visibles = jsonObject['visibles'];
      if (visibles != null && visibles is List) {
        bool isIncludeLoginUser = false;
        for (int i = 0, size = visibles.length; i < size; i++) {
          if (visibles[i] == WKIMCore.shared.options.uid) {
            isIncludeLoginUser = true;
            break;
          }
        }
        isDelete = isIncludeLoginUser ? 0 : 1;
      }
    }
    return isDelete;
  }

  /// 监听最后一条消息(会话显示最后条消息)
  Stream<List<WKMessage>>? streamLastMessage(String channelId, int channelType) {
    return _isar.wKMessages.filter().channelIdEqualTo(channelId).channelTypeEqualTo(channelType).sortByTimestampDesc().limit(1).watch();
  }
}
