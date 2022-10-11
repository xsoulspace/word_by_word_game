import 'package:flutter/widgets.dart';

import 'named_locale.dart';

class Locales {
  Locales._();
  static const en = Locale(Languages.en, 'EN');
  static const ru = Locale(Languages.ru, 'RU');
  static const it = Locale(Languages.it, 'IT');
  // static const ga = Locale(Languages.ga, 'GA');
  static const values = <Locale>[en, ru, it];
}

typedef LanguageName = String;

class Languages {
  Languages._();
  static const ru = 'ru';
  static const en = 'en';
  static const it = 'it';

  /// Irland Language
  // static const ga = 'ga';

  /// Turkey Language
  // static const ga = 'ga';

  static const values = <LanguageName>[ru, en, it];
}

final Map<String, NamedLocale> namedLocalesMap = {
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
