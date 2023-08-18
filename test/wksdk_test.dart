import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:wukongimfluttersdk/wkim.dart';

void main() {
  test('cust data', () async {
    Uint8List data = Uint8List.fromList([
      82,
      159,
      1,
      0,
      0,
      32,
      101,
      50,
      48,
      48,
      52,
      97,
      98,
      97,
      52,
      102,
      51,
      99,
      51,
      53,
      97,
      50,
      101,
      53,
      55,
      101,
      101,
      57,
      48,
      101,
      99,
      52,
      100,
      56,
      55,
      54,
      55,
      56,
      0,
      2,
      119,
      101,
      0,
      2,
      119,
      101,
      1,
      0,
      33,
      55,
      57,
      51,
      53,
      57,
      48,
      50,
      53,
      50,
      48,
      51,
      97,
      52,
      49,
      54,
      102,
      57,
      100,
      56,
      49,
      100,
      50,
      98,
      48,
      99,
      55,
      97,
      97,
      52,
      51,
      56,
      53,
      49,
      23,
      123,
      212,
      114,
      78,
      128,
      0,
      0,
      0,
      0,
      0,
      17,
      100,
      222,
      44,
      191,
      81,
      67,
      89,
      70,
      55,
      70,
      106,
      109,
      48,
      71,
      65,
      116,
      56,
      49,
      68,
      110,
      118,
      87,
      76,
      55,
      71,
      67,
      49,
      70,
      90,
      105,
      54,
      89,
      114,
      77,
      84,
      76,
      103,
      100,
      112,
      65,
      86,
      67,
      103,
      109,
      76,
      52,
      43,
      88,
      54,
      117,
      78,
      65,
      43,
      104,
      103,
      110,
      115,
      102,
      100,
      65,
      66,
      69,
      115,
      97,
      106,
      83,
      54,
      75
    ]);
    // WKIM.shared.connectionManager.testCutData(data);
    Uint8List data1 = Uint8List.fromList([
      82,
      159,
      1,
      0,
      0,
      32,
      101,
      50,
      48,
      48,
      52,
      97,
      98,
      97,
      52,
      102,
      51,
      99,
      51,
      53,
      97,
      50,
      101,
      53,
      55,
      101,
      101,
      57,
      48,
      101,
      99,
      52,
      100,
      56,
      55,
      54,
      55,
      56,
      0,
      2,
      119,
      101,
      0,
      2,
      119,
      101,
      1,
      0,
      33,
      55,
      57,
      51,
      53,
      57,
      48,
      50,
      53,
      50,
      48,
      51,
      97,
      52,
      49,
      54,
      102,
      57,
      100,
      56,
      49,
      100,
      50,
      98,
      48,
      99,
      55,
      97,
      97,
      52,
      51,
      56,
      53,
      49,
      23,
      123,
      212,
      114,
      78,
      128,
      0,
      0,
      0,
      0,
      0,
      17,
      100,
      222,
      44,
      191,
      81,
      67,
      89,
      70,
      55,
      70,
      106,
      109,
      48,
      71,
      65,
      116,
      56,
      49,
      68,
      110,
      118,
      87,
      76,
      55,
      71,
      67,
      49,
      70,
      90,
      105,
      54,
      89,
      114,
      77,
      84,
      76,
      103,
      100,
      112,
      65,
      86,
      67,
      103,
      109,
      76,
      52,
      43,
      88,
      54,
      117,
      78,
      65,
      43,
      104,
      103,
      110,
      115,
      102,
      100,
      65,
      66,
      69,
      115,
      97,
      106,
      83,
      54,
      75,
      82,
      159,
      1,
      0,
      0,
      32,
      51,
      53,
      98,
      48,
      97,
      98,
      50,
      56,
      57,
      52,
      53,
      53,
      98,
      101,
      98,
      101,
      98,
      99,
      55,
      50,
      57,
      100,
      97,
      53,
      97,
      52,
      99,
      99,
      97,
      55,
      52,
      48,
      0,
      2,
      119,
      101,
      0,
      2,
      119,
      101,
      1,
      0,
      33,
      53,
      98,
      52,
      102,
      97,
      54,
      53,
      49,
      54,
      48,
      50,
      54,
      52,
      50,
      51,
      48,
      56,
      97,
      49,
      50,
      57,
      56,
      100,
      101,
      100,
      99,
      97,
      98,
      102,
      98,
      97,
      48,
      49,
      23,
      123,
      204,
      155,
      80,
      192,
      0,
      0,
      0,
      0,
      0,
      12,
      100,
      222,
      36,
      184,
      117,
      104,
      77,
      104,
      48,
      83,
      57,
      82,
      80,
      56,
      109,
      104,
      54,
      106,
      118,
      107,
      85,
      51,
      73,
      77,
      121,
      116,
      113,
      56,
      86,
      75,
      48,
      57,
      116,
      118,
      66,
      100,
      52,
      88,
      98,
      54,
      67,
      57,
      122,
      47,
      51,
      86,
      116,
      83,
      116,
      85,
      90,
      71,
      85,
      102,
      84,
      106,
      76,
      106,
      51,
      81,
      99,
      48,
      81,
      116,
      79,
      105,
      78,
      86
    ]);
    // WKIM.shared.connectionManager.testCutData(data1);
    Uint8List data2 = Uint8List.fromList([
      82,
      159,
      1,
      0,
      0,
      32,
      51,
      53,
      98,
      48,
      97,
      98,
      50,
      56,
      57,
      52,
      53,
      53,
      98,
      101,
      98,
      101,
      98,
      99,
      55,
      50,
      57,
      100,
      97,
      53,
      97,
      52,
      99,
      99,
      97,
      55,
      52,
      48,
      0,
      2,
      119,
      101,
      0,
      2,
      119,
      101,
      1,
      0,
      33,
      53,
      98,
      52,
      102,
      97,
      54,
      53,
      49,
      54,
      48,
      50,
      54,
      52,
      50,
      51,
      48,
      56,
      97,
      49,
      50,
      57,
      56,
      100,
      101,
      100,
      99,
      97,
      98,
      102,
      98,
      97,
      48,
      49,
      23,
      123,
      204,
      155,
      80,
      192,
      0,
      0,
      0,
      0,
      0,
      12,
      100,
      222,
      36,
      184,
      117,
      104,
      77,
      104,
      48,
      83,
      57,
      82,
      80,
      56,
      109,
      104,
      54,
      106,
      118,
      107,
      85,
      51,
      73,
      77,
      121,
      116,
      113,
      56,
      86,
      75,
      48,
      57,
      116,
      118,
      66,
      100,
      52,
      88,
      98,
      54,
      67,
      57,
      122,
      47,
      51,
      86
    ]);
    Uint8List data3 = Uint8List.fromList([
      116,
      83,
      116,
      85,
      90,
      71,
      85,
      102,
      84,
      106,
      76,
      106,
      51,
      81,
      99,
      48,
      81,
      116,
      79,
      105,
      78,
      86
    ]);
    WKIM.shared.connectionManager.testCutData(data2);
    sleep(const Duration(seconds: 5));
    WKIM.shared.connectionManager.testCutData(data3);
    WKIM.shared.connectionManager.testCutData(data1);
    WKIM.shared.connectionManager.testCutData(data);
  });
}
