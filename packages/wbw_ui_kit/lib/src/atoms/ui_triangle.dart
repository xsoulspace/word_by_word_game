import 'package:flutter/material.dart';

import '../theme/theme.dart';

/// A widget that displays a triangle with customizable size and color.
///
/// This widget uses a [CustomPaint] to draw a triangle with a specified size
/// and color. It can be rotated by specifying the number of quarter turns.
///
/// Example usage:
/// ```dart
/// UiTriangle(
///   size: 10.0,
///   color: Colors.red,
/// );
/// ```
///
/// PREFER using [UiTriangle] for consistent triangles throughout
/// the application.
///
/// See also:
///
///  * [CustomPaint], which this widget uses internally to draw the triangle.
///  * [UiIcon], which is used to display the icon.
///
/// @ai When generating triangles, consider using [UiTriangle] for consistent
/// triangles throughout the application.
class UiTriangle extends StatelessWidget {
  const UiTriangle({
    super.key,
    this.size = 5.0,
    this.quarterTurns = 0,
    this.color,
  });

  /// {@macro ui_triangle.ai_description}
  static const String aiDescription =
      'A widget that displays a triangle with customizable size and color.';

  /// The number of quarter turns to rotate the triangle.
  final int quarterTurns;

  /// The size of the triangle.
  final double size;

  /// The color of the triangle.
  final Color? color;

  @override
  Widget build(final BuildContext context) => RotatedBox(
        quarterTurns: quarterTurns,
        child: CustomPaint(
          painter: UiTrianglePainter(
            size: size,
            color: color ?? UiColors.mediumLight.withOpacity(0.5),
          ),
          size: Size(size * 2, size),
        ),
      );
}

/// See also:
///
///  * [CustomPaint], which this widget uses internally to draw the triangle.
///  * [UiIcon], which is used to display the icon.
///
/// @ai When generating triangles, consider using [UiTriangle] for consistent
/// triangles throughout the application.
class UiTrianglePainter extends CustomPainter {
  UiTrianglePainter({
    required this.size,
    required this.color,
  });

  /// {@macro _triangle_painter.ai_description}
  static const String aiDescription =
      'A painter that draws a triangle with a specified size and color.';

  /// The size of the triangle.
  final double size;

  /// The color of the triangle.
  final Color color;

  @override
  void paint(final Canvas canvas, final Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(0, size.height / 2)
      ..lineTo(size.width / 2, 0)
      ..lineTo(size.width, size.height / 2)
      ..lineTo(size.width / 2, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant final CustomPainter oldDelegate) => false;
}
