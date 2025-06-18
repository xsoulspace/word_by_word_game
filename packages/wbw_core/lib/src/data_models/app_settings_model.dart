// ignore_for_file: invalid_annotation_target

part of 'data_models.dart';

@immutable
@Freezed()
abstract class AppSettingsModel with _$AppSettingsModel {
  @JsonSerializable(explicitToJson: true)
  const factory AppSettingsModel({
    @JsonKey(fromJson: localeFromString, toJson: localeToString)
    final Locale? locale,
    @Default(BrightnessMode.system) final BrightnessMode brightnessMode,
  }) = _AppSettingsModel;

  const AppSettingsModel._();

  factory AppSettingsModel.fromJson(final Map<String, dynamic> json) =>
      _$AppSettingsModelFromJson(json);
  static const empty = AppSettingsModel();
}

enum BrightnessMode {
  @JsonValue('system')
  system,
  @JsonValue('light')
  light,
  @JsonValue('dark')
  dark;

  ThemeMode get themeMode {
    switch (this) {
      case BrightnessMode.dark:
        return ThemeMode.dark;
      case BrightnessMode.light:
        return ThemeMode.light;
      case BrightnessMode.system:
        return ThemeMode.system;
    }
  }
}

extension LocaleExtension on Locale {
  String toStringJson() => localeToString(this)!;
}
