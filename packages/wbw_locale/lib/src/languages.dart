import 'package:xsoulspace_locale/xsoulspace_locale.dart';

const defaultLanguage = UiLanguage('en', 'English');
const uiLanguages = (
  en: defaultLanguage,
  ru: UiLanguage('ru', 'Russian'),
  it: UiLanguage('it', 'Italian'),
);
typedef WordsLanguages = ({UiLanguage en, UiLanguage ru});
const wordsLanguages = (en: defaultLanguage, ru: UiLanguage('ru', 'Russian'));

extension WordsLanguagesX on WordsLanguages {
  List<UiLanguage> get all => [en, ru];
}
