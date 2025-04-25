import 'dart:ffi';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:wkim_flutter_sdk/type/const.dart';
import 'package:wkim_flutter_sdk/wkim.dart';
import 'package:wkim_flutter_sdk_example/const.dart';
import 'package:wkim_flutter_sdk_example/entity/channel.dart';
import 'package:wkim_flutter_sdk_example/entity/conversation.dart';
import 'package:wkim_flutter_sdk_example/entity/message.dart';

class HttpUtils {
  // static String apiURL = "https://api.githubim.com";
  static String apiURL = "http://62.234.8.38:7090/v1/";
  // static String apiURL = "http://175.27.245.108:15001";
  static final dio = Dio(BaseOptions(
    baseUrl: apiURL,
  ));

  static getAvatarUrl(String uid) {
    return "$apiURL/users/$uid/avatar";
  }

  static getGroupAvatarUrl(String gid) {
    return "$apiURL/groups/$gid/avatar";
  }

  static Future<int> login(String uid, String token) async {
    final response = await dio.post("/user/login", data: {'uid': uid, 'token': token, 'device_flag': 0, 'device_level': 1});
    try {
      if (response.statusCode == HttpStatus.ok) {
        UserInfo.name = response.data['name'];
      }
    } catch (e) {
      print('获取用户信息失败');
    }

    return response.statusCode!;
  }

  static Future<String> getIP(String uid) async {
    String ip = '';
    try {
      final response = await dio.get('/users/$uid/route');
      if (response.statusCode == HttpStatus.ok) {
        ip = response.data['tcp_addr'];
      }
    } catch (e) {
      ip = '';
    }

    return ip;
  }

  static Future<void> syncConversation(
    String lastSsgSeqs,
    int msgCount,
    int version,
    Function(List<WKConversation>, List<WKMessage>) back,
  ) async {
    // 发送请求
    final response = await dio.post('/conversation/sync', data: {
      "login_uid": WKIMCore.shared.options.uid,
      "version": version,
      "last_msg_seqs": lastSsgSeqs,
      "msg_count": msgCount,
      "device_uuid": WKIMCore.shared.options.uid,
    });
    List<WKConversation> conversations = [];
    List<WKMessage> recentMessages = [];
    if (response.statusCode == 200) {
      final data = response.data;
      for (var item in data['conversations'] ?? []) {
        WKConversation conv = WKConversation.fromJson(item);

        /// 处理最近消息
        if (item['recents'] is List) {
          final recentsJson = item['recents'] as List;
          recentMessages.addAll(recentsJson.whereType<Map<String, dynamic>>().map((e) => WKMessage.fromJson(e)).toList());
        }
        conversations.add(conv);
      }
      back(conversations, recentMessages);
    } else {
      throw Exception('Failed to sync conversations');
    }
  }

  // static Future<void> _writeConversations(List<WKConversation> conversationsJson) async {

  //     // 遍历每个会话
  //     for (var conversationJson in conversationsJson) {
  //       final conversation = WKConversation()
  //         ..channelId = conversationJson['channel_id']
  //         ..channelType = conversationJson['channel_type']
  //         ..unread = conversationJson['unread']
  //         ..timestamp = conversationJson['timestamp']
  //         ..lastMsgSeq = conversationJson['last_msg_seq']
  //         ..lastClientMsgNo = conversationJson['last_client_msg_no']
  //         ..offsetMsgSeq = conversationJson['offset_msg_seq']
  //         ..version = conversationJson['version'];

  //       // 保存会话
  //       await isar.wKConversations.put(conversation);

