part of pack_game;

class GameGenerator {
  GameGenerator._({
    required this.levelGenerator,
  });

  factory GameGenerator.init() => GameGenerator._(
        levelGenerator: GameLevelGenerator(),
      );

  final GameLevelGenerator levelGenerator;

  GameModel createGame({
    required final List<GameLevelKind> levelKinds,
    required final List<GamePlayerModel> players,
    required final PlayerProfileModelId hostPlayerId,
    required final double screenWidth,
  }) {
    List<BookShelfLevelModel> bookShelfLevels = [];
    for (final levelKind in levelKinds) {
      switch (levelKind) {
        case GameLevelKind.bookShelf:
          bookShelfLevels = levelGenerator.createBookShelfLevels(
            players: players,
            screenWidth: screenWidth,
          );
          break;
      }
    }
    return GameModel.create(
      hostPlayerId: hostPlayerId,
      bookShelfLevels: bookShelfLevels,
    );
  }
}
