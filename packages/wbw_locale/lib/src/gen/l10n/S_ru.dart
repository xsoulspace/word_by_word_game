// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'S.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class SRu extends S {
  SRu([String locale = 'ru']) : super(locale);

  @override
  String get finishGame => 'Завершить игру';

  @override
  String get nextPlayer => 'Следующий игрок';

  @override
  String wordIsNotCorrect(Object word) {
    return 'Этого слова $word нет в словаре! Попробуй другое слово или добавь в словарь.';
  }

  @override
  String get wordAlreadyWritten => 'Это слово уже было. Попробуй другое слово.';

  @override
  String get resetEnding => 'Сбросить слово';

  @override
  String get congratulationsYouPassedTheLandscape => 'Поздравляем! Вы прошли этот ландшафт!';

  @override
  String get congratulations => 'Поздравляем!';

  @override
  String get maxHighscoreIs => 'Лучший результат ';

  @override
  String get continueGame => 'Продолжить ';

  @override
  String get play => 'Играть';

  @override
  String get name => 'Имя';

  @override
  String get send => 'Отправить';

  @override
  String get toLandscapes => 'В Места';

  @override
  String get youHaveLandedInTheNowhere => 'Вы приземлились где-то в неизвестность..';

  @override
  String get profileCreator => 'Создатель профиля';

  @override
  String get returnToLandscapes => 'Вернуться к местам';

  @override
  String get about => 'Об игре';

  @override
  String get username => 'Ник игрока';

  @override
  String get createProfile => 'Создать профиль';

  @override
  String get previousWord => 'Предыдущее слово';

  @override
  String get settings => 'Настройки';

  @override
  String get selectPlayers => 'Выбери игроков';

  @override
  String get chooseYourCharacter => 'Выбери своего персонажа';

  @override
  String get chooseLandscape => 'Выбери место';

  @override
  String get playersAndHighscore => 'Игроки & Опыт';

  @override
  String get playersAndHighscoreYandex => 'Игроки и опыт';

  @override
  String get startNewGame => 'Быстрая игра';

  @override
  String get startAgain => 'Заново ';

  @override
  String get yourHighscore => 'В этот раз, результат ';

  @override
  String get player => 'игрок';

  @override
  String get lastword => 'Последнее слово: ';

  @override
  String get confirm => 'Применить';

  @override
  String get applyAndEndTurn => 'Завершить ход';

  @override
  String get hintAddBeginning => 'начало';

  @override
  String get hintAddNewWord => 'ввести новое слово';

  @override
  String get hintAddEnding => 'окончание';

  @override
  String get addNewWord => 'добавить';

  @override
  String get newGame => 'Новая игра';

  @override
  String get sendFeedback => 'Если у вас есть идея, улучшения или ошибки, присоединяйтесь к серверу Discord.';

  @override
  String get back => 'Назад';

  @override
  String get suggestedWord => 'Слово-подсказка';

  @override
  String get tryAnotherWord => 'Попробовать другое слово';

  @override
  String useCostKnowledgePoints(Object costOfWord) {
    return 'Использовать очки знаний: $costOfWord';
  }

  @override
  String get revealSuggestedWord => 'Открыть слово-подсказку?';

  @override
  String get ok => 'Отлично';

  @override
  String get noWordsSuggestions => 'Слов-подсказок не осталось :(';

  @override
  String get tryWithDifferentLetters => 'Попробуй с другими буквами..';

  @override
  String get privacyPolicy => 'Политика конфиденциальности';

  @override
  String get creatingGame => 'Привет! Спасибо за интерес к игре и надеюсь она понравилась:)';

  @override
  String get supportGame => 'Создание игры можно дополнительно поддержать здесь https://boosty.to/arenukvern';

  @override
  String get thankYou => 'Спасибо и хорошего времяпрепровождения!';

  @override
  String get currentScore => 'результат';

  @override
  String get highscore => 'лучший результат';

  @override
  String get lettersToRemove => 'букв для удаления';

  @override
  String get players => 'Игроки ';

  @override
  String get menuLanguage => 'Язык ';

  @override
  String get menuInfo => 'Об игре ';

  @override
  String get menuNewGame => 'Заново ';

  @override
  String get selectAction => 'Выбери действие';

  @override
  String get cookFood => 'Еда';

  @override
  String get refuelStorage => 'Топливо';

  @override
  String get addToDictionary => 'Внести в словарь';

  @override
  String get hidePane => 'Скрыть панель';

  @override
  String get showPane => 'Показать панель';

  @override
  String youDontHaveEnoughPointsToUnlockCharacter(int points) {
    return 'У вас недостаточно очков ($points) для разблокировки буквы.';
  }

  @override
  String unblockCharacterForPoints(int points, String character) {
    return 'Разблокировать букву $character за $points очков?';
  }

  @override
  String get powerOfEnteredWord => 'Очки введеного слова';

  @override
  String get hideKeyboard => 'Скрыть клавиатуру';

  @override
  String get graphicsCreditsThanks => 'Графика и спасибо:';

  @override
  String get showKeyboard => 'Показать клавиатуру';

  @override
  String get suggestions => 'Подсказки';

  @override
  String get currentPlayerName => 'Ник текущего игрока';

  @override
  String get suggestWordButtonTooltip => 'Нажми, чтобы получить случайное слово на основе текущих букв.';

  @override
  String get mainMenuButtonTooltip => 'Нажми, чтобы открыть меню (текущий прогресс будет сохранен).';

  @override
  String get yourCurrentHighcoreTooltip => 'Текущее кол-во очков знаний.';

  @override
  String get youDontHaveEnoughPoints => 'Недостаточно очков знаний для применения.';

  @override
  String get applyFuelOption => 'Обменяй очки на энергию';

  @override
  String get createNewPlayerTooltip => 'Нажми, чтобы создать профиль нового игрока.';

  @override
  String get createNewFirstPlayerTitle => 'Создай профиль игрока, чтобы начать игру.';

  @override
  String get createNewPlayerTitle => 'Создай профиль нового игрока.';

  @override
  String get createNewPlayerBody => 'Профиль этого игрока можно будет добавить в любую новую игру.';

  @override
  String get createPlayer => 'Создать игрока';

  @override
  String get wind => 'Ветер';

  @override
  String get weather => 'Погода';

  @override
  String get windCalm => 'спокойствие';

  @override
  String get windLightAir => 'легкий воздух';

  @override
  String get windLightBreeze => 'легкий бриз';

  @override
  String get windGentleBreeze => 'нежный бриз';

  @override
  String get windModerateBreeze => 'умеренный бриз';

  @override
  String get windFreshBreeze => 'свежий бриз';

  @override
  String get windStrongBreeze => 'сильный бриз';

  @override
  String get windHighWind => 'сильный ветер';

  @override
  String get windGale => 'буря';

  @override
  String get windSevereGale => 'суровая буря';

  @override
  String get windStorm => 'шторм';

  @override
  String get windViolentStorm => 'сильный шторм';

  @override
  String get windHurricane => 'ураган';

  @override
  String get nextWeatherIn => 'До смены погоды';

  @override
  String get power => 'Энергия';

  @override
  String get yes => 'Да';

  @override
  String get no => 'Нет';

  @override
  String get enableTutorial => 'Пройти обучение';

  @override
  String get close => 'Закрыть';
}
