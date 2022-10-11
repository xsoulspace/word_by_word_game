// ignore_for_file: invalid_annotation_target

part of 'models.dart';

@immutable
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class AppSettingsModel with _$AppSettingsModel {
  @JsonSerializable(
    explicitToJson: true,
  )
  const factory AppSettingsModel({
    @JsonKey(
      fromJson: _localeFromString,
      toJson: _localeToString,
    )
    @Default(Locales.en)
        final Locale locale,
  }) = _AppSettingsModel;

  const AppSettingsModel._();

  factory AppSettingsModel.fromJson(final Map<String, dynamic> json) =>
      _$AppSettingsModelFromJson(json);
  static const empty = AppSettingsModel();
}

Locale _localeFromString(final String languageCode) {
  try {
    if (languageCode.isEmpty) return Locales.en;

    return Locale.fromSubtags(languageCode: languageCode);
    // ignore: avoid_catches_without_on_clauses
  } catch (e) {
    return Locales.en;
  }
}

String _localeToString(final Locale locale) => locale.languageCode;