  //       // 解析和保存最近的消息
  //       final recentsJson = conversationJson['recents'] as List<dynamic>;
  //       for (var recentJson in recentsJson) {
  //         final recentMessage = WKMessage()
  //           ..messageId = recentJson['message_id']
  //           ..messageIdStr = recentJson['message_idstr']
  //           ..messageSeq = recentJson['message_seq']
  //           ..clientMsgNo = recentJson['client_msg_no']
  //           ..fromUid = recentJson['from_uid']
  //           ..channelId = recentJson['channel_id']
  //           ..channelType = recentJson['channel_type']
  //           ..timestamp = recentJson['timestamp']
  //           ..payload = Payload()
  //           ..payload.content = recentJson['payload']['content']
  //           ..payload.type = recentJson['payload']['type']
  //           ..signalPayload = recentJson['signal_payload']
  //           ..isDeleted = recentJson['is_deleted']
  //           ..readed = recentJson['readed']
  //           ..extraVersion = recentJson['extra_version']
  //           ..header = Header()
  //           ..header.noPersist = recentJson['header']['no_persist']
  //           ..header.redDot = recentJson['header']['red_dot']
  //           ..header.syncOnce = recentJson['header']['sync_once']
  //           ..setting = recentJson['setting'];

  //         // 关联会话到最近消息
  //         // recentMessage.conversation.link(conversation);

  //         // 保存最近消息
  //         // await isar.recentMessages.put(recentMessage);
  //       }
  //     }

  //   // // print(response.data);
  //   // WKConversation conversation = WKConversation();
  //   // // conversation.conversations = [];

  //   // if (response.statusCode == HttpStatus.ok) {
  //   //   try {
  //   //     var list = response.data['conversations'];
  //   //     // var list = jsonDecode(response.data);
  //   //     for (int i = 0; i < list.length; i++) {
  //   //       var json = list[i];
  //   //       WKSyncConvMsg convMsg = WKSyncConvMsg();
  //   //       convMsg.channelId = json['channel_id'];
  //   //       convMsg.channelType = json['channel_type'];
  //   //       convMsg.unread = json['unread'] ?? 0;
  //   //       convMsg.timestamp = json['timestamp'];
  //   //       convMsg.lastMsgSeq = json['last_msg_seq'];
  //   //       convMsg.lastClientMsgNO = json['last_client_msg_no'];
  //   //       convMsg.version = json['version'];
  //   //       var msgListJson = json['recents'] as List<dynamic>;
  //   //       // List<WKSyncMsg> msgList = [];
  //   //       // if (msgListJson.isNotEmpty) {
  //   //       //   for (int j = 0; j < msgListJson.length; j++) {
  //   //       //     var msgJson = msgListJson[j];
  //   //       //     msgList.add(getWKSyncMsg(msgJson));
  //   //       //   }
  //   //       // }

  //   //       // convMsg.recents = msgList;
  //   //       conversation.conversations!.add(convMsg);
  //   //     }
  //   //   } catch (e) {
  //   //     print('同步最近会话错误');
  //   //   }
  //   // }
  //   // back(conversation);
  // }

  // static syncChannelMsg(String channelId, int channelType, int startMsgSeq, int endMsgSeq, int limit, int pullMode, Function(WKSyncChannelMsg) back) async {
  //   final httpClient = HttpClient();
  //   httpClient.badCertificateCallback = (X509Certificate cert, String host, int port) {
  //     // 信任所有证书
  //     return true;
  //   };
  //   final dio = Dio();
  //   dio.httpClientAdapter = DefaultHttpClientAdapter()
  //     ..onHttpClientCreate = (client) {
  //       return httpClient;
  //     };
  //   final response = await dio.post('$apiURL/message/channel/sync', data: {
  //     "login_uid": UserInfo.uid, // 当前登录用户uid
  //     "channel_id": channelId, //  频道ID
  //     "channel_type": channelType, // 频道类型
  //     "start_message_seq": startMsgSeq, // 开始消息列号（结果包含start_message_seq的消息）
  //     "end_message_seq": endMsgSeq, // 结束消息列号（结果不包含end_message_seq的消息）
  //     "limit": limit, // 消息数量限制
  //     "pull_mode": pullMode // 拉取模式 0:向下拉取 1:向上拉取
  //   });
  //   if (response.statusCode == HttpStatus.ok) {
  //     var data = response.data;
  //     WKSyncChannelMsg msg = WKSyncChannelMsg();
  //     msg.startMessageSeq = data['start_message_seq'];
  //     msg.endMessageSeq = data['end_message_seq'];
  //     msg.more = data['more'];
  //     var messages = data['messages'];

