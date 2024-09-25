import 'package:flutter/material.dart';

class UiTooltip extends StatelessWidget {
  const UiTooltip({
    required this.child,
    super.key,
    this.tooltip,
  });
  final Widget child;
  final String? tooltip;

  @override
  Widget build(final BuildContext context) {
    final tooltip = this.tooltip ?? '';
    if (tooltip.isEmpty) return child;
    return Tooltip(
      message: tooltip,
      child: child,
    );
  }
}
