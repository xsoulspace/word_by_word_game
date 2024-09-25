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
        if (bindings
            .getBindings(KeyboardBindingsType.mainMenuUp)
            .contains(event.logicalKey)) {
          node.focusInDirection(TraversalDirection.up);
          return KeyEventResult.handled;
        } else if (bindings
            .getBindings(KeyboardBindingsType.mainMenuDown)
            .contains(event.logicalKey)) {
          node.focusInDirection(TraversalDirection.down);
          return KeyEventResult.handled;
        } else if (bindings
            .getBindings(KeyboardBindingsType.mainMenuLeft)
            .contains(event.logicalKey)) {
          node.focusInDirection(TraversalDirection.left);
          return KeyEventResult.handled;
        } else if (bindings
            .getBindings(KeyboardBindingsType.mainMenuRight)
            .contains(event.logicalKey)) {
          node.focusInDirection(TraversalDirection.right);
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      child: child,
    );
  }
}
