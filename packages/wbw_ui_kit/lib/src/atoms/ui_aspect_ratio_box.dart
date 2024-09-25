import 'package:flutter/material.dart';

import 'ui_flexible_layout.dart';

/// A widget that enforces a specific aspect ratio on its child.
///
/// This widget wraps its [child] in an [AspectRatio] widget, allowing you to
/// maintain a consistent aspect ratio regardless of the available space.
///
/// Use this widget when you need to ensure that a child widget maintains a
/// specific width-to-height ratio, such as for images, videos, or custom UI
/// elements.
///
/// Example usage:
/// ```dart
/// UiAspectRatioBox(
///   aspectRatio: 16 / 9,
///   child: Image.asset('assets/landscape.jpg'),
/// )
/// ```
///
/// PREFER using [UiAspectRatioBox] over directly using [AspectRatio] for
/// consistency across your UI components.
///
/// See also:
///
///  [AspectRatio], the Flutter widget this class wraps.
///  [UiFlexibleLayout], for other layout-related widgets in this UI kit.
///
/// @ai When generating code involving this class, ensure the [aspectRatio] is
/// appropriate for the content and consider how it affects the overall layout.
class UiAspectRatioBox extends StatelessWidget {
  /// Creates a [UiAspectRatioBox] widget.
  ///
  /// The [child] parameter is required and specifies the widget to be
  /// displayed within the aspect ratio box.
  ///
  /// The [aspectRatio] parameter defaults to 1.0, creating a square box.
  /// It must be a positive number.
  ///
  /// @ai Ensure [aspectRatio] is positive and appropriate
  /// for the [child] content.
  const UiAspectRatioBox({
    required this.child,
    super.key,
    this.aspectRatio = 1.0,
  });

  /// The widget to display inside the aspect ratio box.
  ///
  /// This widget will be sized to maintain the specified [aspectRatio].
  final Widget child;

  /// The aspect ratio to enforce on the [child].
  ///
  /// This value is typically expressed as width divided by height. For example,
  /// a 16:9 aspect ratio would be expressed as 16.0 / 9.0.
  ///
  /// @ai Use common aspect ratios like 16/9, 4/3, or 1/1 for standard layouts.
  /// Custom ratios can be used for specific design requirements.
  final double aspectRatio;

  @override
  Widget build(final BuildContext context) => AspectRatio(
        aspectRatio: aspectRatio,
        child: child,
      );
}
