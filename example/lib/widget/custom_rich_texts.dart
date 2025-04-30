import 'package:flutter/widgets.dart';

class CustomRichTexts extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextStyle? boldStyle;
  final TextStyle? bold2Style;
  final TextAlign textAlign;

  const CustomRichTexts({
    super.key,
    required this.text,
    this.style,
    this.boldStyle,
    this.bold2Style,
    this.textAlign = TextAlign.left,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign,
      text: _buildTextSpan(text),
    );
  }

  TextSpan _buildTextSpan(String text) {
    final List<TextSpan> spans = [];
    final RegExp regExp = RegExp(r'(<b>(.*?)</b>|<b2>(.*?)</b2>|([^<]+))');

    for (final match in regExp.allMatches(text)) {
      if (match.group(2) != null) {
        // 处理 <b> 标签
        spans.add(TextSpan(text: match.group(2), style: boldStyle));
      } else if (match.group(3) != null) {
        // 处理 <b2> 标签
        spans.add(TextSpan(text: match.group(3), style: bold2Style));
      } else if (match.group(4) != null) {
        // 处理普通文本
        spans.add(TextSpan(text: match.group(4), style: style));
      }
    }

    return TextSpan(children: spans);
  }
}
