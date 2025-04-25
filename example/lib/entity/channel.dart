import 'package:isar/isar.dart';
import 'package:wkim_flutter_sdk/type/const.dart';
import 'package:wkim_flutter_sdk_example/entity/conversation.dart';
import 'package:wkim_flutter_sdk_example/entity/message.dart';

part 'channel.g.dart';

@Collection()
@Name(WKDBConst.tableChannel)
class WKChannel {
  /// Isar 需要
  Id? id;

  /// 频道id
  @Index(unique: true, composite: [CompositeIndex('channelType')])
  String channelId = "";

  /// 频道类型
  @Index()
  int channelType = 0;

  @Index()
  String channelName = "";
  //频道备注(频道的备注名称，个人的话就是个人备注，群的话就是群别名)
  @Index()
  String channelRemark = "";
  @Index()
  int showNick = 0;
  //是否置顶
  @Index()
  int top = 0;
  //是否保存在通讯录
  @Index()
  int save = 0;
  //免打扰
  @Index()
  int mute = 0;
  //禁言
  @Index()
  int forbidden = 0;
  //邀请确认
  @Index()
  int invite = 0;
  //频道状态[1：正常2：黑名单]
  @Index()
  int status = 1;
  //是否已关注 0.未关注（陌生人） 1.已关注（好友）
  @Index()
  int follow = 0;
  //是否删除
  @Index()
  int isDeleted = 0;
  //创建时间
  @Index()
  String createdAt = "";
  //修改时间
  String updatedAt = "";
  //频道头像
  @Index()
  String avatar = "";
  //版本
  @Index()
  int version = 0;
  //扩展字段
  @Index()
  String localExtra = "";
  //是否在线
  @Index()
  int online = 0;
  //最后一次离线时间
  @Index()
  int lastOffline = 0;
  // 最后一次离线设备标识
  @Index()
  int deviceFlag = 0;
  //是否回执消息
  @Index()
  int receipt = 0;
  // 机器人
  @Index()
  int robot = 0;
  //分类[service:客服]
  @Index()
  String category = "";
  @Index()
  String username = "";
  @Index()
  String avatarCacheKey = "";
  @Index()
  String remoteExtraMap = "";
  @Index()
  String parentChannelID = "";
  @Index()
  int parentChannelType = 0;

  @Backlink(to: 'channel') // 反向：频道拥有的消息
  final messages = IsarLinks<WKMessage>();

  @Backlink(to: 'channel') // 反向：频道拥有的会话
  final conversations = IsarLinks<WKConversation>();
  WKChannel(this.channelId, this.channelType);
}

class WKChannelSearchResult {
  WKChannel? channel;
  // 包含的成员名称
  String containMemberName = '';
}
