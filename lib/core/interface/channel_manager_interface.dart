abstract class WKChannelManager {
  /// 异步获取频道
  Future<dynamic> getChannelWithAsync(String channelId, int channelType, bool? isFetch);
}
