// 注册器：用于注册 handler

// import 'handlers/pong_handler.dart';

import 'package:wkim_flutter_sdk/common/logs.dart';
import 'package:wkim_flutter_sdk/core/packet_handlers/conn_ack_handler.dart';
import 'package:wkim_flutter_sdk/core/packet_handlers/disconnect_handler.dart';
import 'package:wkim_flutter_sdk/core/packet_handlers/recv_handler.dart';
import 'package:wkim_flutter_sdk/core/packet_handlers/send_ack_handler.dart';
import 'package:wkim_flutter_sdk/proto/proto.dart';

abstract class PacketHandler<T> {
  void handle(T packet);
}

class PacketHandlerRegistry {
  static final Map<PacketType, PacketHandler> _handlers = {};

  static void register(PacketType type, PacketHandler handler) {
    _handlers[type] = handler;
  }

  static PacketHandler? get(PacketType type) => _handlers[type];

  static void registerDefaultHandlers() {
    Logs.debug("注册解码器");
    register(PacketType.connack, ConnAckPacketHandler());
    register(PacketType.recv, RecvPacketHandler());
    register(PacketType.sendack, SendAckPacketHandler());
    register(PacketType.disconnect, DisconnectPacketHandler());
  }
}
