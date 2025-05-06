import 'package:wkim_flutter_sdk/common/logs.dart';
import 'package:wkim_flutter_sdk/core/packet_handlers/packet_handler_registry.dart';
import 'package:wkim_flutter_sdk/proto/packet.dart';
import 'package:wkim_flutter_sdk/wkim.dart';

class SendAckPacketHandler implements PacketHandler<SendAckPacket> {
  static final _wk = WKIMCore.shared;

  @override
  void handle(SendAckPacket packet) {
    Logs.info(packet.toString());
    // WKIM.shared.messageManager.updateSendResult(
    //   packet.messageID,
    //   packet.clientSeq,
    //   packet.messageSeq,
    //   packet.reasonCode,
    // );
    if (_wk.packetSenderManage.sendingMsgMap.containsKey(packet.clientSeq)) {
      _wk.packetSenderManage.sendingMsgMap[packet.clientSeq]!.isCanResend = false;
    }
  }
}
