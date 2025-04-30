import 'dart:io';

import 'package:flutter/material.dart';
import 'package:wkim_flutter_sdk/common/options.dart';
import 'package:wkim_flutter_sdk/wkim.dart';
import 'package:wkim_flutter_sdk_example/channel_manager.dart';
import 'package:wkim_flutter_sdk_example/conversation_manager.dart';
import 'package:wkim_flutter_sdk_example/db/wk_db.dart';
import 'package:wkim_flutter_sdk_example/message_manager.dart';
import 'package:wkim_flutter_sdk_example/pages/conversation/conversation.dart';
import 'package:wkim_flutter_sdk_example/service/http.dart';

class LoginDemo extends StatefulWidget {
  const LoginDemo({super.key});
  @override
  LoginDemoState createState() => LoginDemoState();
}

class LoginDemoState extends State<LoginDemo> {
  var apiStr = '';
  var uidStr = '';
  var tokenStr = '';
  LoginDemoState() {
    // WKIMCore.shared.connectionManager.disconnect(false);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("登录"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 60.0),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      '悟空IM登录',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '悟空IM演示程序。当前SDK版本：V2.0',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 60, bottom: 0),
              child: TextField(
                onChanged: (val) {
                  apiStr = val;
                },
                decoration: const InputDecoration(labelText: 'API基地址', hintText: 'API基地址 默认【http://62.234.8.38:7090/v1】'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10, bottom: 0),
              child: TextField(
                onChanged: (val) {
                  uidStr = val;
                },
                decoration: const InputDecoration(labelText: 'uid', hintText: '登录uid【随意输入】'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10, bottom: 0),
              child: TextField(
                onChanged: (val) {
                  tokenStr = val;
                },
                decoration: const InputDecoration(labelText: 'token', hintText: '登录token【随意输入】'),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 30),
              child: MaterialButton(
                color: Colors.blue,
                height: 45,
                minWidth: 300,
                child: const Text(
                  '登录',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                onPressed: () async {
                  if (apiStr != '') {
                    HttpUtils.apiURL = apiStr;
                  }
                  if (uidStr == '' || tokenStr == '') {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('提示'),
                            content: const Text('uid和token不能为空'),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text("确定"),
                              ),
                            ],
                          );
                        });
                    return;
                  }
                  var status = await HttpUtils.login(uidStr, tokenStr);
                  if (status == HttpStatus.ok) {
                    // WKIMCore.shared.options.getAddr = (Function(String address) complete) async {
                    //   String ip = await HttpUtils.getIP(uidStr);
                    //   print(ip);
                    //   complete(ip);
                    // };
                    // WKIMCore.shared.options.getAddr;
                    WKIMCore.shared.setup(
                      WKIMOptions(uidStr, tokenStr, addr: "ws://175.27.245.108:15200"),
                      initDB: WKDB.shared.init,
                      bindSDKImplement: (implement) {
                        // 实现
                        implement(NotImplementedType.messageManager, DefaultWKMessageManager.shared);
                        implement(NotImplementedType.channelManager, DefaultWKChannelManager.shared);
                        implement(NotImplementedType.conversationManager, DefaultWKConversationManager.shared);
                      },
                    ).then((_) {
                      WKIMCore.shared.channelManager.getChannelWithAsync(uidStr, 1, true);
                      WKIMCore.shared.conversationManager.syncConversationToDB();
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => Conversation()), (Route<dynamic> route) => false);
                    });
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
