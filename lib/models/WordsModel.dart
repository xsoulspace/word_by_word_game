import 'dart:collection';

import 'package:english_words/english_words.dart' as EnglishWords;
import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:russian_words/russian_words.dart' as RussianWords;
import 'package:word_by_word_game/constants/GameNotificationStatuses.dart';
import 'package:word_by_word_game/constants/Locales.dart';
import 'package:word_by_word_game/entities/GameNotification.dart';
import 'package:word_by_word_game/entities/LocalName.dart';
import 'package:word_by_word_game/entities/Player.dart';
import 'package:word_by_word_game/entities/Word.dart';
import 'package:word_by_word_game/models/LocalDictionaryModel.dart';

part 'WordsModel.g.dart';

class WordsModelConsts {
  static String storagename = 'wordsmodel';
}

@JsonSerializable(nullable: true)
class WordsModel extends ChangeNotifier {
  @JsonKey(ignore: true)
  LocalDictionaryModel _localDictionaryModel;

  ///
  /// Words stack
  ///
  Map<int, List<int>> _wordsIdsByPlayerIdMap;
  UnmodifiableMapView<int, List<int>> get wordsIdsByPlayerIdMap =>
      UnmodifiableMapView(_wordsIdsByPlayerIdMap);
  Map<int, Word> _allWordsByWordIdMap;
  UnmodifiableMapView<int, Word> get allWordsByWordIdMap =>
      UnmodifiableMapView(_allWordsByWordIdMap);
  int wordsIdMax = 0;
  List<String> get allWordsValues =>
      _allWordsByWordIdMap.values.map((e) => e.value).toList();

  ///
  /// Words conrol functions
  ///
  String getWordByWordId({@required int wordId}) =>
      _allWordsByWordIdMap[wordId] ?? '';

  List<int> getWordsIdsListByPlayer({@required Player player}) =>
      _wordsIdsByPlayerIdMap[player.id] ?? [];
  List<Word> getWordsListByPlayer({@required Player player}) {
    var wordsIds = getWordsIdsListByPlayer(player: player);
    return wordsIds.map((id) => _allWordsByWordIdMap[id]).toList();
  }

  String getLastWordForPlayer({@required Player player}) {
    var wordsIdsList = getWordsIdsListByPlayer(player: player);
    return wordsIdsList.length > 0
        ? getWordByWordId(wordId: wordsIdsList.last)
        : '';
  }

  Future<GameNotification> addNewWordForPLayer(
      {@required Player player, @required Locale locale}) async {
    var newWord = '$newWordBeginning$phraseFromLastword$newWordEnding'
        .toLowerCase()
        .replaceAll(' ', '');
    if (newWord.length < phraseLimit)
      return GameNotification(
          status: GameNotificationStatuses.error,
          localName: LocalName(
              en: 'Word needs to have more then $phraseLimit',
              ru: 'Слово должно быть больше чем $phraseLimit'));
    var isNewWordExists = allWordsValues.contains(newWord);

    if (isNewWordExists)
      return GameNotification(
          status: GameNotificationStatuses.error,
          localName: LocalName(
              en: 'This word was written aleady!',
              ru: 'Это слово уже записано!'));

    wordsIdMax++;

    _allWordsByWordIdMap.putIfAbsent(
        wordsIdMax, () => Word(id: wordsIdMax, value: newWord));

    var playerWordsIds = getWordsIdsListByPlayer(player: player);
    var isNewIdExists = playerWordsIds.contains(wordsIdMax);

    if (isNewIdExists)
      return GameNotification(
          status: GameNotificationStatuses.error,
          localName: LocalName(
              en: 'This word was written aleady!',
              ru: 'Это слово уже записано!'));
// check with dictionaries
    var isExistsInDictionary = (() {
      if (locale == Locales.en) {
        return EnglishWords.nouns.contains(newWord);
      } else if (locale == Locales.ru) {
        return RussianWords.nouns.contains(newWord);
      }
      return true;
    })();

    if (!isExistsInDictionary) {
      var isExistsInLocalDictionary =
          _localDictionaryModel.words.contains(newWord);
      if (!isExistsInLocalDictionary) {
        return GameNotification(
            localName: LocalName(
                en: 'Whoa, cannot find this word in dictionary! Try another, or add word to dictionary.',
                ru: 'Ого, этого слова нет в словаре! Попробуйте другое или добавьте его в словарь.'),
            status: GameNotificationStatuses.warn,
            newWord: newWord);
      }
    }

    playerWordsIds.add(wordsIdMax);
    _wordsIdsByPlayerIdMap.putIfAbsent(player.id, () => playerWordsIds);
    privateLastword = newWord;
    phraseLimit = phraseLimitMax;

    setLastWordPhrase();

    newWordBeginning = '';
    newWordEnding = '';
    notifyListeners();
    return GameNotification(
        status: GameNotificationStatuses.done,
        localName: LocalName(en: 'Word added!', ru: 'Слово добавлено!'));
  }

