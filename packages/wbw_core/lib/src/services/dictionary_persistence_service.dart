import '../../wbw_core.dart';
import 'local_data_service.dart';

class DictionaryPersistenceService {
  DictionaryPersistenceService({
    required this.localDataService,
  });
  final LocalDataService localDataService;
  static const _persistenceKey = 'localdictionary';

  Future<void> saveDictionary({
    required final LocalDictionaryModel dictionary,
  }) async {
    await localDataService.setMap(_persistenceKey, dictionary.toJson());
  }

  Future<LocalDictionaryModel> loadDictionary() async {
    final jsonMap = await localDataService.getMap(_persistenceKey);
    if (jsonMap.isEmpty) return const LocalDictionaryModel();
    try {
      return LocalDictionaryModel.fromJson(jsonMap);
    } catch (e) {
      print(e);
      return const LocalDictionaryModel();
    }
  }
}
