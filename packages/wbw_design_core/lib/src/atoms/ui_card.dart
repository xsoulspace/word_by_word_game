import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../theme/theme.dart';

class UiCard extends StatefulWidget {
  const UiCard({
    required this.child,
    super.key,
    this.padding = const EdgeInsets.all(UiSpace.medium),
    this.margin,
    this.borderRadius,
    this.elevation = 1,
    this.color = UiColors.offWhite,
    this.shadowColor = UiColors.light,
    this.surfaceTintColor = Colors.transparent,
    this.animateOnHover = false,
  });

  final Widget child;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry? margin;
  final BorderRadius? borderRadius;
  final double elevation;
  final Color color;
  final Color shadowColor;
  final Color surfaceTintColor;
  final bool animateOnHover;

  @override
  State<UiCard> createState() => _UiCardState();
}

class _UiCardState extends State<UiCard> {
  bool _isHovered = false;

  @override
  Widget build(final BuildContext context) {
    final cardWidget = Card(
      margin: widget.margin ?? const EdgeInsets.all(UiSpace.small),
      shape: RoundedRectangleBorder(
        borderRadius: widget.borderRadius ??
            const BorderRadius.all(
              Radius.elliptical(
                UiDecorators.radiusLarge,
                UiDecorators.radiusLarge,
              ),
            ),
      ),
      elevation: widget.elevation,
      color: widget.color,
      shadowColor: widget.shadowColor,
      surfaceTintColor: widget.surfaceTintColor,
      child: Padding(
        padding: widget.padding,
        child: DefaultTextStyle.merge(
          style: const TextStyle(
            fontSize: 16,
            color: UiColors.dark,
          ),
          child: widget.child,
        ),
      ),
    );

    if (widget.animateOnHover) {
      return MouseRegion(
        onEnter: (final _) => setState(() => _isHovered = true),
        onExit: (final _) => setState(() => _isHovered = false),
        child: AnimatedScale(
          scale: _isHovered ? 1.008 : 1.0,
          curve: Curves.easeInOutSine,
          duration: 400.milliseconds,
          child: cardWidget,
        ),
      );
    }

    return cardWidget;
  }
}
