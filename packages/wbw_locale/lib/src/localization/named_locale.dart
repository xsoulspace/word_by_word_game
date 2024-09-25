// ignore_for_file: invalid_annotation_target
part of 'localization.dart';

/// A class representing a named locale for user selection.
///
/// This class is used to display a list of supported [Languages]
/// and allows the user to choose one of them.
///
/// Use [NamedLocale] to create instances that pair a user-friendly
/// name with a corresponding [Locale].
///
/// ```dart
/// final namedLocale = NamedLocale(name: 'English', locale: Locales.en);
/// ```
///
/// @ai When using this class, ensure to provide meaningful names
/// for better user experience.
@immutable
class NamedLocale {
  /// Creates a [NamedLocale] instance.
  ///
  /// The [name] is the display name for the locale, and [locale]
  /// is the actual locale used for localization.
  const NamedLocale({
    required this.name,
    required this.locale,
  });

  /// The display name of the locale shown to the user.
  final String name;

  /// The locale used as the value to change the application's locale.
  final Locale locale;

  /// The language code of the locale.
  ///
  /// This is equivalent to [Locale.languageCode] and can be used
  /// to retrieve the language code for the current locale.
  String get code => locale.languageCode;
}

/// Converts a language code string to a corresponding [Locale].
///
/// Returns null if the provided [languageCode] is null or empty.
///
/// [languageCode] The language code to convert to a [Locale].
Locale? localeFromString(final String? languageCode) {
  if (languageCode == null || languageCode.isEmpty) return null;
  final language = Languages.byLanguageCode(languageCode);
  final locale = Locales.byLanguage(language);
  return locale;
}

/// Converts a [Locale] to its corresponding language code string.
///
/// Returns null if the provided [locale] is null.
///
/// [locale] The locale to convert to a language code.
String? localeToString(final Locale? locale) => locale?.languageCode;

// ignore: avoid_annotating_with_dynamic
/// Converts a dynamic map to a map of [Languages] and their corresponding values.
///
/// Throws an [UnimplementedError] if the input is neither a [String] nor a [Map].
///
/// [map] The dynamic input to convert.
Map<Languages, String> localeValueFromMap(final map) {
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

/// Converts a map of [Languages] and their corresponding values to a string map.
///
/// [locales] The map of languages to convert.
Map<String, String> localeValueToMap(final Map<Languages, String> locales) =>
    locales.map(
      (final key, final value) => MapEntry(key.name, value),
    );

/// A class representing a localized map of values for different languages.
///
/// This class is used to manage localized strings associated with
/// different [Languages].
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

  /// Creates a [LocalizedMap] from a JSON map.
  ///
  /// [json] The JSON map to convert.
  factory LocalizedMap.fromJson(final Map<String, dynamic> json) =>
      _$LocalizedMapFromJson(json);

  /// Creates a [LocalizedMap] from a JSON value map.
  ///
  /// If the JSON does not contain a 'value' key, it wraps the entire
  /// JSON in a new map with 'value' as the key.
  ///
  /// [json] The JSON map to convert.
  factory LocalizedMap.fromJsonValueMap(final Map<String, dynamic> json) {
    if (json.containsKey('value')) {
      return LocalizedMap.fromJson(json);
    } else {
      return LocalizedMap.fromJson({'value': json});
    }
  }

  /// Creates a [LocalizedMap] initialized with empty values for all languages.
  factory LocalizedMap.fromLanguages() => LocalizedMap(
        value: Map.fromEntries(
          Languages.values.map((final e) => MapEntry(e, '')),
        ),
      );

  /// Converts the [LocalizedMap] to a JSON value map.
  ///
  /// [map] The [LocalizedMap] to convert.
  static Map<String, dynamic> toJsonValueMap(final LocalizedMap map) =>
      map.toJson()['value'];

  /// An empty [LocalizedMap].
  static const empty = LocalizedMap(value: {});

  /// Retrieves the localized value for a given [Locale].
  ///
  /// [locale] The locale to get the value for.
  String getValue(final Locale locale) =>
      getValueByLanguage(Languages.byLanguageCode(locale.languageCode));

  /// Retrieves the localized value for a given [Languages] enum.
  ///
  /// If no language is provided, it defaults to the current language.
  ///
  /// [language] The language to get the value for.
  String getValueByLanguage([final Languages? language]) =>
      value[language ?? getCurrentLanugage()]!;

  /// Retrieves the current language based on the locale.
  static Languages getCurrentLanugage() {
    final languageCode = getLanguageCodeByStr(Intl.getCurrentLocale());
    return Languages.byLanguageCode(languageCode);
  }
}
