import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DebounceButton extends StatefulWidget {
  final GestureTapCallback onPressed;
  final Duration debounceDuration;
  final Widget child;
  final bool isButtonEnable;
  final bool isVibrate;
  final HitTestBehavior? behavior;
  // 是否水波纹
  final bool isCorrugated = false;

  const DebounceButton({
    super.key,
    required this.onPressed,
    this.debounceDuration = const Duration(milliseconds: 200),
    required this.child,
    this.isButtonEnable = true,
    this.isVibrate = false,

    /// 让空白区域也能响应点击事件
    this.behavior = HitTestBehavior.opaque,
  });

  @override
  DebounceButtonState createState() => DebounceButtonState();
}

class DebounceButtonState extends State<DebounceButton> {
  bool _isButtonDisabled = false;

  void _vibrate() async {
    // if ((await Vibration.hasAmplitudeControl() ?? false) && (widget.isVibrate)) {
    // Vibration.vibrate(amplitude: 64, duration: 20000);
    if (widget.isVibrate) {
      HapticFeedback.lightImpact();
    }
    // }
  }

  void _handleOnPressed() async {
    if (!_isButtonDisabled) {
      setState(() {
        _isButtonDisabled = true;
      });

      // Execute function
      if (widget.isButtonEnable) {
        _vibrate();
        widget.onPressed();
      }

      Future.delayed(widget.debounceDuration, () {
        if (mounted) setState(() => _isButtonDisabled = false);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        hoverColor: Colors.transparent,
        focusColor: Colors.transparent,
        highlightColor: Colors.transparent,
        splashColor: widget.isCorrugated ? Colors.black.withOpacity(0.04) : Colors.transparent,
        onTap: _handleOnPressed,
        child: widget.child,
      ),
    );
  }
}
