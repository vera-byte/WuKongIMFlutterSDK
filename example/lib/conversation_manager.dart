import 'package:isar/isar.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:wkim_flutter_sdk/common/logs.dart';
import 'package:wkim_flutter_sdk/core/interface/conversation_manager_interface.dart';
import 'package:wkim_flutter_sdk_example/db/wk_db.dart';
import 'package:wkim_flutter_sdk_example/entity/channel.dart';
import 'package:wkim_flutter_sdk_example/entity/conversation.dart';
import 'package:wkim_flutter_sdk_example/entity/message.dart';
import 'package:wkim_flutter_sdk_example/service/http.dart';

class ConversationViewModel {
  final WKConversation conversation;
  final WKMessage? lastMessage;
  final WKChannel? channel;

  ConversationViewModel({
    required this.conversation,
    required this.lastMessage,
    required this.channel,
  });
}

class DefaultWKConversationManager extends WKConversationManager {
  DefaultWKConversationManager._privateConstructor();
  static final DefaultWKConversationManager _instance = DefaultWKConversationManager._privateConstructor();
  static DefaultWKConversationManager get shared => _instance;
  static final _isar = WKDB.shared.getDB()!;

  /// 获取所有会话列表
  Stream<List<WKConversation>> getAll() {
    /// 排除自己
    return _isar.wKConversations.where().channelIdNotEqualToAnyChannelType(super.wk.options.uid!).sortByLastMsgTimestampDesc().build().watch(fireImmediately: true).distinct();
  }

  /// 实现了列表自动刷新，为了最后一条消息时间重新计算
  Stream<List<WKConversation>> getAllWithTimerRefresh() {
    final isarStream = _isar.wKConversations.where().channelIdNotEqualToAnyChannelType(super.wk.options.uid!).sortByLastMsgTimestampDesc().build().watch(fireImmediately: true).distinct();

    // 每 30 秒触发一次刷新流
    final timerStream = Stream.periodic(const Duration(seconds: 30), (_) => null);

    return isarStream.switchMap((data) {
      // 合并定时流和数据流
      return timerStream.asyncMap((_) async {
        // 刷新逻辑：每次定时触发时返回当前数据
        return data;
      });
    });
  }

  /// 合并数据流
  Stream<ConversationViewModel> conversationVMStream(WKConversation conversation) {
    final isar = WKDB.shared.getDB()!;
    final channelId = conversation.channelId;
    final channelType = conversation.channelType;

    final messageStream = isar.wKMessages.filter().channelIdEqualTo(channelId).channelTypeEqualTo(channelType).sortByTimestampDesc().limit(1).watch(fireImmediately: true).map((list) => list.isNotEmpty ? list.first : null);

    final channelStream = isar.wKChannels.filter().channelIdEqualTo(channelId).channelTypeEqualTo(channelType).limit(1).watch(fireImmediately: true).map((list) => list.isNotEmpty ? list.first : null);

    return messageStream.combineLatest(channelStream, (WKMessage? message, WKChannel? channel) {
      return ConversationViewModel(
        conversation: conversation,
        lastMessage: message,
        channel: channel,
      );
    });
  }

  /// 同步会话到数据库
  @override
  Future<void> syncConversationToDB() async {
    Logs.debug("消息同步中");

    HttpUtils.syncConversation("", 20, 0, (cons, recentMsgs) async {
      try {
        /// 调用消息同步
        await super.wk.messageManager.syncMessage(recentMsgs);

        /// 批量保存会话
        _isar.writeTxnSync(() {
          _isar.wKConversations.putAllByChannelIdChannelTypeSync(cons);
        });
      } catch (e) {
        rethrow;
      }
    });
  }

  @override
  Future<void> update(conv) async {
    try {
      if (conv is WKConversation) {
        final newConv = _isar.wKConversations.getByChannelIdChannelTypeSync(conv.channelId, conv.channelType);

        if (newConv != null) {
          // newConv.channel.value = await super.wk.channelManager.getChannelWithAsync(newConv.channelId, newConv.channelType, true);
          // newConv.channel.value?.channelName = "123123";
          _isar.writeTxnSync(() {
            _isar.wKConversations.deleteByChannelIdChannelTypeSync(newConv.channelId, newConv.channelType);

            _isar.wKConversations.putSync(newConv);
          });
        }
      }
    } catch (e) {}
  }

  @override
  saveConversationToDB(conv) {
    _isar.writeTxnSync(() {
      _isar.wKConversations.putByChannelIdChannelTypeSync(conv);
    });
  }

  @override
  Future getConversationWithAsync(channelId, channelType) async {
    WKConversation conversation = WKConversation(channelId, channelType);
    // 查询本地缓存
    return await _isar.wKConversations.getByChannelIdChannelType(channelId, channelType) ?? conversation;
  }
}
