part of pack_game;

enum GameLevelKind {
  bookShelf,
}

class GameLevelGenerator {
  /// The algorythm
  /// 0. Determine the width of one book from screen width
  /// 1. Determine the count of shelves (limit by height).
  /// 2. Determine the number of slots (limit by width).
  /// Every slot should be limited by one max book side.
  /// Every slot should have the book direction
  /// vertical or horizontal.
  /// 3. For each shelf, fill slots with books.
  /// Filling from left to right, down to up
  List<BookShelfLevelModel> createBookShelfLevels({
    required final List<GamePlayerModel> players,
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
