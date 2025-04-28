import 'dart:convert';

class WKDBConst {
  static const tableMessage = 'message';
  static const tableMessageReaction = 'message_reaction';
  static const tableMessageExtra = 'message_extra';
  static const tableConversation = 'conversation';
  static const tableConversationExtra = 'conversation_extra';
  static const tableChannel = 'channel';
  static const tableChannelMember = 'channel_members';
  static const tableReminders = 'reminders';
  static const tableRobot = 'robot';
  static const tableRobotMenu = 'robot_menu';

  /// 针对 Dart 字符串优化的 64 位哈希算法 FNV-1a
  static int fastHash(String string) {
    var hash = 0xcbf29ce484222325;

    var i = 0;
    while (i < string.length) {
      final codeUnit = string.codeUnitAt(i++);
      hash ^= codeUnit >> 8;
      hash *= 0x100000001b3;
      hash ^= codeUnit & 0xFF;
      hash *= 0x100000001b3;
    }

    return hash;
  }

  static int readInt(dynamic data, String key) {
    dynamic result = data[key];
    if (result == Null || result == null) {
      return 0;
    }
    if (result is int) {
      return int.parse(result.toString());
    }
    return 0;
  }

  static String readString(dynamic data, String key) {
    dynamic result = data[key];
    if (result == Null || result == null) {
      return '';
    }
    return result.toString();
  }

  static dynamic readDynamic(dynamic data, String key) {
    String jsonStr = readString(data, key);
    if (jsonStr != '' && isJsonString(jsonStr)) {
      return jsonDecode(jsonStr);
    }
    return jsonStr;
  }

  static bool isJsonString(String str) {
    try {
      final parsed = json.decode(str);
      return parsed is Map || parsed is List;
    } on FormatException {
      return false;
    }
  }

  static String getPlaceholders(int count) {
    StringBuffer placeholders = StringBuffer();
    for (int i = 0; i < count; i++) {
      if (i != 0) {
        placeholders.write(", ");
      }
      placeholders.write("?");
    }
    return placeholders.toString();
  }
}

class WkMessageContentType {
  static const unknown = -1;
  static const text = 1;
  static const image = 2;
  static const gif = 3;
  static const voice = 4;
  static const video = 5;
  static const location = 6;
  static const card = 7;
  static const file = 8;
  static const contentFormatError = 97;
  static const insideMsg = 99;
}

class WKChannelType {
  static const personal = 1;
  static const group = 2;
  static const customerService = 3;
  static const community = 4;
  static const communityTopic = 5;
}

class WKSendMsgResult {
  //不在白名单内
  static const int notOnWhiteList = 13;
  //黑名单
  static const int blackList = 4;
  //不是好友或不在群内
  static const int noRelation = 3;
  //发送失败
  static const int sendFail = 2;
  //成功
  static const int sendSuccess = 1;
  //发送中
  static const int sendLoading = 0;
}

enum WKConnectStatus {
  //失败
  fail(0, "连接失败"),
  // 登录或者发送消息回执返回状态成功
  success(1, "连接成功"),
  //被踢（其他设备登录）
  kicked(2, "被踢:其他设备已登录"),
  //同步消息中
  syncMsg(3, "消息同步中..."),
  //连接中
  connecting(4, "连接中"),
  //无网络
  noNetwork(5, "无网络"),
  //c
  syncCompleted(6, "同步完成");

  final int value;
  final String label;

  const WKConnectStatus(this.value, this.label);

  static WKConnectStatus? fromCode(int code) {
    return WKConnectStatus.values.firstWhere((e) => e.value == code);
  }
}
