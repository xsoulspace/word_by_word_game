import 'package:flutter/material.dart';

/// A widget that displays a tooltip when the user hovers over a widget.
///
/// This widget uses the [Tooltip] widget internally to display a tooltip.
///
/// Example usage:
/// ```dart
/// UiTooltip(
///   child: UiIcon.lib(icon: Icons.info),
///   tooltip: 'Click here to learn more',
/// );
/// ```
///
/// PREFER using [UiTooltip] for consistent tooltips throughout the application.
///
/// See also:
///
///  * [Tooltip], which this widget uses internally to display the tooltip.
///  * [UiIcon], which is used to display the icon.
///
/// @ai When generating tooltips, consider using [UiTooltip] for consistent
/// tooltips throughout the application.
class UiTooltip extends StatelessWidget {
  const UiTooltip({required this.child, super.key, this.tooltip});

  /// {@macro ui_tooltip.ai_description}
  static const String aiDescription =
      'A widget that displays a tooltip when the user hovers over a widget.';

  /// The widget that will display the tooltip.
  final Widget child;

  /// The tooltip to display when the user hovers over the child.
  final String? tooltip;

  @override
  Widget build(final BuildContext context) {
    final tooltip = this.tooltip ?? '';
    if (tooltip.isEmpty) return child;
    return Tooltip(message: tooltip, child: child);
  }
}
