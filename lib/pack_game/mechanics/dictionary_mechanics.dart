import 'package:english_words/english_words.dart' as english_words;
import 'package:russian_words/russian_words.dart' as russian_words;
import 'package:wbw_core/wbw_core.dart';

class DictionaryMechanics {
  bool checkIsWordIsWritten({
    required final CurrentWordModel word,
    required final Map<FullWordString, PlayerProfileModelId> words,
  }) {
    return words.containsKey(word.cleanWord);
  }

  bool checkIsWordIsCorrect({
    required final CurrentWordModel word,
    required final LocalDictionaryModel localDictionary,
  }) {
    final cleanWord = word.cleanWord;
    final isEnglishWord = english_words.nouns.contains(cleanWord);
    final isRussianWord = russian_words.nouns.contains(cleanWord);
    if (isEnglishWord || isRussianWord) return true;

    return localDictionary.words.contains(cleanWord);
  }
}
