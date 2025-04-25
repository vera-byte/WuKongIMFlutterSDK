import 'package:isar/isar.dart';
import 'package:wkim_flutter_sdk/common/logs.dart';
import 'package:wkim_flutter_sdk/core/interface/channel_manager_interface.dart';
import 'package:wkim_flutter_sdk_example/db/wk_db.dart';
import 'package:wkim_flutter_sdk_example/entity/channel.dart';
import 'package:wkim_flutter_sdk_example/service/http.dart';

class DefaultWKChannelManager extends WKChannelManager {
  DefaultWKChannelManager._privateConstructor();
  static final DefaultWKChannelManager _instance = DefaultWKChannelManager._privateConstructor();
  static DefaultWKChannelManager get shared => _instance;
  final _isar = WKDB.shared.getDB()!;
  @override
  Future<WKChannel> getChannelWithAsync(String channelId, int channelType, bool? isFetch) async {
    final fetch = isFetch ?? true;
    WKChannel channel = WKChannel(channelId, channelType);

    try {
      // 查询本地缓存
      channel = await _isar.wKChannels.getByChannelIdChannelType(channelId, channelType) ?? channel;
      if (fetch) {
        // 获取网络用户信息（是否存在）
        channel = await HttpUtils.getChannelInfo(channelId, channelType);
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

  Stream<List<WKChannel>>? streamChannel(String channelId, int channelType) {
    return _isar.wKChannels.filter().channelIdEqualTo(channelId).channelTypeEqualTo(channelType).watch(fireImmediately: true);
  }
}
