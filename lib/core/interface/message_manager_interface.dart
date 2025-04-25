import 'package:wkim_flutter_sdk/proto/packet.dart';
import 'package:wkim_flutter_sdk/wkim.dart';

abstract class WKMessageManager {
  final wk = WKIMCore.shared;

  Future<RecvPacket> saveRecvMsg(RecvPacket msg);
  syncMessage(List msgs);
  getLastMessage(String messageId);
}
