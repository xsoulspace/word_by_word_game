import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:word_by_word_game/constants/Locales.dart';
import 'package:word_by_word_game/l10n/messages_all.dart';

// flutter pub run intl_translation:extract_to_arb --output-dir=lib/l10n lib/localizations/MainLocalizations.dart

// flutter pub run intl_translation:generate_from_arb \
//  --output-dir=lib/l10n --no-use-deferred-loading \
//  lib/l10n/intl_messages.arb lib/l10n/intl_en.arb lib/l10n/intl_ru.arb lib/localizations/MainLocalizations.dart
class MainLocalizations {
  static Future<MainLocalizations> load(Locale locale) {
    final String name = locale.countryCode == null || locale.countryCode.isEmpty
        ? locale.languageCode
        : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      return MainLocalizations();
    });
  }

  static MainLocalizations of(BuildContext context) {
    return Localizations.of<MainLocalizations>(context, MainLocalizations);
  }

  String get finishGame {
    return Intl.message('Finish game', name: 'finishGame');
  }

  String get nextPlayer {
    return Intl.message('Next player', name: 'nextPlayer');
  }

  String get resetEnding {
    return Intl.message('Reset ending', name: 'resetEnding');
  }

  String get congratulations {
    return Intl.message('Congratulations!', name: 'congratulations');
  }

  String get maxHighscoreIs {
    return Intl.message('Max highscore is ', name: 'maxHighscoreIs');
  }

  String get continueGame {
    return Intl.message('Continue ', name: 'continueGame');
  }

  String get startAgain {
    return Intl.message('Start again ', name: 'startAgain');
  }

  String get yourHighscore {
    return Intl.message('This time your score is ', name: 'yourHighscore');
  }

  String get player {
    return Intl.message('player', name: 'player');
  }

  String get lastword {
    return Intl.message('Last word: ', name: 'lastword');
  }

  String get hintAddBeginning {
    return Intl.message('beginning', name: 'hintAddBeginning');
  }

  String get hintAddNewWord {
    return Intl.message('add new word', name: 'hintAddNewWord');
  }

  String get hintAddEnding {
    return Intl.message('ending', name: 'hintAddEnding');
  }

  String get addNewWord {
    return Intl.message('add', name: 'addNewWord');
  }

  String get newGame {
    return Intl.message('New Game', name: 'newGame');
  }

  String get sendFeedback {
    return Intl.message(
        'For any bugs or ideas please send your feedback to idea@xsoulspace.dev',
        name: 'sendFeedback');
  }

  String get thankYou {
    return Intl.message('Thank you and happy gaming!', name: 'thankYou');
  }

  String get copyright {
    return Intl.message('2020 \u00a9 X Soul Space ', name: 'copyright');
  }

  String get currentScore {
    return Intl.message('score', name: 'currentScore');
  }

  String get highscore {
    return Intl.message(
      'highscore',
      name: 'highscore',
    );
  }

  String get lettersToRemove {
    return Intl.message('letters to remove', name: 'lettersToRemove');
  }

  String get players {
    return Intl.message('Players ', name: 'players');
  }

  String get menuLanguage {
    return Intl.message('Lang ', name: 'menuLanguage');
  }

  String get menuInfo {
    return Intl.message('Info ', name: 'menuInfo');
  }

  String get menuNewGame {
    return Intl.message('New ', name: 'menuNewGame');
  }

  String get addToDictionary {
    return Intl.message('Add to dictionary', name: 'addToDictionary');
  }
}

class MainLocalizationsDelegate
    extends LocalizationsDelegate<MainLocalizations> {
  final Locale overridenLocale;

  const MainLocalizationsDelegate(this.overridenLocale);

  @override
  bool isSupported(Locale locale) =>
      locale != null ? Languages.all.contains(locale.languageCode) : false;

  @override
  Future<MainLocalizations> load(Locale locale) =>
      MainLocalizations.load(locale);

  @override
  bool shouldReload(MainLocalizationsDelegate old) => false;
}
