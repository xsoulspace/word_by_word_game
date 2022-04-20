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
    required final Set<GameLevelKind> levelKinds,
    required final Map<PlayerProfileModelId, GamePlayerModel> players,
    required final PlayerProfileModelId hostPlayerId,
  }) {
    List<BookShelfLevelModel> bookShelfLevels = [];
    for (final levelKind in levelKinds) {
      switch (levelKind) {
        case GameLevelKind.bookShelf:
          bookShelfLevels = levelGenerator.createBookShelfLevels(
            players: players,
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
