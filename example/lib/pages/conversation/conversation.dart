import 'package:flutter/material.dart';
import 'package:wkim_flutter_sdk_example/conversation_manager.dart';
import 'package:wkim_flutter_sdk_example/theme/color.dart';
import 'package:wkim_flutter_sdk_example/util/adapt.dart';
import 'package:wkim_flutter_sdk_example/widget/conversation_item.dart';

class Conversation extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  Conversation({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ColorConstant.fillWhite,
      child: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 8 * rpx, horizontal: 16 * rpx),
              width: double.infinity,
              height: 44 * rpx,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 4 * rpx),
                      Text(
                        "连接中",
                        style: TextStyle(
                          fontSize: 20 * rpx,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 4 * rpx),
                      Text(
                        "0",
                        style: TextStyle(
                          fontSize: 20 * rpx,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      // DebounceButton(
                      //   onPressed: () {},
                      //   child: ImageGenerator.generate(src: 'assets/im/conversation/clean.svg', height: 30 * rpx, width: 30 * rpx),
                      // ),
                      // SizedBox(width: 18 * rpx),
                      // DebounceButton(
                      //   onPressed: () {},
                      //   child: ImageGenerator.generate(src: 'assets/im/conversation/settings.svg', height: 24 * rpx, width: 24 * rpx),
                      // ),
                      // SizedBox(width: 4 * rpx),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16 * rpx),
              height: 35 * rpx,
              decoration: const BoxDecoration(
                color: ColorConstant.warning1,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      // ImageGenerator.generate(
                      //   src: 'packages/maile_plugin_widget/assets/icons/complain.svg',
                      //   height: 20 * rpx,
                      //   width: 20 * rpx,
                      // ),
                      SizedBox(width: 4 * rpx),
                      Text(
                        "开启消息通知，第一时间获取最新动态~",
                        style: TextStyle(
                          color: ColorConstant.warning6,
                          fontSize: 13 * rpx,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                  // DebounceButton(
                  //   onPressed: () {
                  //     CustomLogger.instance.d(["去开启通知"]);
                  //   },
                  //   child: Row(
                  //     children: [
                  //       Text(
                  //         "去开启",
                  //         style: TextStyle(
                  //           color: ColorConstant.warning6,
                  //           fontSize: 13 * rpx,
                  //           fontWeight: FontWeight.w500,
                  //         ),
                  //       ),
                  //       Icon(
                  //         Icons.keyboard_arrow_right_outlined,
                  //         size: 17 * rpx,
                  //         color: ColorConstant.warning6,
                  //       )
                  //     ],
                  //   ),
                  // )
                ],
              ),
            ),
            Expanded(
              child: StreamBuilder(
                  stream: DefaultWKConversationManager.shared.getAllWithTimerRefresh(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData && snapshot.data!.isNotEmpty) {
                      final data = snapshot.data!;
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        physics: const AlwaysScrollableScrollPhysics(),
                        itemCount: data.length,
                        controller: _scrollController,
                        cacheExtent: 30,
                        // itemExtent: 90 * rpx,
                        prototypeItem: ConversationItem(data.first), // 优化 在未知ConversationItem的时候使用
                        itemBuilder: (context, index) => ConversationItem(
                          data[index],
                          key: Key(data[index].lastMsgSeq.toString()),
                        ),
                      );
                    } else if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    } else {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "暂无消息",
                            style: TextStyle(
                              color: ColorConstant.text5,
                              fontSize: 14 * rpx,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 4 * rpx),
                          Text(
                            "点击刷新或退出重进试试呢",
                            style: TextStyle(
                              color: ColorConstant.text3,
                              fontSize: 12 * rpx,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      );
                    }
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
