import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'keyboard_bindings_notifier.dart';

class KeyboardBindingsViewFocusScope extends StatelessWidget {
  const KeyboardBindingsViewFocusScope({
    required this.child,
    super.key,
  });

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
