part of pack_game;

abstract class GameServiceI {
  ProfileNotifierI get profileNotifier;
  Future<GameModel> createGame({
    required final double screenWidth,
  });
  Future<void> saveGame({
    required final GameModel game,
  });
  Future<GameModel?> loadGame();
}
