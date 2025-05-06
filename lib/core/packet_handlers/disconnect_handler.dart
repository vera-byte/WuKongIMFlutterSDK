import 'package:wkim_flutter_sdk/core/packet_handlers/packet_handler_registry.dart';
import 'package:wkim_flutter_sdk/wkim.dart';

class DisconnectPacketHandler implements PacketHandler<dynamic> {
  static final _wk = WKIMCore.shared;

  @override
  void handle(dynamic _) {
    _wk.connectionManager.disconnect(true);
    // setConnectionStatus(WKConnectStatus.kicked);
  }
}
