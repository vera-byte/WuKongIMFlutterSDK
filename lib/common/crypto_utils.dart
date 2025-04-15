import 'dart:convert';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:encrypt/encrypt.dart';
import 'package:x25519/x25519.dart';

class CryptoUtils {
  static late String _aesKey;
  static late String _salt;
  static late List<int> _dhPrivateKey;
  static late List<int> _dhPublicKey;

  /// 初始化 Diffie-Hellman 密钥对
  static void init() {
    final keyPair = generateKeyPair();
    _dhPrivateKey = keyPair.privateKey;
    _dhPublicKey = keyPair.publicKey;
  }

  /// 获取 Base64 编码的 DH 公钥
  static String getPublicKeyBase64() {
    return base64Encode(_dhPublicKey);
  }

  /// 计算字符串的 MD5 值
  static String generateMD5(String content) {
    return md5.convert(utf8.encode(content)).toString();
  }

  /// 设置服务端公钥和 salt，生成对称加密的 AES 密钥
  static void setServerKeyAndSalt(String serverPublicKeyBase64, String salt) {
    _salt = salt;
    final serverPublicKey = base64Decode(serverPublicKeyBase64);
    final sharedSecret = X25519(_dhPrivateKey, serverPublicKey);

    final hashed = generateMD5(base64Encode(sharedSecret));
    _aesKey = hashed.length > 16 ? hashed.substring(0, 16) : hashed;
  }

  /// 使用 AES CBC 模式加密
  static String aesEncrypt(String content) {
    try {
      final iv = IV(Uint8List.fromList(_salt.codeUnits));
      final key = Key(Uint8List.fromList(_aesKey.codeUnits));
      final encrypter = Encrypter(AES(key, mode: AESMode.cbc));

      return encrypter.encrypt(content, iv: iv).base64;
    } catch (e) {
      throw Exception("AES 加密失败: $e");
    }
  }

  /// 使用 AES CBC 模式解密
  static String aesDecrypt(String base64Content) {
    try {
      final iv = IV(Uint8List.fromList(_salt.codeUnits));
      final key = Key(Uint8List.fromList(_aesKey.codeUnits));
      final encrypter = Encrypter(AES(key, mode: AESMode.cbc));

      final encrypted = Encrypted(base64Decode(base64Content));
      return encrypter.decrypt(encrypted, iv: iv);
    } catch (e) {
      throw Exception("AES 解密失败: $e");
    }
  }
}
