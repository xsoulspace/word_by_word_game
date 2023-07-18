import 'package:flutter/foundation.dart';

import '../../models/models.dart';
import '../interfaces/interfaces.dart';

class GameLocalDataSourceImpl implements GameLocalDataSource {
  GameLocalDataSourceImpl({
    required this.localDb,
  });

  final LocalDbDataSource localDb;
  static const _persistenceKey = 'game_save';
  @override
  Future<void> saveGame({
    required final GameModel game,
  }) async {
    await localDb.setMap(key: _persistenceKey, value: game.toJson());
  }

  // https://isar.dev/recipes/data_migration.html
  @override
  Future<GameModel?> loadGame() async {
    final jsonMap = await localDb.getMap(_persistenceKey);
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
