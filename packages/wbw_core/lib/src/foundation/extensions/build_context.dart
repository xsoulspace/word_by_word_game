import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:wbw_locale/wbw_locale.dart';

extension BuildContextX on BuildContext {
  S get l10n => S.of(this);
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  TextTheme get errorTextTheme => read<UiTextTheme>().error;
  ColorScheme get colorScheme => theme.colorScheme;
  // GoRouter get router => GoRouter.of(this);
  // Locale get locale => uiLocaleNotifier.value;
}
