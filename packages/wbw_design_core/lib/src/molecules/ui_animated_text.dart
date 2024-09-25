import 'package:flutter/material.dart';

import '../theme/theme.dart';

class UiAnimatedText extends StatelessWidget {
  const UiAnimatedText({
    this.label = '',
    this.labelChild,
    this.textStyle,
    this.textColor = UiColors.dark,
    super.key,
  });
  final TextStyle? textStyle;
  final String label;
  final Color textColor;
  final Widget? labelChild;
  @override
  Widget build(final BuildContext context) => AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 200),
        style: textStyle ??
            TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
        child: labelChild ?? Text(label),
      );
}
