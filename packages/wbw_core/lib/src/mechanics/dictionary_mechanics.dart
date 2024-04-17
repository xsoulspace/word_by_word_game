import 'dart:math' as math;

import 'package:english_words/english_words.dart' as english_words;
import 'package:russian_words/russian_words.dart' as russian_words;
import 'package:wbw_dictionaries/wbw_dictionaries.dart';

import '../../wbw_core.dart';

extension RandomListItem<T> on List<T> {
  T randomItem() => this[math.Random().nextInt(length)];
}

class DictionaryMechanics {
  bool checkIsWordIsWritten({
    required final CurrentWordModel word,
    required final Map<FullWordString, PlayerProfileModelId> words,
  }) =>
      words.containsKey(word.fullWord);
  final _shuffledEnglishWords = english_words.all.toList()..shuffle();
  final _shuffledRussianWords = english_words.all.toList()..shuffle();

  /// As WBW uses custom keyboarad, we always know,
  /// what keyboard language is used.
  String getWordSuggestion({
    required final String characters,
    required final Iterable<String> exceptions,
    required final Languages wordsLanguage,
    final int maxSuggestions = 30,
  }) {
    List<String> words = [];
    if (characters.isEmpty) {
      words = searchWords(
        dictionaryWords: _getDictionary(wordsLanguage),
        exceptions: exceptions,
        characters: characters,
        maxSuggestions: maxSuggestions,
        shouldReturnIfNotFound: true,
      );
    } else {
      for (final lang in wordsLanguages) {
        words = searchWords(
          dictionaryWords: _getDictionary(lang),
          exceptions: exceptions,
          characters: characters,
          maxSuggestions: maxSuggestions,
          shouldReturnIfNotFound: false,
        );
        if (words.isNotEmpty) break;
      }
    }

    if (words.isEmpty) return '';
    return words.randomItem();
  }

  // TODO(arenukvern): add wbw dictionary implementation
  List<String> _getDictionary(final Languages wordsLanguage) =>
      switch (wordsLanguage) {
        Languages.en => _shuffledEnglishWords,
        Languages.ru => _shuffledRussianWords,
        Languages.it => throw UnimplementedError(),
      };

  /// return maxSuggestions words
  /// even if letters are empty
  List<String> searchWords({
    required final String characters,
    required final Iterable<String> dictionaryWords,
    required final Iterable<String> exceptions,
    required final bool shouldReturnIfNotFound,
    final int maxSuggestions = 30,
  }) {
    final allowedlist = () {
      if (exceptions.isEmpty) {
        return dictionaryWords;
      } else {
        return dictionaryWords.where(
          (final word) => !exceptions.contains(word),
        );
      }
    }();
    final suggestions = allowedlist.take(maxSuggestions).toList();

    /// case when no characters to filter
    if (characters.isEmpty) return suggestions;

    final list = allowedlist.where((final word) => word.contains(characters));

    /// if no words found
    if (list.isEmpty) {
      return shouldReturnIfNotFound ? suggestions : [];
    }

    /// words found
    return list.take(maxSuggestions).toList();
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
