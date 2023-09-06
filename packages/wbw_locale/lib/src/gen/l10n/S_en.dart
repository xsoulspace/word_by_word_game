import 'S.dart';

/// The translations for English (`en`).
class SEn extends S {
  SEn([String locale = 'en']) : super(locale);

  @override
  String get finishGame => 'Finish game';

  @override
  String get nextPlayer => 'Next player';

  @override
  String wordIsNotCorrect(Object word) {
    return 'We cannot find the word $word in our dictionary! Try another word or add it.';
  }

  @override
  String get wordAlreadyWritten => 'This word already written. Try another word.';

  @override
  String get resetEnding => 'Reset ending';

  @override
  String get congratulationsYouPassedTheLandscape => 'Congratulations! You passed this landscape!';

  @override
  String get congratulations => 'Congratulations!';

  @override
  String get maxHighscoreIs => 'Max highscore is ';

  @override
  String get continueGame => 'Continue ';

  @override
  String get play => 'Play';

  @override
  String get name => 'Name';

  @override
  String get send => 'Send';

  @override
  String get toLandscapes => 'To Landscapes';

  @override
  String get youHaveLandedInTheNowhere => 'You have landed in the middle of nowhere..';

  @override
  String get profileCreator => 'Profile Creator';

  @override
  String get returnToLandscapes => 'Return To Landscapes';

  @override
  String get about => 'Credits';

  @override
  String get username => 'Username';

  @override
  String get createProfile => 'Create Profile';

  @override
  String get previousWord => 'Previous Word';

  @override
  String get settings => 'Settings';

  @override
  String get selectPlayers => 'Select the Players';

  @override
  String get chooseYourCharacter => 'Choose Your Character';

  @override
  String get chooseLandscape => 'Choose a Landscape';

  @override
  String get playersAndHighscore => 'Players & Highscore';

  @override
  String get startNewGame => 'Quick Start';

  @override
  String get startAgain => 'Start again ';

  @override
  String get yourHighscore => 'This time your score is ';

  @override
  String get player => 'player';

  @override
  String get lastword => 'Last word: ';

  @override
  String get confirm => 'Confirm';

  @override
  String get applyAndEndTurn => 'Apply & End Turn';

  @override
  String get hintAddBeginning => 'beginning';

  @override
  String get hintAddNewWord => 'add new word';

  @override
  String get hintAddEnding => 'ending';

  @override
  String get addNewWord => 'add';

  @override
  String get newGame => 'New Game';

  @override
  String get sendFeedback => 'If you have an idea, improvements, or bugs join Discord server.';

  @override
  String get back => 'Back';

  @override
  String get suggestedWord => 'Suggested Word';

  @override
  String get tryAnotherWord => 'Try another word';

  @override
  String notEnoughKnowledgeToRevealWord(int costOfWord, int userPoints) {
    return 'Not enough points ($costOfWord/$userPoints)';
  }

  @override
  String useCostKnowledgePoints(Object costOfWord) {
    return 'Use $costOfWord knowledge points';
  }

  @override
  String get revealSuggestedWord => 'Reveal suggested word?';

  @override
  String get ok => 'Nice';

  @override
  String get noWordsSuggestions => 'There is no words suggestions :(';

  @override
  String get tryWithDifferentLetters => 'Try it with diffirent letters..';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get creatingGame => 'Hi, I\'m Anton. Thank you for your interest in this game. Hope you like it:)';

  @override
  String get supportGame => 'You can support the game in https://boosty.to/arenukvern';

  @override
  String get thankYou => 'Have a great day!';

  @override
  String get currentScore => 'score';

  @override
  String get highscore => 'highscore';

  @override
  String get lettersToRemove => 'letters to remove';

  @override
  String get players => 'Players ';

  @override
  String get menuLanguage => 'Lang ';

  @override
  String get menuInfo => 'Info ';

  @override
  String get menuNewGame => 'New ';

  @override
  String get selectAction => 'Select Action';

  @override
  String get cookFood => 'Cook Food';

  @override
  String get refuelStorage => 'Refuel Balloon';

  @override
  String get addToDictionary => 'Add to Dictionary';

  @override
  String get hidePane => 'Hide pane';

  @override
  String get showPane => 'Show pane';

  @override
  String youDontHaveEnoughPointsToUnlockCharacter(int points) {
    return 'You don\'t have enough points ($points) to unlock this character.';
  }

  @override
  String unblockCharacterForPoints(int points, String character) {
    return 'Unblock character $character for $points points?';
  }

  @override
  String get powerOfEnteredWord => 'Power of entered word';

  @override
  String get hideKeyboard => 'Hide keyboard';

  @override
  String get graphicsCreditsThanks => 'Graphics credits & thanks:';

  @override
  String get showKeyboard => 'Show keyboard';

  @override
  String get suggestions => 'Suggestions';

  @override
  String get currentPlayerName => 'Name of current player';

  @override
  String get suggestWordButtonTooltip => 'Click to get random word based on current letters.';

  @override
  String get mainMenuButtonTooltip => 'Click to open menu (current progress will be saved).';

  @override
  String get yourCurrentHighcoreTooltip => 'Your current points.';

  @override
  String get youDontHaveEnoughPoints => 'You don\'t have enough points to apply.';

  @override
  String get applyFuelOption => 'Convert score to energy';

  @override
  String get createNewPlayerTooltip => 'Click to create profile for new player.';

  @override
  String get createNewFirstPlayerTitle => 'Create player profile to start a game.';

  @override
  String get createNewPlayerTitle => 'Create profile for new player.';

  @override
  String get createNewPlayerBody => 'You will be able to add this player\'s profile to any new game.';

  @override
  String get createPlayer => 'Create player';

  @override
  String get wind => 'Wind';

  @override
  String get weather => 'Weather';

  @override
  String get windCalm => 'Calm';

  @override
  String get windLightAir => 'Light Air';

  @override
  String get windLightBreeze => 'Light Breeze';

  @override
  String get windGentleBreeze => 'Gentle Breeze';

  @override
  String get windModerateBreeze => 'Moderate Breeze';

  @override
  String get windFreshBreeze => 'Fresh Breeze';

  @override
  String get windStrongBreeze => 'Strong Breeze';

  @override
  String get windHighWind => 'High Wind';

  @override
  String get windGale => 'Gale';

  @override
  String get windSevereGale => 'Severe Gale';

  @override
  String get windStorm => 'Storm';

  @override
  String get windViolentStorm => 'Violent Storm';

  @override
  String get windHurricane => 'Hurricane';

  @override
  String get nextWeatherIn => 'Next weather in';

  @override
  String get power => 'Power';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'No';

  @override
  String get enableTutorial => 'Use Tutorial';

  @override
  String get close => 'Close';
}
