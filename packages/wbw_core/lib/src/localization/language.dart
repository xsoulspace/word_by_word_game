part of 'localization.dart';

class Locales {
  Locales._();
  static const en = Locale('en', 'EN');
  static const ru = Locale('ru', 'RU');
  static const it = Locale('it', 'IT');
  // static const ga = Locale(Languages.ga, 'GA');
  static const values = <Locale>[en, ru, it];
}

typedef LanguageName = String;

enum Languages {
  ru('ru'),
  en('en'),
  it('it');

  const Languages(this.value);
  final String value;

  /// Irland Language
  // static const ga = 'ga';

  /// Turkey Language
  // static const ga = 'ga';

  static const all = <Languages>[ru, en, it];
}

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

String getLanguageCode(final LanguageName language) {
  String lang = language;
  if (language.contains('_')) {
    lang = language.split('_').first;
  }

  return lang;
}
