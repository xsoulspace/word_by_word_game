part of pack_game;

enum GameLevelKind {
  bookShelf,
}

class GameLevelGenerator {
  List<BookShelfLevelModel> createBookShelfLevels({
    required final Map<PlayerProfileModelId, GamePlayerModel> players,
  }) {
    return [
      BookShelfLevelModel.create(
        players: players,
        unselectedBooks: const [],
      )
    ];
  }
}
