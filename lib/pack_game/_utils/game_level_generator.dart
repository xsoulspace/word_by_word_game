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
        slots: BookShelfGenerator(
          screenWidth: screenWidth,
        ).createShelfs(),
      ),
    ];
  }
}

class BookGenerator {
  BookModel createBook({
    required final BookKind kind,
  }) {
    switch (kind) {
      case BookKind.poem:
        return BookModel.poem();
      case BookKind.prose:
        return BookModel.prose();
      case BookKind.science:
        return BookModel.science();
    }
  }
}

class BookShelfGenerator {
  BookShelfGenerator({
    required this.screenWidth,
  })  : shelfsCount = shelfCountRandomer.next(),
        booksCount = booksMaxMinRandomers.map(
          (final bookKind, final randomer) =>
              MapEntry(bookKind, randomer.next()),
        );
  static final shelfCountRandomer = Randomer(
    max: 6,
    min: 3,
  );
  static const double shelfHeight = 90.0;
  static final booksMaxMinRandomers = <BookKind, Randomer>{
    BookKind.poem: Randomer(
      max: 30,
      min: 5,
    ),
    BookKind.prose: Randomer(
      max: 15,
      min: 2,
    ),
    BookKind.science: Randomer(
      max: 5,
      min: 1,
    ),
  };
  static final booksMaxMinRandomersPerShelf = <BookKind, Randomer>{
    BookKind.poem: Randomer(
      max: 15,
      min: 2,
    ),
    BookKind.prose: Randomer(
      max: 2,
    ),
    BookKind.science: Randomer(
      max: 3,
    ),
  };
  final _bookGenerator = BookGenerator();
  final double screenWidth;
  final int shelfsCount;
  final Map<BookKind, int> booksCount;
  List<BookShelfModel> createShelfs() {
    final booksToFill = booksCount;

    /// from down to up
    /// left to right
    return List.generate(shelfsCount, (final i) {
      return createShelf(
        booksToFill: booksToFill,
        screenWidth: screenWidth,
      );
    });
  }

  BookShelfModel createShelf({
    required final double screenWidth,
    required final Map<BookKind, int> booksToFill,
  }) {
    final slots = <BookShelfSlotModel>[];
    for (final bookKind in BookKind.values) {
      final booksCount = booksToFill[bookKind];
      if (booksCount == null) {
        throw ArgumentError.notNull(
          'provide [booksCount] for bookKind:[$bookKind]',
        );
      }

      final bookWidth = BookModel.booksWidths[bookKind];
      if (bookWidth == null) {
        throw ArgumentError.notNull(
          'provide [bookWidth] for bookKind:[$bookKind]',
        );
      }

      final resultBookCount = (screenWidth / bookWidth).floor();

      if (resultBookCount < 1) continue;

      booksToFill[bookKind] = booksCount - resultBookCount;

      final slot = BookShelfSlotModel.empty();
      for (int i = 0; i < booksCount; i++) {
        final book = _bookGenerator.createBook(kind: bookKind);
        slots.add(slot..books.add(book));
      }
      slots.add(slot);
    }
    return BookShelfModel(
      width: screenWidth,
      height: slots.fold(
        shelfHeight,
        (final maxHeight, final slot) {
          return maxHeight > slot.maxHeight ? maxHeight : slot.maxHeight;
        },
      ),
      slots: slots,
    );
  }
}
