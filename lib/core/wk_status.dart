import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:wkim_flutter_sdk/type/const.dart';

class ConnectionInfo {
  int nodeId;
  WKConnectStatus imStatus;
  ConnectivityResult? connectivityResult;
  ConnectionInfo(this.nodeId, {this.imStatus = WKConnectStatus.connecting});
  ConnectionInfo copyWith({
    int? nodeId,
    WKConnectStatus? imStatus,
    ConnectivityResult? connectivityResult,
  }) {
    return ConnectionInfo(
      nodeId ?? this.nodeId,
      imStatus: imStatus ?? this.imStatus,
    )..connectivityResult = connectivityResult ?? this.connectivityResult;
  }
}

class WKStatusManager {
  /// ✅ 单例实例
  static final WKStatusManager _instance = WKStatusManager._internal();

  /// ✅ 私有构造函数
  WKStatusManager._internal();

  /// ✅ 提供全局访问点
  static WKStatusManager get shared => _instance;

  /// ✅ 私有成员
  final _controller = StreamController<ConnectionInfo>.broadcast();
  ConnectionInfo _info = ConnectionInfo(0);

  Stream<ConnectionInfo> get stream => _controller.stream;

  ConnectionInfo get current => _info;
  void setStatus(ConnectionInfo info) {
    _info = info;
    _controller.add(_info);
  }

  void update(ConnectionInfo info) {
    _info = info;
    _controller.add(_info);
  }

  void updateStatus(WKConnectStatus status) {
    update(_info.copyWith(imStatus: status));
  }

  void updateConnectivity(ConnectivityResult result) {
    update(_info.copyWith(connectivityResult: result));
  }

  void dispose() {
    _controller.close();
  }
}
