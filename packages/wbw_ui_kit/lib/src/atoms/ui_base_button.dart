import 'package:flutter/material.dart';

import '../molecules/molecules.dart';

/// A customizable base button widget with built-in press animation and
/// focus handling.
///
/// This widget provides a foundation for creating interactive buttons with
/// consistent behavior across the UI. It supports custom appearance, press
/// animations, and keyboard focus management.
///
/// Example usage:
/// ```dart
/// UiBaseButton(
///   onPressed: () => print('Button pressed'),
///   builder: (context, focused, onlyFocused) => Container(
///     padding: EdgeInsets.all(16),
///     color: focused ? Colors.blue : Colors.grey,
///     child: Text('Custom Button'),
///   ),
/// )
/// ```
///
/// PREFER using [UiBaseButton] over raw [GestureDetector] or [InkWell] for
/// consistent button behavior across your application.
///
/// See also:
///
///  * [UiStyledButton], a pre-styled button built on top of [UiBaseButton].
///  * [FocusableActionDetector], which this widget uses for focus management.
///
/// @ai When generating code involving this class, ensure proper use of the
/// [builder] function and consider the button's state (pressed,
/// focused) in the UI.
class UiBaseButton extends StatefulWidget {
  /// Creates a [UiBaseButton] widget.
  ///
  /// The [builder] parameter is required and defines the button's appearance
  /// based on its current state.
  ///
  /// @ai Ensure the [builder] function handles all states appropriately.
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

  /// Builds the button's child widget based on the current state.
  ///
  /// This function is called with the current [BuildContext],
  /// whether the button
  /// is focused or hovered, and whether it's only focused (not hovered).
  ///
  /// @ai Use this to create dynamic button appearances based on
  /// interaction state.
  // ignore: avoid_positional_boolean_parameters
  final Widget Function(BuildContext, bool focused, bool onlyFocused) builder;

  /// Called when the button is tapped or activated via keyboard.
  ///
  /// @ai Implement this to handle the button's primary action.
  final VoidCallback? onPressed;

  /// Called when the button is long-pressed.
  ///
  /// @ai Use this for secondary or context-specific actions.
  final VoidCallback? onLongPress;

  /// The scale factor applied to the button when pressed.
  ///
  /// Defaults to 0.95. Use 1.0 for no scaling effect.
  ///
  /// @ai Adjust this for more or less pronounced press animations.
  final double pressedScale;

  /// The duration of the press animation.
  ///
  /// @ai Consider shorter durations for more responsive feel,
  /// longer for emphasis.
  final Duration animationDuration;

  /// The curve of the press animation.
  ///
  /// @ai Experiment with different curves for varied animation feels.
  final Curve curve;

  /// An optional [FocusNode] to manage the button's focus state.
  ///
  /// If null, the button will create and manage its own [FocusNode].
  ///
  /// @ai Provide a custom [FocusNode] for fine-grained focus control.
  final FocusNode? focusNode;

  /// A map of [Intent] to [Action] for handling keyboard input.
  ///
  /// @ai Use this to add custom keyboard shortcuts or behaviors to the button.
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
      setState(() => _isPressed = true);
    }
  }

  void _handleTapUp(final TapUpDetails details) {
    if (_isPressed) {
      setState(() => _isPressed = false);
    }
  }

  void _handleTapCancel() {
    if (_isPressed) {
      setState(() => _isPressed = false);
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
          scale: _isPressed ? widget.pressedScale : 1.0,
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
