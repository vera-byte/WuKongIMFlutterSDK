import 'package:wkim_flutter_sdk/wkim.dart';

abstract class WKConversationManager {
  final wk = WKIMCore.shared;
  Future<dynamic> getConversationWithAsync(
    String channelId,
    int channelType,
  );

  /// 同步会话到数据库
  Future<void> syncConversationToDB();
  Future<void> update(dynamic conv);
  saveConversationToDB(conv);
  getLastMsgSeqs();
}
