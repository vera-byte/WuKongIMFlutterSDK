// lib/wkim.dart
library wkim;

import 'package:wkim_flutter_sdk/common/logs.dart';
import 'package:wkim_flutter_sdk/common/options.dart';
import 'package:wkim_flutter_sdk/core/interface/channel_manager_interface.dart';
import 'package:wkim_flutter_sdk/core/connection_manager.dart';
import 'package:wkim_flutter_sdk/core/interface/channel_member_manager_interface.dart';
import 'package:wkim_flutter_sdk/core/interface/cmd_manager_interface.dart';
import 'package:wkim_flutter_sdk/core/interface/conversation_manager_interface.dart';
import 'package:wkim_flutter_sdk/core/interface/message_manager_interface.dart';
import 'package:wkim_flutter_sdk/core/interface/reminder_manager_interface.dart';
import 'package:wkim_flutter_sdk/core/network_handlers/network_handler_registry.dart';
import 'package:wkim_flutter_sdk/core/packet_handlers/packet_handler_registry.dart';
import 'package:wkim_flutter_sdk/core/packet_recipient.dart';
import 'package:wkim_flutter_sdk/core/packet_sender.dart';
import 'package:wkim_flutter_sdk/core/wk_module_registry.dart';
import 'package:wkim_flutter_sdk/core/wk_status.dart';
import 'package:wkim_flutter_sdk/db/wk_db.dart';

export 'package:wkim_flutter_sdk/core/default/default_message_manager.dart';
export 'package:wkim_flutter_sdk/core/default/default_channel_manager.dart';
export 'package:wkim_flutter_sdk/core/default/default_conversation_manager.dart';

/// 导出数据库
export 'package:isar/isar.dart';

///  导出数据流
export 'package:stream_transform/stream_transform.dart';

/// 用户自行实现SDK功能
typedef SDKCoreImplement = void Function(NotImplementedType type, Object instance, {bool override});

/// 未实现
enum NotImplementedType {
  messageManager,

  /// 频道管理器
  channelManager,

  /// 频道成员管理器
  channelMemberManager,

  /// 会话管理器
  conversationManager,

  /// 提醒管理器
  reminderManager,

  /// 命令管理器
  cmdManager,
  // 其他需要约束的模块类型...
}

/// WKIM 核心类（单例）
class WKIMCore {
  WKIMCore._internal();
  static bool isSetup = false;
  static final WKIMCore _instance = WKIMCore._internal();

  /// 获取单例实例
  static WKIMCore get shared => _instance;

  /// SDK 配置项
  WKIMOptions options = WKIMOptions("", "");

  /// 连接管理器（单例）
  late ConnectionManager connectionManager;

  /// 负责发送 Packet
  final PacketSenderManager packetSenderManage = PacketSenderManager.shared;

  /// 负债网络处理
  final NetworkHandler networkHandler = NetworkHandler.shared;

  /// 负责接收 Packet
  final PacketRecipientManager packetRecipientManager = PacketRecipientManager.shared;

  /// IM状态
  final WKStatusManager statusManage = WKStatusManager.shared;

  /// 设置 SDK 参数，必须先调用(initDB必须在SDK初始化之前调用)
  Future<bool> setup(
    WKIMOptions opts, {
    bool autoConnect = true,
    void Function(SDKCoreImplement implement)? customSDKImplement,
    void Function(WKIMCore self)? init,
    Future<void> Function()? initDB,
  }) async {
    if (isSetup) {
      Logs.info("已经初始化,无需重复调用");
      return isSetup;
    }
    try {
      options = opts;

      if (initDB != null) {
        await initDB();
      } else {
        await WKDB.shared.init();
      }
      if (init != null) {
        init(shared);
      }
      Logs.debug("初始化悟空数据库成功");

      connectionManager = ConnectionManager.shared;
      if (autoConnect) {
        connectionManager.connect();
      }
      PacketHandlerRegistry.registerDefaultHandlers();

      if (customSDKImplement != null) {
        customSDKImplement((type, instance, {bool override = false}) {
          // 添加类型安全检查
          switch (type) {
            case NotImplementedType.messageManager:
              if (instance is! WKMessageManager) {
                throw ArgumentError('必须实现 WKMessageManager 接口');
              }
              break;
            case NotImplementedType.channelManager:
              if (instance is! WKChannelManager) {
                throw ArgumentError('必须实现 WKChannelManager 接口');
              }
              break;
            case NotImplementedType.channelMemberManager:
              if (instance is! WKChannelMemberManager) {
                throw ArgumentError('必须实现 WKChannelMemberManager 接口');
              }
              break;
            case NotImplementedType.conversationManager:
              if (instance is! WKConversationManager) {
                throw ArgumentError('必须实现 WKConversationManager 接口');
              }
              break;
            case NotImplementedType.reminderManager:
              if (instance is! WKReminderManager) {
                throw ArgumentError('必须实现 WKReminderManager 接口');
              }
              break;
            case NotImplementedType.cmdManager:
              if (instance is! WKCMDManager) {
                throw ArgumentError('必须实现 WKCMDManager 接口');
              }
              break;
          }
          WKModuleRegistry.shared.register(type, instance, override: override);
        });
      } else {
        WKModuleRegistry.shared.registerDefault();
      }
      isSetup = true;
      return isSetup;
    } catch (e) {
      isSetup = false;
      rethrow;
    }
  }

  WKMessageManager get messageManager {
    return WKModuleRegistry.shared.get(NotImplementedType.messageManager) as WKMessageManager;
  }

  WKChannelManager get channelManager {
    return WKModuleRegistry.shared.get(NotImplementedType.channelManager) as WKChannelManager;
  }

  WKConversationManager get conversationManager {
    return WKModuleRegistry.shared.get(NotImplementedType.conversationManager) as WKConversationManager;
  }

  WKCMDManager get cmdManager {
    return WKModuleRegistry.shared.get(NotImplementedType.cmdManager) as WKCMDManager;
  }

  WKReminderManager get reminderManager {
    return WKModuleRegistry.shared.get(NotImplementedType.reminderManager) as WKReminderManager;
  }

  WKChannelMemberManager get channelMemberManager {
    return WKModuleRegistry.shared.get(NotImplementedType.reminderManager) as WKChannelMemberManager;
  }

  int get deviceFlag => options.deviceFlag;
}
