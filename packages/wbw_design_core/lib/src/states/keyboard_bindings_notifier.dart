import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wbw_core/wbw_core.dart';

enum KeyboardBindingsType {
  /// first value is the default binding and would be visible
  /// in the settings menu
  mainMenuUp([LogicalKeyboardKey.keyW, LogicalKeyboardKey.arrowUp]),
  mainMenuDown([LogicalKeyboardKey.keyS, LogicalKeyboardKey.arrowDown]),
  mainMenuLeft([LogicalKeyboardKey.keyA, LogicalKeyboardKey.arrowLeft]),
  mainMenuRight([LogicalKeyboardKey.keyD, LogicalKeyboardKey.arrowRight]),
  mainMenuSelect([LogicalKeyboardKey.enter]),
  mainMenuBack([LogicalKeyboardKey.escape]);

  const KeyboardBindingsType(this.key);
  final List<LogicalKeyboardKey> key;
}

typedef KeyboardBindings = Map<KeyboardBindingsType, List<LogicalKeyboardKey>>;

class KeyboardBindingsNotifier extends ValueNotifier<KeyboardBindings> {
  // ignore: avoid_unused_constructor_parameters
  KeyboardBindingsNotifier(final BuildContext context)
      : super(
          KeyboardBindingsType.values.toMap(
            toKey: (final item) => item,
            toValue: (final item) => item.key,
          ),
        );
  List<LogicalKeyboardKey> getBindings(final KeyboardBindingsType type) =>
      value[type] ?? [];
  String getBindingDefaultTitle(final KeyboardBindingsType type) {
    final key = value[type]?.firstOrNull;
    if (key case LogicalKeyboardKey.enter) return '⏎';

    return value[type]?.firstOrNull?.keyLabel ?? '';
  }
}
