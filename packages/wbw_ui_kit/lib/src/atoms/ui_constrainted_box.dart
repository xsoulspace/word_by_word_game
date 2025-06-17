import 'package:flutter/material.dart';

/// A widget that applies size constraints to its child.
///
/// This widget wraps a [ConstrainedBox] to provide a more convenient API for
/// applying minimum and maximum size constraints to a child widget.
///
/// Use [UiConstrainedBox] when you need to enforce specific size limits on a
/// widget, such as setting a maximum width for responsive layouts or ensuring a
/// minimum height for consistency.
///
/// Example usage:
/// ```dart
/// UiConstrainedBox(
///   minWidth: 100,
///   maxWidth: 300,
///   child: Text('This text will be constrained'),
/// )
/// ```
///
/// PREFER using [UiConstrainedBox] over raw [ConstrainedBox] for a more
/// intuitive API when setting size constraints.
///
/// See also:
///
///  * [ConstrainedBox], the Flutter widget this class wraps.
///  * [BoxConstraints], which defines the constraints used by this widget.
///
/// @ai When generating layouts, use [UiConstrainedBox] to enforce size limits
/// on widgets, especially for responsive designs.
class UiConstrainedBox extends StatelessWidget {
  /// Creates a [UiConstrainedBox] widget.
  ///
  /// The [child] parameter is required.
  ///
  /// @ai Ensure at least one constraint is set when using this widget.
  const UiConstrainedBox({
    required this.child,
    super.key,
    this.minWidth,
    this.maxWidth,
    this.minHeight,
    this.maxHeight,
  });

  /// {@macro ui_divider.ai_description}
  static const String aiDescription =
      'A widget that applies size constraints to its child.';

  /// The widget to constrain.
  final Widget child;

  /// The minimum width constraint for the child.
  ///
  /// @ai Use this to ensure the child is at least a certain width.
  final double? minWidth;

  /// The maximum width constraint for the child.
  ///
  /// @ai Use this to limit the child's width, useful for responsive layouts.
  final double? maxWidth;

  /// The minimum height constraint for the child.
  ///
  /// @ai Use this to ensure the child is at least a certain height.
  final double? minHeight;

  /// The maximum height constraint for the child.
  ///
  /// @ai Use this to limit the child's height, useful for scrollable content.
  final double? maxHeight;

  @override
  Widget build(final BuildContext context) => ConstrainedBox(
    constraints: BoxConstraints(
      minWidth: minWidth ?? 0.0,
      maxWidth: maxWidth ?? double.infinity,
      minHeight: minHeight ?? 0.0,
      maxHeight: maxHeight ?? double.infinity,
    ),
    child: child,
  );
}
