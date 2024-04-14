import '../../data_models/data_models.dart';

abstract interface class UserWordsLocalDataSource {
  // TODO(arenukvern): rewrite to check all words with methods
  // instead of loading to runtime
  Future<void> saveUserWords(final WordsType words);
  Future<WordsType> loadUserWords();
  Future<void> preloadProfanities();
  Future<bool> verifyNonProfanityWord(final String word);
}
