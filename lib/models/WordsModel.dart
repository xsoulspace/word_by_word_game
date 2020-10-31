import 'dart:collection';

import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:word_by_word_game/entities/Player.dart';
import 'package:word_by_word_game/entities/Word.dart';

part 'WordsModel.g.dart';

class WordsModelConsts {
  static String storagename = 'wordsmodel';
}

@JsonSerializable(nullable: true)
class WordsModel extends ChangeNotifier {
  ///
  /// Words stack
  ///
  Map<int, List<int>> _wordsIdsByPlayerIdMap;
  UnmodifiableMapView<int, List<int>> get wordsIdsByPlayerIdMap =>
      UnmodifiableMapView(_wordsIdsByPlayerIdMap);
  Map<int, Word> _allWordsByWordIdMap;
  UnmodifiableMapView<int, Word> get allWordsByWordIdMap =>
      UnmodifiableMapView(allWordsByWordIdMap);
  int wordsIdMax = 0;

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

  Future<bool> addNewWordForPLayer({@required Player player}) async {
    var newWord = '$newWordBeginning$phraseFromLastword$newWordEnding';
    var isNewWordExists = _allWordsByWordIdMap.containsValue(newWord);

    if (isNewWordExists) return false;

    wordsIdMax++;

    _allWordsByWordIdMap.putIfAbsent(
        wordsIdMax, () => Word(id: wordsIdMax, value: newWord));

    var playerWordsIds = getWordsIdsListByPlayer(player: player);
    var isNewIdExists = playerWordsIds.contains(wordsIdMax);

    if (isNewIdExists) return false;

    playerWordsIds.add(wordsIdMax);
    _wordsIdsByPlayerIdMap.putIfAbsent(player.id, () => playerWordsIds);
    privateLastword = newWord;

    setLastWordPhrase();

    newWordBeginning = '';
    newWordEnding = '';
    notifyListeners();
    return true;
  }

  bool get isNoWordsRecordedYet => _allWordsByWordIdMap.isEmpty;
  bool get isAtLeastOneWordRecorded => _allWordsByWordIdMap.isNotEmpty;

  ///
  /// Phrase control
  ///
  int phraseLimitMax = 3;
  int phraseLimit = 3;
  int phraseLimitLettersLeft = 6;
  bool get isPhraseLimitAvailable =>
      phraseLimitLettersLeft >= 1 && phraseLimit > 0;
  bool get isPhraseLimitNotAvailable =>
      phraseLimitLettersLeft < 1 || phraseLimit < 1;

  ///
  /// Phrase control
  ///
  String phraseFromLastword = '';
  bool get isPhraseFromLastwordEmpty => phraseFromLastword.isEmpty;
  bool get isPhraseFromLastwordNotEmpty => phraseFromLastword.isNotEmpty;

  String privateLastword = '';
  set lastword(String word) {
    privateLastword = word;
  }

  get lastword => privateLastword;

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

    phraseLimit--;
    phraseLimitLettersLeft--;

    if (isFromBeginning) {
      phraseFromLastword =
          phraseFromLastword.substring(0, phraseFromLastword.length - 1);
    } else {
      phraseFromLastword =
          phraseFromLastword.substring(phraseFromLastword.length - 1);
    }

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
  String newWordBeginning = '';
  String newWordEnding = '';

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
  }

  void reloadState(
      {Map<int, Word> allWordsByWordIdMap,
      Map<int, List<int>> wordsIdsPlayerIdMap}) {
    _wordsIdsByPlayerIdMap.clear();
    _wordsIdsByPlayerIdMap.addAll(wordsIdsPlayerIdMap);
    _allWordsByWordIdMap.clear();
    _allWordsByWordIdMap.addAll(allWordsByWordIdMap);
  }

  ///
  /// Serialization
  ///
  WordsModel(
    Map<int, Word> allWordsByWordIdMap,
    Map<int, List<int>> wordsIdsByPlayerIdMap, {
    this.newWordBeginning = '',
    this.newWordEnding = '',
    this.phraseLimit = 3,
    this.phraseLimitMax = 3,
    this.phraseLimitLettersLeft = 6,
    this.wordsIdMax = 0,
  }) {
    this._allWordsByWordIdMap = allWordsByWordIdMap;
    this._wordsIdsByPlayerIdMap = wordsIdsByPlayerIdMap;
  }

  factory WordsModel.fromJson(Map<String, dynamic> json) =>
      _$WordsModelFromJson(json);
  Map<String, dynamic> toJson() => _$WordsModelToJson(this);
}
