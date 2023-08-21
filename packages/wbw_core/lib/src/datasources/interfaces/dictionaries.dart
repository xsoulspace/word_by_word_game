import '../../models/models.dart';

abstract interface class DictionariesLocalDataSource {
  // TODO(arenukvern): rewrite to check all words with methods
  // instead of loading to runtime
  Future<void> saveDictionary({
    required final LocalDictionaryModel dictionary,
  });
  Future<LocalDictionaryModel> loadDictionary();
}
