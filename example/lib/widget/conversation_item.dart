import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:wkim_flutter_sdk/entity/conversation.dart';
import 'package:wkim_flutter_sdk/wkim.dart';
import 'package:wkim_flutter_sdk_example/pages/chat/chat.dart';
import 'package:wkim_flutter_sdk_example/service/http.dart';
import 'package:wkim_flutter_sdk_example/theme/color.dart';
import 'package:wkim_flutter_sdk_example/util/adapt.dart';
import 'package:wkim_flutter_sdk_example/util/timestamp.dart';
import 'package:wkim_flutter_sdk_example/widget/avatar.dart';
import 'package:wkim_flutter_sdk_example/widget/badge_number.dart';
import 'package:wkim_flutter_sdk_example/widget/debounce_button.dart';

class ConversationItem extends StatelessWidget {
  final WKConversation conversationMsg;
  const ConversationItem(this.conversationMsg, {super.key});

  @override
  Widget build(BuildContext context) {
    /// 加载关联数据
    conversationMsg.channel.loadSync();
    conversationMsg.messages.loadSync();

    return Slidable(
      closeOnScroll: false,
      key: ValueKey(conversationMsg.channelId),
      groupTag: "1",
      endActionPane: ActionPane(
        extentRatio: 0.22,
        motion: const StretchMotion(),
        children: [
          SlidableAction(
            flex: 1,
            padding: EdgeInsets.zero,
            foregroundColor: ColorConstant.fillWhite,
            onPressed: (BuildContext context) {
              showModalBottomSheet(
                context: context,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8 * rpx),
                    topRight: Radius.circular(8 * rpx),
                  ),
                ),
                builder: (BuildContext context) {
                  return Container(
                    width: 375 * rpx,
                    height: 209 * rpx,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8 * rpx),
                        topRight: Radius.circular(8 * rpx),
                      ),
                      color: ColorConstant.fillWhite,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 40 * rpx, bottom: 40 * rpx, left: 16 * rpx, right: 16 * rpx),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              '您确认删除此会话？',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: ColorConstant.text5, fontSize: 18 * rpx, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Container(
                          height: 1 * rpx,
                          color: ColorConstant.border1,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 12 * rpx, bottom: 12 * rpx, left: 16 * rpx, right: 16 * rpx),
                          child: Row(
                            children: [
                              DebounceButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  width: 166 * rpx,
                                  height: 45 * rpx,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: ColorConstant.border2, width: 0.5 * rpx),
                                    borderRadius: BorderRadius.circular(4 * rpx),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '取消',
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
                                onPressed: () {
                                  // Navigator.pop(context);
                                  // IMUtil.deleteConversation(widget.conversationMsg.channelID, widget.conversationMsg.channelType);
                                },
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
                                      '确定',
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
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            label: "删除",
            backgroundColor: ColorConstant.danger5,
          )
        ],
      ),
      child: DebounceButton(
        behavior: HitTestBehavior.translucent,
        isCorrugated: true,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => Chat(
                channelType: conversationMsg.channelType,
                channelId: conversationMsg.channelId,
              ),
            ),
          );
        },
        child: StreamBuilder<ConversationViewModel>(
            stream: DefaultWKConversationManager.shared.conversationVMStream(conversationMsg),
            builder: (context, snapshot) {
              final vm = snapshot.data;
              if (vm == null) return const SizedBox.shrink();
              return Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12 * rpx,
                  vertical: 12 * rpx,
                ),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Color.fromARGB(115, 242, 243, 245)),
                  ),
                ),
                child: Row(
                  children: [
                    AvatarWidget("${HttpUtils.apiURL}${vm.channel?.avatar ?? ""}", size: 48 * rpx, borderRadius: 48 * rpx),
                    SizedBox(width: 12 * rpx),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                flex: 10,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        "${conversationMsg.channel.value?.channelName}",
                                        style: TextStyle(
                                          color: ColorConstant.text5,
                                          fontSize: 16 * rpx,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 9 * rpx),
                              Text(
                                vm.lastMessage?.timestamp.formatMessageDate() ?? "",
                                style: TextStyle(
                                  color: ColorConstant.text3,
                                  fontSize: 12 * rpx,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 2.5 * rpx),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                if (conversationMsg.unreadCount > 0)
                                  Text(
                                    '已读·',
                                    style: TextStyle(
                                      fontSize: 13 * rpx,
                                      color: ColorConstant.text3,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                Text(
                                  vm.lastMessage?.payload.content ?? "",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left, // 文本对齐方式
                                  softWrap: false, // 是否自动换行
                                  style: TextStyle(
                                    fontSize: 13 * rpx,
                                    color: ColorConstant.text3,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ]),
                              BadgeNumber(
                                badge: conversationMsg.unreadCount,
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
