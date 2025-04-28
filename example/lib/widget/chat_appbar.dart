import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wkim_flutter_sdk_example/channel_manager.dart';
import 'package:wkim_flutter_sdk_example/theme/color.dart';
import 'package:wkim_flutter_sdk_example/util/adapt.dart';
import 'package:wkim_flutter_sdk_example/widget/debounce_button.dart';
import 'package:wkim_flutter_sdk_example/widget/typing.dart';

class ChatAppbar extends StatelessWidget implements PreferredSizeWidget {
  final int channelType;
  final String channelId;
  const ChatAppbar({super.key, required this.channelType, required this.channelId});
  @override
  Widget build(BuildContext context) {
    ValueNotifier<int> showTyping = ValueNotifier<int>(0);

    return Container(
      padding: EdgeInsets.only(top: AdaptUtil.topPadding),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        border: const Border(
          bottom: BorderSide(
            color: ColorConstant.border1,
            width: 0.5,
          ),
        ),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16 * rpx),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DebounceButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: SvgPicture.asset(
                'assets/im/chat/arrow_left.svg',
                width: 24 * rpx,
                height: 24 * rpx,
                color: ColorConstant.text5,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: ValueListenableBuilder(
                    valueListenable: showTyping,
                    builder: (context, value, child) {
                      Future.delayed(const Duration(seconds: 2), () {
                        // chatController.showTyping.value = 0;
                      });
                      if (value == 1) {
                        return Row(
                          children: [
                            Text(
                              "正在输入", // 使用channel的name属性作为标题
                              style: TextStyle(
                                color: ColorConstant.text5,
                                fontSize: 18 * rpx,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              // height: 24 * rpx,
                              width: 20,
                              child: TypingText(
                                words: const ["..."],
                                style: TextStyle(
                                  color: ColorConstant.text5,
                                  fontSize: 18 * rpx,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )
                          ],
                        );
                      } else if (value == 2)
                        // ignore: curly_braces_in_flow_control_structures
                        return Text(
                          "正在同步消息", // 使用channel的name属性作为标题
                          style: TextStyle(
                            color: ColorConstant.text5,
                            fontSize: 18 * rpx,
                            fontWeight: FontWeight.w500,
                          ),
                        );
                      else
                        // ignore: curly_braces_in_flow_control_structures
                        return StreamBuilder(
                            stream: DefaultWKChannelManager.shared.streamChannel(channelId, channelType),
                            builder: (context, snapshot) {
                              final channel = snapshot.data;

                              return Text(
                                channel?.channelName ?? "", // 使用channel的name属性作为标题
                                style: TextStyle(
                                  color: ColorConstant.text5,
                                  fontSize: 18 * rpx,
                                  fontWeight: FontWeight.w500,
                                ),
                              );
                            });
                    },
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 50 * rpx);
}