  //     List<WKSyncMsg> msgList = [];
  //     for (int i = 0; i < messages.length; i++) {
  //       dynamic json = messages[i];
  //       msgList.add(getWKSyncMsg(json));
  //     }
  //     print('同步channel消息数量：${msgList.length}');
  //     msg.messages = msgList;
  //     back(msg);
  //   }
  // }

  // static WKSyncMsg getWKSyncMsg(dynamic json) {
  //   WKSyncMsg msg = WKSyncMsg();
  //   msg.channelId = json['channel_id'];
  //   msg.messageID = json['message_id'].toString();
  //   msg.channelType = json['channel_type'];
  //   msg.clientMsgNO = json['client_msg_no'];
  //   msg.messageSeq = json['message_seq'];
  //   msg.fromUID = json['from_uid'];
  //   msg.isDeleted = json['is_deleted'];
  //   msg.timestamp = json['timestamp'];
  //   //  msg.payload = json['payload'];

  //   // String payload = json['payload'];
  //   try {
  //     msg.payload = json['payload'];
  //     // msg.payload = jsonDecode(utf8.decode(base64Decode(payload)));
  //   } catch (e) {
  //     // print('异常了');
  //   }
  //   // 解析扩展
  //   var extraJson = json['message_extra'];
  //   if (extraJson != null) {
  //     var extra = getMsgExtra(extraJson);
  //     msg.messageExtra = extra;
  //   }
  //   return msg;
  // }

  // static WKSyncExtraMsg getMsgExtra(dynamic extraJson) {
  //   var extra = WKSyncExtraMsg();
  //   extra.messageID = extraJson['message_id'];
  //   extra.messageIdStr = extraJson['message_id_str'];
  //   extra.revoke = extraJson['revoke'] ?? 0;
  //   extra.revoker = extraJson['revoker'] ?? '';
  //   extra.readed = extraJson['readed'] ?? 0;
  //   extra.readedCount = extraJson['readed_count'] ?? 0;
  //   extra.isMutualDeleted = extraJson['is_mutual_deleted'] ?? 0;
  //   return extra;
  // }

  // static getGroupInfo(String groupId) async {
  //   final httpClient = HttpClient();
  //   httpClient.badCertificateCallback = (X509Certificate cert, String host, int port) {
  //     // 信任所有证书
  //     return true;
  //   };
  //   final dio = Dio();
  //   dio.httpClientAdapter = DefaultHttpClientAdapter()
  //     ..onHttpClientCreate = (client) {
  //       return httpClient;
  //     };
  //   final response = await dio.get('$apiURL/groups/$groupId');
  //   if (response.statusCode == HttpStatus.ok) {
  //     var json = response.data;
  //     var channel = WKChannel(groupId, WKChannelType.group);
  //     channel.channelName = json['name'];
  //     channel.avatar = json['avatar'];
  //     WKIM.shared.channelManager.addOrUpdateChannel(channel);
  //   } else {
  //     print('获取群信息失败');
  //   }
  // }

  static Future<WKChannel> getChannelInfo(String uid, int channelType) async {
    var channel = WKChannel(uid, channelType);

    final response = await dio.get('/${channelType == 1 ? "users" : "groups"}/$uid');
    if (response.statusCode == HttpStatus.ok) {
      var json = response.data;
      channel.channelName = json['name'];
      channel.avatar = json['avatar'];
      return channel;
    }
    channel.channelName = "获取失败";
    channel.avatar = "";
    return channel;
  }

