import 'game_persistence_service.dart';
import 'local_data_service.dart';

export 'analytics_service.dart';
export 'game_persistence_service.dart';

class ServicesCollection {
  const ServicesCollection._({
    required this.gamePersistence,
    required this.localDataService,
  });

  static final v1 = () {
    final LocalDataService localDataService = SharedPreferencesDataService();
    return ServicesCollection._(
      gamePersistence: GamePersistenceService(
        localDataService: localDataService,
      ),
      localDataService: localDataService,
    );
  }();
  final LocalDataService localDataService;
  final GamePersistenceService gamePersistence;
}
