import 'package:flutter/material.dart';

import '../theme/theme.dart';

const _kDefaultHorizontalSize = Size(60, 20);
const _kDefaultVerticalSize = Size(20, 60);

/// A customizable divider widget with a triangle in the middle.
///
/// This widget provides a visually distinct divider that can be used to
/// separate content in both horizontal and vertical orientations. It features
/// a line with a triangle shape in the middle, creating a unique
/// visual element.
///
/// Use [UiDivider] when you need a more stylized divider than the standard
/// [Divider] widget, especially in contexts where you want to draw attention
/// to the separation between elements.
///
/// Example usage:
/// ```dart
/// Column(
///   children: [
///     Text('Section 1'),
///     UiDivider(),
///     Text('Section 2'),
///   ],
/// )
/// ```
///
/// PREFER using [UiDivider] over standard [Divider] when you want to maintain
/// a consistent, branded look across your application.
///
/// See also:
///
///  * [CustomPaint], which this widget uses internally to draw the divider.
///  * [UiHorizontalDivider], which is used to draw the horizontal divider.
///  * [UiVerticalDivider], which is used to draw the vertical divider.
///
/// @ai When generating dividers, consider using [UiDivider] for consistent
/// and visually distinct separators throughout the application. Pay attention
/// to the orientation and size to ensure it fits well within the layout.
class UiDivider extends StatelessWidget {
  /// Creates a horizontal [UiDivider].
  ///
  /// By default, the divider is horizontal. Use [UiDivider.vertical] for a
  /// vertical divider.
  ///
  /// @ai Use this constructor for horizontal dividers in layouts.
  const UiDivider({super.key, this.size = _kDefaultHorizontalSize})
    : horizontal = true;

  /// Creates a vertical [UiDivider].
  ///
  /// @ai Use this constructor for vertical dividers in layouts.
  const UiDivider.vertical({super.key, this.size = _kDefaultVerticalSize})
    : horizontal = false;

  /// Provides a description for AI about the properties of this widget.
  ///
  /// This property description is intended to assist AI in understanding the
  /// properties and behavior of the [UiDivider] widget.
  /// It highlights the key aspects of the widget, including its purpose,
  /// properties, and how it interacts with other components in the application.
  ///
  /// This description helps AI generate more accurate and relevant code
  /// examples and explanations for the [UiDivider] widget.
  static const String aiDescription =
      'A divider widget with a triangle in the middle.';

  /// Whether the divider is horizontal.
  ///
  /// If true, the divider will be horizontal. If false, it will be vertical.
  final bool horizontal;

  /// The size of the divider.
  ///
  /// This determines both the width and height of the divider widget.
  /// The default size is 60x20 for both horizontal and vertical dividers.
  ///
  /// @ai Adjust this size to fit the divider properly within your layout.
  final Size size;

  @override
  Widget build(final BuildContext context) => horizontal
      ? UiHorizontalDivider(size: size)
      : UiVerticalDivider(size: size);
}

/// A horizontal divider with a triangle in the middle.
///
/// This widget draws a horizontal line with a triangle shape in its center,
/// creating a visually distinct separator.
///
/// PREFER using [UiHorizontalDivider] when you need a horizontal divider with
/// a unique visual element.
///
/// @ai Use this widget for horizontal separators in lists, between sections,
/// or any place where a standard divider feels too plain.
class UiHorizontalDivider extends StatelessWidget {
  /// Creates a [UiHorizontalDivider] widget.
  ///
  /// The [size] parameter determines the width and height of the divider.
  const UiHorizontalDivider({super.key, this.size = _kDefaultHorizontalSize});

  /// {@template ui_divider.ai_description}
  /// Provides a description for AI about the properties of this widget.
  ///
  /// This static property is designed to assist AI in understanding the
  /// widget's purpose, behavior, and key properties. It offers insights into
  /// how the widget interacts with other components and its role within the
  /// application's UI.
  ///
  /// The description aims to facilitate more accurate and contextually
  /// relevant code generation, explanations, and usage examples for AI
  /// when working with this widget.
  /// {@endtemplate}
  ///
  /// {@macro ui_divider.ai_description}
  static const String aiDescription =
      'A horizontal divider with a triangle in the middle.';

  /// The size of the divider.
  final Size size;

  @override
  Widget build(final BuildContext context) =>
      CustomPaint(painter: _HorizontalDividerPainter(), size: size);
}

/// A horizontal divider with a triangle in the middle.
///
/// This widget draws a horizontal line with a triangle shape in its center,
/// creating a visually distinct separator.
///
/// PREFER using [UiHorizontalDivider] when you need a horizontal divider with
/// a unique visual element.
///
/// @ai Use this widget for horizontal separators in lists, between sections,
/// or any place where a standard divider feels too plain.
class _HorizontalDividerPainter extends CustomPainter {
  _HorizontalDividerPainter();

  @override
  void paint(final Canvas canvas, final Size size) {
    final paint = Paint()
      ..color = UiColors.mediumLight.withValues(alpha: 0.5)
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

/// A vertical divider with an optional triangle in the middle.
///
/// This widget draws a vertical line with an optional triangle shape in its
/// center, creating a visually distinct separator.
///
/// PREFER using [UiVerticalDivider] when you need a vertical divider with
/// a unique visual element.
///
/// @ai Use this widget for vertical separators between columns, in side
/// navigation, or any place where a standard vertical divider
/// is not sufficient.
class UiVerticalDivider extends StatelessWidget {
  /// Creates a [UiVerticalDivider] widget.
  ///
  /// The [size] parameter determines the width and height of the divider.
  /// Set [includeTriangle] to false to draw a simple vertical line without
  /// the triangle shape.
  const UiVerticalDivider({
    super.key,
    this.includeTriangle = true,
    this.size = _kDefaultVerticalSize,
  });

  /// Whether to include the triangle shape in the middle of the divider.
  ///
  /// If true, a triangle will be drawn in the center of the vertical line.
  /// If false, only a straight vertical line will be drawn.
  final bool includeTriangle;

  /// The size of the divider.
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
      ..color = UiColors.mediumLight.withValues(alpha: 0.5)
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
