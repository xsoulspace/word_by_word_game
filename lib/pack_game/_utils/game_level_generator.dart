part of pack_game;

enum GameLevelKind {
  bookShelf,
}

class GameLevelGenerator {
  List<BookShelfLevelModel> createBookShelfLevels({
    required final Map<PlayerProfileModelId, GamePlayerModel> players,
    required final double screenWidth,
  }) {
    return [
      BookShelfLevelModel.create(
        players: players,
        shelves: BookShelfGenerator(
          screenWidth: screenWidth,
        ).createShelves(),
      ),
    ];
  }
}
