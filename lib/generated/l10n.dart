// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Finish game`
  String get finishGame {
    return Intl.message(
      'Finish game',
      name: 'finishGame',
      desc: '',
      args: [],
    );
  }

  /// `Next player`
  String get nextPlayer {
    return Intl.message(
      'Next player',
      name: 'nextPlayer',
      desc: '',
      args: [],
    );
  }

  /// `Reset ending`
  String get resetEnding {
    return Intl.message(
      'Reset ending',
      name: 'resetEnding',
      desc: '',
      args: [],
    );
  }

  /// `Congratulations!`
  String get congratulations {
    return Intl.message(
      'Congratulations!',
      name: 'congratulations',
      desc: '',
      args: [],
    );
  }

  /// `Max highscore is `
  String get maxHighscoreIs {
    return Intl.message(
      'Max highscore is ',
      name: 'maxHighscoreIs',
      desc: '',
      args: [],
    );
  }

  /// `Continue `
  String get continueGame {
    return Intl.message(
      'Continue ',
      name: 'continueGame',
      desc: '',
      args: [],
    );
  }

  /// `Start again `
  String get startAgain {
    return Intl.message(
      'Start again ',
      name: 'startAgain',
      desc: '',
      args: [],
    );
  }

  /// `This time your score is `
  String get yourHighscore {
    return Intl.message(
      'This time your score is ',
      name: 'yourHighscore',
      desc: '',
      args: [],
    );
  }

  /// `player`
  String get player {
    return Intl.message(
      'player',
      name: 'player',
      desc: '',
      args: [],
    );
  }

  /// `Last word: `
  String get lastword {
    return Intl.message(
      'Last word: ',
      name: 'lastword',
      desc: '',
      args: [],
    );
  }

  /// `beginning`
  String get hintAddBeginning {
    return Intl.message(
      'beginning',
      name: 'hintAddBeginning',
      desc: '',
      args: [],
    );
  }

  /// `add new word`
  String get hintAddNewWord {
    return Intl.message(
      'add new word',
      name: 'hintAddNewWord',
      desc: '',
      args: [],
    );
  }

  /// `ending`
  String get hintAddEnding {
    return Intl.message(
      'ending',
      name: 'hintAddEnding',
      desc: '',
      args: [],
    );
  }

  /// `add`
  String get addNewWord {
    return Intl.message(
      'add',
      name: 'addNewWord',
      desc: '',
      args: [],
    );
  }

  /// `New Game`
  String get newGame {
    return Intl.message(
      'New Game',
      name: 'newGame',
      desc: '',
      args: [],
    );
  }

  /// `For any bugs or ideas please send your feedback to idea@xsoulspace.dev`
  String get sendFeedback {
    return Intl.message(
      'For any bugs or ideas please send your feedback to idea@xsoulspace.dev',
      name: 'sendFeedback',
      desc: '',
      args: [],
    );
  }

  /// `Thank you and happy gaming!`
  String get thankYou {
    return Intl.message(
      'Thank you and happy gaming!',
      name: 'thankYou',
      desc: '',
      args: [],
    );
  }

  /// `2020 © X Soul Space `
  String get copyright {
    return Intl.message(
      '2020 © X Soul Space ',
      name: 'copyright',
      desc: '',
      args: [],
    );
  }

  /// `score`
  String get currentScore {
    return Intl.message(
      'score',
      name: 'currentScore',
      desc: '',
      args: [],
    );
  }

  /// `highscore`
  String get highscore {
    return Intl.message(
      'highscore',
      name: 'highscore',
      desc: '',
      args: [],
    );
  }

  /// `letters to remove`
  String get lettersToRemove {
    return Intl.message(
      'letters to remove',
      name: 'lettersToRemove',
      desc: '',
      args: [],
    );
  }

  /// `Players `
  String get players {
    return Intl.message(
      'Players ',
      name: 'players',
      desc: '',
      args: [],
    );
  }

  /// `Lang `
  String get menuLanguage {
    return Intl.message(
      'Lang ',
      name: 'menuLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Info `
  String get menuInfo {
    return Intl.message(
      'Info ',
      name: 'menuInfo',
      desc: '',
      args: [],
    );
  }

  /// `New `
  String get menuNewGame {
    return Intl.message(
      'New ',
      name: 'menuNewGame',
      desc: '',
      args: [],
    );
  }

  /// `Add to dictionary`
  String get addToDictionary {
    return Intl.message(
      'Add to dictionary',
      name: 'addToDictionary',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'it'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
