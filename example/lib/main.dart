import 'package:flutter/material.dart';
import 'package:wkim_flutter_sdk/common/options.dart';
import 'package:wkim_flutter_sdk/wkim.dart';

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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test'),
        ),
        body: ListView(
          children: [
            ElevatedButton(
                onPressed: () async {
                  try {
                    bool res = await WKIMCore.shared.setup(WKIMOptions.setOpt("123", "123", addr: "ws://175.27.245.108:15200"));
                    // WKIMCore.shared.options.getAddr = (Function(String address) complete) async {
                    //   String ws = await Future.value("ws://175.27.245.108:15200");
                    //   complete(ws);
                    // };
                    if (res) {
                      WKIMCore.shared.connectionManager.connect();
                    }
                  } catch (e) {
                    print(e);
                  }
                },
                child: Text("connect"))
          ],
        ),
      ),
    );
  }
}
