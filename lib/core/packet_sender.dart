import 'dart:collection';

import 'package:wkim_flutter_sdk/common/crypto_utils.dart';
import 'package:wkim_flutter_sdk/common/logs.dart';
import 'package:wkim_flutter_sdk/entity/message.dart';
import 'package:wkim_flutter_sdk/proto/packet.dart';
import 'package:wkim_flutter_sdk/proto/proto.dart';
import 'package:wkim_flutter_sdk/wkim.dart';

class PacketSenderManager {
  static final PacketSenderManager _instance = PacketSenderManager._internal();
  static final _wk = WKIMCore.shared;
  factory PacketSenderManager() => _instance;

  PacketSenderManager._internal();

  /// 获取单例实例
  static PacketSenderManager get shared => _instance;

  final LinkedHashMap<int, SendingMsg> sendingMsgMap = LinkedHashMap();

  // 收取消息确认(c2s)
  sendRecvAckPacket(BigInt messageID, int messageSeq, PacketHeader header) {
    Logs.info("收取消息确认(c2s)");
    RecvAckPacket ackPacket = RecvAckPacket();
    ackPacket.header.noPersist = header.noPersist;
    ackPacket.header.syncOnce = header.syncOnce;
    ackPacket.header.showUnread = header.showUnread;
    ackPacket.messageID = messageID;
    ackPacket.messageSeq = messageSeq;
    _sendPacket(ackPacket);
  }

  /// 客户端请求连接到服务器(c2s)
  sendConnectPacket() {
    Logs.info("客户端请求连接到服务器(c2s)");
    CryptoUtils.init();
    var connectPacket = ConnectPacket(
      uid: _wk.options.uid!,
      token: _wk.options.token!,
      version: _wk.options.protoVersion,
      clientKey: CryptoUtils.getPublicKeyBase64(),
      deviceID: _wk.options.deviceID,
      clientTimestamp: DateTime.now().millisecondsSinceEpoch,
    );
    connectPacket.deviceFlag = _wk.deviceFlag;
    _sendPacket(connectPacket);
  }

  /// 发送Ping
  sendPingPacket() {
    _sendPacket(PingPacket());
  }

  /// 发送数据包
  void _sendPacket(Packet packet) {
    var data = WKIMCore.shared.options.proto.encode(packet);
    if (!_wk.connectionManager.isReconnection) {
      _wk.connectionManager.ws?.sink.add(data);
    }
  }

  /// 发送消息
  sendMessage(WKMessage wkMsg) {
    SendPacket packet = SendPacket();

    packet.setting = wkMsg.setting;
    packet.header.noPersist = wkMsg.header.noPersist;
    packet.header.showUnread = wkMsg.header.redDot;
    packet.header.syncOnce = wkMsg.header.syncOnce;
    packet.channelId = wkMsg.channelId;
    packet.channelType = wkMsg.channelType;
    packet.clientSeq = wkMsg.messageSeq;
    packet.clientMsgNO = wkMsg.clientMsgNo;
    packet.topic = wkMsg.topicID;
    packet.expire = wkMsg.expireTime;
    packet.payload = wkMsg.payload.toJson().toString();
    // _addSendingMsg(packet);
    _sendPacket(packet);
  }
}
