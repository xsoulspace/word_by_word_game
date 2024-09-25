import 'package:flutter/material.dart';

class UiBaseButton extends StatefulWidget {
  const UiBaseButton({
    required this.builder,
    this.onPressed,
    this.onLongPress,
    this.pressedScale = 0.95,
    this.animationDuration = const Duration(milliseconds: 80),
    this.curve = Curves.ease,
    this.focusNode,
    this.actions = const {},
    super.key,
  });

  // ignore: avoid_positional_boolean_parameters
  final Widget Function(BuildContext, bool focused, bool onlyFocused) builder;
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final double pressedScale;
  final Duration animationDuration;
  final Curve curve;
  final FocusNode? focusNode;
  final Map<Type, Action<Intent>> actions;

  @override
  State<UiBaseButton> createState() => _UiBaseButtonState();
}

class _UiBaseButtonState extends State<UiBaseButton>
    with SingleTickerProviderStateMixin {
  bool _isPressed = false;
  bool _isHovered = false;
  bool _isFocused = false;
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = widget.focusNode ?? FocusNode();
  }

  void _handleTapDown(final TapDownDetails details) {
    if (!_isPressed) {
      _isPressed = true;
    }
  }

  void _handleTapUp(final TapUpDetails details) {
    if (_isPressed) {
      _isPressed = false;
    }
  }

  void _handleTapCancel() {
    if (_isPressed) {
      _isPressed = false;
    }
  }

  @override
  Widget build(final BuildContext context) {
    final focused = _isFocused || _isHovered;
    return FocusableActionDetector(
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
          onInvoke: (final _) => widget.onPressed?.call(),
        ),
      },
      child: GestureDetector(
        onTap: widget.onPressed,
        onTapDown: _handleTapDown,
        onTapUp: _handleTapUp,
        onTapCancel: _handleTapCancel,
        onLongPress: widget.onLongPress,
        child: AnimatedScale(
          filterQuality: FilterQuality.high,
          scale: () {
            if (_isPressed) return widget.pressedScale;
            return 1.0;
          }(),
          duration: widget.animationDuration,
          curve: widget.curve,
          child: widget.builder(context, focused, _isFocused),
        ),
      ),
    );
  }

  @override
  void dispose() {
    if (widget.focusNode == null) {
      _focusNode.dispose();
    }
    super.dispose();
  }
}
