class UserInfo {
  static String uid = '';
  static String token = '';
  static String name = '';
}

class ChatChannel {
  String channelId;
  int channelType;
  ChatChannel(this.channelId, this.channelType);
}

class CommonUtils {
  static String getAvatar(String channelId) {
    if (channelId == '') {
      return '';
    }
    return channelId.substring(0, 1);
  }

  static String formatDateTime(int timestamp) {
    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    return "${dateTime.year}-${dateTime.month}-${dateTime.day} ${dateTime.hour}:${dateTime.minute}:${dateTime.second}";
  }
}