  bool get isNoWordsRecordedYet => _allWordsByWordIdMap.isEmpty;
  bool get isAtLeastOneWordRecorded => _allWordsByWordIdMap.isNotEmpty;

  ///
  /// Phrase control
  ///
  int phraseLimitMax = 3;
  int phraseLimit = 3;
  int phraseLimitLettersLeft = 6;
  bool get isPhraseLimitAvailable => phraseLimit > 0;
  bool get isPhraseLimitNotAvailable => phraseLimit < 1;
  bool get isPhraseLimitLeftAvailable => phraseLimitLettersLeft >= 1;
  bool get isPhraseLimitLeftNotAvailable => phraseLimitLettersLeft < 1;

  ///
  /// Phrase control
  ///
  String phraseFromLastword = '';
  bool get isPhraseFromLastwordEmpty => phraseFromLastword.isEmpty;
  bool get isPhraseFromLastwordNotEmpty => phraseFromLastword.isNotEmpty;

  String privateLastword = '';
  set lastword(String word) {
    privateLastword = word;
    notifyListeners();
  }

  String get lastword => privateLastword;

  /// Functions
  void setLastWordPhrase() {
    if (isPhraseLimitNotAvailable) {
      phraseFromLastword = '';
      return;
    }
    phraseFromLastword = lastword.length >= phraseLimit
        ? lastword.substring(lastword.length - phraseLimit)
        : lastword;
    notifyListeners();
  }

  void reducePhraseLimit({@required bool isFromBeginning}) {
    if (isPhraseLimitNotAvailable) return;
    if (isPhraseFromLastwordEmpty) return;

    if (isFromBeginning) {
      phraseFromLastword = phraseFromLastword.substring(1);
    } else {
      phraseFromLastword =
          phraseFromLastword.substring(0, phraseFromLastword.length - 1);
    }
    phraseLimitLettersLeft--;

    notifyListeners();
  }

  resetPhraseFromLastword() {
    int phraseLength = phraseFromLastword.length;

    if (isPhraseLimitNotAvailable) return;

    bool iCanUsePhraseLeft = phraseLength <= phraseLimitLettersLeft;
    if (iCanUsePhraseLeft) {
      phraseFromLastword = '';
      phraseLimitLettersLeft = phraseLimitLettersLeft - phraseLength;
    } else {
      phraseFromLastword =
          phraseFromLastword.substring(phraseLength - phraseLimitLettersLeft);
      phraseLimitLettersLeft = 0;
    }
    notifyListeners();
  }

  ///
  /// Current words state control
  ///
  String _newWordBeginning = '';
  String get newWordBeginning => _newWordBeginning;
  set newWordBeginning(String newWordBeginning) {
    _newWordBeginning = newWordBeginning;
    notifyListeners();
  }

  String _newWordEnding = '';
  String get newWordEnding => _newWordEnding;
  set newWordEnding(String newWordEnding) {
    _newWordEnding = newWordEnding;
    notifyListeners();
  }

  ///
  /// Reset state
  ///

  resetToNewGame() {
    newWordBeginning = '';
    newWordEnding = '';
    phraseLimit = 3;
    phraseLimitMax = 3;
    phraseLimitLettersLeft = 6;
    wordsIdMax = 0;
    _wordsIdsByPlayerIdMap.clear();
    _allWordsByWordIdMap.clear();
    privateLastword = '';
    notifyListeners();
  }

  void reloadState(
      {Map<int, Word> allWordsByWordIdMap,
      Map<int, List<int>> wordsIdsPlayerIdMap}) {
    _wordsIdsByPlayerIdMap.clear();
    _wordsIdsByPlayerIdMap.addAll(wordsIdsPlayerIdMap);
    _allWordsByWordIdMap.clear();
    _allWordsByWordIdMap.addAll(allWordsByWordIdMap);
    notifyListeners();
  }

  ///
  /// Serialization
  ///
  WordsModel(
    Map<int, Word> allWordsByWordIdMap,
    Map<int, List<int>> wordsIdsByPlayerIdMap, {
    String newWordBeginning = '',
    String newWordEnding = '',
    LocalDictionaryModel localDictionaryModel,
    this.phraseLimit = 3,
    this.phraseLimitMax = 3,
    this.phraseLimitLettersLeft = 6,
    this.wordsIdMax = 0,
  }) {
    this._allWordsByWordIdMap = allWordsByWordIdMap;
    this._wordsIdsByPlayerIdMap = wordsIdsByPlayerIdMap;
    this._newWordBeginning = newWordBeginning;
    this._newWordEnding = newWordEnding;
    this._localDictionaryModel = localDictionaryModel;

    notifyListeners();
  }

  factory WordsModel.fromJson(Map<String, dynamic> json) =>
      _$WordsModelFromJson(json);
  Map<String, dynamic> toJson() => _$WordsModelToJson(this);
}
