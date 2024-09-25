part of 'localization.dart';

/// A class that holds the supported locales for the application.
///
/// This class provides a centralized way to manage and retrieve
/// the available locales for localization purposes.
///
/// Use [Locales.values] to get a list of all available locales.
///
/// ```dart
/// final availableLocales = Locales.values;
/// ```
///
/// @ai When using this class, ensure to reference the appropriate
/// locale based on the user's language preference.
class Locales {
  Locales._();
  static const en = Locale('en', 'EN');
  static const ru = Locale('ru', 'RU');
  static const it = Locale('it', 'IT');

  /// Irland Language
  // static const ga = 'ga';

  /// Turkey Language
  // static const ga = 'ga';

  // static const ga = Locale(Languages.ga, 'GA');
  /// A list of all available locales.
  static const values = <Locale>[en, ru, it];

  /// Returns the corresponding [Locale] for a given [Languages] enum.
  ///
  /// If the provided language is not supported, it defaults to [en].
  ///
  /// [language] The language enum to retrieve the locale for.
  static Locale byLanguage(final Languages language) {
    switch (language) {
      case Languages.en:
        return en;
      case Languages.ru:
        return ru;
      case Languages.it:
        return it;
    }
  }
}

/// A type alias for language names.
typedef LanguageName = String;

/// A list of supported languages for keyboard input.
final wordsLanguages = [Languages.en, Languages.ru];

/// An enum representing keyboard language options.
///
/// This enum provides a way to manage keyboard language settings
/// based on the selected application language.
///
/// @ai Use this enum to determine the appropriate keyboard language
/// for user input.
enum KeyboardLanguage {
  en,
  ru;

  /// Creates a [KeyboardLanguage] from a given [Languages] enum.
  ///
  /// If the provided language is null or not recognized, it defaults to [en].
  ///
  /// [language] The language enum to convert.
  factory KeyboardLanguage.fromLanguage(final Languages? language) =>
      switch (language) {
        null || Languages.en || Languages.it => KeyboardLanguage.en,
        Languages.ru => KeyboardLanguage.ru
      };
}

/// An enum representing the supported languages in the application.
///
/// This enum provides a way to manage language codes and their
/// corresponding values for localization.
///
/// @ai Use this enum to retrieve language information based on
/// language codes.
enum Languages {
  ru('ru'),
  en('en'),
  it('it');

  const Languages(this.value);
  final String value;

  /// Returns the corresponding [Languages] enum for a given language code.
  ///
  /// If the language code is not recognized, it defaults to [en].
  ///
  /// [languageCode] The language code to convert.
  static Languages byLanguageCode(final String languageCode) {
    try {
      return all.byName(languageCode.toLowerCase());
      // ignore: avoid_catching_errors
    } on ArgumentError {
      return Languages.en;
    }
  }

  static const all = <Languages>[en, ru, it];
}

/// A map that associates each language with its corresponding named locale.
final Map<Languages, NamedLocale> namedLocalesMap = {
  Languages.en: const NamedLocale(
    name: 'English',
    locale: Locales.en,
  ),
  Languages.ru: const NamedLocale(
    name: 'Русский',
    locale: Locales.ru,
  ),
  Languages.it: const NamedLocale(
    name: 'Italian',
    locale: Locales.it,
  ),
};

/// Returns the language code from a given language name.
///
/// This function extracts the language code from a string that may
/// contain an underscore.
///
/// [language] The language name to extract the code from.
String getLanguageCodeByStr(final LanguageName language) {
  String lang = language;
  if (language.contains('_')) {
    lang = language.split('_').first;
  }

  return lang;
}
