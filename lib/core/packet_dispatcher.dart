// 派发器：分发 packet 给各 handler
import 'dart:typed_data';

import 'package:wkim_flutter_sdk/common/logs.dart';
import 'package:wkim_flutter_sdk/wkim.dart';

import 'packet_handlers/packet_handler_registry.dart';

void dispatchPacket(Uint8List data) {
  final packet = WKIMCore.shared.options.proto.decode(data);
  final packetType = packet.header.packetType;

  Logs.debug('解码出包 -> $packet');

  final handler = PacketHandlerRegistry.get(packetType);

  if (handler != null) {
    handler.handle(packet);
  } else {
    Logs.warn('未注册的 packetType: $packetType');
  }
}
