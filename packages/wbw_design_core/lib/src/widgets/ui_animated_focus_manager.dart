import 'package:flutter/material.dart';

import '../../wbw_design_core.dart';

class AnimatedFocusManager extends StatefulWidget {
  const AnimatedFocusManager({required this.children, super.key});
  final List<Widget> children;

  @override
  _AnimatedFocusManagerState createState() => _AnimatedFocusManagerState();
}

class _AnimatedFocusManagerState extends State<AnimatedFocusManager>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  int? _focusedIndex;
  Offset? _startPosition;
  Offset? _endPosition;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onFocusChange(final int index, final Offset position) {
    setState(() {
      if (_focusedIndex == null) {
        _focusedIndex = index;
        _startPosition = position;
        _endPosition = position;
      } else {
        _startPosition = _endPosition;
        _endPosition = position;
        _controller.forward(from: 0);
      }
    });
  }

  @override
  Widget build(final BuildContext context) => Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.children.map((final child) {
              if (child is UiStyledButton) {
                return FocusableGameMenuButton(
                  index: widget.children.indexOf(child),
                  onFocusChange: _onFocusChange,
                  child: child,
                );
              }
              return child;
            }).toList(),
          ),
          if (_startPosition != null && _endPosition != null)
            AnimatedBuilder(
              animation: _controller,
              builder: (final context, final child) {
                final position = Offset.lerp(
                  _startPosition,
                  _endPosition,
                  _controller.value,
                )!;
                return Positioned(
                  left: 0,
                  top: position.dy + 10,
                  child: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: UiColors.mediumLight,
                    size: 24,
                  ),
                );
              },
            ),
        ],
      );
}

class FocusableGameMenuButton extends StatefulWidget {
  const FocusableGameMenuButton({
    required this.index,
    required this.child,
    required this.onFocusChange,
    super.key,
  });
  final int index;
  final UiStyledButton child;
  final Function(int index, Offset position) onFocusChange;

  @override
  _FocusableGameMenuButtonState createState() =>
      _FocusableGameMenuButtonState();
}

class _FocusableGameMenuButtonState extends State<FocusableGameMenuButton> {
  final GlobalKey _key = GlobalKey();

  @override
  Widget build(final BuildContext context) => Focus(
        onFocusChange: (final hasFocus) {
          if (hasFocus) {
            final RenderBox renderBox =
                _key.currentContext!.findRenderObject()! as RenderBox;
            final position = renderBox.localToGlobal(Offset.zero);
            widget.onFocusChange(widget.index, position);
          }
        },
        child: KeyedSubtree(
          key: _key,
          child: widget.child,
        ),
      );
}
