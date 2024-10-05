import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xsoulspace_foundation/xsoulspace_foundation.dart';

import '../../wbw_ui_kit.dart';

export 'design_system_token.dart';

part 'color_schemes.dart';
part 'theme.freezed.dart';
part 'theme_data.dart';
part 'typography.dart';
part 'ui_form_factor.dart';
part 'ui_text_theme.dart';

@immutable
@Freezed(
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class UiThemeScheme with _$UiThemeScheme {
  const factory UiThemeScheme({
    required final UiTextTheme text,
    required final UiCustomizableFormFactors customizableFormFactors,
  }) = _UiThemeScheme;
  const UiThemeScheme._();
  factory UiThemeScheme.m3(final BuildContext context) => UiThemeScheme(
        text: UiTextTheme(context),
        customizableFormFactors: UiCustomizableFormFactors.ofTargetPlatform(),
      );
}
