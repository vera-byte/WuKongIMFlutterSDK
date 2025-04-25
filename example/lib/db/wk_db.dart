import 'dart:io';

import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wkim_flutter_sdk/wkim.dart';
import 'package:wkim_flutter_sdk_example/entity/channel.dart';
import 'package:wkim_flutter_sdk_example/entity/channel_member.dart';
import 'package:wkim_flutter_sdk_example/entity/conversation.dart';
import 'package:wkim_flutter_sdk_example/entity/message.dart';

class WKDB {
  WKDB._privateConstructor();
  static final WKDB _instance = WKDB._privateConstructor();
  static WKDB get shared => _instance;
  final dbVersion = 1;
  Isar? _isar;
  Future<bool> init() async {
    if (_isar == null) {
      final dir = await getApplicationDocumentsDirectory();
      // 拼接你的数据库路径
      String databaseDir = "${dir.path}/isar/${WKIMCore.shared.options.uid}";

      // 检查数据库目录是否存在，如果不存在则创建
      final databaseDirectory = Directory(databaseDir);
      if (!await databaseDirectory.exists()) {
        await databaseDirectory.create(recursive: true); // 创建文件夹，包括中间的父级文件夹
      }
      _isar = await Isar.open(
        [WKChannelSchema, WKChannelMemberSchema, WKConversationSchema, WKMessageSchema],
        directory: databaseDir,
        name: "wk_${WKIMCore.shared.options.uid}",
      );
    }

    return _isar != null;
  }

  Isar? getDB() {
    return _isar;
  }

  close() {
    if (_isar != null) {
      _isar!.close();
      _isar = null;
    }
  }
}
