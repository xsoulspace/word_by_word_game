part of pack_game;

abstract class GameServiceI {
  Future<GameModel> createGame();
  Future<void> saveGame({
    required final GameModel game,
  });
  Future<GameModel> loadGame();
}
