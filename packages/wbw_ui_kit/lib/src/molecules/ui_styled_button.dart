import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:is_dart_empty_or_not/is_dart_empty_or_not.dart';

import '../../wbw_ui_kit.dart';

class UiStyledButton extends StatelessWidget {
  const UiStyledButton({
    this.onPressed,
    this.label = '',
    this.labelChild,
    this.icon,
    this.focusNode,
    this.styleType = ButtonStyleType.text,
    this.color = UiColors.offWhite,
    this.borderColor,
    this.gradientColors,
    this.borderWidth,
    this.radius,
    this.textStyle,
    this.focusIcon = Icons.arrow_forward_ios_rounded,
    this.tooltip,
    this.actions = const {},
    this.padding,
    super.key,
  });
  final EdgeInsets? padding;
  final Map<Type, Action<Intent>> actions;
  final TextStyle? textStyle;
  final String label;
  final Widget? labelChild;
  final IconData? icon;
  final VoidCallback? onPressed;
  final ButtonStyleType styleType;
  final Color color;
  final Color? borderColor;
  final List<Color>? gradientColors;
  final double? borderWidth;
  final double? radius;
  final FocusNode? focusNode;
  final IconData? focusIcon;
  final String? tooltip;
  @override
  Widget build(final BuildContext context) {
    final isLabelExists = label.isNotEmpty || labelChild != null;
    final buttonColor = color;
    final Widget child = UiBaseButton(
      onPressed: onPressed,
      builder: (final context, final focused, final onlyFocused) {
        final textColor = (focused ? UiColors.dark : UiColors.mediumDark)
            .withOpacity(0.9);
        final buttonBorderColor = borderColor ?? textColor;
        final buttonRadius = radius ?? 30.0;
        final showFocusIcon = focusIcon != null;

        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (showFocusIcon)
              AnimatedOpacity(
                opacity: onlyFocused ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 150),
                child: Icon(focusIcon, color: textColor, size: 24)
                    .animate(
                      onComplete: (final controller) => controller.repeat(),
                    )
                    .moveX(
                      duration: 3000.milliseconds,
                      curve: Curves.easeInOutSine,
                      begin: -3,
                      end: 3,
                    )
                    .fadeIn(
                      begin: 0.6,
                      duration: 3300.milliseconds,
                      curve: Curves.easeInOutSine,
                    )
                    .scale(
                      duration: 3300.milliseconds,
                      curve: Curves.easeInOutSine,
                      begin: const Offset(1, 1),
                      end: const Offset(1.03, 1.03),
                    )
                    .then()
                    .moveX(
                      duration: 2700.milliseconds,
                      curve: Curves.easeInOutSine,
                      begin: 3,
                      end: -3,
                    )
                    .fade(
                      begin: 1,
                      end: 0.6,
                      duration: 2700.milliseconds,
                      curve: Curves.easeInOutSine,
                    )
                    .scale(
                      duration: 2700.milliseconds,
                      curve: Curves.easeInOutSine,
                      begin: const Offset(1.03, 1.03),
                      end: const Offset(1, 1),
                    ),
              ),
            Flexible(
              child: CustomPaint(
                painter: GameMenuButtonPainter(
                  styleType: styleType,
                  color: buttonColor,
                  borderColor: buttonBorderColor,
                  gradientColors: gradientColors,
                  borderWidth: borderWidth ?? 2.0,
                  radius: buttonRadius,
                ),
                child: Padding(
                  padding:
                      padding ??
                      EdgeInsets.symmetric(
                        vertical: styleType == ButtonStyleType.text ? 2.5 : 12,
                        horizontal: styleType == ButtonStyleType.text ? 8 : 16,
                      ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (icon != null) ...[
                        Icon(icon, color: textColor, size: 20),
                        if (isLabelExists) const Gap(8),
                      ],
                      if (isLabelExists)
                        Builder(
                          builder: (final context) {
                            final defaultTextStyle = TextStyle(
                              color: textColor,
                              fontSize: 24,
                            );

                            return UiAnimatedText(
                              labelChild: labelChild,
                              label: label,
                              textStyle: defaultTextStyle.merge(textStyle),
                            );
                          },
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );

    return Semantics(
      button: true,
      enabled: onPressed != null,
      label: tooltip ?? label.whenEmptyUse('Button'),
      child: UiTooltip(tooltip: tooltip, child: child),
    );
  }
}
