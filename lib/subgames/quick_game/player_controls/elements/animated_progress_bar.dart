import 'dart:async';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:word_by_word_game/common_imports.dart';

class AnimatedProgressBar extends StatefulWidget {
  const AnimatedProgressBar({
    required this.height,
    required this.width,
    required this.value,
    required this.backgroundColor,
    required this.color,
    this.border,
    this.borderRadiusValue = 24,
    this.borderRadius,
    this.valueDelay = Duration.zero,
    super.key,
  });
  final double height;
  final double width;
  final Border? border;
  final double borderRadiusValue;
  final BorderRadius? borderRadius;
  final double value;
  final Color? backgroundColor;
  final Color? color;
  final Duration valueDelay;

  @override
  _AnimatedProgressBarState createState() => _AnimatedProgressBarState();
}

class _AnimatedProgressBarState extends State<AnimatedProgressBar> {
  double _currentValue = 0;

  @override
  void initState() {
    super.initState();
    unawaited(_updateValue());
  }

  @override
  void didUpdateWidget(covariant final AnimatedProgressBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.value != widget.value) {
      unawaited(_updateValue());
    }
  }

  Future<void> _updateValue() async {
    if (widget.valueDelay != Duration.zero) {
      await Future.delayed(widget.valueDelay);
    }
    setState(() => _currentValue = widget.value);
  }

  @override
  Widget build(final BuildContext context) {
    final borderRadius = widget.borderRadius ??
        BorderRadius.all(
          Radius.elliptical(widget.borderRadiusValue, widget.borderRadiusValue),
        );
    final isVertical = widget.height > widget.width;

    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              color: widget.backgroundColor,
              borderRadius: borderRadius,
              border: widget.border,
            ),
          ),
          if (widget.value > 0)
            Positioned(
              left: isVertical ? 0 : 0,
              top: isVertical ? null : 0,
              right: isVertical ? 0 : null,
              bottom: isVertical ? 0 : 0,
              child: AnimatedContainer(
                duration: 250.milliseconds,
                curve: Curves.easeInOut,
                height: isVertical ? widget.height * _currentValue : null,
                width: isVertical ? null : widget.width * _currentValue,
                decoration: BoxDecoration(
                  color: widget.color,
                  borderRadius: borderRadius,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class UiLabledProgressBar extends HookWidget {
  const UiLabledProgressBar({
    required this.tooltipMessage,
    required this.percentage,
    required this.filledColor,
    required this.textColor,
    required this.borderColor,
    required this.backgroundColor,
    this.percentageDelay = Duration.zero,
    this.border,
    this.borderRadius,
    this.icon,
    this.onPressed,
    this.height = 32,
    this.iconPadding = const EdgeInsets.only(left: 6),
    this.width = 90,
    this.text = '',
    this.hiddenWhenNotHovered = true,
    super.key,
  });
  final String text;
  final double width;
  final double height;
  final double percentage;
  final Duration percentageDelay;
  final Border? border;
  final BorderRadius? borderRadius;
  final Color filledColor;
  final Color borderColor;
  final Color textColor;
  final Color backgroundColor;
  final Widget? icon;
  final EdgeInsets iconPadding;
  final VoidCallback? onPressed;
  final Map<Languages, String> tooltipMessage;
  final bool hiddenWhenNotHovered;

  @override
  Widget build(final BuildContext context) {
    final shadows = [
      Shadow(
        blurRadius: 0.2,
        color: borderColor,
      ),
      Shadow(
        blurRadius: 0.2,
        color: borderColor,
      ),
    ];
    final locale = useLocale(context);
    return SizedBox(
      width: width,
      height: height,
      child: Tooltip(
        message: LocalizedMap(
          value: tooltipMessage,
        ).getValue(locale),
        child: UiBaseButton(
          onPressed: onPressed,
          builder: (final context, final focused) => Stack(
            alignment: Alignment.centerRight,
            children: [
              AnimatedProgressBar(
                width: width,
                height: height,
                value: percentage,
                valueDelay: percentageDelay,
                backgroundColor: backgroundColor,
                color: filledColor,
                borderRadius: borderRadius,
                borderRadiusValue: 52,
                border: border ?? Border.all(color: borderColor),
              ),
              Positioned(
                left: iconPadding.left,
                top: 0,
                bottom: 0,
                child: IconTheme.merge(
                  data: const IconThemeData(color: Colors.black),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: icon,
                  ),
                ),
              ),
              Visibility(
                visible: !hiddenWhenNotHovered || focused,
                child: Positioned(
                  right: 6,
                  top: 0,
                  bottom: 4,
                  left: iconPadding.left + 32,
                  child: Center(
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        text.whenEmptyUse(
                          percentage.isNaN
                              ? '0 %'
                              : // ignore: lines_longer_than_80_chars
                              '${(percentage * 100).toStringAsFixed(0)}%',
                        ),
                        style: context.textThemeBold.titleLarge!.copyWith(
                          color: textColor,
                          shadows: shadows,
                          height: 1,
                        ),
                        maxLines: 2,
                      ).animate().fadeIn(duration: 100.milliseconds),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
