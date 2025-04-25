import 'package:extended_text_field/extended_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EmojiItem {
  final String path;
  final String fileName;
  final String name;
  final String key;
  final Uint8List bytes;

  EmojiItem({
    required this.path,
    required this.fileName,
    required this.name,
    required this.key,
    required this.bytes,
  });
}

// 表情是否存在
bool hasEmoji(String emojiName) {
  bool has = [].any((emoji) => emoji.key == emojiName || emoji.name == emojiName);
  return has;
}

class EmojiSpecialTextSpanBuilder extends SpecialTextSpanBuilder {
  final Size emojiSize;
  EmojiSpecialTextSpanBuilder(this.emojiSize);

  @override
  SpecialText? createSpecialText(String flag, {TextStyle? textStyle, SpecialTextGestureTapCallback? onTap, int? index}) {
    if (flag == "") return null;

    if (isStart(flag.characters.last, '[')) {
      return EmojiText(textStyle, onTap, emojiSize, start: (index! - (EmojiText.startKey.length - 1)).toInt());
    }
    return null;
  }

  @override
  bool isStart(String value, String startFlag) {
    return value.startsWith(startFlag);
  }
}

class EmojiText extends SpecialText {
  static const String startKey = '[';
  static const String endKey = ']';
  final Size emojiSize;
  final int? start;

  EmojiText(TextStyle? textStyle, SpecialTextGestureTapCallback? onTap, this.emojiSize, {this.start}) : super(startKey, endKey, textStyle, onTap: onTap);

  @override
  InlineSpan finishText() {
    super.getContent();
    // CustomLogger.instance.d(['字符串为 $result']);
    final String key = toString();
    final String emojiName = key.substring(startKey.length, key.length - endKey.length);
    if (hasEmoji(emojiName)) {
      final EmojiItem imagePath = getEmojiItem(emojiName);
      return ImageSpan(ResizeImage(MemoryImage(imagePath.bytes), width: (emojiSize.width * 3).toInt(), height: (emojiSize.height * 3).toInt()), fit: BoxFit.cover, actualText: '$startKey$emojiName$endKey', imageHeight: emojiSize.height, imageWidth: emojiSize.width, start: start!
          // child: Image.asset(
          //   imagePath,
          //   width: emojiSize.width,
          //   height: emojiSize.height,
          // ),
          );
    } else {
      return TextSpan(text: "[$emojiName]", style: textStyle);
    }
  }

  String getEmojiImagePath(String emojiName) {
    return 'assets/emoji/$emojiName.png';
  }

  EmojiItem getEmojiItem(String emojiName) {
    return [].firstWhere((element) => element.name == emojiName, orElse: () => EmojiItem(path: '', fileName: '当前版本不支持查看此消息', name: '', key: '', bytes: Uint8List(0)));
  }
}
