// ignore_for_file: invalid_annotation_target

part of 'localization.dart';

/// Use this class to show user a list of supported [Languages]
/// and let him to choose one of them
@immutable
class NamedLocale {
  const NamedLocale({
    required this.name,
    required this.locale,
  });

  /// this field will be shown to user
  final String name;

  /// this locale will be used as value to change a locale
  final Locale locale;

  /// this field is a [Locale.languageCode]
  String get code => locale.languageCode;
}

Locale localeFromString(final String languageCode) {
  try {
    if (languageCode.isEmpty) return Locales.en;
    final language = Languages.byLanguageCode(languageCode);
    final locale = Locales.byLanguage(language);
    return locale;
    // ignore: avoid_catches_without_on_clauses
  } catch (e) {
    return Locales.en;
  }
}

String localeToString(final Locale locale) => locale.languageCode;

Map<Languages, String> localeValueFromMap(final dynamic map) {
  if (map is String) {
    return {};
  } else if (map is Map) {
    return map.map(
      (final key, final value) => MapEntry(Languages.values.byName(key), value),
    );
  } else {
    // TODO(arenukvern): description
    throw UnimplementedError();
  }
}

Map<String, String> localeValueToMap(final Map<Languages, String> locales) {
  return locales.map(
    (final key, final value) => MapEntry(key.name, value),
  );
}

@immutable
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class LocalizedMap with _$LocalizedMap {
  @JsonSerializable(explicitToJson: true)
  const factory LocalizedMap({
    @JsonKey(
      fromJson: localeValueFromMap,
      toJson: localeValueToMap,
    )
        required final Map<Languages, String> value,
  }) = _LocalizedMap;
  const LocalizedMap._();
  factory LocalizedMap.fromJson(final Map<String, dynamic> json) =>
      _$LocalizedMapFromJson(json);
  static const empty = LocalizedMap(value: {});
  String getValue() {
    final languageCode = getLanguageCodeByStr(Intl.getCurrentLocale());
    final language = Languages.byLanguageCode(languageCode);
    return value[language]!;
  }
}
