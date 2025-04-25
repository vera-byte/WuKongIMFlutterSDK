import 'package:extended_text/extended_text.dart';
import 'package:flutter/widgets.dart';
import 'package:wkim_flutter_sdk_example/theme/color.dart';
import 'package:wkim_flutter_sdk_example/util/adapt.dart';

import 'package:wkim_flutter_sdk_example/util/emoji.dart';

class TextMessageContent extends StatelessWidget {
  const TextMessageContent({
    super.key,
    required this.self,
    required this.content,
  });

  final bool self;
  final String content;
  // 判断字符串是否只包含表情
  bool isOnlyEmojis(String text) {
    final RegExp emojiPattern = RegExp(r'^\[(.*?)\]+$');
    bool ishas = hasEmoji(text);
    bool patt = emojiPattern.hasMatch(text);
    bool isOnlyEmojis = patt && ishas;
    return isOnlyEmojis;
  }

  // 统计字符串中的表情数量
  int countEmojis(String text) {
    final RegExp emojiPattern = RegExp(r'\[(.*?)\]');
    final matches = emojiPattern.allMatches(text);
    return matches.length;
  }

  @override
  Widget build(BuildContext context) {
    bool textMode = countEmojis(content) == 1 && hasEmoji(content);

    return textMode
        ? ExtendedText(
            content,
            specialTextSpanBuilder: EmojiSpecialTextSpanBuilder(
              Size(72 * rpx, 72 * rpx),
            ),
            maxLines: null,
            overflow: TextOverflow.visible,
            textAlign: TextAlign.justify, // 文本对齐方式
            softWrap: true, // 是否自动换行
            style: TextStyle(fontSize: 16 * rpx),
          )
        : ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 240 * rpx, // 设置容器的最大宽度
            ),
            child: Container(
              // margin: EdgeInsets.only(bottom: 16 * rpx),
              padding: EdgeInsets.symmetric(vertical: 8 * rpx, horizontal: 12 * rpx),
              decoration: BoxDecoration(
                color: self ? ColorConstant.brand3 : ColorConstant.fillWhite,
                borderRadius: BorderRadius.only(
                  topRight: self ? Radius.zero : Radius.circular(8 * rpx),
                  topLeft: self ? Radius.circular(8 * rpx) : Radius.zero,
                  bottomRight: Radius.circular(8 * rpx),
                  bottomLeft: Radius.circular(8 * rpx),
                ),
              ),
              child: ExtendedText(
                content,
                specialTextSpanBuilder: EmojiSpecialTextSpanBuilder(Size(24 * rpx, 24 * rpx)),
                maxLines: null,
                overflow: TextOverflow.visible,
                // textAlign: TextAlign.justify, // 文本对齐方式
                softWrap: true, // 是否自动换行
                style: TextStyle(fontSize: 16 * rpx),
              ),
            ),
          );
  }
}
