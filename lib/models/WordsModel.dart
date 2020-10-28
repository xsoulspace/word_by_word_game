import 'package:flutter/widgets.dart';
import 'package:word_by_word_game/entities/Player.dart';
import 'package:word_by_word_game/entities/Word.dart';

class WordsModel extends ChangeNotifier {
  ///
  /// Storage init
  ///

  ///
  /// Words stack
  ///
  final Map<int, List<int>> _wordsIdsByPlayerIdMap = {};
  final Map<int, Word> _allWordsByWordIdMap = {};
  int _wordsIdMax = 0;

  ///
  /// Words stack functions
  ///
  String getWordByWordId({int wordId}) => _allWordsByWordIdMap[wordId] ?? '';

  List<int> getWordsIdsListByPlayer({Player player}) =>
      _wordsIdsByPlayerIdMap[player.id] ?? [];

  String getLastWordForPlayer({Player player}) {
    var wordsIdsList = getWordsIdsListByPlayer(player: player);
    return wordsIdsList.length > 0
        ? getWordByWordId(wordId: wordsIdsList.last)
        : '';
  }

  Future<void> addNewWordForPLayer({Player player}) async {
    var lastword = getLastWordPhraseByPlayer(player: player);
    var newWord = '$newWordBeginning$lastword$newWordEnding';
    var isNewWordExists = _allWordsByWordIdMap.containsValue(newWord);
    if (isNewWordExists) return;
    _wordsIdMax++;
    _allWordsByWordIdMap.putIfAbsent(
        _wordsIdMax, () => Word(id: _wordsIdMax, value: newWord));
    var playerWordsIds = getWordsIdsListByPlayer(player: player);
    var isNewIdExists = playerWordsIds.contains(_wordsIdMax);
    if (isNewIdExists) return;
    playerWordsIds.add(_wordsIdMax);
    _wordsIdsByPlayerIdMap[player.id] = playerWordsIds;
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
}
