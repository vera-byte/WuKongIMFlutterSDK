import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wkim_flutter_sdk_example/theme/color.dart';
import 'package:wkim_flutter_sdk_example/util/adapt.dart';

class BadgeNumber extends StatelessWidget {
  final int badge;
  final Widget? child;
  final double? left;
  final double? top;
  final double? right;
  final double? bottom;

  const BadgeNumber({
    super.key,
    required this.badge,
    this.child,
    this.left,
    this.top,
    this.right,
    this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child ?? const SizedBox.shrink(),
        if (badge > 0)
          Positioned(
            right: right,
            top: top,
            bottom: bottom,
            left: left,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 20 * rpx,
                minHeight: 20 * rpx,
                maxHeight: 20 * rpx,
                // maxWidth: 20 * rpx,
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 6 * rpx),
                decoration: BoxDecoration(
                  color: ColorConstant.danger6,
                  borderRadius: BorderRadius.circular(24 * rpx),
                  border: Border.all(color: ColorConstant.fillWhite, width: 1 * rpx),
                ),
                child: Center(
                  child: Text(
                    "${badge > 99 ? "99+" : badge}",
                    style: TextStyle(
                      color: ColorConstant.text1,
                      fontSize: 12 * rpx,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
