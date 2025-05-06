import 'package:wkim_flutter_sdk/type/const.dart';
import 'package:wkim_flutter_sdk/wkim.dart';
part 'channel_member.g.dart';

@Collection()
@Name(WKDBConst.tableChannelMember)
class WKChannelMember {
  /// Isar 需要
  Id id = Isar.autoIncrement;
  @Index()
  String channelId = "";
  //频道类型
  @Index()
  int channelType = 0;
  //成员id
  @Index()
  String memberUID = "";
  //成员名称
  @Index()
  String memberName = "";
  //成员备注
  @Index()
  String memberRemark = "";
  //成员头像
  @Index()
  String memberAvatar = "";
  //成员角色
  @Index()
  int role = 0;
  //成员状态黑名单等1：正常2：黑名单
  @Index()
  int status = 0;
  //是否删除
  @Index()
  int isDeleted = 0;
  //创建时间
  @Index()
  String createdAt = "";
  //修改时间
  @Index()
  String updatedAt = "";
  //版本
  @Index()
  int version = 0;
  // 机器人0否1是
  @Index()
  int robot = 0;
  //扩展字段
  @Index()
  String extraMap = "";
  // 用户备注
  @Index()
  String remark = "";
  // 邀请者uid
  @Index()
  String memberInviteUID = "";
  // 被禁言到期时间
  @Index()
  int forbiddenExpirationTime = 0;
  @Index()
  String memberAvatarCacheKey = "";
}
