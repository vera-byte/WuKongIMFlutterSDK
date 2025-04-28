import 'package:chat_bottom_container/chat_bottom_container.dart';
import 'package:extended_text_field/extended_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wkim_flutter_sdk_example/message_manager.dart';
import 'package:wkim_flutter_sdk_example/theme/color.dart';
import 'package:wkim_flutter_sdk_example/util/adapt.dart';
import 'package:wkim_flutter_sdk_example/util/emoji.dart';
import 'package:wkim_flutter_sdk_example/widget/chat_appbar.dart';
import 'package:wkim_flutter_sdk_example/widget/chat_message_row.dart';
import 'package:wkim_flutter_sdk_example/widget/debounce_button.dart';

enum PanelType {
  // 收起
  none,
  // 键盘
  keyboard,
  // 表情
  emoji,
  // 其它工具
  tool,
}

class Chat extends StatelessWidget {
  final int channelType;
  final String channelId;
  const Chat({super.key, required this.channelType, required this.channelId});

  @override
  Widget build(BuildContext context) {
    final ScrollController chatScrollController = ScrollController();
    final controller = ChatBottomPanelContainerController<PanelType>();
    final FocusNode focusNode = FocusNode();
    final TextEditingController textEditController = TextEditingController();
    ValueNotifier<PanelType> currentPanelType = ValueNotifier<PanelType>(PanelType.none);
    void _scrollToBottom() {
      // Ensure the scroll controller has been initialized and the position is available
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (chatScrollController.hasClients) {
          chatScrollController.jumpTo(chatScrollController.position.maxScrollExtent);
        }
      });
    }

    Widget _buildEmojiPickerPanel() {
      return Container(
        height: 300,
        child: const Center(
          child: Text("表情"),
        ),
      );
    }

    Widget _buildInputView() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 12.0 * rpx, vertical: 8 * rpx),
        child: Container(
          decoration: BoxDecoration(
            color: ColorConstant.fillWhite,
            borderRadius: BorderRadius.circular(8 * rpx),
          ),
          child: Row(
            children: [
              Expanded(
                child: ExtendedTextField(
                  selectionControls: MaterialTextSelectionControls(),
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
                  onSubmitted: (value) {
                    // focusNode.dispose();
                    // IMUtil.sendTextMessage(
                    //   value,
                    //   chatController.channelID,
                    //   chatController.channelType,
                    // );
                    // _textEditController.clear();
                  },
                  textInputAction: TextInputAction.send,
                  controller: textEditController,
                  specialTextSpanBuilder: EmojiSpecialTextSpanBuilder(Size(24 * rpx, 24 * rpx)),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '发消息...',
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
                  focusNode: focusNode,
                  minLines: 1,
                  maxLines: 5,
                  cursorColor: ColorConstant.brand6,
                ),
              ),
              SizedBox(width: 24 * rpx),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: 52 * rpx,
                    ),
                    child: Row(
                      children: [
                        DebounceButton(
                          onPressed: () {
                            controller.updatePanelType(
                              ChatBottomPanelType.other,
                              data: PanelType.emoji, // PanelType.tool
                            );
                          },
                          child: Container(
                            height: 34 * rpx,
                            width: 34 * rpx,
                            alignment: Alignment.centerLeft,
                            child: ValueListenableBuilder(
                              valueListenable: currentPanelType,
                              builder: (BuildContext context, PanelType value, Widget? child) => SvgPicture.asset(
                                currentPanelType.value == PanelType.emoji ? 'assets/im/chat/keyboard.svg' : 'assets/im/chat/emoji.svg',
                                height: 28.0 * rpx,
                                width: 28.0 * rpx,
                              ),
                            ),
                          ),
                        ),
                        textEditController.text.trim().isEmpty
                            ? DebounceButton(
                                onPressed: () {
                                  controller.updatePanelType(
                                    ChatBottomPanelType.other,
                                    data: PanelType.tool, // PanelType.tool
                                  );
                                },
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  height: AdaptUtil.topPadding,
                                  width: 34 * rpx,
                                  child: SvgPicture.asset(
                                    'assets/im/chat/add.svg',
                                    height: 28.0 * rpx,
                                    width: 28.0 * rpx,
                                  ),
                                ),
                              )
                            : Padding(
                                padding: EdgeInsets.all(4.0 * rpx),
                                child: DebounceButton(
                                  onPressed: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: ColorConstant.brand6,
                                      borderRadius: BorderRadius.circular(8.0 * rpx),
                                    ),
                                    alignment: Alignment.center,
                                    width: 62 * rpx,
                                    height: 40 * rpx,
                                    child: Text(
                                      "发送",
                                      style: TextStyle(color: ColorConstant.text5, fontWeight: FontWeight.w500, fontSize: 16 * rpx),
                                    ),
                                  ),
                                ),
                              ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      );
    }

    Widget _buildToolPanel() {
      return Container(
        height: 500,
        child: const Center(
          child: Text("工具面板"),
        ),
      );
    }

    Widget _buildPanelContainer() {
      return ChatBottomPanelContainer<PanelType>(
        controller: controller,
        inputFocusNode: focusNode,
        otherPanelWidget: (type) {
          // Return the custom panel view
          if (type == null) return const SizedBox.shrink();
          switch (type) {
            case PanelType.emoji:
              return _buildEmojiPickerPanel();
            case PanelType.tool:
              return _buildToolPanel();
            default:
              return const SizedBox.shrink();
          }
        },
        onPanelTypeChange: (panelType, data) {
          // Record the current panel type
          switch (panelType) {
            case ChatBottomPanelType.none:
              currentPanelType.value = PanelType.none;
              break;
            case ChatBottomPanelType.keyboard:
              currentPanelType.value = PanelType.keyboard;
              break;
            case ChatBottomPanelType.other:
              if (data == null) return;
              switch (data) {
                case PanelType.emoji:
                  currentPanelType.value = PanelType.emoji;
                  break;
                case PanelType.tool:
                  currentPanelType.value = PanelType.tool;
                  break;
                default:
                  currentPanelType.value = PanelType.none;
                  break;
              }
              break;
          }
        },
        panelBgColor: Colors.transparent,
      );
    }

    return GestureDetector(
      onTap: () {
        focusNode.unfocus();
      },
      child: AnnotatedRegion(
        value: const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: ColorConstant.fill2,
          appBar: ChatAppbar(channelId: channelId, channelType: channelType),
          body: Column(
            children: [
              Expanded(
                child: StreamBuilder(
                  stream: DefaultWKMessageManager.shared.getChatMessages(channelId, channelType),
                  builder: (context, snapshot) {
                    if (snapshot.hasData && snapshot.data!.isNotEmpty) {
                      _scrollToBottom();

                      final data = snapshot.data!;
                      return ListView.builder(
                        clipBehavior: Clip.none,
                        shrinkWrap: true,
                        reverse: true,
                        padding: EdgeInsets.zero,
                        itemCount: data.length,
                        controller: chatScrollController,
                        cacheExtent: 40,
                        // prototypeItem: ChatMessageRow(msg: data.first),
                        itemBuilder: (BuildContext context, int index) {
                          return ChatMessageRow(msg: data[index]);
                        },
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
                  },
                ),
              ),
              _buildInputView(),
              _buildPanelContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
