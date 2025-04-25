library utils;

import 'dart:io';

import 'package:flutter/material.dart';

// 将屏幕的宽等比划分为 375 分
// 1 rpx = 手机屏幕宽度的 1 / 375
double rpx = 0;

class AdaptUtil {
  static double topPadding = 0;
  static double screenHeight = 0;
  static double screenWidth = 0;
  static double _bottomPadding = 0;
  static double _pixelRatio = 0;

  static double get bottomPadding {
    /// 部分安卓手机使用 MediaQuery 获取 bottomPadding 会返回 0
    /// 但实际还是底部圆角还是会遮挡部分内容
    /// 所以这里给了 bottomPadding 一个 最小值 20
    /// 想获得真实 bottomPadding 请使用 [realBottomPadding]
    if (_bottomPadding == 0) {
      return 20;
    }
    return _bottomPadding;
  }

  static double get realBottomPadding {
    return _bottomPadding;
  }

  static void initAdapt(BuildContext context, double draftWidth) {
    topPadding = MediaQuery.of(context).padding.top;
    _bottomPadding = MediaQuery.of(context).padding.bottom;
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    rpx = screenWidth / draftWidth;

    _pixelRatio = MediaQuery.of(context).devicePixelRatio;
  }

  /// 屏幕物理分辨率
  static double get physicalWidth => screenWidth * _pixelRatio;

  static double get physicalHeight => screenHeight * _pixelRatio;

  static double get pixelRatio => _pixelRatio;

  /// 输入框光标高度，Android IOS 分别适配
  static double? getCursorHeight(double height) {
    if (Platform.isIOS) {
      return height;
    }
    return null;
  }
}
