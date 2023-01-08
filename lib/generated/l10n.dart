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

  /// `We cannot find the word {word} in our dictionary! Try another word or add it.`
  String wordIsNotCorrect(Object word) {
    return Intl.message(
      'We cannot find the word $word in our dictionary! Try another word or add it.',
      name: 'wordIsNotCorrect',
      desc: '',
      args: [word],
    );
  }

  /// `This word already written. Try another word.`
  String get wordAlreadyWritten {
    return Intl.message(
      'This word already written. Try another word.',
      name: 'wordAlreadyWritten',
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

  /// `Play`
  String get play {
    return Intl.message(
      'Play',
      name: 'play',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message(
      'Send',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `To Landscapes`
  String get toLandscapes {
    return Intl.message(
      'To Landscapes',
      name: 'toLandscapes',
      desc: '',
      args: [],
    );
  }

  /// `You have landed in the middle of nowhere..`
  String get youHaveLandedInTheNowhere {
    return Intl.message(
      'You have landed in the middle of nowhere..',
      name: 'youHaveLandedInTheNowhere',
      desc: '',
      args: [],
    );
  }

  /// `Profile Creator`
  String get profileCreator {
    return Intl.message(
      'Profile Creator',
      name: 'profileCreator',
      desc: '',
      args: [],
    );
  }

  /// `Return To Landscapes`
  String get returnToLandscapes {
    return Intl.message(
      'Return To Landscapes',
      name: 'returnToLandscapes',
      desc: '',
      args: [],
    );
  }

  /// `Credits`
  String get about {
    return Intl.message(
      'Credits',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Create Profile`
  String get createProfile {
    return Intl.message(
      'Create Profile',
      name: 'createProfile',
      desc: '',
      args: [],
    );
  }

  /// `Previous Word:`
  String get previousWord {
    return Intl.message(
      'Previous Word:',
      name: 'previousWord',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Select the Players`
  String get selectPlayers {
    return Intl.message(
      'Select the Players',
      name: 'selectPlayers',
      desc: '',
      args: [],
    );
  }

  /// `Choose Your Character`
  String get chooseYourCharacter {
    return Intl.message(
      'Choose Your Character',
      name: 'chooseYourCharacter',
      desc: '',
      args: [],
    );
  }

  /// `Choose a Landscape`
  String get chooseLandscape {
    return Intl.message(
      'Choose a Landscape',
      name: 'chooseLandscape',
      desc: '',
      args: [],
    );
  }

  /// `Players & Highscore`
  String get playersAndHighscore {
    return Intl.message(
      'Players & Highscore',
      name: 'playersAndHighscore',
      desc: '',
      args: [],
    );
  }

  /// `New Game`
  String get startNewGame {
    return Intl.message(
      'New Game',
      name: 'startNewGame',
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

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Apply & End Turn`
  String get applyAndEndTurn {
    return Intl.message(
      'Apply & End Turn',
      name: 'applyAndEndTurn',
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

  /// `If you have an idea, improvements, or bugs join Discord server.`
  String get sendFeedback {
    return Intl.message(
      'If you have an idea, improvements, or bugs join Discord server.',
      name: 'sendFeedback',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Suggested Word`
  String get suggestedWord {
    return Intl.message(
      'Suggested Word',
      name: 'suggestedWord',
      desc: '',
      args: [],
    );
  }

  /// `Try another word`
  String get tryAnotherWord {
    return Intl.message(
      'Try another word',
      name: 'tryAnotherWord',
      desc: '',
      args: [],
    );
  }

  /// `Unfortunately, you have not enough knowledge points to reveal this word..`
  String get notEnoughKnowledgeToRevealWord {
    return Intl.message(
      'Unfortunately, you have not enough knowledge points to reveal this word..',
      name: 'notEnoughKnowledgeToRevealWord',
      desc: '',
      args: [],
    );
  }

  /// `Use {costOfWord} knowledge points`
  String useCostKnowledgePoints(Object costOfWord) {
    return Intl.message(
      'Use $costOfWord knowledge points',
      name: 'useCostKnowledgePoints',
      desc: '',
      args: [costOfWord],
    );
  }

  /// `Reveal suggested word?`
  String get revealSuggestedWord {
    return Intl.message(
      'Reveal suggested word?',
      name: 'revealSuggestedWord',
      desc: '',
      args: [],
    );
  }

  /// `Nice`
  String get ok {
    return Intl.message(
      'Nice',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `There is no words suggestions :(`
  String get noWordsSuggestions {
    return Intl.message(
      'There is no words suggestions :(',
      name: 'noWordsSuggestions',
      desc: '',
      args: [],
    );
  }

  /// `Try it with diffirent letters..`
  String get tryWithDifferentLetters {
    return Intl.message(
      'Try it with diffirent letters..',
      name: 'tryWithDifferentLetters',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Hi, I'm Anton. Thank you for your interest in this game. Hope you like it:)`
  String get creatingGame {
    return Intl.message(
      'Hi, I\'m Anton. Thank you for your interest in this game. Hope you like it:)',
      name: 'creatingGame',
      desc: '',
      args: [],
    );
  }

  /// `You can support the game in https://boosty.to/arenukvern`
  String get supportGame {
    return Intl.message(
      'You can support the game in https://boosty.to/arenukvern',
      name: 'supportGame',
      desc: '',
      args: [],
    );
  }

  /// `Have a great day!`
  String get thankYou {
    return Intl.message(
      'Have a great day!',
      name: 'thankYou',
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

  /// `Select Action`
  String get selectAction {
    return Intl.message(
      'Select Action',
      name: 'selectAction',
      desc: '',
      args: [],
    );
  }

  /// `Cook Food`
  String get cookFood {
    return Intl.message(
      'Cook Food',
      name: 'cookFood',
      desc: '',
      args: [],
    );
  }

  /// `Refuel Balloon`
  String get refuelStorage {
    return Intl.message(
      'Refuel Balloon',
      name: 'refuelStorage',
      desc: '',
      args: [],
    );
  }

  /// `Add to Dictionary`
  String get addToDictionary {
    return Intl.message(
      'Add to Dictionary',
      name: 'addToDictionary',
      desc: '',
      args: [],
    );
  }

  /// `Click to get random word based on current letters.`
  String get suggestWordButtonTooltip {
    return Intl.message(
      'Click to get random word based on current letters.',
      name: 'suggestWordButtonTooltip',
      desc: '',
      args: [],
    );
  }

  /// `Click to open menu (current progress will be saved).`
  String get mainMenuButtonTooltip {
    return Intl.message(
      'Click to open menu (current progress will be saved).',
      name: 'mainMenuButtonTooltip',
      desc: '',
      args: [],
    );
  }

  /// `Your current points.`
  String get yourCurrentHighcoreTooltip {
    return Intl.message(
      'Your current points.',
      name: 'yourCurrentHighcoreTooltip',
      desc: '',
      args: [],
    );
  }

  /// `You don't have enough points to apply.`
  String get youDontHaveEnoughPoints {
    return Intl.message(
      'You don\'t have enough points to apply.',
      name: 'youDontHaveEnoughPoints',
      desc: '',
      args: [],
    );
  }

  /// `Effect`
  String get effect {
    return Intl.message(
      'Effect',
      name: 'effect',
      desc: '',
      args: [],
    );
  }

  /// `Click to create profile for new player.`
  String get createNewPlayerTooltip {
    return Intl.message(
      'Click to create profile for new player.',
      name: 'createNewPlayerTooltip',
      desc: '',
      args: [],
    );
  }

  /// `Create player profile to start a game.`
  String get createNewFirstPlayerTitle {
    return Intl.message(
      'Create player profile to start a game.',
      name: 'createNewFirstPlayerTitle',
      desc: '',
      args: [],
    );
  }

  /// `Create profile for new player.`
  String get createNewPlayerTitle {
    return Intl.message(
      'Create profile for new player.',
      name: 'createNewPlayerTitle',
      desc: '',
      args: [],
    );
  }

  /// `You will be able to add this player's profile to any new game.`
  String get createNewPlayerBody {
    return Intl.message(
      'You will be able to add this player\'s profile to any new game.',
      name: 'createNewPlayerBody',
      desc: '',
      args: [],
    );
  }

  /// `Create player`
  String get createPlayer {
    return Intl.message(
      'Create player',
      name: 'createPlayer',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Use Tutorial`
  String get enableTutorial {
    return Intl.message(
      'Use Tutorial',
      name: 'enableTutorial',
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
