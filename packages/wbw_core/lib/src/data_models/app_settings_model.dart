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
    @Default(WindowSizePreset.auto) final WindowSizePreset windowSizePreset,
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

enum WindowAspectRatio {
  @JsonValue('auto')
  auto,
  @JsonValue('16_9')
  w16h9,
  @JsonValue('4_3')
  w4h3;

  String get stringValue => switch (this) {
    WindowAspectRatio.auto => 'Auto',
    WindowAspectRatio.w16h9 => '16:9',
    WindowAspectRatio.w4h3 => '4:3',
  };
}

enum WindowSizePreset {
  @JsonValue('auto')
  auto(size: null, aspectRatio: WindowAspectRatio.auto),
  @JsonValue('16_9_720p')
  w16h9_720p(size: Size(1280, 720), aspectRatio: WindowAspectRatio.w16h9),
  @JsonValue('16_9_1080p')
  w16h9_1080p(size: Size(1920, 1080), aspectRatio: WindowAspectRatio.w16h9),
  @JsonValue('16_9_1440p')
  w16h9_1440p(size: Size(2560, 1440), aspectRatio: WindowAspectRatio.w16h9),
  @JsonValue('4_3_800x600')
  w4h3_800x600(size: Size(800, 600), aspectRatio: WindowAspectRatio.w4h3),
  @JsonValue('4_3_1024x768')
  w4h3_1024x768(size: Size(1024, 768), aspectRatio: WindowAspectRatio.w4h3);

  const WindowSizePreset({required this.size, required this.aspectRatio});
  final Size? size;
  final WindowAspectRatio aspectRatio;

  /// Returns the aspect ratio as a string (e.g., "16:9").
  String get aspectRatioString => aspectRatio.stringValue;

  /// Returns the resolution as a string (e.g., "1280x720").
  String get resolutionString {
    final size = this.size;
    if (size == null) return 'Auto';
    return '${size.width.toInt()}x${size.height.toInt()}';
  }

  /// Returns a display name for the preset.
  String get displayName => '$resolutionString ($aspectRatioString)';
}

extension LocaleExtension on Locale {
  String toStringJson() => localeToString(this)!;
}
