import 'package:flutter/material.dart';
import 'package:wkim_flutter_sdk_example/theme/color.dart';
import 'package:wkim_flutter_sdk_example/util/adapt.dart';
import 'package:wkim_flutter_sdk_example/widget/debounce_button.dart';

// 主要按钮
class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    this.width,
    this.height,
    this.controller,
    required this.text,
    required this.onPressed,
    this.enable = true,
    this.fontSize,
  });

  final double? width;
  final double? height;
  final String text;
  final VoidCallback onPressed;
  final ButtonController? controller;
  final bool enable;

  // 字体大小
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    final double buttonHeight = height ?? 45 * rpx;
    return ListenableBuilder(
        listenable: controller ?? ButtonController(),
        builder: (context, child) {
          Color btnBgColor = controller?.isEnable ?? true ? ColorConstant.brand6 : ColorConstant.fill2;
          Color textColor = controller?.isEnable ?? true ? ColorConstant.text5 : ColorConstant.text3;
          FontWeight fontWeight = enable ? FontWeight.w500 : FontWeight.w400;
          btnBgColor = enable ? btnBgColor : ColorConstant.fill2;
          textColor = enable ? textColor : ColorConstant.text3;

          bool canPress = controller?.isEnable ?? true && enable;

          return DebounceButton(
            // 如果 controller 为 null，则函数不会执行
            onPressed: canPress ? onPressed : () {},
            debounceDuration: const Duration(seconds: 1),
            child: Container(
              height: buttonHeight,
              width: width,
              decoration: BoxDecoration(color: btnBgColor, borderRadius: BorderRadius.circular(4 * rpx)),
              alignment: Alignment.center,
              child: Text(text, style: TextStyle(fontSize: fontSize ?? 15 * rpx, fontWeight: fontWeight, color: textColor)),
            ),
          );
        });
  }
}

// 镂空按钮
class HollowButton extends StatelessWidget {
  const HollowButton({
    super.key,
    this.width,
    this.height,
    required this.text,
    required this.onPressed,
    this.controller,
    this.fontSize,
    this.fontWeight,
    this.enable = true,
  });

  final double? width;
  final double? height;
  final String text;
  final VoidCallback onPressed;
  final ButtonController? controller;

  final bool enable;

  // 字体大小
  final double? fontSize;
  // 字重
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    final double buttonHeight = height ?? 45 * rpx;
    return ListenableBuilder(
        listenable: controller ?? ButtonController(),
        builder: (context, child) {
          final Color textColor = controller?.isEnable ?? true ? ColorConstant.text5 : ColorConstant.text2;

          bool canPress = controller?.isEnable ?? true && enable;

          return DebounceButton(
            // 如果 controller 为 null，则函数不会执行
            // onPressed: controller?.isEnable ?? false ? onPressed : () {},
            onPressed: canPress ? onPressed : () {},

            child: Container(
              height: buttonHeight,
              width: width,
              decoration: BoxDecoration(
                // color: ColorConstant.fillWhite,
                borderRadius: BorderRadius.circular(4 * rpx),
                border: Border.all(color: ColorConstant.border2, width: 0.5 * rpx),
              ),
              alignment: Alignment.center,
              child: Text(text, style: TextStyle(fontSize: fontSize ?? 15 * rpx, fontWeight: fontWeight ?? FontWeight.w400, color: textColor)),
            ),
          );
        });
  }
}

class ButtonController extends ChangeNotifier {
  bool _isEnable = true;

  ButtonController({bool isEnable = false}) : _isEnable = isEnable;

  bool get isEnable => _isEnable;

  set isEnable(bool value) {
    _isEnable = value;
    notifyListeners();
  }
}
