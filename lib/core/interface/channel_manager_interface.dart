import 'package:wkim_flutter_sdk/entity/channel.dart';
import 'package:wkim_flutter_sdk/wkim.dart';

abstract class WKChannelManager {
  final wk = WKIMCore.shared;

  /// 异步获取频道
  Future<WKChannel> getChannelWithAsync(WKChannel channel, bool? isFetch);

  /// 同步获取频道
  WKChannel getChannelWithSync(WKChannel channel);
}
