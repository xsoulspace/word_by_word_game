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

  static String m0(word) =>
      "We cannot find the word ${word} in our dictionary! Try another word or add it.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "addNewWord": MessageLookupByLibrary.simpleMessage("add"),
        "addToDictionary":
            MessageLookupByLibrary.simpleMessage("Add to dictionary"),
        "congratulations":
            MessageLookupByLibrary.simpleMessage("Congratulations!"),
        "continueGame": MessageLookupByLibrary.simpleMessage("Continue "),
        "copyright":
            MessageLookupByLibrary.simpleMessage("2020 © X Soul Space "),
        "currentScore": MessageLookupByLibrary.simpleMessage("score"),
        "finishGame": MessageLookupByLibrary.simpleMessage("Finish game"),
        "highscore": MessageLookupByLibrary.simpleMessage("highscore"),
        "hintAddBeginning": MessageLookupByLibrary.simpleMessage("beginning"),
        "hintAddEnding": MessageLookupByLibrary.simpleMessage("ending"),
        "hintAddNewWord": MessageLookupByLibrary.simpleMessage("add new word"),
        "lastword": MessageLookupByLibrary.simpleMessage("Last word: "),
        "lettersToRemove":
            MessageLookupByLibrary.simpleMessage("letters to remove"),
        "maxHighscoreIs":
            MessageLookupByLibrary.simpleMessage("Max highscore is "),
        "menuInfo": MessageLookupByLibrary.simpleMessage("Info "),
        "menuLanguage": MessageLookupByLibrary.simpleMessage("Lang "),
        "menuNewGame": MessageLookupByLibrary.simpleMessage("New "),
        "newGame": MessageLookupByLibrary.simpleMessage("New Game"),
        "nextPlayer": MessageLookupByLibrary.simpleMessage("Next player"),
        "player": MessageLookupByLibrary.simpleMessage("player"),
        "players": MessageLookupByLibrary.simpleMessage("Players "),
        "resetEnding": MessageLookupByLibrary.simpleMessage("Reset ending"),
        "sendFeedback": MessageLookupByLibrary.simpleMessage(
            "For any bugs or ideas please send your feedback to idea@xsoulspace.dev"),
        "startAgain": MessageLookupByLibrary.simpleMessage("Start again "),
        "thankYou":
            MessageLookupByLibrary.simpleMessage("Thank you and happy gaming!"),
        "wordAlreadyWritten": MessageLookupByLibrary.simpleMessage(
            "This word already written. Try another word."),
        "wordIsNotCorrect": m0,
        "yourHighscore":
            MessageLookupByLibrary.simpleMessage("This time your score is ")
      };
}
