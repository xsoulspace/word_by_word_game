import '../../models/models.dart';

abstract interface class GameLocalDataSource {
  Future<void> saveGame({
    required final GameModel game,
  });
  Future<GameModel?> loadGame();
}
