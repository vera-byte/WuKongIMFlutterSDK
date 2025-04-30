import 'package:flutter/material.dart';
import 'package:wkim_flutter_sdk_example/theme/color.dart';
import 'package:wkim_flutter_sdk_example/util/adapt.dart';
import 'package:wkim_flutter_sdk_example/widget/custom_rich_texts.dart';
import 'package:wkim_flutter_sdk_example/widget/debounce_button.dart';
import 'package:wkim_flutter_sdk_example/widget/primary_button.dart';

class IMBottomSheet {
  /// 二次确认 bottomSheet item 横向排列
  static Future<dynamic> showThemeConfirmBottomSheet({
    required BuildContext context,
    String? content,
    // 展示内容的边距 (如果使用了 [customContentWidget] 属性，请将 padding 设置为 zero)
    EdgeInsets? padding,
    TextAlign textAlign = TextAlign.left,
    String? subContent,
    String? confirmText,
    String? cancelText,
    required VoidCallback onConfirmCallback,
    VoidCallback? onCancelCallback,
    bool isShowCancelButton = true,
    // 自定义组件，取代 content 和 subContent
    Widget? customContentWidget,
  }) async {
    showCustomBottomSheet(
        context,
        SizedBox(
          width: 375 * rpx,
          child: Column(
            children: [
              Container(
                padding: padding ?? EdgeInsets.only(top: 40 * rpx, bottom: 40 * rpx, left: 16 * rpx, right: 16 * rpx),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: ColorConstant.border1,
                      width: .5 * rpx,
                    ),
                  ),
                ),

                /// 如果有自定义组件，用自定义内容组件替代 content 和 subContent
                child: customContentWidget ??
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: 330 * rpx,
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              content ?? '提示',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: ColorConstant.text5, fontSize: 18 * rpx, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        subContent != null
                            ? Padding(
                                padding: EdgeInsets.only(top: 8 * rpx),
                                child: CustomRichTexts(
                                  textAlign: textAlign,
                                  text: subContent,
                                  style: TextStyle(color: ColorConstant.text3, fontSize: 14 * rpx, fontWeight: FontWeight.w400),
                                  boldStyle: TextStyle(fontSize: 14 * rpx, color: ColorConstant.orange6, fontWeight: FontWeight.w500, fontFamily: 'PingFang SC'),
                                ),
                              )
                            : const SizedBox.shrink(),
                      ],
                    ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16 * rpx, vertical: 12 * rpx),
                child: isShowCancelButton
                    ? Row(
                        children: [
                          // 不保存
                          DebounceButton(
                            onPressed: () {
                              if (onCancelCallback != null) {
                                onCancelCallback();
                              } else {
                                Navigator.pop(context);
                              }
                            },
                            child: Container(
                              // padding: EdgeInsets.symmetric(horizontal: 60 * rpx, vertical: 12 * rpx),
                              width: 166 * rpx,
                              height: 45 * rpx,
                              decoration: BoxDecoration(
                                border: Border.all(color: ColorConstant.border2, width: 0.5 * rpx),
                                borderRadius: BorderRadius.circular(4 * rpx),
                              ),
                              child: Center(
                                child: Text(
                                  cancelText ?? '取消',
                                  style: TextStyle(
                                    color: ColorConstant.text5,
                                    fontSize: 15 * rpx,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          DebounceButton(
                            onPressed: onConfirmCallback,
                            child: Container(
                              width: 166 * rpx,
                              height: 45 * rpx,
                              // padding: EdgeInsets.symmetric(horizontal: 60 * rpx, vertical: 12 * rpx),
                              decoration: BoxDecoration(
                                color: ColorConstant.brand6,
                                border: Border.all(color: ColorConstant.border2, width: 0.5 * rpx),
                                borderRadius: BorderRadius.circular(4 * rpx),
                              ),
                              child: Center(
                                child: Text(
                                  confirmText ?? '确定',
                                  style: TextStyle(
                                    color: ColorConstant.text5,
                                    fontSize: 15 * rpx,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    // 只展示「知道了」(确定) 按钮
                    : PrimaryButton(onPressed: onConfirmCallback, text: confirmText ?? '知道了', height: 45 * rpx),
              ),
              SizedBox(height: AdaptUtil.bottomPadding + 5 * rpx),
            ],
          ),
        ));
  }

  /// 全局 bottomSheet
  static Future<dynamic> showCustomBottomSheet(BuildContext context, Widget child, {bool? isDismissible}) {
    return showModalBottomSheet(
      enableDrag: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8 * rpx),
          topRight: Radius.circular(8 * rpx),
        ),
      ),
      isDismissible: isDismissible ?? true,
      clipBehavior: Clip.hardEdge,
      // opacity
      // 背景颜色，会与 ThemeData 中的背景色做混合运算，not a pure color
      // backgroundColor: Colors.blue,
      // bottomSheet 之外的颜色(蒙层颜色)
      // barrierColor: Colors.red,
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          // ↓ 禁用 IOS 自带的弹性滚动，会导致问题，不信可以注释掉看看
          physics: const ClampingScrollPhysics(),
          child: Container(
            clipBehavior: Clip.hardEdge,
            // 不加此处的 padding 会导致当 bottomSheet 中内嵌键盘时 底部弹窗不会被键盘的高度所顶起
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8 * rpx),
            ),
            child: child,
          ),
        );
      },
    );
  }
}
