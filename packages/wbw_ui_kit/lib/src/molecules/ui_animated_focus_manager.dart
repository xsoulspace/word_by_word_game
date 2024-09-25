import 'package:flutter/material.dart';

import '../../wbw_ui_kit.dart';

/// A widget that manages focus animations for its children.
///
/// This class provides a way to animate focus changes among its child widgets.
/// It uses an [AnimationController] to create smooth transitions when focus
/// changes occur.
///
/// ```dart
/// UiAnimatedFocusManager(
///   children: [
///     UiStyledButton(),
///     UiStyledButton(),
///   ],
/// )
/// ```
///
/// @ai Use this widget to enhance user experience by providing visual feedback
/// during focus changes. Ensure to manage the list of [children] properly.
class UiAnimatedFocusManager extends StatefulWidget {
  /// Creates an [UiAnimatedFocusManager].
  ///
  /// The [children] parameter is required and should contain the widgets that
  /// will be managed for focus animations.
  const UiAnimatedFocusManager({required this.children, super.key});

  /// The list of child widgets to manage focus animations.
  final List<Widget> children;

  @override
  _UiAnimatedFocusManagerState createState() => _UiAnimatedFocusManagerState();
}

class _UiAnimatedFocusManagerState extends State<UiAnimatedFocusManager>
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
                return UiFocusableWidget(
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

class UiFocusableWidget extends StatefulWidget {
  const UiFocusableWidget({
    required this.index,
    required this.child,
    required this.onFocusChange,
    super.key,
  });
  final int index;
  final UiStyledButton child;
  final Function(int index, Offset position) onFocusChange;

  @override
  _UiFocusableWidgetState createState() => _UiFocusableWidgetState();
}

class _UiFocusableWidgetState extends State<UiFocusableWidget> {
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
