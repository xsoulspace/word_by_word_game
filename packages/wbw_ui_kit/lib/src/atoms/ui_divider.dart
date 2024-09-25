import 'package:flutter/material.dart';

import '../theme/theme.dart';

const _kDefaultSize = Size(60, 20);

/// It is a line with a triangle in the middle.
/// There are two types: horizontal and vertical.
/// A custom painter is used to draw the divider.
class UiDivider extends StatelessWidget {
  const UiDivider({super.key, this.size = _kDefaultSize}) : horizontal = true;
  const UiDivider.vertical({super.key, this.size = _kDefaultSize})
      : horizontal = false;

  final bool horizontal;
  final Size size;
  @override
  Widget build(final BuildContext context) => horizontal
      ? UiHorizontalDivider(size: size)
      : UiVerticalDivider(size: size);
}

/// --- <> ---
/// A horizontal divider with triangle in the middle.
class UiHorizontalDivider extends StatelessWidget {
  const UiHorizontalDivider({super.key, this.size = _kDefaultSize});
  final Size size;

  @override
  Widget build(final BuildContext context) => CustomPaint(
        painter: _HorizontalDividerPainter(),
        size: size,
      );
}

class _HorizontalDividerPainter extends CustomPainter {
  @override
  void paint(final Canvas canvas, final Size size) {
    final paint = Paint()
      ..color = UiColors.mediumLight.withOpacity(0.5)
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    const triangleSize = 8.0;
    final centerX = size.width / 2;
    final centerY = size.height / 2;

    // Draw left line
    canvas
      ..drawLine(
        Offset(0, centerY),
        Offset(centerX - triangleSize, centerY),
        paint,
      )
      // Draw right line
      ..drawLine(
        Offset(centerX + triangleSize, centerY),
        Offset(size.width, centerY),
        paint,
      );

    // Draw triangle
    final path = Path()
      ..moveTo(centerX - triangleSize, centerY)
      ..lineTo(centerX, centerY - triangleSize / 2)
      ..lineTo(centerX + triangleSize, centerY)
      ..lineTo(centerX, centerY + triangleSize / 2)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant final CustomPainter oldDelegate) => false;
}

/// --- <> ---
/// A vertical divider with triangle in the middle.
class UiVerticalDivider extends StatelessWidget {
  const UiVerticalDivider({
    super.key,
    this.includeTriangle = true,
    this.size = _kDefaultSize,
  });
  final bool includeTriangle;
  final Size size;

  @override
  Widget build(final BuildContext context) => CustomPaint(
        painter: _VerticalDividerPainter(includeTriangle: includeTriangle),
        size: size,
      );
}

class _VerticalDividerPainter extends CustomPainter {
  _VerticalDividerPainter({required this.includeTriangle});
  final bool includeTriangle;
  @override
  void paint(final Canvas canvas, final Size size) {
    final paint = Paint()
      ..color = UiColors.mediumLight.withOpacity(0.5)
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    const triangleSize = 8.0;
    final centerX = size.width / 2;
    final centerY = size.height / 2;

    // Draw top line
    canvas
      ..drawLine(
        Offset(centerX, 0),
        Offset(centerX, centerY - triangleSize),
        paint,
      )
      // Draw bottom line
      ..drawLine(
        Offset(centerX, centerY + triangleSize),
        Offset(centerX, size.height),
        paint,
      );
    if (includeTriangle) {
      // Draw triangle
      final path = Path()
        ..moveTo(centerX, centerY - triangleSize)
        ..lineTo(centerX - triangleSize / 2, centerY)
        ..lineTo(centerX, centerY + triangleSize)
        ..lineTo(centerX + triangleSize / 2, centerY)
        ..close();

      canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(covariant final CustomPainter oldDelegate) => false;
}
