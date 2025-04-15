import '../proto/proto.dart';

class WKIMOptions {
  String? uid, token;
  String? addr;
  int protoVersion = 0x04;
  int deviceFlag = 0;
  bool debug = true;
  String deviceID = "";
  Function(Function(String addr) complete)? getAddr;
  Proto proto = Proto();
  WKIMOptions();

  WKIMOptions.setOpt(this.uid, this.token, {this.addr});
}
