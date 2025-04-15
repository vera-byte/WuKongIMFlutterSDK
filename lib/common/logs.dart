import 'package:wkim_flutter_sdk/wkim.dart';

/// 日志级别
enum LogLevel { debug, info, error, warn }

/// 日志工具类，支持调试控制、等级区分、表情符号显示
class Logs {
  /// 是否启用日志（取决于 WKIM 配置）
  static bool get _enabled => WKIMCore.shared.options.debug;

  /// 日志打印核心方法
  static void _log(LogLevel level, Object msg) {
    if (!_enabled) return;

    final timestamp = DateTime.now().toIso8601String();
    final label = _levelLabel(level);
    final emoji = _levelEmoji(level);

    final formatted = "[$timestamp] $emoji [WKIM_$label] $msg";

    // 输出到控制台，可扩展为写入日志文件
    print(formatted);
  }

  /// 获取日志标签
  static String _levelLabel(LogLevel level) {
    switch (level) {
      case LogLevel.debug:
        return "DEBUG";
      case LogLevel.info:
        return "INFO";
      case LogLevel.warn:
        return "INFO";
      case LogLevel.error:
        return "ERROR";
    }
  }

  /// 获取对应等级的 Emoji 表情
  static String _levelEmoji(LogLevel level) {
    switch (level) {
      case LogLevel.debug:
        return "🐛";
      case LogLevel.info:
        return "ℹ️";
      case LogLevel.warn:
        return "⚠️";
      case LogLevel.error:
        return "❌";
    }
  }

  /// Debug 日志 🐛
  static void debug(Object msg) => _log(LogLevel.debug, msg);

  /// Info 日志 ℹ️
  static void info(Object msg) => _log(LogLevel.info, msg);

  /// Error 日志 ❌
  static void error(Object msg) => _log(LogLevel.error, msg);

  /// Warning 日志
  static void warn(Object msg) => _log(LogLevel.warn, msg);
}
