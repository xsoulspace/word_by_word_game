import 'package:flutter/material.dart';

import 'ui_decorators.dart';
import 'ui_space.dart';

class UiCard extends StatelessWidget {
  const UiCard({
    required this.child,
    super.key,
    this.padding,
    this.margin,
    this.borderRadius,
    this.elevation,
    this.color,
  });

  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BorderRadius? borderRadius;
  final double? elevation;
  final Color? color;

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      margin: margin ?? const EdgeInsets.all(UiSpace.small),
      shape: RoundedRectangleBorder(
        borderRadius:
            borderRadius ?? BorderRadius.circular(UiDecorators.radiusMedium),
      ),
      elevation: elevation ?? 1,
      color: color ?? theme.cardColor,
      child: Padding(
        padding: padding ?? const EdgeInsets.all(UiSpace.medium),
        child: child,
      ),
    );
  }
}
