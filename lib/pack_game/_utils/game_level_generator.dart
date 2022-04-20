part of pack_game;

enum GameLevelKind {
  bookShelf,
}

class GameLevelGenerator {
  List<BookShelfLevelModel> createBookShelfLevels() {
    // TODO(arenukvern): add books generation
    return [
      BookShelfLevelModel.create(
        players: const {},
        unselectedBooks: const [],
      )
    ];
  }
}
