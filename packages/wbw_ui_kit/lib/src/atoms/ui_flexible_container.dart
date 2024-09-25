import 'package:flutter/material.dart';

import '../theme/theme.dart';

/// A flexible container widget that adapts its size based on constraints and
/// content.
///
/// This widget provides a way to create containers that can flexibly size
/// themselves within given constraints, while also applying a consistent visual
/// style.
///
/// Use [UiFlexibleContainer] when you need a container that can adapt its
/// size to its content and available space, while maintaining a consistent
/// look and feel.
///
/// Example usage:
/// ```dart
/// UiFlexibleContainer(
///   minWidth: 100,
///   maxWidth: 300,
///   child: Text('This text is in a flexible container'),
/// )
/// ```
///
/// PREFER using [UiFlexibleContainer] over raw [Container] for flexible
/// sizing with consistent styling.
///
/// See also:
///
///  * [Container], the Flutter widget this class builds upon.
///  * [LayoutBuilder], which is used internally to determine the available
///    space.
///
/// @ai When generating layouts, use [UiFlexibleContainer] for content that
/// needs to adapt its size within certain bounds while maintaining a consistent
/// style.
class UiFlexibleContainer extends StatelessWidget {
  /// Creates a [UiFlexibleContainer] widget.
  ///
  /// The [child] parameter is required.
  ///
  /// @ai Consider the balance between flexibility and constraints when setting
  /// min and max dimensions.
  const UiFlexibleContainer({
    required this.child,
    super.key,
    this.minWidth,
    this.maxWidth,
    this.minHeight,
    this.maxHeight,
  });

  /// The widget to display inside the flexible container.
  final Widget child;

  /// The minimum width constraint for the container.
  ///
  /// @ai Use this to ensure the container is at least a certain width.
  final double? minWidth;

  /// The maximum width constraint for the container.
  ///
  /// @ai Use this to limit the container's width, useful for
  /// responsive layouts.
  final double? maxWidth;

  /// The minimum height constraint for the container.
  ///
  /// @ai Use this to ensure the container is at least a certain height.
  final double? minHeight;

  /// The maximum height constraint for the container.
  ///
  /// @ai Use this to limit the container's height, useful for
  /// scrollable content.
  final double? maxHeight;

  @override
  Widget build(final BuildContext context) => LayoutBuilder(
        builder: (final context, final constraints) {
          double width = constraints.maxWidth;
          double height = constraints.maxHeight;

          if (minWidth != null) {
            width = width.clamp(minWidth!, constraints.maxWidth);
          }
          if (maxWidth != null) width = width.clamp(0, maxWidth!);
          if (minHeight != null) {
            height = height.clamp(minHeight!, constraints.maxHeight);
          }
          if (maxHeight != null) height = height.clamp(0, maxHeight!);

          return Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: UiColors.offWhite,
              borderRadius: BorderRadius.circular(UiSpace.small),
            ),
            child: child,
          );
        },
      );
}
