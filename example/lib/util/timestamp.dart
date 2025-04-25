import 'package:intl/intl.dart';

extension IntExtensions on int {
  /// 秒级时间戳转为人类可读时间格式 - IM
  /// 例如: 14:15、04-20
  /// 消息时间显示规则 - 列表
  /// 几分钟前：如果消息接收时间在1小时内，会显示具体的分钟数+前。例如，当前时间14:10，消息接收时间为14:05;则会显示"5分钟前"。
  /// X时:X分：如果消息接收时间在1小时以上但不超过24小时，会显示具体的时-分。例如，当前时间为16:00,当前消息是在早上8:00接收的，则显示08:00
  /// 昨天X时:X分 ：如果消息是接收时间在24小时以上48小时以内的，会显示"昨天+ X时:X分   例如：接收时间在昨天14:34, 则会显示昨天14:34
  /// 月-日：如果消息接收时间超过48小时，会显示具体的日期。例如，该条消息是在前天接收的，则会显示具体日期，如"04-20"。
  /// 年-月-日：如果消息接收时间超过一年，则显示具体年-月-日。如2024-04-20
  String formatMessageDate() {
    DateTime now = DateTime.now();
    DateTime messageDate = DateTime.fromMillisecondsSinceEpoch(this * 1000);
    Duration difference = now.difference(messageDate);
    if (difference.inSeconds < 60) {
      // 如果消息在60秒内发送，返回"刚刚"
      return '刚刚';
    } else if (difference.inMinutes < 60) {
      // 如果消息在60分钟内发送，返回具体的分钟数
      return '${difference.inMinutes}分钟前';
    } else if (messageDate.day == now.day) {
      // 如果消息在24小时内发送，返回消息的具体发送时间（小时:分钟）
      return DateFormat('HH:mm').format(messageDate);
    } else if (messageDate.day == now.day - 1) {
      // 如果消息在48小时内发送，返回"昨天"和消息的具体发送时间（小时:分钟）
      return '昨天${DateFormat('HH:mm').format(messageDate)}';
    } else if (now.year == messageDate.year) {
      // 如果消息在当前年份内发送，返回消息的具体发送日期（月-日）
      return DateFormat('MM-dd').format(messageDate);
    } else {
      // 如果消息在当前年份之前发送，返回消息的具体发送日期（年-月-日）
      return DateFormat('yyyy-MM-dd').format(messageDate);
    }
  }
}
