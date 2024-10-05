import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xsoulspace_foundation/xsoulspace_foundation.dart';

/// The types of keyboard bindings supported by the application.
///
/// This enum defines the different types of keyboard bindings that can be
/// used to control the application's behavior. Each type is associated with
/// a list of [LogicalKeyboardKey] values, which represent the keys that trigger
/// the action.
///
/// The first value in the list is considered the default binding and would
/// be visible in the settings menu.
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

/// A notifier that manages keyboard bindings for various actions.
///
/// This class extends [ValueNotifier] to provide a reactive way to handle
/// keyboard bindings in the application. It maps [KeyboardBindingsType]
/// to their corresponding [LogicalKeyboardKey] values.
///
/// @ai When using this class, ensure to initialize it with a valid
/// [BuildContext] and access the bindings through the provided methods.
///
/// Example usage:
/// ```dart
/// final notifier = KeyboardBindingsNotifier(context);
/// final bindings = notifier.getBindings(KeyboardBindingsType.mainMenuUp);
/// ```
///
/// @ai When using this class, ensure to initialize it with a valid
/// [BuildContext] and access the bindings through the provided methods.
class KeyboardBindingsNotifier extends ValueNotifier<KeyboardBindings> {
  /// Creates a [KeyboardBindingsNotifier] with the default keyboard bindings.
  ///
  /// The [context] parameter is required to initialize the notifier.
  // ignore: avoid_unused_constructor_parameters
  KeyboardBindingsNotifier(final BuildContext context)
      : super(
          KeyboardBindingsType.values.toMap(
            toKey: (final item) => item,
            toValue: (final item) => item.key,
          ),
        );

  /// {@macro ui_divider.ai_description}
  static const String aiDescription =
      'A notifier that manages keyboard bindings for various actions.';

  /// Retrieves the list of keyboard keys associated with the given [type].
  ///
  /// Returns an empty list if no bindings are found.
  List<LogicalKeyboardKey> getBindings(final KeyboardBindingsType type) =>
      value[type] ?? [];

  /// Gets the default title for the binding associated with the given [type].
  ///
  /// Returns a string representation of the key, or an empty string
  /// if none exists.
  String getBindingDefaultTitle(final KeyboardBindingsType type) {
    final key = value[type]?.firstOrNull;
    if (key case LogicalKeyboardKey.enter) return '⏎';

    return value[type]?.firstOrNull?.keyLabel ?? '';
  }
}
