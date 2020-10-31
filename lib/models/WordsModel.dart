import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:word_by_word_game/entities/Player.dart';
import 'package:word_by_word_game/entities/Word.dart';

part 'WordsModel.g.dart';

class WordsModelConsts {
  static String storagename = 'wordsmodel';
}

@JsonSerializable()
class WordsModel extends ChangeNotifier {
  ///
  /// Words stack
  ///
  Map<int, List<int>> wordsIdsByPlayerIdMap = {};
  Map<int, Word> allWordsByWordIdMap = {};
  int wordsIdMax = 0;

  ///
  /// Words conrol functions
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
    var newWord = '$newWordBeginning$phraseFromLastword$newWordEnding';
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

  bool get isNoWordsRecordedYet => allWordsByWordIdMap.isEmpty;
  bool get isAtLeastOneWordRecorded => allWordsByWordIdMap.isNotEmpty;

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

  /// Functions
  void setLastWordPhraseByPlayer({Player player}) {
    if (isPhraseLimitNotAvailable) {
      phraseFromLastword = '';
      return;
    }
    var lastword = getLastWordForPlayer(player: player);
    phraseFromLastword = lastword.length >= phraseLimit
        ? lastword.substring(lastword.length - phraseLimit)
        : lastword;
    notifyListeners();
  }

  void reducePhraseLimit({bool isFromBeginning}) {
    if (isPhraseLimitNotAvailable) return;
    if (isPhraseFromLastwordEmpty) return;
    phraseLimit--;
    phraseLimitLettersLeft--;
    if (isFromBeginning) {
      phraseFromLastword = phraseFromLastword.substring(
          0, phraseFromLastword.length - phraseLimit);
    } else {
      phraseFromLastword =
          phraseFromLastword.substring(phraseFromLastword.length - phraseLimit);
    }
    notifyListeners();
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
      {this.newWordBeginning = '',
      this.newWordEnding = '',
      this.phraseLimit = 3,
      this.phraseLimitMax = 3,
      this.phraseLimitLettersLeft = 6,
      this.wordsIdMax = 0,
      this.wordsIdsByPlayerIdMap = const {},
      this.allWordsByWordIdMap = const {}});

  factory WordsModel.fromJson(Map<String, dynamic> json) =>
      _$WordsModelFromJson(json);
  Map<String, dynamic> toJson() => _$WordsModelToJson(this);
}
