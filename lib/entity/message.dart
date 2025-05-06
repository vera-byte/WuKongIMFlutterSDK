import 'package:isar/isar.dart';
import 'package:wkim_flutter_sdk/proto/proto.dart';
import 'package:wkim_flutter_sdk/type/const.dart';
import 'package:wkim_flutter_sdk/wkim.dart';
import 'package:wkim_flutter_sdk/entity/channel.dart';
import 'package:wkim_flutter_sdk/entity/conversation.dart';

part 'message.g.dart';

@Collection()
@Name(WKDBConst.tableMessage)
class WKMessage {
  WKMessage() {
    clientMsgNo = WKIMCore.shared.messageManager.generateClientMsgNo;
    timestamp = (DateTime.now().millisecondsSinceEpoch / 1000).truncate();
  }

  Id? id;

  Setting setting = Setting();

  @Index(unique: true)
  String messageIdStr = "";

  @Index()
  int messageSeq = 0;
  @Index()
  String clientMsgNo = "";

  String fromUid = "";
  @Index()
  int contentType = 0;

  @Index()
  String channelId = "";

  @Index()
  int channelType = 0;

  @Index()
  int timestamp = 0;

  @Index()
  int isDeleted = 0;

  @Index()
  int expireTime = 0;

  @Index()
  int expireTimestamp = 0;

  @Index()
  int readed = 0;

  @Index()
  int extraVersion = 0;
  @Index()
  String searchableWord = "";

  String signalPayload = "";
  @Index()
  String topicID = "";

  @Index()
  int viewed = 0;
  @Index()
  int viewedAt = 0;
  @Index()
  int status = 0;

  Header header = Header();

  Payload payload = Payload();
  final fromChannel = IsarLink<WKChannel>();
  final channel = IsarLink<WKChannel>();
  final conversation = IsarLink<WKConversation>();

  // ✅ 从 JSON 转换
  factory WKMessage.fromJson(Map<String, dynamic> json) {
    final payload = Payload.fromJson(json['payload'] ?? {});
    return WKMessage()
      ..setting = Setting().decode(json['setting'] ?? 0)
      ..messageIdStr = json['message_idstr'] ?? ''
      ..messageSeq = json['message_seq'] ?? 0
      ..clientMsgNo = json['client_msg_no'] ?? ''
      ..fromUid = json['from_uid'] ?? ''
      ..channelId = json['channel_id'] ?? ''
      ..channelType = json['channel_type'] ?? 0
      ..timestamp = json['timestamp'] ?? 0
      ..isDeleted = json['is_deleted'] ?? 0
      ..readed = json['readed'] ?? 0
      ..extraVersion = json['extra_version'] ?? 0
      ..signalPayload = json['signal_payload'] ?? ''
      ..header = Header.fromJson(json['header'] ?? {})
      ..payload = payload
      ..contentType = payload.type
      ..searchableWord = payload.content;
  }

  // ✅ 静态方法：列表转换
  static List<WKMessage> listFromJson(List<dynamic> list) {
    return list.whereType<Map<String, dynamic>>().map((e) => WKMessage.fromJson(e)).toList();
  }
}

@embedded
class Header {
  Header();

  bool noPersist = false; // 是否显示红点
  bool redDot = false; // 是否不存储
  bool syncOnce = false; // 是否只同步一次

  factory Header.fromJson(Map<String, dynamic> json) => Header()
    ..noPersist = json['no_persist'] == 0 ? false : true
    ..redDot = json['red_dot'] == 0 ? false : true
    ..syncOnce = json['sync_once'] == 0 ? false : true;

  Map<String, dynamic> toJson() => {
        'no_persist': noPersist,
        'red_dot': redDot,
        'sync_once': syncOnce,
      };
}

@embedded
class Setting {
  int receipt = 0;
  int topic = 0;
  int stream = 0;
  Setting decode(int v) {
    receipt = (v >> 7 & 0x01);
    topic = (v >> 3 & 0x01);
    stream = (v >> 2 & 0x001);
    return this;
  }

  int encode() {
    return receipt << 7 | topic << 3 | stream << 2;
  }
}

@embedded
class Payload {
  Payload();

  late String content;
  late int type;

  factory Payload.fromJson(Map<String, dynamic> json) => Payload()
    ..content = json['content'] ?? ''
    ..type = json['type'] ?? 0;

  Map<String, dynamic> toJson() => {
        'content': content,
        'type': type,
      };
}
