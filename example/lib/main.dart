import 'package:flutter/material.dart';
import 'package:wkim_flutter_sdk/common/options.dart';
import 'package:wkim_flutter_sdk/wkim.dart';
import 'package:wkim_flutter_sdk_example/channel_manager.dart';
import 'package:wkim_flutter_sdk_example/conversation_manager.dart';
import 'package:wkim_flutter_sdk_example/db/wk_db.dart';
import 'package:wkim_flutter_sdk_example/entity/channel.dart';
import 'package:wkim_flutter_sdk_example/entity/conversation.dart';
import 'package:wkim_flutter_sdk_example/entity/message.dart';
import 'package:wkim_flutter_sdk_example/message_manager.dart';
import 'package:wkim_flutter_sdk_example/pages/login.dart';
import 'package:wkim_flutter_sdk_example/service/http.dart';
import 'package:wkim_flutter_sdk_example/util/adapt.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.

  @override
  Widget build(BuildContext context) {
    AdaptUtil.initAdapt(context, 375);

    return MaterialApp(
      builder: (context, child) {
        return MediaQuery(
          /// 文本不随系统缩放
          data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
          child: GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: child!,
          ),
        );
      },
      home: LoginDemo(),
    );
  }
}
