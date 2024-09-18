import 'package:flutter/material.dart';

import '../../wbw_design_core.dart';
import '../theme/color_palette copy.dart';
import '../theme/color_palette.dart';
import 'game_menu_button_painter.dart';

class GameMenuButton extends StatefulWidget {
  const GameMenuButton({
    required this.label,
    required this.onPressed,
    this.icon,
    this.focusNode, // Add this line
    this.onKeyEvent,
    this.styleType = ButtonStyleType.text,
    this.color,
    this.borderColor,
    this.gradientColors,
    this.borderWidth,
    this.radius,
    this.textStyle,
    super.key,
  });
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
  final Color? color;
  final Color? borderColor;
  final List<Color>? gradientColors;
  final double? borderWidth;
  final double? radius;
  final FocusNode? focusNode; // Add this line

  @override
  _GameMenuButtonState createState() => _GameMenuButtonState();
}

class _GameMenuButtonState extends State<GameMenuButton>
    with SingleTickerProviderStateMixin {
  bool _isHovered = false;
  bool _isTapped = false;
  bool _isFocused = false;

  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
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
    _scaleAnimation = _controller.drive(Tween<double>(begin: 0.95, end: 1));
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
    final buttonColor = widget.color ?? AppColorsTest.buttonPrimary;
    final buttonBorderColor = widget.borderColor ?? AppColorsTest.accentGreen;
    final buttonRadius = widget.radius ?? 30.0;
    final focused = _isFocused || _isHovered;
    final textColor =
        (focused ? UiColors.dark : UiColors.mediumDark).withOpacity(0.9);
    return FocusableActionDetector(
      focusNode: _focusNode,
      onShowHoverHighlight: (final isHovered) {
        setState(() => _isHovered = isHovered);
        _focusNode.requestFocus();
      },
      onFocusChange: (final isFocused) {
        setState(() => _isFocused = isFocused);
      },
      child: GestureDetector(
        onTap: widget.onPressed,
        onTapDown: _onTapDown,
        onTapUp: _onTapUp,
        onTapCancel: _onTapCancel,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 24,
              child: AnimatedOpacity(
                opacity: _isFocused ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 100),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: textColor,
                  size: 24,
                ),
              ),
            ),
            const Gap(4),
            Flexible(
              child: AnimatedScale(
                scale: _isTapped ? 0.95 : 1.0,
                duration: const Duration(milliseconds: 100),
                curve: Curves.easeOut,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  decoration: BoxDecoration(
                    boxShadow: focused
                        ? [
                            BoxShadow(
                              color: UiColors.light.withOpacity(0.1),
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ]
                        : [],
                  ),
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
                      padding: EdgeInsets.symmetric(
                        vertical:
                            widget.styleType == ButtonStyleType.text ? 6 : 12,
                        horizontal: 16,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (widget.icon != null) ...[
                            Icon(
                              widget.icon,
                              color: textColor,
                              size: 24,
                            ),
                            const Gap(8),
                          ],
                          UiAnimatedText(
                            widget.label,
                            textStyle: widget.textStyle ??
                                TextStyle(
                                  color: textColor,
                                  fontSize: 24,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
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
