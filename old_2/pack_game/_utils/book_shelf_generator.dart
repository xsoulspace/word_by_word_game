part of subgames/quick_game;

class BookShelfGenerator {
  BookShelfGenerator({
    required this.screenWidth,
  })  : shelvesCount = shelfCountRandomer.next(),
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
  static final booksMaxMinRandomersPerBookAxis = <BookAxis, Randomer>{
    BookAxis.horizontal: Randomer(
      max: 5,
      min: 1,
    ),
    BookAxis.vertical: Randomer(
      max: 3,
      min: 1,
    ),
    BookAxis.frontal: Randomer(
      max: 2,
      min: 1,
    ),
  };
  final _bookGenerator = BookGenerator();
  final double screenWidth;
  final int shelvesCount;
  final Map<BookKind, int> booksCount;
  List<BookShelfModel> createShelves() {
    final booksToFill = booksCount;

    /// from down to up
    /// left to right
    return List.generate(shelvesCount, (final i) {
      return createShelf(
        booksToFill: booksToFill,
      );
    });
  }

  BookShelfModel createShelf({
    required final Map<BookKind, int> booksToFill,
  }) {
    final slots = <BookShelfSlotModel>[];
    for (final bookKind in BookKind.values) {
      final booksCount = booksToFill[bookKind]!;
      final bookWidth = BookModel.booksWidths[bookKind]!;

      final resultBookCount = (screenWidth / bookWidth).floor();

      if (resultBookCount < 1) continue;

      booksToFill[bookKind] = booksCount - resultBookCount;

      BookShelfSlotModel slot = BookShelfSlotModel.empty();

      final bookAxis = BookModel.bookKindAxis[bookKind]!;
      final bookLimitRandomer = booksMaxMinRandomersPerBookAxis[bookAxis]!;

      int bookLimit = bookLimitRandomer.next();
      for (int i = 0; i < booksCount; i++) {
        final book = _bookGenerator.createBook(
          kind: bookKind,
          slotId: slot.id,
        );
        slot = slot.copyWith(
          books: [...slot.books, book],
        );

        bookLimit--;

        if (i == booksCount - 1) {
          slots.add(slot);
        } else if (bookLimit == 0) {
          slots.add(slot);
          bookLimit = bookLimitRandomer.next();
          slot = BookShelfSlotModel.empty();
        }
      }
    }
    return BookShelfModel.create(
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
