import 'package:isar/isar.dart';
import 'package:wkim_flutter_sdk/common/logs.dart';
import 'package:wkim_flutter_sdk/core/interface/channel_manager_interface.dart';
import 'package:wkim_flutter_sdk/db/wk_db.dart';
import 'package:wkim_flutter_sdk/entity/channel.dart';

class DefaultWKChannelManager extends WKChannelManager {
  DefaultWKChannelManager._privateConstructor();
  static final DefaultWKChannelManager _instance = DefaultWKChannelManager._privateConstructor();
  static DefaultWKChannelManager get shared => _instance;
  final _isar = WKDB.shared.getDB()!;

  @override
  Future<WKChannel> getChannelWithAsync(WKChannel channel, bool? isFetch) async {
    final fetch = isFetch ?? true;

    try {
      // 查询本地缓存
      channel = await _isar.wKChannels.getByChannelIdChannelType(channel.channelId, channel.channelType) ?? channel;
      if (fetch) {
        // 获取网络用户信息（是否存在）
        channel = await wk.networkHandler.fetchChannel(channel);
      }
      _isar.writeTxnSync(() {
        _isar.wKChannels.putByChannelIdChannelTypeSync(channel);
      });
      return channel;
    } catch (e) {
      Logs.error("获取频道信息失败$e");
      return channel;
    }
  }

  @override
  getChannelWithSync(WKChannel channel) {
    return _isar.wKChannels.getByChannelIdChannelTypeSync(channel.channelId, channel.channelType) ?? channel;
  }

  Stream<WKChannel?> streamChannel(String channelId, int channelType) {
    final c = _isar.wKChannels.filter().channelIdEqualTo(channelId).channelTypeEqualTo(channelType).findFirstSync();
    return _isar.wKChannels.watchObject(c?.id ?? 0, fireImmediately: true);
  }
}
