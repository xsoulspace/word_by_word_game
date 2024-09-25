import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../theme/theme.dart';

/// A customizable card widget that displays content with optional styling.
///
/// This widget allows for customization of padding, margin, border radius,
/// elevation, and background color. It can also animate on hover.
///
/// Example usage:
/// ```dart
/// UiCard(
///   child: UiText('Card content'),
///   padding: EdgeInsets.all(16),
///   margin: EdgeInsets.symmetric(vertical: 8),
///   borderRadius: BorderRadius.circular(16),
///   elevation: 4,
///   color: Colors.white,
/// );
/// ```
///
/// @ai When using this widget, consider the impact of the [animateOnHover]
/// property on user experience and performance.
class UiCard extends StatefulWidget {
  /// Creates a customizable card widget.
  ///
  /// The [child] parameter is required and defines the content of the card.
  const UiCard({
    required this.child,
    super.key,
    this.padding = const EdgeInsets.all(UiSpace.medium),
    this.margin = const EdgeInsets.all(UiSpace.small),
    this.borderRadius = const BorderRadius.all(
      Radius.elliptical(
        UiDecorators.radiusLarge,
        UiDecorators.radiusLarge,
      ),
    ),
    this.elevation = 1,
    this.color = UiColors.offWhite,
    this.shadowColor = UiColors.light,
    this.surfaceTintColor = Colors.transparent,
    this.animateOnHover = false,
  });

  /// The content of the card.
  final Widget child;

  /// The amount of padding inside the card.
  final EdgeInsetsGeometry padding;

  /// The amount of margin outside the card.
  final EdgeInsetsGeometry margin;

  /// The border radius of the card.
  final BorderRadius borderRadius;

  /// The elevation of the card, which affects its shadow.
  final double elevation;

  /// The background color of the card.
  final Color color;

  /// The color of the card's shadow.
  final Color shadowColor;

  /// The tint color applied to the card's surface.
  final Color surfaceTintColor;

  /// Whether to animate the card on hover.
  ///
  /// If true, the card will scale slightly when hovered over.
  final bool animateOnHover;

  @override
  State<UiCard> createState() => _UiCardState();
}

class _UiCardState extends State<UiCard> {
  bool _isHovered = false;

  @override
  Widget build(final BuildContext context) {
    final cardWidget = Card(
      margin: widget.margin,
      shape: RoundedRectangleBorder(
        borderRadius: widget.borderRadius,
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
