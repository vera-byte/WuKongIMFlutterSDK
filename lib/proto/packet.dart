import 'package:wkim_flutter_sdk/common/crypto_utils.dart';
import 'package:wkim_flutter_sdk/wkim.dart';

import 'proto.dart';

class SendingMsg {
  SendPacket sendPacket;
  int sendCount = 0;
  int sendTime = 0;
  bool isCanResend = true;
  SendingMsg(this.sendPacket) {
    sendTime = (DateTime.now().millisecondsSinceEpoch / 1000).truncate();
  }
}

class PacketHeader {
  PacketType packetType = PacketType.reserved; // 数据包类型
  bool showUnread = false; // 是否显示未读红点
  bool noPersist = false; // 是否不存储
  bool syncOnce = false; // 是否只同步一次
  int remainingLength = 0;
  bool hasServerVersion = false; // 是否有服务端版本
}

class Packet {
  PacketHeader header = PacketHeader();
}

/// 1. 客户端请求连接到服务器(c2s)
class ConnectPacket extends Packet {
  int version;
  String clientKey;
  String deviceID;
  int deviceFlag;
  int clientTimestamp;
  String uid;
  String token;
  ConnectPacket({this.version = 0, this.clientKey = "", this.deviceID = "", this.clientTimestamp = 0, this.deviceFlag = 0, this.uid = "", this.token = ""}) {
    header.packetType = PacketType.connect;
  }
  @override
  String toString() {
    return "version:$version，clientKey：$clientKey，deviceID：$deviceID，deviceFlag：$deviceFlag，clientTimestamp:$clientTimestamp，uid：$uid，token：$token";
  }
}

//2. 服务端收到连接请求后确认的报文(s2c)
class ConnAckPacket extends Packet {
  String serverKey;
  String salt;
  int timeDiff;
  int reasonCode;
  int serviceProtoVersion = WKIMCore.shared.options.protoVersion;
  int nodeId = 0;
  ConnAckPacket({
    this.serverKey = "",
    this.salt = "",
    this.timeDiff = 0,
    this.reasonCode = 0,
  });
}

/// 3.发送消息(c2s)
class SendPacket extends Packet {
  Setting setting = Setting();
  int clientSeq;
  String clientMsgNO;
  String streamNo = "";
  String channelId;
  int channelType;
  String? topic;
  String payload = '';
  int expire = 0;
  SendPacket({
    this.clientSeq = 0,
    this.clientMsgNO = "",
    this.channelId = "",
    this.channelType = 1,
    this.topic = "",
  }) {
    header.packetType = PacketType.send;
  }

  String encodeMsgKey() {
    String content = encodeMsgContent();
    StringBuffer sb = StringBuffer();
    sb.write(clientSeq);
    sb.write(clientMsgNO);
    sb.write(channelId);
    sb.write(channelType);
    sb.write(content);
    String msgKey = CryptoUtils.aesEncrypt(sb.toString());
    return CryptoUtils.generateMD5(msgKey);
  }

  String encodeMsgContent() {
    return CryptoUtils.aesEncrypt(payload);
  }
}

/// 4.收到消息确认的报文(s2c)
class SendAckPacket extends Packet {
  String messageID = "";
  int clientSeq = 0;
  int messageSeq = 0;
  int reasonCode = 0;
  SendAckPacket() {
    header.packetType = PacketType.sendack;
  }
}

/// 5.收取消息(s2c)
class RecvPacket extends Packet {
  Setting setting = Setting();
  String msgKey = "";
  String fromUID = "";
  String channelId = "";
  int channelType = 0;
  String clientMsgNO = "";
  String streamNo = "";
  int streamSeq = 0;
  int streamFlag = 0;
  BigInt messageID = BigInt.from(0);
  int messageSeq = 0;
  int messageTime = 0;
  String topic = "";
  String payload = "";
  int expire = 0;
  @override
  String toString() {
    return "msgkey：$msgKey，chanenlID：$channelId，channelType：$channelType，fromUID：$fromUID，clientMsgNO：$clientMsgNO，messageID：$messageID，messageSeq：$messageSeq，messageTime：$messageTime，payload：$payload";
  }
}

/// 6.收取消息确认(c2s)
class RecvAckPacket extends Packet {
  BigInt messageID = BigInt.from(0);
  int messageSeq;
  RecvAckPacket({
    this.messageSeq = 0,
  }) {
    header.packetType = PacketType.recvack;
  }
}

/// 7.ping请求
class PingPacket extends Packet {
  PingPacket() {
    header.packetType = PacketType.ping;
  }
}

/// 8.对ping请求的相应
class PongPacket extends Packet {
  PongPacket() {
    header.packetType = PacketType.pong;
  }
}

/// 9.请求断开连接
class DisconnectPacket extends Packet {
  int reasonCode = 0;
  String reason = "";
  DisconnectPacket() {
    header.packetType = PacketType.disconnect;
  }
}
