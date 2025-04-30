import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:wkim_flutter_sdk/type/const.dart';
import 'package:wkim_flutter_sdk/wkim.dart';
import 'package:wkim_flutter_sdk_example/entity/message.dart';
import 'package:wkim_flutter_sdk_example/service/http.dart';
import 'package:wkim_flutter_sdk_example/theme/color.dart';
import 'package:wkim_flutter_sdk_example/util/adapt.dart';
import 'package:wkim_flutter_sdk_example/widget/avatar.dart';
import 'package:wkim_flutter_sdk_example/widget/text_message_content.dart';

class ChatMessageRow extends StatelessWidget {
  final WKMessage msg;

  const ChatMessageRow({Key? key, required this.msg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool self = msg.fromUid == WKIMCore.shared.options.uid;

    return Padding(
      padding: EdgeInsets.only(
        top: 12 * rpx,
        left: 12 * rpx,
        right: 12 * rpx,
        // bottom: 12 * rpx,
      ),
      child: Column(
        crossAxisAlignment: self ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          // 消息时间
          // msg.buildMessageTime(previousMsg),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: self ? MainAxisAlignment.end : MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (!self)
                Padding(
                  padding: EdgeInsets.only(right: 8 * rpx),
                  child: GestureDetector(
                    onTap: () {},
                    child: AvatarWidget("${HttpUtils.apiURL}${msg.channel.value?.avatar}", size: 36 * rpx, borderRadius: 18 * rpx),
                  ),
                ),
              Column(
                crossAxisAlignment: self ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                children: [
                  if (!self && msg.channelType == WKChannelType.group)
                    Text(
                      msg.channel.value?.channelName ?? "",
                      style: TextStyle(
                        fontSize: 12 * rpx,
                        color: ColorConstant.text3,
                      ),
                    ),
                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onLongPress: () {
                      // onMessageLongPress(msg);
                    },
                    child: buildMessageContent(self, context),
                  ),
                  // 媒体消息

                  /// 消息回执
                  /// 发送中、已送达、发送失败
                  if (self)
                    GestureDetector(
                      onTap: () {
                        // if (msg.status == IMSendMsgResult.sendFail) {
                        // 重新发送
                        // UiUtil.showCustomBottomSheet(
                        //   context,
                        //   Container(
                        //     color: ColorConstant.fill1,
                        //     child: Column(
                        //       children: [
                        //         DebounceButton(
                        //           onPressed: () {
                        //             Navigator.pop(context);
                        //             switch (msg.contentType) {
                        //               case WkMessageContentType.text:
                        //                 IMUtil.sendTextMessage(msg.messageContent!.content, msg.channelID, msg.channelType);
                        //                 break;
                        //               case WkMessageContentType.image:
                        //               case WkMessageContentType.video:
                        //                 IMUtil.sendMediaMessage(mediaList: [msg.messageContent as CustomWKMediaContent], channelID: msg.channelID, type: msg.channelType);
                        //                 break;
                        //               case WkMessageContentType.file:
                        //                 IMUtil.sendFileMessage(f: msg.messageContent as CustomWKMediaContent, channelID: msg.channelID, channelType: msg.channelType);
                        //                 break;
                        //               case CustomWkMessageContentType.carCard:
                        //                 IMUtil.sendCarCardMessage(f: msg.messageContent as CustomCarCardConetnt, channelID: msg.channelID, channelType: msg.channelType);
                        //                 break;
                        //               case CustomWkMessageContentType.checkOrgCard:
                        //                 IMUtil.sendCheckGoodsCardMessage(f: msg.messageContent as CustomCheckGoodsCardConetnt, channelID: msg.channelID, channelType: msg.channelType);
                        //                 break;
                        //               default:
                        //                 break;
                        //             }
                        //             // WKIM.shared.messageManager.deleteWithClientMsgNo(msg.clientMsgNO);
                        //             chatController.deleteMessage(msg);
                        //           },
                        //           child: Container(
                        //             padding: EdgeInsets.only(top: 24 * rpx, bottom: 16 * rpx),
                        //             decoration: BoxDecoration(
                        //               color: ColorConstant.fillWhite,
                        //               border: Border(bottom: BorderSide(color: ColorConstant.border1, width: 1 * rpx)),
                        //             ),
                        //             child: Center(
                        //               child: Text(
                        //                 '重新发送',
                        //                 style: TextStyle(
                        //                   color: ColorConstant.text5,
                        //                   fontSize: 16 * rpx,
                        //                   fontWeight: FontWeight.w400,
                        //                 ),
                        //               ),
                        //             ),
                        //           ),
                        //         ),
                        //         SizedBox(height: 8 * rpx),
                        //         DebounceButton(
                        //           onPressed: () {
                        //             Navigator.pop(context);
                        //           },
                        //           child: Container(
                        //             color: ColorConstant.fillWhite,
                        //             padding: EdgeInsets.only(top: 16 * rpx, bottom: 16 * rpx + AdaptUtil.bottomPadding),
                        //             child: Center(
                        //               child: Text(
                        //                 '取消',
                        //                 style: TextStyle(
                        //                   color: ColorConstant.text5,
                        //                   fontSize: 16 * rpx,
                        //                   fontWeight: FontWeight.w400,
                        //                 ),
                        //               ),
                        //             ),
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // );
                        // }
                      },
                      child: Padding(
                        padding: EdgeInsets.all(4.0 * rpx),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // if (sendCallBack.icon != null)
                            //   Padding(
                            //     padding: EdgeInsets.only(right: 2 * rpx),
                            //     child: SvgPicture.asset(
                            //       "${sendCallBack.icon}",
                            //       width: 18 * rpx,
                            //       height: 18 * rpx,
                            //     ),
                            //   ),
                            // Text(
                            //   sendCallBack.text,
                            //   style: TextStyle(
                            //     fontSize: 11 * rpx,
                            //     color: ColorConstant.text4,
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
              if (self)
                Padding(
                  padding: EdgeInsets.only(left: 8 * rpx),
                  child: GestureDetector(
                    onTap: () {
                      // RouterHelper.push(context, const PersonalHomepage());
                    },
                    child: AvatarWidget("${HttpUtils.apiURL}${msg.fromChannel.value?.avatar}", size: 36 * rpx, borderRadius: 18 * rpx),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildMessageContent(bool self, BuildContext context) {
    Future<bool> checkAssetExists(String assetPath) async {
      try {
        final manifestContent = await rootBundle.loadString('AssetManifest.json');
        final Map<String, dynamic> manifestMap = json.decode(manifestContent);
        return manifestMap.containsKey(assetPath);
      } catch (e) {
        print('Error loading asset manifest: $e');
        return false;
      }
    }

    switch (msg.contentType) {
      // case CustomWkMessageContentType.checkOrgCard:
      //   final content = msg.messageContent as CustomCheckGoodsCardConetnt;
      //   return DebounceButton(
      //     onPressed: () {
      //       Navigator.pushNamed(context, SafetyProjectDetailPage.routeName, arguments: {
      //         "no": content.on,
      //         "mobile": "",
      //       });
      //     },
      //     child: Container(
      //       // height: 110 * rpx,
      //       width: 260 * rpx,
      //       padding: EdgeInsets.all(12 * rpx),
      //       decoration: BoxDecoration(
      //         color: ColorConstant.fillWhite,
      //         borderRadius: BorderRadius.circular(8 * rpx),
      //       ),
      //       child: Row(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           MaileCachedImage(
      //             src: AdaptUtil.getResizeAliOssAssetUrl(imageUrl: GlobalConfig.IMAGE_BASE_URL + content.coverImage, w: 80 * rpx * AdaptUtil.pixelRatio, h: 60 * rpx * AdaptUtil.pixelRatio),
      //             height: 60 * rpx,
      //             width: 80 * rpx,
      //             fit: BoxFit.cover,
      //             radius: 4 * rpx,
      //           ),
      //           SizedBox(width: 8 * rpx),
      //           Expanded(
      //             child: Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 Text(
      //                   content.title,
      //                   maxLines: 2,
      //                   overflow: TextOverflow.ellipsis,
      //                   style: TextStyle(
      //                     color: ColorConstant.text5,
      //                     fontSize: 14 * rpx,
      //                     fontWeight: FontWeight.w500,
      //                   ),
      //                 ),
      //                 Text.rich(
      //                   style: TextStyle(
      //                     color: ColorConstant.danger6,
      //                     fontSize: 16 * rpx,
      //                     fontFamily: "HarmonyOS_Sans",
      //                     fontWeight: FontWeight.w700,
      //                   ),
      //                   TextSpan(
      //                     children: [
      //                       TextSpan(
      //                         text: "¥",
      //                         style: TextStyle(
      //                           fontSize: 13 * rpx,
      //                           fontWeight: FontWeight.w500,
      //                         ),
      //                       ),
      //                       TextSpan(
      //                         text: content.price,
      //                       ),
      //                     ],
      //                   ),
      //                   maxLines: 2,
      //                   overflow: TextOverflow.ellipsis,
      //                 ),
      //               ],
      //             ),
      //           )
      //         ],
      //       ),
      //     ),
      //   );
      // case CustomWkMessageContentType.carCard:
      //   final content = msg.messageContent as CustomCarCardConetnt;
      //   return DebounceButton(
      //     onPressed: () {
      //       Navigator.pushNamed(context, CarDetailInformationPage.routeName, arguments: {
      //         'no': content.on,
      //       });
      //     },
      //     child: Container(
      //       // height: 110 * rpx,
      //       width: 260 * rpx,
      //       padding: EdgeInsets.only(top: 12 * rpx, left: 12 * rpx, right: 12 * rpx, bottom: 8 * rpx),
      //       decoration: BoxDecoration(
      //         color: ColorConstant.fillWhite,
      //         borderRadius: BorderRadius.circular(8 * rpx),
      //       ),
      //       child: Row(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           MaileCachedImage(
      //             src: AdaptUtil.getResizeAliOssAssetUrl(imageUrl: GlobalConfig.IMAGE_BASE_URL + content.coverImage, w: 80 * rpx * AdaptUtil.pixelRatio, h: 60 * rpx * AdaptUtil.pixelRatio),
      //             height: 60 * rpx,
      //             width: 80 * rpx,
      //             fit: BoxFit.cover,
      //             radius: 4 * rpx,
      //           ),
      //           SizedBox(width: 8 * rpx),
      //           Expanded(
      //             child: Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 Text(
      //                   content.title,
      //                   maxLines: 2,
      //                   overflow: TextOverflow.ellipsis,
      //                   style: TextStyle(
      //                     color: ColorConstant.text5,
      //                     fontSize: 14 * rpx,
      //                     fontWeight: FontWeight.w500,
      //                   ),
      //                 ),
      //                 Text(
      //                   content.subTitle,
      //                   maxLines: 1,
      //                   overflow: TextOverflow.ellipsis,
      //                   style: TextStyle(
      //                     color: ColorConstant.text3,
      //                     fontSize: 12 * rpx,
      //                     fontWeight: FontWeight.w400,
      //                   ),
      //                 ),
      //                 Text(
      //                   content.price,
      //                   maxLines: 2,
      //                   overflow: TextOverflow.ellipsis,
      //                   style: TextStyle(
      //                     color: ColorConstant.danger6,
      //                     fontSize: 16 * rpx,
      //                     fontFamily: "HarmonyOS_Sans",
      //                     fontWeight: FontWeight.w700,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           )
      //         ],
      //       ),
      //     ),
      //   );
      // case WkMessageContentType.image:
      // case WkMessageContentType.video:
      //   return MediaMessageContent(
      //     media: msg.messageContent as CustomWKMediaContent,
      //     onTap: (String key, int type) {
      //       mediaOnTap(key);
      //     },
      //   );
      // case WkMessageContentType.file:
      //   final fileContent = msg.messageContent as CustomWKMediaContent;
      //   final assetPath = "assets/im/chat/${fileContent.fileSuffix}.svg";
      //   const fallbackPath = "assets/im/chat/other.svg";
      //   return DebounceButton(
      //     onPressed: () {
      //       // 微震动
      //       HapticFeedback.mediumImpact();
      //       IMUtil.preViewFileOrDownload(fileContent.fileName, fileContent.remoteUrl);
      //     },
      //     child: Container(
      //       width: 260 * rpx,
      //       height: 90 * rpx,
      //       padding: EdgeInsets.all(12 * rpx),
      //       decoration: BoxDecoration(
      //         color: ColorConstant.fillWhite,
      //         borderRadius: BorderRadius.circular(8 * rpx),
      //       ),
      //       child: Row(
      //         children: [
      //           Expanded(
      //             child: Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 Text(
      //                   fileContent.fileName,
      //                   style: TextStyle(fontSize: 14 * rpx, fontWeight: FontWeight.w500, color: ColorConstant.text5),
      //                   softWrap: true,
      //                 ),
      //                 Text(
      //                   // 小于1MB显示KB,大于1MB显示MB
      //                   fileContent.size < 1024 * 1024 ? "${(fileContent.size / 1024).toStringAsFixed(2)}KB" : "${(fileContent.size / 1024 / 1024).toStringAsFixed(2)}MB",
      //                   style: TextStyle(fontSize: 12 * rpx, fontWeight: FontWeight.w400, color: ColorConstant.text3),
      //                   softWrap: true,
      //                 )
      //               ],
      //             ),
      //           ),
      //           SizedBox(width: 8 * rpx),
      //           Column(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               FutureBuilder<bool>(
      //                 future: checkAssetExists(assetPath),
      //                 builder: (context, snapshot) {
      //                   if (snapshot.connectionState == ConnectionState.waiting) {
      //                     final assetExists = snapshot.data ?? false;
      //                     return SvgPicture.asset(
      //                       assetExists ? assetPath : fallbackPath,
      //                       width: 48 * rpx,
      //                       height: 48 * rpx,
      //                     );
      //                     // // 可以显示一个加载中的占位符
      //                     // return const CircularProgressIndicator(
      //                     //   valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.brand6),
      //                     //   backgroundColor: Color(0xFFEBEBEB),
      //                     // );
      //                   } else if (snapshot.hasError) {
      //                     // 处理错误状态
      //                     return SvgPicture.asset(
      //                       fallbackPath,
      //                       width: 48 * rpx,
      //                       height: 48 * rpx,
      //                     );
      //                   } else {
      //                     // 检查数据是否可用并根据结果显示对应的图片
      //                     final assetExists = snapshot.data ?? false;
      //                     return SvgPicture.asset(
      //                       assetExists ? assetPath : fallbackPath,
      //                       width: 48 * rpx,
      //                       height: 48 * rpx,
      //                     );
      //                   }
      //                 },
      //               ),
      //             ],
      //           )
      //         ],
      //       ),
      //     ),
      //   );
      default:
        return TextMessageContent(
          self: self,
          content: msg.payload.content,
        );
    }
  }
}
