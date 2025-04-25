import 'package:wkim_flutter_sdk/common/logs.dart';
import 'package:wkim_flutter_sdk/wkim.dart';

/// 修改后的模块注册表
class WKModuleRegistry {
  static final WKModuleRegistry _instance = WKModuleRegistry._internal();
  final _modules = <NotImplementedType, Object>{};

  WKModuleRegistry._internal();

  static WKModuleRegistry get shared => _instance;

  void register(NotImplementedType type, Object instance, {bool override = false}) {
    if (_modules.containsKey(type) && !override) {
      Logs.error('$type 注册类为【 ${instance.runtimeType} 】 模块已注册');
    }
    _modules[type] = instance;
    Logs.debug("注册模块 ${instance.runtimeType}");
  }

  T get<T>(NotImplementedType type) {
    final instance = _modules[type];
    if (instance == null) {
      Logs.error('$type 模块未注册');
    }
    return instance as T;
  }
}
