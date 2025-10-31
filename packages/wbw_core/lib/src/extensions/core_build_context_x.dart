import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:wbw_ui_kit/wbw_ui_kit.dart';

extension CoreBuildContextX on BuildContext {
  S get l10n => S.of(this);
  TextTheme get textThemeBold => read<UiTextTheme>().bold;
  TextTheme get errorTextTheme => read<UiTextTheme>().error;

  UiThemeScheme get uiTheme => read<UiThemeScheme>();
}
