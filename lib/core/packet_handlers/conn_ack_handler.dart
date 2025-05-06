import 'package:wkim_flutter_sdk/common/crypto_utils.dart';
import 'package:wkim_flutter_sdk/common/logs.dart';
import 'package:wkim_flutter_sdk/core/packet_handlers/packet_handler_registry.dart';
import 'package:wkim_flutter_sdk/core/wk_status.dart';
import 'package:wkim_flutter_sdk/proto/packet.dart';
import 'package:wkim_flutter_sdk/type/const.dart';
import 'package:wkim_flutter_sdk/wkim.dart';

class ConnAckPacketHandler implements PacketHandler<ConnAckPacket> {
  static final _wk = WKIMCore.shared;

  @override
  void handle(ConnAckPacket packet) {
    if (packet.reasonCode == 1) {
      Logs.debug('连接成功！');
      WKIMCore.shared.options.protoVersion = packet.serviceProtoVersion;
      CryptoUtils.setServerKeyAndSalt(packet.serverKey, packet.salt);

      /// 更新悟空状态
      _wk.statusManage.setStatus(ConnectionInfo(
        packet.nodeId,
        imStatus: WKConnectStatus.success,
      ));

      // try {
      //   //   WKIM.shared.conversationManager.setSyncConversation(() {
      //   //     setConnectionStatus(WKConnectStatus.syncCompleted);
      //   // _wk.statusManage.updateStatus(WKConnectStatus.syncCompleted);

      //   //     _resendMsg();
      //   //   });
      // } catch (e) {
      //   Logs.error(e.toString());
      // }

      /// 启动心跳检查
      _wk.connectionManager.startHeartTimer();

      /// 网络检查
      _wk.connectionManager.startCheckNetworkTimer();
    } else {
      // setConnectionStatus(WKConnectStatus.fail, reasoncode: packet.reasonCode);
      Logs.debug('连接失败！错误->${packet.reasonCode}');
    }
  }
}
