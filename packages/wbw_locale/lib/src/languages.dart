import 'package:xsoulspace_locale/xsoulspace_locale.dart';

const defaultLanguage = UiLanguage('en', 'English');
const uiLanguages = (
  en: defaultLanguage,
  ru: UiLanguage('ru', 'Russian'),
  it: UiLanguage('it', 'Italian'),
);
final englishKeyboard = KeyboardLanguage.fromLanguage(uiLanguages.en);
final russianKeyboard = KeyboardLanguage.fromLanguage(uiLanguages.ru);
final allKeyboardLanguages = KeyboardLanguage.values;

final defaultKeyboard = KeyboardLanguage.defaultKeyboardLanguage;

typedef WordsLanguages = ({UiLanguage en, UiLanguage ru});

const wordsLanguages = (en: defaultLanguage, ru: UiLanguage('ru', 'Russian'));

extension WordsLanguagesX on WordsLanguages {
  List<UiLanguage> get all => [en, ru];
}
