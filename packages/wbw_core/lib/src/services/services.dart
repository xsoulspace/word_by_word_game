import 'app_settings_persistence_service.dart';
import 'dictionary_persistence_service.dart';
import 'game_persistence_service.dart';
import 'local_data_service.dart';

export 'analytics/analytics.dart';
export 'app_settings_persistence_service.dart';
export 'game_persistence_service.dart';
export 'local_data_service.dart';

class ServicesCollection {
  const ServicesCollection._({
    required this.gamePersistence,
    required this.localDataService,
    required this.dictionaryPersistence,
    required this.appSettingsPersistence,
  });

  static final v1 = () {
    final LocalDataService localDataService = SharedPreferencesDataService();
    return ServicesCollection._(
      localDataService: localDataService,
      gamePersistence: GamePersistenceService(
        localDataService: localDataService,
      ),
      dictionaryPersistence: DictionaryPersistenceService(
        localDataService: localDataService,
      ),
      appSettingsPersistence: AppSettingsPersistenceService(
        localDataService: localDataService,
      ),
    );
  }();

  final LocalDataService localDataService;
  final DictionaryPersistenceService dictionaryPersistence;
  final GamePersistenceService gamePersistence;
  final AppSettingsPersistenceService appSettingsPersistence;
}
