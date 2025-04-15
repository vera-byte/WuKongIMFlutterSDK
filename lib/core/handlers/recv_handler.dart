import 'package:wkim_flutter_sdk/common/logs.dart';
import 'package:wkim_flutter_sdk/core/packet_handler_registry.dart';
import 'package:wkim_flutter_sdk/proto/packet.dart';

class RecvPacketHandler implements PacketHandler<RecvPacket> {
  @override
  void handle(RecvPacket packet) {
    Logs.debug('收到消息,$packet');
    // _verifyRecvMsg(packet);
    if (!packet.header.noPersist) {
      // _sendReceAckPacket(packet.messageID, packet.messageSeq, packet.header);
    }
  }
}
