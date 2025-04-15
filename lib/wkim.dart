library wkim;

import 'package:wkim_flutter_sdk/common/options.dart';
import 'package:wkim_flutter_sdk/core/connection_manager.dart';
import 'package:wkim_flutter_sdk/core/packet_handler_registry.dart';
import 'package:wkim_flutter_sdk/core/packet_recipient.dart';
import 'package:wkim_flutter_sdk/core/packet_sender.dart';
import 'package:wkim_flutter_sdk/core/wk_status.dart';

/// WKIM 核心类（单例）
class WKIMCore {
  WKIMCore._internal();

  static final WKIMCore _instance = WKIMCore._internal();

  /// 获取单例实例
  static WKIMCore get shared => _instance;

  /// SDK 配置项
  late WKIMOptions options;

  /// 连接管理器（单例）
  final ConnectionManager connectionManager = ConnectionManager.shared;

  /// 负责发送 Packet
  final PacketSenderManager packetSenderManage = PacketSenderManager.shared;

  /// 负责接收 Packet
  final PacketRecipientManager packetRecipientManager = PacketRecipientManager.shared;

  /// IM状态
  final WKStatusManager statusManage = WKStatusManager.shared;

  /// 设置 SDK 参数，必须先调用
  bool setup(WKIMOptions opts) {
    PacketHandlerRegistry.registerDefaultHandlers();
    options = opts;
    return true;
  }

  /// 获取当前设备标识
  int get deviceFlag => options.deviceFlag;
}
