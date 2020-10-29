import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:word_by_word_game/entities/Player.dart';
import 'package:word_by_word_game/entities/Word.dart';
import 'package:word_by_word_game/models/StorageMixin.dart';

part 'WordsModel.g.dart';

@JsonSerializable()
class WordsModel extends ChangeNotifier with StorageMixin {
  ///
  /// Words stack
  ///
  final Map<int, List<int>> wordsIdsByPlayerIdMap;
  final Map<int, Word> allWordsByWordIdMap;
  int wordsIdMax = 0;

  ///
  /// Words stack functions
  ///
  String getWordByWordId({int wordId}) => allWordsByWordIdMap[wordId] ?? '';

  List<int> getWordsIdsListByPlayer({Player player}) =>
      wordsIdsByPlayerIdMap[player.id] ?? [];

  String getLastWordForPlayer({Player player}) {
    var wordsIdsList = getWordsIdsListByPlayer(player: player);
    return wordsIdsList.length > 0
        ? getWordByWordId(wordId: wordsIdsList.last)
        : '';
  }

  Future<void> addNewWordForPLayer({Player player}) async {
    var lastword = getLastWordPhraseByPlayer(player: player);
    var newWord = '$newWordBeginning$lastword$newWordEnding';
    var isNewWordExists = allWordsByWordIdMap.containsValue(newWord);
    if (isNewWordExists) return;
    wordsIdMax++;
    allWordsByWordIdMap.putIfAbsent(
        wordsIdMax, () => Word(id: wordsIdMax, value: newWord));
    var playerWordsIds = getWordsIdsListByPlayer(player: player);
    var isNewIdExists = playerWordsIds.contains(wordsIdMax);
    if (isNewIdExists) return;
    playerWordsIds.add(wordsIdMax);
    wordsIdsByPlayerIdMap[player.id] = playerWordsIds;
    notifyListeners();
  }

  ///
  /// Phrase control
  ///
  int phraseLimitMax = 3;
  int phraseLimit = 3;
  String getLastWordPhraseByPlayer({Player player}) {
    if (phraseLimit <= 0) return '';
    var lastword = getLastWordForPlayer(player: player);
    return lastword.length >= phraseLimit
        ? lastword.substring(lastword.length - phraseLimit)
        : lastword;
  }

  ///
  /// Current words state control
  ///
  String newWordBeginning = '';
  String newWordEnding = '';

  ///
  /// Serialization
  ///
  WordsModel(
      this.newWordBeginning,
      this.newWordEnding,
      this.phraseLimit,
      this.phraseLimitMax,
      this.wordsIdMax,
      this.wordsIdsByPlayerIdMap,
      this.allWordsByWordIdMap) {
    checkAndLoadStorageInstance();
  }
  factory WordsModel.fromJson(Map<String, dynamic> json) =>
      _$WordsModelFromJson(json);
  Map<String, dynamic> toJson() => _$WordsModelToJson(this);
}
