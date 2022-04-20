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
  }) {
    List<BookShelfLevelModel> bookShelfLevels = [];
    for (final levelKind in levelKinds) {
      switch (levelKind) {
        case GameLevelKind.bookShelf:
          bookShelfLevels = levelGenerator.createBookShelfLevels();
          break;
      }
    }
    return GameModel.create(
      bookShelfLevels: bookShelfLevels,
    );
  }
}
