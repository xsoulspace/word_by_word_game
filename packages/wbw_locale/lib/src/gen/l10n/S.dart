import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'S_en.dart';
import 'S_it.dart';
import 'S_ru.dart';

/// Callers can lookup localized strings with an instance of S
/// returned by `S.of(context)`.
///
/// Applications need to include `S.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/S.dart';
///
/// return MaterialApp(
///   localizationsDelegates: S.localizationsDelegates,
///   supportedLocales: S.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the S.supportedLocales
/// property.
abstract class S {
  S(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S)!;
  }

  static const LocalizationsDelegate<S> delegate = _SDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('it'),
    Locale('ru')
  ];

  /// No description provided for @finishGame.
  ///
  /// In en, this message translates to:
  /// **'Finish game'**
  String get finishGame;

  /// No description provided for @nextPlayer.
  ///
  /// In en, this message translates to:
  /// **'Next player'**
  String get nextPlayer;

  /// No description provided for @wordIsNotCorrect.
  ///
  /// In en, this message translates to:
  /// **'We cannot find the word {word} in our dictionary! Try another word or add it.'**
  String wordIsNotCorrect(Object word);

  /// No description provided for @wordAlreadyWritten.
  ///
  /// In en, this message translates to:
  /// **'This word already written. Try another word.'**
  String get wordAlreadyWritten;

  /// No description provided for @resetEnding.
  ///
  /// In en, this message translates to:
  /// **'Reset ending'**
  String get resetEnding;

  /// No description provided for @congratulations.
  ///
  /// In en, this message translates to:
  /// **'Congratulations!'**
  String get congratulations;

  /// No description provided for @maxHighscoreIs.
  ///
  /// In en, this message translates to:
  /// **'Max highscore is '**
  String get maxHighscoreIs;

  /// No description provided for @continueGame.
  ///
  /// In en, this message translates to:
  /// **'Continue '**
  String get continueGame;

  /// No description provided for @play.
  ///
  /// In en, this message translates to:
  /// **'Play'**
  String get play;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// No description provided for @toLandscapes.
  ///
  /// In en, this message translates to:
  /// **'To Landscapes'**
  String get toLandscapes;

  /// No description provided for @youHaveLandedInTheNowhere.
  ///
  /// In en, this message translates to:
  /// **'You have landed in the middle of nowhere..'**
  String get youHaveLandedInTheNowhere;

  /// No description provided for @profileCreator.
  ///
  /// In en, this message translates to:
  /// **'Profile Creator'**
  String get profileCreator;

  /// No description provided for @returnToLandscapes.
  ///
  /// In en, this message translates to:
  /// **'Return To Landscapes'**
  String get returnToLandscapes;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'Credits'**
  String get about;

  /// No description provided for @username.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get username;

  /// No description provided for @createProfile.
  ///
  /// In en, this message translates to:
  /// **'Create Profile'**
  String get createProfile;

  /// No description provided for @previousWord.
  ///
  /// In en, this message translates to:
  /// **'Previous Word'**
  String get previousWord;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @selectPlayers.
  ///
  /// In en, this message translates to:
  /// **'Select the Players'**
  String get selectPlayers;

  /// No description provided for @chooseYourCharacter.
  ///
  /// In en, this message translates to:
  /// **'Choose Your Character'**
  String get chooseYourCharacter;

  /// No description provided for @chooseLandscape.
  ///
  /// In en, this message translates to:
  /// **'Choose a Landscape'**
  String get chooseLandscape;

  /// No description provided for @playersAndHighscore.
  ///
  /// In en, this message translates to:
  /// **'Players & Highscore'**
  String get playersAndHighscore;

  /// No description provided for @startNewGame.
  ///
  /// In en, this message translates to:
  /// **'Quick Start'**
  String get startNewGame;

  /// No description provided for @startAgain.
  ///
  /// In en, this message translates to:
  /// **'Start again '**
  String get startAgain;

  /// No description provided for @yourHighscore.
  ///
  /// In en, this message translates to:
  /// **'This time your score is '**
  String get yourHighscore;

  /// No description provided for @player.
  ///
  /// In en, this message translates to:
  /// **'player'**
  String get player;

  /// No description provided for @lastword.
  ///
  /// In en, this message translates to:
  /// **'Last word: '**
  String get lastword;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @applyAndEndTurn.
  ///
  /// In en, this message translates to:
  /// **'Apply & End Turn'**
  String get applyAndEndTurn;

  /// No description provided for @hintAddBeginning.
  ///
  /// In en, this message translates to:
  /// **'beginning'**
  String get hintAddBeginning;

  /// No description provided for @hintAddNewWord.
  ///
  /// In en, this message translates to:
  /// **'add new word'**
  String get hintAddNewWord;

  /// No description provided for @hintAddEnding.
  ///
  /// In en, this message translates to:
  /// **'ending'**
  String get hintAddEnding;

  /// No description provided for @addNewWord.
  ///
  /// In en, this message translates to:
  /// **'add'**
  String get addNewWord;

  /// No description provided for @newGame.
  ///
  /// In en, this message translates to:
  /// **'New Game'**
  String get newGame;

  /// No description provided for @sendFeedback.
  ///
  /// In en, this message translates to:
  /// **'If you have an idea, improvements, or bugs join Discord server.'**
  String get sendFeedback;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @suggestedWord.
  ///
  /// In en, this message translates to:
  /// **'Suggested Word'**
  String get suggestedWord;

  /// No description provided for @tryAnotherWord.
  ///
  /// In en, this message translates to:
  /// **'Try another word'**
  String get tryAnotherWord;

  /// No description provided for @notEnoughKnowledgeToRevealWord.
  ///
  /// In en, this message translates to:
  /// **'Unfortunately, you have not enough knowledge points to reveal this word..'**
  String get notEnoughKnowledgeToRevealWord;

  /// No description provided for @useCostKnowledgePoints.
  ///
  /// In en, this message translates to:
  /// **'Use {costOfWord} knowledge points'**
  String useCostKnowledgePoints(Object costOfWord);

  /// No description provided for @revealSuggestedWord.
  ///
  /// In en, this message translates to:
  /// **'Reveal suggested word?'**
  String get revealSuggestedWord;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'Nice'**
  String get ok;

  /// No description provided for @noWordsSuggestions.
  ///
  /// In en, this message translates to:
  /// **'There is no words suggestions :('**
  String get noWordsSuggestions;

  /// No description provided for @tryWithDifferentLetters.
  ///
  /// In en, this message translates to:
  /// **'Try it with diffirent letters..'**
  String get tryWithDifferentLetters;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @creatingGame.
  ///
  /// In en, this message translates to:
  /// **'Hi, I\'m Anton. Thank you for your interest in this game. Hope you like it:)'**
  String get creatingGame;

  /// No description provided for @supportGame.
  ///
  /// In en, this message translates to:
  /// **'You can support the game in https://boosty.to/arenukvern'**
  String get supportGame;

  /// No description provided for @thankYou.
  ///
  /// In en, this message translates to:
  /// **'Have a great day!'**
  String get thankYou;

  /// No description provided for @currentScore.
  ///
  /// In en, this message translates to:
  /// **'score'**
  String get currentScore;

  /// No description provided for @highscore.
  ///
  /// In en, this message translates to:
  /// **'highscore'**
  String get highscore;

  /// No description provided for @lettersToRemove.
  ///
  /// In en, this message translates to:
  /// **'letters to remove'**
  String get lettersToRemove;

  /// No description provided for @players.
  ///
  /// In en, this message translates to:
  /// **'Players '**
  String get players;

  /// No description provided for @menuLanguage.
  ///
  /// In en, this message translates to:
  /// **'Lang '**
  String get menuLanguage;

  /// No description provided for @menuInfo.
  ///
  /// In en, this message translates to:
  /// **'Info '**
  String get menuInfo;

  /// No description provided for @menuNewGame.
  ///
  /// In en, this message translates to:
  /// **'New '**
  String get menuNewGame;

  /// No description provided for @selectAction.
  ///
  /// In en, this message translates to:
  /// **'Select Action'**
  String get selectAction;

  /// No description provided for @cookFood.
  ///
  /// In en, this message translates to:
  /// **'Cook Food'**
  String get cookFood;

  /// No description provided for @refuelStorage.
  ///
  /// In en, this message translates to:
  /// **'Refuel Balloon'**
  String get refuelStorage;

  /// No description provided for @addToDictionary.
  ///
  /// In en, this message translates to:
  /// **'Add to Dictionary'**
  String get addToDictionary;

  /// No description provided for @suggestWordButtonTooltip.
  ///
  /// In en, this message translates to:
  /// **'Click to get random word based on current letters.'**
  String get suggestWordButtonTooltip;

  /// No description provided for @mainMenuButtonTooltip.
  ///
  /// In en, this message translates to:
  /// **'Click to open menu (current progress will be saved).'**
  String get mainMenuButtonTooltip;

  /// No description provided for @yourCurrentHighcoreTooltip.
  ///
  /// In en, this message translates to:
  /// **'Your current points.'**
  String get yourCurrentHighcoreTooltip;

  /// No description provided for @youDontHaveEnoughPoints.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have enough points to apply.'**
  String get youDontHaveEnoughPoints;

  /// No description provided for @applyFuelOption.
  ///
  /// In en, this message translates to:
  /// **'Convert score to energy'**
  String get applyFuelOption;

  /// No description provided for @createNewPlayerTooltip.
  ///
  /// In en, this message translates to:
  /// **'Click to create profile for new player.'**
  String get createNewPlayerTooltip;

  /// No description provided for @createNewFirstPlayerTitle.
  ///
  /// In en, this message translates to:
  /// **'Create player profile to start a game.'**
  String get createNewFirstPlayerTitle;

  /// No description provided for @createNewPlayerTitle.
  ///
  /// In en, this message translates to:
  /// **'Create profile for new player.'**
  String get createNewPlayerTitle;

  /// No description provided for @createNewPlayerBody.
  ///
  /// In en, this message translates to:
  /// **'You will be able to add this player\'s profile to any new game.'**
  String get createNewPlayerBody;

  /// No description provided for @createPlayer.
  ///
  /// In en, this message translates to:
  /// **'Create player'**
  String get createPlayer;

  /// No description provided for @wind.
  ///
  /// In en, this message translates to:
  /// **'Wind'**
  String get wind;

  /// No description provided for @weather.
  ///
  /// In en, this message translates to:
  /// **'Weather'**
  String get weather;

  /// No description provided for @windCalm.
  ///
  /// In en, this message translates to:
  /// **'Calm'**
  String get windCalm;

  /// No description provided for @windLightAir.
  ///
  /// In en, this message translates to:
  /// **'Light Air'**
  String get windLightAir;

  /// No description provided for @windLightBreeze.
  ///
  /// In en, this message translates to:
  /// **'Light Breeze'**
  String get windLightBreeze;

  /// No description provided for @windGentleBreeze.
  ///
  /// In en, this message translates to:
  /// **'Gentle Breeze'**
  String get windGentleBreeze;

  /// No description provided for @windModerateBreeze.
  ///
  /// In en, this message translates to:
  /// **'Moderate Breeze'**
  String get windModerateBreeze;

  /// No description provided for @windFreshBreeze.
  ///
  /// In en, this message translates to:
  /// **'Fresh Breeze'**
  String get windFreshBreeze;

  /// No description provided for @windStrongBreeze.
  ///
  /// In en, this message translates to:
  /// **'Strong Breeze'**
  String get windStrongBreeze;

  /// No description provided for @windHighWind.
  ///
  /// In en, this message translates to:
  /// **'High Wind'**
  String get windHighWind;

  /// No description provided for @windGale.
  ///
  /// In en, this message translates to:
  /// **'Gale'**
  String get windGale;

  /// No description provided for @windSevereGale.
  ///
  /// In en, this message translates to:
  /// **'Severe Gale'**
  String get windSevereGale;

  /// No description provided for @windStorm.
  ///
  /// In en, this message translates to:
  /// **'Storm'**
  String get windStorm;

  /// No description provided for @windViolentStorm.
  ///
  /// In en, this message translates to:
  /// **'Violent Storm'**
  String get windViolentStorm;

  /// No description provided for @windHurricane.
  ///
  /// In en, this message translates to:
  /// **'Hurricane'**
  String get windHurricane;

  /// No description provided for @nextWeatherIn.
  ///
  /// In en, this message translates to:
  /// **'Next weather in'**
  String get nextWeatherIn;

  /// No description provided for @power.
  ///
  /// In en, this message translates to:
  /// **'Power'**
  String get power;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @enableTutorial.
  ///
  /// In en, this message translates to:
  /// **'Use Tutorial'**
  String get enableTutorial;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;
}

class _SDelegate extends LocalizationsDelegate<S> {
  const _SDelegate();

  @override
  Future<S> load(Locale locale) {
    return SynchronousFuture<S>(lookupS(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'it', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_SDelegate old) => false;
}

S lookupS(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return SEn();
    case 'it': return SIt();
    case 'ru': return SRu();
  }

  throw FlutterError(
    'S.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
