import 'dart:math' as math;

import 'package:english_words/english_words.dart' as english_words;
import 'package:russian_words/russian_words.dart' as russian_words;
import 'package:wbw_dictionaries/wbw_dictionaries.dart';

import '../data_models/data_models.dart';

extension RandomListItem<T> on List<T> {
  T randomItem() => this[math.Random().nextInt(length)];
}

class DictionaryMechanics {
  bool checkIsWordIsWritten({
    required final CurrentWordModel word,
    required final Map<FullWordString, PlayerProfileModelId> words,
  }) =>
      words.containsKey(word.fullWord);

  String getWordSuggestion({
    required final String characters,
    required final Iterable<String> exceptions,
    final int maxSuggestions = 20,
  }) {
    List<String> words = searchWords(
      dictionaryWords: english_words.nouns,
      exceptions: exceptions,
      letters: characters,
      maxSuggestions: maxSuggestions,
    );
    if (words.isEmpty) {
      words = searchWords(
        dictionaryWords: russian_words.nouns,
        exceptions: exceptions,
        letters: characters,
        maxSuggestions: maxSuggestions,
      );
    }
    if (words.isEmpty) return '';
    return words.randomItem();
  }

  List<String> searchWords({
    required final String letters,
    required final Iterable<String> dictionaryWords,
    required final Iterable<String> exceptions,
    final int maxSuggestions = 10,
  }) {
    if (exceptions.isEmpty) {
      return dictionaryWords.take(maxSuggestions).toList();
    }
    final words = <String>[];
    for (final word in dictionaryWords) {
      final isException = exceptions.contains(word);
      if (isException) continue;

      final isAcceptable = word.contains(letters);
      if (isAcceptable) {
        words.add(word);
        if (words.length == maxSuggestions) break;
      }
    }
    return words;
  }

  Future<bool> checkIsWordIsCorrect({
    required final CurrentWordModel word,
    required final WordsType localWords,
    required final WbwDictionary wbwDictionary,
  }) async {
    /// during huge dictionaries loading, small dictionaries available
    final cleanWord = word.fullWord;
    final isEnglishWord = english_words.all.contains(cleanWord);
    if (isEnglishWord) return true;
    final isRussianWord = russian_words.allWords.contains(cleanWord);
    if (isRussianWord) return true;

    /// check within huge dictionaries when they are loaded
    final isExists = await wbwDictionary.checkWord(cleanWord);
    if (isExists) return true;

    /// check with user writeen words
    return localWords.words.contains(cleanWord);
  }
}
