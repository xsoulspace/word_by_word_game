import 'package:flutter/foundation.dart';

import '../../wbw_core.dart';
import 'local_data_service.dart';

class GamePersistenceService {
  GamePersistenceService({
    required this.localDataService,
  });
  final LocalDataService localDataService;
  static const _persistenceKey = 'game_save';
  Future<void> saveGame({
    required final GameModel game,
  }) async {
    await localDataService.setMap(_persistenceKey, game.toJson());
  }

  Future<GameModel?> loadGame() async {
    final jsonMap = await localDataService.getMap(_persistenceKey);
    if (jsonMap.isEmpty) return null;
    try {
      return GameModel.fromJson(jsonMap);
      // TODO(arenukvern): add correct exception
    } catch (e) {
      // TODO(arenukvern): replace with analytics service
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }
}
