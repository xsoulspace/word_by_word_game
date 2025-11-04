import '../../data_models/data_models.dart';

abstract interface class GameLocalDataSource {
  Future<void> saveGame({required final GameSaveModel game});
  Future<GameSaveModel?> loadGame();
}
