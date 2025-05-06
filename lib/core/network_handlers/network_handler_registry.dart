// 注册器：用于注册 handler

import 'package:wkim_flutter_sdk/entity/channel.dart';
import 'package:wkim_flutter_sdk/entity/conversation.dart';
import 'package:wkim_flutter_sdk/entity/message.dart';

// import 'package:wkim_flutter_sdk/wkim.dart';

/// 获取频道行参
typedef AsyncWKChannelCallback = Future<WKChannel> Function(WKChannel chanel);

/// 获取历史消息
typedef AsyncWKHistoryMessageCallback = Future<WKChannel> Function(WKChannel chanel);

typedef AsyncWKSyncConversationCallback = Future<void> Function(String lastSsgSeqs, int count, int version, void Function(List<WKConversation>, List<WKMessage>) dataBack);

/// 网络处理器
class NetworkHandler {
  static final NetworkHandler _instance = NetworkHandler._internal();
  // static final _wk = WKIMCore.shared;
  factory NetworkHandler() => _instance;
  NetworkHandler._internal();

  /// 获取单例实例
  static NetworkHandler get shared => _instance;

  /// 调用频道资料方法
  AsyncWKChannelCallback fetchChannel = (chanel) => throw UnimplementedError('未注册网络处理器【频道资料】');

  /// 调用频道历史消息方法
  AsyncWKHistoryMessageCallback fetchChannelHistoryMessage = (chanel) => throw UnimplementedError('未注册网络处理器【频道历史消息】');

  AsyncWKSyncConversationCallback fetchSyncConversation = (lastSsgSeqs, count, version, Future) => throw UnimplementedError('未注册网络处理器【最近会话】');

  /// 频道资料
  void registryFetchChannel(AsyncWKChannelCallback function) => fetchChannel = function;

  /// 同步最近会话
  void registryFetchSyncConversation(AsyncWKSyncConversationCallback function) => fetchSyncConversation = function;

  /// 获取频道历史消息
  void registryFetchChannelHistoryMessage(AsyncWKHistoryMessageCallback function) => fetchChannelHistoryMessage = function;
}
