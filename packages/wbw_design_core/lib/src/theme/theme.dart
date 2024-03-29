import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_fonts/google_fonts.dart';

part 'app/colors.dart';
part 'app/theme_data.dart';
part 'app/typography.dart';
part 'brand/color_schemes.dart';
part 'brand/typography.dart';
part 'data/ui_form_factor.dart';
part 'data/ui_layout.dart';
part 'data/ui_text_theme.dart';
part 'theme.freezed.dart';

@immutable
@Freezed(
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class UiThemeScheme with _$UiThemeScheme {
  const factory UiThemeScheme({
    required final UiSpacing spacing,
    required final UiBoxSpacing horizontalBoxes,
    required final UiBoxSpacing verticalBoxes,
    required final UiRadius circularRadius,
    required final UiTextTheme text,
    required final UiCustomizableFormFactors customizableFormFactors,
  }) = _UiThemeScheme;
  const UiThemeScheme._();
  factory UiThemeScheme.m3(final BuildContext context) {
    const spacing = UiSpacing.m3;
    return UiThemeScheme(
      text: UiTextTheme(context),
      customizableFormFactors: UiCustomizableFormFactors.ofTargetPlatform(),
      circularRadius: UiRadius.circularBySpacing(spacing: spacing),
      spacing: spacing,
      horizontalBoxes: UiBoxSpacing.horizontal(spacing: spacing),
      verticalBoxes: UiBoxSpacing.vertical(spacing: spacing),
    );
  }
}
