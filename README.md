# 常见问题
Restarted application in 715ms.
[ERROR:flutter/runtime/dart_vm_initializer.cc(41)] Unhandled Exception: DioException [connection error]: The connection errored: Connection failed This indicates an error which most likely cannot be solved by the library.
Error: SocketException: Connection failed (OS Error: Operation not permitted, errno = 1), address = 62.234.8.38, port = 7090
#0      DioMixin.fetch (package:dio/src/dio_mixin.dart:523:7)
<asynchronous suspension>
#1      HttpUtils.login (package:wkim_flutter_sdk_example/service/http.dart:34:22)
<asynchronous suspension>
#2      LoginDemoState.build.<anonymous closure> (package:wkim_flutter_sdk_example/pages/login.dart:114:32)
<asynchronous suspension>
解决方案 DebugProfile.entitlements 中添加
```text
<key>com.apple.security.network.client</key>
<true/>
```
# 关系表(正向关联，反向关联) 反向关联无性能损耗，依赖正向关联
```text
消息表
WKMessage
 ├── fromChannel → WKChannel
 ├── channel     → WKChannel
 └── conversation→ WKConversation
会话表
WKConversation
 ├── channel     → WKChannel
 └── messages    ← @Backlink(to: 'conversation')
频道表
WKChannel
 ├── conversations ← @Backlink(to: 'channel') in WKConversation
 └── messages      ← @Backlink(to: 'channel') in WKMessage

```