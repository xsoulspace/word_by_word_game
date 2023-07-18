import '../datasources/datasources.dart';
import '../repositories/repositories.dart';

export 'analytics/analytics.dart';

class ServicesCollection {
  const ServicesCollection._({
    required this.gameRepository,
    required this.localDataService,
    required this.dictionariesRepository,
    required this.appSettingsRepository,
  });

  static final v1 = () {
    final LocalDbDataSource localDb = SharedPreferencesDbDataSourceImpl();
    return ServicesCollection._(
      localDataService: localDb,
      gameRepository: GameRespository(
        local: GameLocalDataSourceImpl(localDb: localDb),
      ),
      dictionariesRepository: DictionariesRespository(
        local: DictionariesLocalDataSourceImpl(localDb: localDb),
      ),
      appSettingsRepository: AppSettingsRepository(
        local: AppSettingsLocalDataSourceImpl(localDb: localDb),
      ),
    );
  }();

  final LocalDbDataSource localDataService;
  final DictionariesRespository dictionariesRepository;
  final GameRespository gameRepository;
  final AppSettingsRepository appSettingsRepository;
}
