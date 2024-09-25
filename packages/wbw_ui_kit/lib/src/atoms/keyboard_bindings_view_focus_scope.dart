import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'keyboard_bindings_notifier.dart';

/// A widget that provides a focus scope for handling keyboard bindings.
///
/// This widget listens for key events and directs focus based on the
/// configured keyboard bindings. It is designed to be used in conjunction
/// with [KeyboardBindingsNotifier] to manage navigation within the UI.
///
/// @ai Ensure that the [child] widget is properly configured to respond
/// to focus changes and key events.
///
/// Example usage:
/// ```dart
/// KeyboardBindingsViewFocusScope(
///   child: YourChildWidget(),
/// )
/// ```
///
/// @ai Ensure that the [child] widget is properly configured to respond
/// to focus changes and key events.
class KeyboardBindingsViewFocusScope extends StatelessWidget {
  /// Creates a [KeyboardBindingsViewFocusScope] with the specified child widget.
  ///
  /// The [child] parameter is required and should be a widget that can
  /// respond to focus changes.
  const KeyboardBindingsViewFocusScope({
    required this.child,
    super.key,
  });

  /// The child widget that will receive focus events.
  final Widget child;

  @override
  Widget build(final BuildContext context) {
    final bindings = context.watch<KeyboardBindingsNotifier>();
    return FocusScope(
      autofocus: true,
      onKeyEvent: (final node, final event) {
        if (event is! KeyDownEvent) return KeyEventResult.ignored;

        final direction = _getDirectionFromKey(event.logicalKey, bindings);
        if (direction != null) {
          node.focusInDirection(direction);
          return KeyEventResult.handled;
        }

        return KeyEventResult.ignored;
      },
      child: child,
    );
  }

  /// Determines the traversal direction based on the pressed key.
  ///
  /// Returns the corresponding [TraversalDirection] if a valid key is pressed,
  /// or null if no matching key is found.
  TraversalDirection? _getDirectionFromKey(
    final LogicalKeyboardKey key,
    final KeyboardBindingsNotifier bindings,
  ) {
    if (bindings.getBindings(KeyboardBindingsType.mainMenuUp).contains(key)) {
      return TraversalDirection.up;
    } else if (bindings
        .getBindings(KeyboardBindingsType.mainMenuDown)
        .contains(key)) {
      return TraversalDirection.down;
    } else if (bindings
        .getBindings(KeyboardBindingsType.mainMenuLeft)
        .contains(key)) {
      return TraversalDirection.left;
    } else if (bindings
        .getBindings(KeyboardBindingsType.mainMenuRight)
        .contains(key)) {
      return TraversalDirection.right;
    }
    return null;
  }
}
