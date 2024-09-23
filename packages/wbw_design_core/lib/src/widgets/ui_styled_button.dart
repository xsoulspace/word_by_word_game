import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../wbw_design_core.dart';

export 'ui_styled_button_painter.dart';

class UiStyledButton extends StatefulWidget {
  const UiStyledButton({
    required this.onPressed,
    this.label = '',
    this.icon,
    this.focusNode, // Add this line
    this.onKeyEvent,
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
  final KeyEventResult Function(
    FocusNode node,
    KeyEvent event,
    BuildContext context,
  )? onKeyEvent;
  final String label;
  final IconData? icon;
  final VoidCallback onPressed;
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
  _UiStyledButtonState createState() => _UiStyledButtonState();
}

class _UiStyledButtonState extends State<UiStyledButton>
    with SingleTickerProviderStateMixin {
  bool _isHovered = false;
  bool _isTapped = false;
  bool _isFocused = false;

  late AnimationController _controller;
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
      lowerBound: 0.95,
      value: 1,
    );
  }

  void _onTapDown(final TapDownDetails details) {
    setState(() {
      _isTapped = true;
      _controller.reverse();
    });
  }

  void _onTapUp(final TapUpDetails details) {
    setState(() {
      _isTapped = false;
      _controller.forward();
    });
  }

  void _onTapCancel() {
    setState(() {
      _isTapped = false;
      _controller.forward();
    });
  }

  @override
  Widget build(final BuildContext context) {
    final buttonColor = widget.color;
    final focused = _isFocused || _isHovered;
    final textColor =
        (focused ? UiColors.dark : UiColors.mediumDark).withOpacity(0.9);
    final buttonBorderColor = widget.borderColor ?? textColor;
    final buttonRadius = widget.radius ?? 30.0;
    final showFocusIcon = widget.focusIcon != null;
    Widget child = FocusableActionDetector(
      focusNode: _focusNode,
      onShowHoverHighlight: (final isHovered) {
        setState(() => _isHovered = isHovered);
        _focusNode.requestFocus();
      },
      onFocusChange: (final isFocused) {
        setState(() => _isFocused = isFocused);
      },
      actions: {
        ...widget.actions,
        ActivateIntent: CallbackAction<ActivateIntent>(
          onInvoke: (final _) => widget.onPressed(),
        ),
      },
      child: GestureDetector(
        onTap: widget.onPressed,
        onTapDown: _onTapDown,
        onTapUp: _onTapUp,
        onTapCancel: _onTapCancel,
        child: AnimatedScale(
          filterQuality: FilterQuality.high,
          scale: () {
            if (_isTapped) return 0.95;
            return 1.0;
          }(),
          duration: const Duration(milliseconds: 80),
          curve: Curves.ease,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (showFocusIcon)
                AnimatedOpacity(
                  opacity: _isFocused ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 150),
                  child: Icon(
                    widget.focusIcon,
                    color: textColor,
                    size: 24,
                  )
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
                    styleType: widget.styleType,
                    color: buttonColor,
                    borderColor: buttonBorderColor,
                    gradientColors: widget.gradientColors,
                    borderWidth: widget.borderWidth ?? 2.0,
                    radius: buttonRadius,
                  ),
                  child: Padding(
                    padding: widget.padding ??
                        EdgeInsets.symmetric(
                          vertical: widget.styleType == ButtonStyleType.text
                              ? 2.5
                              : 12,
                          horizontal:
                              widget.styleType == ButtonStyleType.text ? 8 : 16,
                        ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (widget.icon != null) ...[
                          Icon(
                            widget.icon,
                            color: textColor,
                            size: 20,
                          ),
                          if (widget.label.isNotEmpty) const Gap(8),
                        ],
                        if (widget.label.isNotEmpty)
                          Builder(
                            builder: (final context) {
                              final defaultTextStyle = TextStyle(
                                color: textColor,
                                fontSize: 24,
                              );

                              return UiAnimatedText(
                                widget.label,
                                textStyle:
                                    defaultTextStyle.merge(widget.textStyle),
                              );
                            },
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    if (widget.tooltip != null) {
      child = Tooltip(
        message: widget.tooltip,
        child: child,
      );
    }

    return child;
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }
}

class UiAnimatedText extends StatelessWidget {
  const UiAnimatedText(
    this.label, {
    this.textStyle,
    this.textColor = UiColors.dark,
    super.key,
  });
  final TextStyle? textStyle;
  final String label;
  final Color textColor;
  @override
  Widget build(final BuildContext context) => AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 200),
        style: textStyle ??
            TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
        child: Text(label),
      );
}
