import 'dart:typed_data';

import 'package:wkim_flutter_sdk/common/logs.dart';
import 'package:wkim_flutter_sdk/core/packet_dispatcher.dart';
import 'package:wkim_flutter_sdk/proto/proto.dart';
import 'package:wkim_flutter_sdk/proto/write_read.dart';
import 'package:wkim_flutter_sdk/wkim.dart';

class PacketRecipientManager {
  static final PacketRecipientManager _instance = PacketRecipientManager._internal();
  static final _wk = WKIMCore.shared;
  factory PacketRecipientManager() => _instance;

  PacketRecipientManager._internal();

  /// 获取单例实例
  static PacketRecipientManager get shared => _instance;

  Uint8List? _cacheData;

  void cutDatas(Uint8List data) {
    // 合并上一次剩余数据
    _cacheData = _cacheData == null || _cacheData!.isEmpty ? data : Uint8List.fromList([..._cacheData!, ...data]);

    while (_cacheData!.isNotEmpty) {
      final readData = ReadData(_cacheData!);
      if (!readData.hasBytes(1)) break;

      final firstByte = readData.readUint8();
      final packetType = firstByte >> 4;

      // // Pong 包只占一个字节，直接跳过
      if (PacketType.values[packetType] == PacketType.pong) {
        Logs.info('pong...');
        _cacheData = _cacheData!.sublist(1);
        continue;
      }

      // packetType 合法性判断
      if (packetType >= 10) {
        _cacheData = null;
        _wk.connectionManager.connect(); // 错误包，重连
        break;
      }

      // 至少需要 5 个字节 (1 byte header + variable length 最长 4 字节)
      if (!readData.hasBytes(1)) break;

      final remainingLength = readData.readVariableLength();
      if (remainingLength == -1) {
        // 剩余长度字段不完整
        break;
      }

      if (remainingLength > (1 << 21)) {
        _cacheData = null;
        break;
      }

      final lengthBytes = encodeVariableLength(remainingLength);
      final totalPacketLength = 1 + lengthBytes.length + remainingLength;

      if (_cacheData!.length < totalPacketLength) {
        // 半包，等待下次补全
        break;
      }

      final packet = _cacheData!.sublist(0, totalPacketLength);

      try {
        dispatchPacket(packet);
      } catch (e, stack) {
        Logs.error('解码包异常: $e\n$stack');
      }

      _cacheData = _cacheData!.sublist(totalPacketLength);
    }
  }
}
