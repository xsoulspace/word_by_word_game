import '../datasources/interfaces/dictionaries.dart';
import '../models/models.dart';
import 'base_repository.dart';

final class DictionariesRespository
    extends BaseLocalRepository<DictionariesLocalDataSource> {
  DictionariesRespository({required super.local});
  Future<LocalDictionaryModel> loadDictionary() => local.loadDictionary();
  Future<void> saveDictionary({
    required final LocalDictionaryModel dictionary,
  }) =>
      local.saveDictionary(dictionary: dictionary);
}
