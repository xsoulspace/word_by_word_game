import 'package:flutter/material.dart';

extension BuildContextX on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colorScheme => theme.colorScheme;
  // GoRouter get router => GoRouter.of(this);
  // Locale get locale => uiLocaleNotifier.value;
}
