import 'package:isar/isar.dart';
import 'package:wkim_flutter_sdk/type/const.dart';
import 'package:wkim_flutter_sdk_example/entity/channel.dart';
import 'message.dart';

part 'conversation.g.dart';

@Collection()
@Name(WKDBConst.tableConversation)
class WKConversation {
  WKConversation(this.channelId, this.channelType); // ✅ 添加默认构造函数

  Id? id;

  /// 频道id
  @Index(unique: true, composite: [CompositeIndex('channelType')])
  String channelId = "";

  /// 频道类型
  @Index()
  int channelType = 0;

  @Index()
  int lastMsgTimestamp = 0;
  @Index()
  int lastMsgSeq = 0;
  @Index()
  String lastClientMsgNo = "";
  @Index()
  int offsetMsgSeq = 0;

  @Index()
  int version = 0;

  @Index()
  int unreadCount = 0;
  @Index()
  String parentChannelID = '';
  @Index()
  int parentChannelType = 0;
  //是否删除
  @Index()
  int isDeleted = 0;

  // @Backlink(to: 'channel') // 反向：频道包含的消息
  final channel = IsarLink<WKChannel>();
  @Backlink(to: 'conversation') // 反向：频道包含的消息
  final messages = IsarLinks<WKMessage>();

  factory WKConversation.fromJson(Map<String, dynamic> json) {
    final conversation = WKConversation(json['channel_id'] ?? '', json['channel_type'] ?? 0)
      ..unreadCount = json['unread'] ?? 0
      ..lastMsgTimestamp = json['timestamp'] ?? 0
      ..lastMsgSeq = json['last_msg_seq'] ?? 0
      ..lastClientMsgNo = json['last_client_msg_no'] ?? ''
      ..offsetMsgSeq = json['offset_msg_seq'] ?? 0
      ..version = json['version'] ?? 0;

    return conversation;
  }

  Map<String, dynamic> toJson() => {
        'channel_id': channelId,
        'channel_type': channelType,
        'unreadCount': unreadCount,
        'lastMsgTimestamp': lastMsgTimestamp,
        'last_msg_seq': lastMsgSeq,
        'last_client_msg_no': lastClientMsgNo,
        'offset_msg_seq': offsetMsgSeq,
        'version': version,
      };
}
