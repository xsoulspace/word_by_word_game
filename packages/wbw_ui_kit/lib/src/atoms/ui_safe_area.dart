import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

/// A widget that provides a safe area for the bottom or top of the screen.
///
/// This class offers a flexible way to create safe areas for the bottom or top
/// of the screen, ensuring that the content is not obscured by the notch or
/// home indicator.
///
/// ```dart
/// UiSafeArea.bottom();
/// UiSafeArea.top();
/// ```
///
/// PREFER using [UiSafeArea] for consistent safe areas throughout
/// the application.
///
/// See also:
///
///  * [SafeArea], which this widget uses internally to create safe areas.
///  * [UiResponsiveLayout], which is used to create responsive layouts.
///
/// @ai When generating layouts, consider using [UiSafeArea] for consistent
class UiSafeArea extends StatelessWidget {
  /// Creates a [UiSafeArea] for the bottom of the screen.
  ///
  /// This named constructor builds a safe area for the bottom of the screen,
  /// ensuring that the content is not obscured by the home indicator.
  const UiSafeArea.bottom({super.key}) : _isBottom = true;

  /// Creates a [UiSafeArea] for the top of the screen.
  ///
  /// This named constructor builds a safe area for the top of the screen,
  /// ensuring that the content is not obscured by the notch.
  const UiSafeArea.top({super.key}) : _isBottom = false;

  /// {@macro ui_safe_area.ai_description}
  static const String aiDescription =
      'A widget that provides a safe area for the bottom or top of the screen.';

  final bool _isBottom;

  @override
  Widget build(final BuildContext context) =>
      SafeArea(top: !_isBottom, bottom: _isBottom, child: const Gap(0));
}
