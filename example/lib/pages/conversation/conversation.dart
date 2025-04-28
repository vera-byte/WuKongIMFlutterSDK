import 'package:flutter/material.dart';
import 'package:wkim_flutter_sdk/wkim.dart';
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
              child: StreamBuilder(
                stream: WKIMCore.shared.statusManage.stream,
                builder: (context, snapshot) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${snapshot.data?.imStatus.label} 0",
                        style: TextStyle(
                          fontSize: 20 * rpx,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "节点(${snapshot.data?.nodeId})",
                        style: TextStyle(
                          fontSize: 10 * rpx,
                          color: ColorConstant.perfection3,
                        ),
                      ),
                    ],
                  );
                },
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
