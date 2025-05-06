import 'package:wkim_flutter_sdk/common/crypto_utils.dart';
import 'package:wkim_flutter_sdk/common/logs.dart';
import 'package:wkim_flutter_sdk/core/packet_handlers/packet_handler_registry.dart';
import 'package:wkim_flutter_sdk/proto/packet.dart';
import 'package:wkim_flutter_sdk/wkim.dart';

class RecvPacketHandler implements PacketHandler<RecvPacket> {
  static final _wk = WKIMCore.shared;

  @override
  void handle(RecvPacket packet) {
    Logs.debug('收到消息,$packet');
    _verifyRecvMsg(packet);
    if (!packet.header.noPersist) {
      _wk.packetSenderManage.sendRecvAckPacket(packet.messageID, packet.messageSeq, packet.header);
    }
  }

  _verifyRecvMsg(RecvPacket recvMsg) {
    StringBuffer sb = StringBuffer();
    sb.writeAll([recvMsg.messageID, recvMsg.messageSeq, recvMsg.clientMsgNO, recvMsg.messageTime, recvMsg.fromUID, recvMsg.channelId, recvMsg.channelType, recvMsg.payload]);
    var encryptContent = sb.toString();
    var result = CryptoUtils.aesEncrypt(encryptContent);
    String localMsgKey = CryptoUtils.generateMD5(result);
    if (recvMsg.msgKey != localMsgKey) {
      Logs.error('非法消息-->期望msgKey：$localMsgKey，实际msgKey：${recvMsg.msgKey}');
      return;
    } else {
      recvMsg.payload = CryptoUtils.aesDecrypt(recvMsg.payload);
      Logs.debug(recvMsg.toString());

      /// 调用抽象类方法
      _wk.messageManager.saveRecvMessage(recvMsg);
    }
  }
}
