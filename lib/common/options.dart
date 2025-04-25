import 'package:wkim_flutter_sdk/common/logs.dart';

import '../proto/proto.dart';

class WKIMOptions {
  String? uid, token;
  String? addr;
  int protoVersion = 0x04;
  int deviceFlag = 0;
  bool debug = true;
  LogerLevel logerLevel = LogerLevel.debug;
  String deviceID = "";
  Function(Function(String addr) complete)? getAddr;
  Proto proto = Proto();
  WKIMOptions(this.uid, this.token, {this.addr});
}
