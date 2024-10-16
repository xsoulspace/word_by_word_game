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

Locale? localeFromString(final String? languageCode) {
  if (languageCode == null || languageCode.isEmpty) return null;
  final language = Languages.byLanguageCode(languageCode);
  final locale = Locales.byLanguage(language);
  return locale;
}

String? localeToString(final Locale? locale) => locale?.languageCode;

// ignore: avoid_annotating_with_dynamic
Map<Languages, String> localeValueFromMap(final dynamic map) {
  if (map is String) {
    return {};
  } else if (map is Map) {
    if (map.isEmpty) {
      return Languages.values.toMap(
        toKey: (final item) => item,
        toValue: (final item) => '',
      );
    }
    return map.map(
      (final key, final value) => MapEntry(Languages.values.byName(key), value),
    );
  } else {
    // TODO(arenukvern): description
    throw UnimplementedError('localeValueFromMap $map');
  }
}

Map<String, String> localeValueToMap(final Map<Languages, String> locales) =>
    locales.map(
      (final key, final value) => MapEntry(key.name, value),
    );

@immutable
@freezed
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
  factory LocalizedMap.fromJsonValueMap(final Map<String, dynamic> json) {
    if (json.containsKey('value')) {
      return LocalizedMap.fromJson(json);
    } else {
      return LocalizedMap.fromJson({'value': json});
    }
  }
  factory LocalizedMap.fromLanguages() => LocalizedMap(
        value: Map.fromEntries(
          Languages.values.map((final e) => MapEntry(e, '')),
        ),
      );
  static Map<String, dynamic> toJsonValueMap(final LocalizedMap map) =>
      map.toJson()['value'];
  static const empty = LocalizedMap(value: {});
  String getValue(final Locale locale) =>
      getValueByLanguage(Languages.byLanguageCode(locale.languageCode));
  String getValueByLanguage([final Languages? language]) =>
      value[language ?? getCurrentLanugage()]!;

  static Languages getCurrentLanugage() {
    final languageCode = getLanguageCodeByStr(Intl.getCurrentLocale());
    return Languages.byLanguageCode(languageCode);
  }
}
