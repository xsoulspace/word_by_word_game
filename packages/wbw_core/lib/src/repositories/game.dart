import '../datasources/datasources.dart';
import '../models/models.dart';
import 'base_repository.dart';

final class GameRespository extends BaseLocalRepository<GameLocalDataSource> {
  GameRespository({required super.local});
  Future<void> saveGame({
    required final GameModel game,
  }) =>
      local.saveGame(game: game);
  Future<GameModel?> loadGame() => local.loadGame();
}