  // static revokeMsg(String clientMsgNo, String channelId, int channelType, int msgSeq, String msgId) async {
  //   final httpClient = HttpClient();
  //   httpClient.badCertificateCallback = (X509Certificate cert, String host, int port) {
  //     // 信任所有证书
  //     return true;
  //   };
  //   final dio = Dio();
  //   dio.httpClientAdapter = DefaultHttpClientAdapter()
  //     ..onHttpClientCreate = (client) {
  //       return httpClient;
  //     };
  //   try {
  //     final response = await dio.post('$apiURL/message/revoke', data: {
  //       'login_uid': UserInfo.uid,
  //       'channel_id': channelId,
  //       'channel_type': channelType,
  //       'client_msg_no': clientMsgNo,
  //       'message_seq': msgSeq,
  //       'message_id': msgId,
  //     });
  //     if (response.statusCode == HttpStatus.ok) {
  //       print('撤回消息成功');
  //     }
  //   } catch (e) {
  //     print('获取用户信息失败$e');
  //   }
  // }

  // static deleteMsg(String clientMsgNo, String channelId, int channelType, int msgSeq, String msgId) async {
  //   final httpClient = HttpClient();
  //   httpClient.badCertificateCallback = (X509Certificate cert, String host, int port) {
  //     // 信任所有证书
  //     return true;
  //   };
  //   final dio = Dio();
  //   dio.httpClientAdapter = DefaultHttpClientAdapter()
  //     ..onHttpClientCreate = (client) {
  //       return httpClient;
  //     };
  //   try {
  //     final response = await dio.post('$apiURL/message/delete', data: {
  //       'login_uid': UserInfo.uid,
  //       'channel_id': channelId,
  //       'channel_type': channelType,
  //       'message_seq': msgSeq,
  //       'message_id': msgId,
  //     });
  //     if (response.statusCode == HttpStatus.ok) {
  //       WKIM.shared.messageManager.deleteWithClientMsgNo(clientMsgNo);
  //     }
  //   } catch (e) {
  //     print('删除消息失败$e');
  //   }
  // }

  // static syncMsgExtra(String channelId, int channelType, int version) async {
  //   final httpClient = HttpClient();
  //   httpClient.badCertificateCallback = (X509Certificate cert, String host, int port) {
  //     // 信任所有证书
  //     return true;
  //   };
  //   final dio = Dio();
  //   dio.httpClientAdapter = DefaultHttpClientAdapter()
  //     ..onHttpClientCreate = (client) {
  //       return httpClient;
  //     };
  //   try {
  //     final response = await dio.post('$apiURL/message/extra/sync', data: {
  //       'login_uid': UserInfo.uid,
  //       'channel_id': channelId,
  //       'channel_type': channelType,
  //       'source': UserInfo.uid,
  //       'limit': 100,
  //       'extra_version': version,
  //     });
  //     if (response.statusCode == HttpStatus.ok) {
  //       var arrJson = response.data;
  //       if (arrJson != null && arrJson.length > 0) {
  //         List<WKMsgExtra> list = [];
  //         for (int i = 0; i < arrJson.length; i++) {
  //           var extraJson = arrJson[i];
  //           WKMsgExtra extra = WKMsgExtra();
  //           extra.messageID = extraJson['message_id_str'];
  //           extra.revoke = extraJson['revoke'] ?? 0;
  //           extra.revoker = extraJson['revoker'] ?? '';
  //           extra.readed = extraJson['readed'] ?? 0;
  //           extra.readedCount = extraJson['readed_count'] ?? 0;
  //           extra.isMutualDeleted = extraJson['is_mutual_deleted'] ?? 0;
  //           extra.extraVersion = extraJson['extra_version'] ?? 0;
  //           list.add(extra);
  //         }
  //         WKIM.shared.messageManager.saveRemoteExtraMsg(list);
  //       }
  //     }
  //   } catch (e) {
  //     print('同步消息扩展失败$e');
  //   }
  // }

