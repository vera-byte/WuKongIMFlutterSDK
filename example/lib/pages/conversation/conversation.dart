import 'package:flutter/material.dart';
import 'package:wkim_flutter_sdk/wkim.dart';
import 'package:wkim_flutter_sdk_example/conversation_manager.dart';
import 'package:wkim_flutter_sdk_example/pages/chat/chat.dart';
import 'package:wkim_flutter_sdk_example/service/http.dart';
import 'package:wkim_flutter_sdk_example/theme/color.dart';
import 'package:wkim_flutter_sdk_example/util/adapt.dart';
import 'package:wkim_flutter_sdk_example/widget/bottom_sheet.dart';
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StreamBuilder(
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
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          TextEditingController channelController = TextEditingController();
                          IMBottomSheet.showThemeConfirmBottomSheet(
                            context: context,
                            confirmText: "开始",
                            isShowCancelButton: false,
                            padding: EdgeInsets.symmetric(horizontal: 16 * rpx),
                            customContentWidget: SizedBox(
                              height: 120,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 16 * rpx, bottom: 12 * rpx),
                                    child: Text(
                                      '单聊',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: ColorConstant.text5, fontSize: 18 * rpx, fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  TextField(
                                    controller: channelController,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16.0 * rpx,
                                      color: ColorConstant.text5,
                                      height: 1.38,
                                    ),
                                    strutStyle: StrutStyle(
                                      fontSize: 16.0 * rpx,
                                      height: 1.38,
                                      forceStrutHeight: true,
                                    ),
                                    textInputAction: TextInputAction.send,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: '请输入频道ID',
                                      hintStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16.0 * rpx,
                                        color: ColorConstant.text2,
                                      ),
                                      constraints: BoxConstraints(
                                        // maxWidth: 210 * rpx,
                                        // minWidth: 210 * rpx,
                                        minHeight: 48.0 * rpx,
                                        maxHeight: 96 * rpx,
                                      ),
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 12.0 * rpx,
                                        vertical: 13 * rpx,
                                      ),
                                    ),
                                    minLines: 1,
                                    maxLines: 5,
                                    cursorColor: ColorConstant.brand6,
                                  )
                                ],
                              ),
                            ),
                            onConfirmCallback: () {
                              final v = channelController.text.trim();
                              if (v.isEmpty) return;
                              Navigator.pop(context);

                              WKIMCore.shared.channelManager.getChannelWithAsync(v, 1, true);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => Chat(
                                    channelType: 1,
                                    channelId: v,
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        icon: const Icon(Icons.emoji_people_sharp),
                      ),
                      IconButton(
                        onPressed: () {
                          TextEditingController groupNoController = TextEditingController();
                          IMBottomSheet.showThemeConfirmBottomSheet(
                            context: context,
                            confirmText: "创建群",
                            isShowCancelButton: false,
                            padding: EdgeInsets.symmetric(horizontal: 16 * rpx),
                            customContentWidget: SizedBox(
                              height: 120,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 16 * rpx, bottom: 12 * rpx),
                                    child: Text(
                                      '输入群号',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: ColorConstant.text5, fontSize: 18 * rpx, fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  TextField(
                                    controller: groupNoController,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16.0 * rpx,
                                      color: ColorConstant.text5,
                                      height: 1.38,
                                    ),
                                    strutStyle: StrutStyle(
                                      fontSize: 16.0 * rpx,
                                      height: 1.38,
                                      forceStrutHeight: true,
                                    ),
                                    textInputAction: TextInputAction.send,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: '请输入群号',
                                      hintStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16.0 * rpx,
                                        color: ColorConstant.text2,
                                      ),
                                      constraints: BoxConstraints(
                                        // maxWidth: 210 * rpx,
                                        // minWidth: 210 * rpx,
                                        minHeight: 48.0 * rpx,
                                        maxHeight: 96 * rpx,
                                      ),
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 12.0 * rpx,
                                        vertical: 13 * rpx,
                                      ),
                                    ),
                                    minLines: 1,
                                    maxLines: 5,
                                    cursorColor: ColorConstant.brand6,
                                  )
                                ],
                              ),
                            ),
                            onConfirmCallback: () {
                              final v = groupNoController.text.trim();
                              if (v.isEmpty) return;
                              Navigator.pop(context);

                              HttpUtils.createGroup(v).then((_) {
                                WKIMCore.shared.channelManager.getChannelWithAsync(v, 2, true);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => Chat(
                                      channelType: 2,
                                      channelId: v,
                                    ),
                                  ),
                                );
                              });
                            },
                          );
                        },
                        icon: const Icon(Icons.group_add),
                      ),
                    ],
                  )
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
