import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Closes the soft keyboard if it's currently open.
///
/// This function attempts to unfocus the currently focused widget,
/// which typically results in the keyboard being dismissed.
///
/// ```dart
/// closeKeyboard(context: context);
/// ```
///
/// @param context The [BuildContext] of the current widget tree.
///
/// @ai Use this function when you need to programmatically close the keyboard,
/// such as after form submission or when transitioning between screens.
void closeKeyboard({required final BuildContext context}) {
  final FocusScopeNode currentFocus = FocusScope.of(context);
  if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
    currentFocus.focusedChild?.unfocus();
  }
}

/// A utility class for controlling the soft keyboard.
///
/// This class provides static methods to programmatically show or hide
/// the soft keyboard without needing a specific [BuildContext].
///
/// @ai Use this class when you need fine-grained control over the keyboard's
/// visibility, especially in scenarios where a [BuildContext] is not readily
/// available.
class SoftKeyboard {
  /// Private constructor to prevent instantiation.
  SoftKeyboard._();

  /// Hides the soft keyboard.
  ///
  /// This method uses platform channels to request the keyboard to be hidden.
  ///
  /// ```dart
  /// await SoftKeyboard.close();
  /// ```
  ///
  /// @return A [Future] that completes when the hide request has been sent to
  /// the platform.
  ///
  /// @ai Use this method when you need to hide the keyboard without a specific
  /// focus change.
  static Future<void> close() async =>
      SystemChannels.textInput.invokeMethod('TextInput.hide');

  /// Shows the soft keyboard.
  ///
  /// This method uses platform channels to request the keyboard to be shown.
  /// Note that this may not always succeed, as the actual display of the
  /// keyboard depends on the platform and current focus state.
  ///
  /// ```dart
  /// await SoftKeyboard.open();
  /// ```
  ///
  /// @ai Use this method when you need to show the keyboard programmatically,
  /// but be aware that it may not always result in the keyboard being
  /// displayed.
  static Future<void> open() async =>
      SystemChannels.textInput.invokeMethod('TextInput.show');
}