  // // 清空红点
  // static clearUnread(String channelId, int channelType) async {
  //   final httpClient = HttpClient();
  //   httpClient.badCertificateCallback = (X509Certificate cert, String host, int port) {
  //     // 信任所有证书
  //     return true;
  //   };
  //   final dio = Dio();
  //   dio.httpClientAdapter = DefaultHttpClientAdapter()
  //     ..onHttpClientCreate = (client) {
  //       return httpClient;
  //     };
  //   try {
  //     final response = await dio.put('$apiURL/conversation/clearUnread', data: {
  //       'login_uid': UserInfo.uid,
  //       'channel_id': channelId,
  //       'channel_type': channelType,
  //       'unread': 0,
  //     });
  //     if (response.statusCode == HttpStatus.ok) {
  //       print('清空红点成功');
  //     }
  //   } catch (e) {
  //     print('清空红点失败$e');
  //   }
  // }

  // // 清除频道消息
  // static clearChannelMsg(String channelId, int channelType) async {
  //   final httpClient = HttpClient();
  //   httpClient.badCertificateCallback = (X509Certificate cert, String host, int port) {
  //     // 信任所有证书
  //     return true;
  //   };
  //   final dio = Dio();
  //   dio.httpClientAdapter = DefaultHttpClientAdapter()
  //     ..onHttpClientCreate = (client) {
  //       return httpClient;
  //     };
  //   try {
  //     int maxSeq = await WKIM.shared.messageManager.getMaxMessageSeq(channelId, channelType);
  //     final response = await dio.post('$apiURL/message/offset', data: {'login_uid': UserInfo.uid, 'channel_id': channelId, 'channel_type': channelType, 'message_seq': maxSeq});
  //     if (response.statusCode == HttpStatus.ok) {
  //       WKIM.shared.messageManager.clearWithChannel(channelId, channelType);
  //     }
  //   } catch (e) {
  //     print('清除频道消息失败$e');
  //   }
  // }

  // // 创建群
  // static Future<bool> createGroup(String groupNo) async {
  //   final httpClient = HttpClient();
  //   httpClient.badCertificateCallback = (X509Certificate cert, String host, int port) {
  //     // 信任所有证书
  //     return true;
  //   };
  //   final dio = Dio();
  //   dio.httpClientAdapter = DefaultHttpClientAdapter()
  //     ..onHttpClientCreate = (client) {
  //       return httpClient;
  //     };
  //   try {
  //     final response = await dio.post('$apiURL/group/create', data: {
  //       'login_uid': UserInfo.uid,
  //       'group_no': groupNo,
  //     });
  //     if (response.statusCode == HttpStatus.ok) {
  //       return true;
  //     } else {
  //       return false;
  //     }
  //   } catch (e) {
  //     print('创建群失败$e');
  //     return false;
  //   }
  // }

  // // 修改群名称
  // static Future<bool> updateGroupName(String groupNo, String groupName) async {
  //   final httpClient = HttpClient();
  //   httpClient.badCertificateCallback = (X509Certificate cert, String host, int port) {
  //     // 信任所有证书
  //     return true;
  //   };
  //   final dio = Dio();
  //   dio.httpClientAdapter = DefaultHttpClientAdapter()
  //     ..onHttpClientCreate = (client) {
  //       return httpClient;
  //     };
  //   try {
  //     final response = await dio.put('$apiURL/groups/$groupNo', data: {
  //       'login_uid': UserInfo.uid,
  //       'name': groupName,
  //     });
  //     if (response.statusCode == HttpStatus.ok) {
  //       return true;
  //     } else {
  //       return false;
  //     }
  //   } catch (e) {
  //     print('修改群名称失败$e');
  //     return false;
  //   }
  // }
}
