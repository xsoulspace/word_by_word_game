import 'package:flutter/material.dart';

import '../theme/color_palette.dart';

enum ButtonStyleType {
  filled,
  outlined,
  gradient,
}

class GameMenuButtonPainter extends CustomPainter {
  const GameMenuButtonPainter({
    this.styleType = ButtonStyleType.filled,
    this.color = AppColors.buttonPrimary,
    this.borderColor = AppColors.accentGreen,
    this.gradientColors,
    this.borderWidth = 2.0,
    this.radius = 30.0,
  });

  final ButtonStyleType styleType;
  final Color color;
  final Color borderColor;
  final List<Color>? gradientColors;
  final double borderWidth;
  final double radius;

  @override
  void paint(final Canvas canvas, final Size size) {
    final paint = Paint();
    final rect = Offset.zero & size;
    final r = Radius.circular(radius);

    switch (styleType) {
      case ButtonStyleType.filled:
        paint.color = color;
        canvas.drawRRect(RRect.fromRectAndRadius(rect, r), paint);
      case ButtonStyleType.outlined:
        paint
          ..color = borderColor
          ..style = PaintingStyle.stroke
          ..strokeWidth = borderWidth;
        canvas.drawRRect(RRect.fromRectAndRadius(rect, r), paint);
      case ButtonStyleType.gradient:
        if (gradientColors == null || gradientColors!.length < 2) {
          paint.color = color;
        } else {
          paint.shader = LinearGradient(
            colors: gradientColors!,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ).createShader(rect);
        }
        canvas.drawRRect(RRect.fromRectAndRadius(rect, r), paint);
    }
  }

  @override
  bool shouldRepaint(covariant final GameMenuButtonPainter oldDelegate) =>
      oldDelegate.styleType != styleType ||
      oldDelegate.color != color ||
      oldDelegate.borderColor != borderColor ||
      oldDelegate.gradientColors != gradientColors ||
      oldDelegate.borderWidth != borderWidth ||
      oldDelegate.radius != radius;
}
