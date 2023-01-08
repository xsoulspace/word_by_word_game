// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(costOfWord) => "Use ${costOfWord} knowledge points";

  static String m1(word) =>
      "We cannot find the word ${word} in our dictionary! Try another word or add it.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about": MessageLookupByLibrary.simpleMessage("Credits"),
        "addNewWord": MessageLookupByLibrary.simpleMessage("add"),
        "addToDictionary":
            MessageLookupByLibrary.simpleMessage("Add to Dictionary"),
        "applyAndEndTurn":
            MessageLookupByLibrary.simpleMessage("Apply & End Turn"),
        "back": MessageLookupByLibrary.simpleMessage("Back"),
        "chooseLandscape":
            MessageLookupByLibrary.simpleMessage("Choose a Landscape"),
        "chooseYourCharacter":
            MessageLookupByLibrary.simpleMessage("Choose Your Character"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "congratulations":
            MessageLookupByLibrary.simpleMessage("Congratulations!"),
        "continueGame": MessageLookupByLibrary.simpleMessage("Continue "),
        "cookFood": MessageLookupByLibrary.simpleMessage("Cook Food"),
        "createNewFirstPlayerTitle": MessageLookupByLibrary.simpleMessage(
            "Create player profile to start a game."),
        "createNewPlayerBody": MessageLookupByLibrary.simpleMessage(
            "You will be able to add this player\'s profile to any new game."),
        "createNewPlayerTitle": MessageLookupByLibrary.simpleMessage(
            "Create profile for new player."),
        "createNewPlayerTooltip": MessageLookupByLibrary.simpleMessage(
            "Click to create profile for new player."),
        "createPlayer": MessageLookupByLibrary.simpleMessage("Create player"),
        "createProfile": MessageLookupByLibrary.simpleMessage("Create Profile"),
        "creatingGame": MessageLookupByLibrary.simpleMessage(
            "Hi, I\'m Anton. Thank you for your interest in this game. Hope you like it:)"),
        "currentScore": MessageLookupByLibrary.simpleMessage("score"),
        "effect": MessageLookupByLibrary.simpleMessage("Effect"),
        "enableTutorial": MessageLookupByLibrary.simpleMessage("Use Tutorial"),
        "finishGame": MessageLookupByLibrary.simpleMessage("Finish game"),
        "highscore": MessageLookupByLibrary.simpleMessage("highscore"),
        "hintAddBeginning": MessageLookupByLibrary.simpleMessage("beginning"),
        "hintAddEnding": MessageLookupByLibrary.simpleMessage("ending"),
        "hintAddNewWord": MessageLookupByLibrary.simpleMessage("add new word"),
        "lastword": MessageLookupByLibrary.simpleMessage("Last word: "),
        "lettersToRemove":
            MessageLookupByLibrary.simpleMessage("letters to remove"),
        "mainMenuButtonTooltip": MessageLookupByLibrary.simpleMessage(
            "Click to open menu (current progress will be saved)."),
        "maxHighscoreIs":
            MessageLookupByLibrary.simpleMessage("Max highscore is "),
        "menuInfo": MessageLookupByLibrary.simpleMessage("Info "),
        "menuLanguage": MessageLookupByLibrary.simpleMessage("Lang "),
        "menuNewGame": MessageLookupByLibrary.simpleMessage("New "),
        "name": MessageLookupByLibrary.simpleMessage("Name"),
        "newGame": MessageLookupByLibrary.simpleMessage("New Game"),
        "nextPlayer": MessageLookupByLibrary.simpleMessage("Next player"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "noWordsSuggestions": MessageLookupByLibrary.simpleMessage(
            "There is no words suggestions :("),
        "notEnoughKnowledgeToRevealWord": MessageLookupByLibrary.simpleMessage(
            "Unfortunately, you have not enough knowledge points to reveal this word.."),
        "ok": MessageLookupByLibrary.simpleMessage("Nice"),
        "play": MessageLookupByLibrary.simpleMessage("Play"),
        "player": MessageLookupByLibrary.simpleMessage("player"),
        "players": MessageLookupByLibrary.simpleMessage("Players "),
        "playersAndHighscore":
            MessageLookupByLibrary.simpleMessage("Players & Highscore"),
        "previousWord": MessageLookupByLibrary.simpleMessage("Previous Word:"),
        "privacyPolicy": MessageLookupByLibrary.simpleMessage("Privacy Policy"),
        "profileCreator":
            MessageLookupByLibrary.simpleMessage("Profile Creator"),
        "refuelStorage": MessageLookupByLibrary.simpleMessage("Refuel Balloon"),
        "resetEnding": MessageLookupByLibrary.simpleMessage("Reset ending"),
        "returnToLandscapes":
            MessageLookupByLibrary.simpleMessage("Return To Landscapes"),
        "revealSuggestedWord":
            MessageLookupByLibrary.simpleMessage("Reveal suggested word?"),
        "selectAction": MessageLookupByLibrary.simpleMessage("Select Action"),
        "selectPlayers":
            MessageLookupByLibrary.simpleMessage("Select the Players"),
        "send": MessageLookupByLibrary.simpleMessage("Send"),
        "sendFeedback": MessageLookupByLibrary.simpleMessage(
            "If you have an idea, improvements, or bugs join Discord server."),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "startAgain": MessageLookupByLibrary.simpleMessage("Start again "),
        "startNewGame": MessageLookupByLibrary.simpleMessage("New Game"),
        "suggestWordButtonTooltip": MessageLookupByLibrary.simpleMessage(
            "Click to get random word based on current letters."),
        "suggestedWord": MessageLookupByLibrary.simpleMessage("Suggested Word"),
        "supportGame": MessageLookupByLibrary.simpleMessage(
            "You can support the game in https://boosty.to/arenukvern"),
        "thankYou": MessageLookupByLibrary.simpleMessage("Have a great day!"),
        "toLandscapes": MessageLookupByLibrary.simpleMessage("To Landscapes"),
        "tryAnotherWord":
            MessageLookupByLibrary.simpleMessage("Try another word"),
        "tryWithDifferentLetters": MessageLookupByLibrary.simpleMessage(
            "Try it with diffirent letters.."),
        "useCostKnowledgePoints": m0,
        "username": MessageLookupByLibrary.simpleMessage("Username"),
        "wordAlreadyWritten": MessageLookupByLibrary.simpleMessage(
            "This word already written. Try another word."),
        "wordIsNotCorrect": m1,
        "yes": MessageLookupByLibrary.simpleMessage("Yes"),
        "youDontHaveEnoughPoints": MessageLookupByLibrary.simpleMessage(
            "You don\'t have enough points to apply."),
        "youHaveLandedInTheNowhere": MessageLookupByLibrary.simpleMessage(
            "You have landed in the middle of nowhere.."),
        "yourCurrentHighcoreTooltip":
            MessageLookupByLibrary.simpleMessage("Your current points."),
        "yourHighscore":
            MessageLookupByLibrary.simpleMessage("This time your score is ")
      };
}
