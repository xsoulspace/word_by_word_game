import '../../models/models.dart';
import '../interfaces/interfaces.dart';

class DictionariesLocalDataSourceImpl implements DictionariesLocalDataSource {
  DictionariesLocalDataSourceImpl({
    required this.localDb,
  });

  final LocalDbDataSource localDb;
  static const _persistenceKey = 'localdictionary';
  @override
  Future<LocalDictionaryModel> loadDictionary() async {
    final jsonMap = await localDb.getMap(_persistenceKey);
    if (jsonMap.isEmpty) return const LocalDictionaryModel();
    try {
      return LocalDictionaryModel.fromJson(jsonMap);
    } catch (e) {
      print(e);
      return const LocalDictionaryModel();
    }
  }

  @override
  Future<void> saveDictionary({
    required final LocalDictionaryModel dictionary,
  }) async {
    await localDb.setMap(key: _persistenceKey, value: dictionary.toJson());
  }
}
