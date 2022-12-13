// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
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
  String get localeName => 'ru';

  static String m0(costOfWord) => "Использовать очки знаний: ${costOfWord}";

  static String m1(word) =>
      "Этого слова ${word} нет в словаре! Попробуй другое слово или добавь в словарь.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about": MessageLookupByLibrary.simpleMessage("Об игре"),
        "addNewWord": MessageLookupByLibrary.simpleMessage("добавить"),
        "addToDictionary":
            MessageLookupByLibrary.simpleMessage("Добавить в словарь"),
        "applyAndEndTurn":
            MessageLookupByLibrary.simpleMessage("Завершить ход"),
        "back": MessageLookupByLibrary.simpleMessage("Назад"),
        "chooseLandscape": MessageLookupByLibrary.simpleMessage("Выбери Место"),
        "chooseYourCharacter":
            MessageLookupByLibrary.simpleMessage("Выбери своего персонажа"),
        "confirm": MessageLookupByLibrary.simpleMessage("Подтвердить"),
        "congratulations": MessageLookupByLibrary.simpleMessage("Поздравляем!"),
        "continueGame": MessageLookupByLibrary.simpleMessage("Продолжить "),
        "cookFood": MessageLookupByLibrary.simpleMessage("Еда"),
        "createProfile": MessageLookupByLibrary.simpleMessage("Создать"),
        "creatingGame": MessageLookupByLibrary.simpleMessage(
            "Привет! Спасибо за интерес к игре и надеюсь она понравилась:)"),
        "currentScore": MessageLookupByLibrary.simpleMessage("результат"),
        "finishGame": MessageLookupByLibrary.simpleMessage("Завершить игру"),
        "highscore": MessageLookupByLibrary.simpleMessage("лучший результат"),
        "hintAddBeginning": MessageLookupByLibrary.simpleMessage("начало"),
        "hintAddEnding": MessageLookupByLibrary.simpleMessage("окончание"),
        "hintAddNewWord":
            MessageLookupByLibrary.simpleMessage("ввести новое слово"),
        "lastword": MessageLookupByLibrary.simpleMessage("Последнее слово: "),
        "lettersToRemove":
            MessageLookupByLibrary.simpleMessage("букв для удаления"),
        "maxHighscoreIs":
            MessageLookupByLibrary.simpleMessage("Лучший результат "),
        "menuInfo": MessageLookupByLibrary.simpleMessage("Об игре "),
        "menuLanguage": MessageLookupByLibrary.simpleMessage("Язык "),
        "menuNewGame": MessageLookupByLibrary.simpleMessage("Заново "),
        "newGame": MessageLookupByLibrary.simpleMessage("Новая игра"),
        "noWordsSuggestions": MessageLookupByLibrary.simpleMessage(
            "Слов-подсказок не осталось :("),
        "notEnoughKnowledgeToRevealWord": MessageLookupByLibrary.simpleMessage(
            "К сожалению, очков знаний недостаточно, чтобы открыть это слово.."),
        "ok": MessageLookupByLibrary.simpleMessage("Отлично"),
        "play": MessageLookupByLibrary.simpleMessage("Играть"),
        "player": MessageLookupByLibrary.simpleMessage("игрок"),
        "players": MessageLookupByLibrary.simpleMessage("Игроки "),
        "playersAndHighscore":
            MessageLookupByLibrary.simpleMessage("Игроки & Опыт"),
        "previousWord":
            MessageLookupByLibrary.simpleMessage("Предыдущее слово:"),
        "privacyPolicy":
            MessageLookupByLibrary.simpleMessage("Политика конфиденциальности"),
        "profileCreator":
            MessageLookupByLibrary.simpleMessage("Создатель профиля"),
        "refuelStorage": MessageLookupByLibrary.simpleMessage("Топливо"),
        "resetEnding": MessageLookupByLibrary.simpleMessage("Сбросить слово"),
        "returnToLandscapes":
            MessageLookupByLibrary.simpleMessage("Вернуться к Местам"),
        "revealSuggestedWord":
            MessageLookupByLibrary.simpleMessage("Открыть слово-подсказку?"),
        "selectAction": MessageLookupByLibrary.simpleMessage("Выбери действие"),
        "selectPlayers": MessageLookupByLibrary.simpleMessage("Выбери игроков"),
        "send": MessageLookupByLibrary.simpleMessage("Отправить"),
        "sendFeedback": MessageLookupByLibrary.simpleMessage(
            "Если у вас есть идеи как улучшить игру или увидели баг - отправьте письмо на idea@xsoulspace.dev"),
        "settings": MessageLookupByLibrary.simpleMessage("Настройки"),
        "startAgain": MessageLookupByLibrary.simpleMessage("Заново "),
        "startNewGame": MessageLookupByLibrary.simpleMessage("Новая игра"),
        "suggestedWord":
            MessageLookupByLibrary.simpleMessage("Слово-подсказка"),
        "supportGame": MessageLookupByLibrary.simpleMessage(
            "Создание игры можно дополнительно поддержать здесь https://boosty.to/arenukvern"),
        "thankYou": MessageLookupByLibrary.simpleMessage(
            "Спасибо и хорошего времяпрепровождения!"),
        "toLandscapes": MessageLookupByLibrary.simpleMessage("В Места"),
        "tryAnotherWord":
            MessageLookupByLibrary.simpleMessage("Try another word"),
        "tryWithDifferentLetters": MessageLookupByLibrary.simpleMessage(
            "Попробуй с другими буквами.."),
        "useCostKnowledgePoints": m0,
        "username": MessageLookupByLibrary.simpleMessage("Ник игрока"),
        "wordAlreadyWritten": MessageLookupByLibrary.simpleMessage(
            "Это слово уже было. Попробуй другое слово."),
        "wordIsNotCorrect": m1,
        "youHaveLandedInTheNowhere": MessageLookupByLibrary.simpleMessage(
            "Вы приземлились где-то в неизвестность.."),
        "yourHighscore":
            MessageLookupByLibrary.simpleMessage("В этот раз, результат ")
      };
}
