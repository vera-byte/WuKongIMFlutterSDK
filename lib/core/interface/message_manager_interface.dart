import 'package:wkim_flutter_sdk/entity/channel.dart';
import 'package:wkim_flutter_sdk/entity/message.dart';
import 'package:wkim_flutter_sdk/proto/packet.dart';
import 'package:wkim_flutter_sdk/type/msg.dart';
import 'package:wkim_flutter_sdk/wkim.dart';

abstract class WKMessageManager {
  final wk = WKIMCore.shared;

  Future<RecvPacket> saveRecvMessage(RecvPacket msg);

  /// 同步消息
  syncMessage(List<WKMessage> msgs);

  /// 获取最后一条消息
  getLastMessage(String messageId);

  /// 消息入库
  putMessageIntoStorage(WKMessage msg);

  /// 发送消息
  sendMessage(WKMessageContent content, WKChannel channel, WKSendOptions options);

  String get generateClientMsgNo;
}
