// WebSocket 连接管理核心
import 'dart:async';
import 'dart:io';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:wkim_flutter_sdk/common/logs.dart';
import 'package:wkim_flutter_sdk/wkim.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

/// WebSocket 连接管理类
class ConnectionManager {
  static final ConnectionManager _instance = ConnectionManager._internal();

  factory ConnectionManager() => _instance;

  ConnectionManager._internal();

  static ConnectionManager get shared => _instance;
  static final _wk = WKIMCore.shared;
  bool isReconnection = false;
  bool isNetworkUnavailable = false;
  ConnectivityResult? lastConnectivityResult;

  WebSocketChannel? ws; // WebSocket 通道
  final int reconnMilliseconds = 1500; // 重连间隔时间
  Timer? heartTimer; // 心跳定时器
  Timer? checkNetworkTimer;

  final heartIntervalSecond = const Duration(seconds: 60); // 心跳间隔
  final checkNetworkSecond = const Duration(seconds: 1);
  final Connectivity _connectivity = Connectivity();

  /// 连接服务器（通常用于首次连接或重新连接）
  Future<void> connect() async {
    Uri uri = Uri.parse(WKIMCore.shared.options.addr ?? "");
    try {
      if (uri.host == "") {
        throw Exception("连接地址无效");
      }
      Logs.info("开始连接：$uri"); // 记录连接开始日志
      ws = WebSocketChannel.connect(uri); // 连接 WebSocket
      Logs.info("连接成功"); // 记录连接成功日志
      /// 发送连接数据包
      _wk.packetSenderManage.sendConnectPacket();

      /// 监听ws消息
      _onWsEvnet();
    } catch (e) {
      /// 记录连接异常日志
      Logs.error("连接异常：$e");

      /// 处理连接错误
      _handleError();
      rethrow;
    }
  }

  /// 监听ws流
  _onWsEvnet() {
    Logs.info("监听WebScoket数据");
    ws!.stream.listen(
      (message) {
        _wk.packetRecipientManager.cutDatas(message);
        // _onMessageReceived(message); // 处理接收到的消息
      },
      onError: (error) {
        Logs.error("WebSocket 错误：$error"); // 记录错误日志
      },
      onDone: () {
        Logs.info("WebSocket 连接已关闭"); // 记录连接关闭日志
      },
      cancelOnError: true,
    );
  }

  /// 主动断开连接
  void disconnect(bool isLogout, {Function? back}) {
    isReconnection = true; // 设置为已断开连接

    if (isLogout) {
      WKIMCore.shared.options.uid = ''; // 清空用户 ID
      WKIMCore.shared.options.token = ''; // 清空用户 token
      back?.call(); // 调用回调函数
    }

    Logs.info("手动断开连接"); // 记录断开连接日志
    if (ws != null) {
      ws?.sink.close(); // 关闭 WebSocket 通道
      ws = null; // 清空 WebSocket
    }
  }

  /// 启动心跳检查
  void startHeartTimer() {
    heartTimer = Timer.periodic(heartIntervalSecond, (timer) {
      if (ws != null) {
        Logs.info("ping..."); // 记录心跳包发送日志
        _wk.packetSenderManage.sendPingPacket();
      }
    });
  }

  /// 开始网络检查
  startCheckNetworkTimer() {
    _stopCheckNetworkTimer();
    _checkInternetAccess().then((publicNetwork) {
      if (publicNetwork) {
        Logs.info("网络连接测试正常");
      } else {
        Logs.error("网络连接不通,请检查网络！");
      }
    });
    checkNetworkTimer = Timer.periodic(checkNetworkSecond, (timer) {
      var connectivityResult = _connectivity.checkConnectivity();
      connectivityResult.then((value) {
        if (value.contains(ConnectivityResult.none)) {
          isReconnection = true;
          isNetworkUnavailable = true;
          Logs.debug('网络断开了');
          // _checkSedingMsg();
          // setConnectionStatus(WKConnectStatus.noNetwork);
          lastConnectivityResult = ConnectivityResult.none;
        } else {
          isNetworkUnavailable = false;
          if (lastConnectivityResult != null && !value.contains(lastConnectivityResult)) {
            isReconnection = true;
          }
          if (isReconnection) {
            isReconnection = false;
            connect();
          }
        }
        if (value.isNotEmpty) {
          lastConnectivityResult = value[0];
        }
      });
    });
  }

  /// 停止网络状态检查
  _stopCheckNetworkTimer() {
    if (checkNetworkTimer != null) {
      checkNetworkTimer!.cancel();
      checkNetworkTimer = null;
    }
  }

  /// 检查网络是否能够访问互联网
  Future<bool> _checkInternetAccess() async {
    try {
      final lastest = "${WKIMCore.shared.options.addr}".split("//").last;
      Logs.debug("通过[$lastest]互联网网络连通测试...");
      final result = await InternetAddress.lookup(lastest[1]);
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } catch (_) {
      return false;
    }
  }

  /// 处理 WebSocket 连接错误
  void _handleError() {
    Logs.error("WebSocket 连接错误，尝试重连..."); // 记录连接错误日志
    disconnect(false); // 断开当前连接
    Future.delayed(Duration(milliseconds: reconnMilliseconds), () {
      connect(); // 重新连接
    });
  }
}
