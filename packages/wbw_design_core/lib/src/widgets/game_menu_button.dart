import 'package:flutter/material.dart';

import '../theme/color_palette copy.dart';
import 'game_menu_button_painter.dart';

class GameMenuButton extends StatefulWidget {
  const GameMenuButton({
    required this.label,
    required this.icon,
    required this.onPressed,
    this.styleType = ButtonStyleType.filled,
    this.color,
    this.borderColor,
    this.gradientColors,
    this.borderWidth,
    this.radius,
    super.key,
  });

  final String label;
  final IconData icon;
  final VoidCallback onPressed;
  final ButtonStyleType styleType;
  final Color? color;
  final Color? borderColor;
  final List<Color>? gradientColors;
  final double? borderWidth;
  final double? radius;

  @override
  _GameMenuButtonState createState() => _GameMenuButtonState();
}

class _GameMenuButtonState extends State<GameMenuButton>
    with SingleTickerProviderStateMixin {
  bool _isHovered = false;
  bool _isTapped = false;

  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

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

  void _onEnter(final PointerEvent details) {
    setState(() {
      _isHovered = true;
    });
  }

  void _onExit(final PointerEvent details) {
    setState(() {
      _isHovered = false;
    });
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

    return MouseRegion(
      onEnter: _onEnter,
      onExit: _onExit,
      child: GestureDetector(
        onTap: widget.onPressed,
        onTapDown: _onTapDown,
        onTapUp: _onTapUp,
        onTapCancel: _onTapCancel,
        child: AnimatedScale(
          scale: _isTapped ? 0.95 : 1.0,
          duration: const Duration(milliseconds: 100),
          curve: Curves.easeOut,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            decoration: BoxDecoration(
              boxShadow: _isHovered
                  ? [
                      const BoxShadow(
                        color: AppColorsTest.shadow,
                        blurRadius: 12,
                        offset: Offset(0, 6),
                      ),
                    ]
                  : [
                      const BoxShadow(
                        color: AppColorsTest.shadow,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
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
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      widget.icon,
                      color: AppColorsTest.buttonText,
                      size: buttonRadius * 0.6,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      widget.label,
                      style: const TextStyle(
                        color: AppColorsTest.buttonText,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
