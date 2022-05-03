part of pack_game;

class BookUpdater {
  BookUpdater({
    required this.book,
    required this.level,
  }) {
    getPositionIndexes();
  }

  final BookModel book;
  final BookShelfLevelModel level;

  late int bookIndex;
  late int slotIndex;
  late int shelfIndex;

  void getPositionIndexes() {
    slotIndex = -1;
    shelfIndex = level.shelves.indexWhere(
      (final shelf) {
        slotIndex = shelf.slots.indexWhere((final slot) {
          return slot.id == book.slotId;
        });
        return slotIndex >= 0;
      },
    );
    if (shelfIndex < 0) {
      throw ArgumentError.value('bookModel not found in the shelves');
    }

    final shelf = level.shelves[shelfIndex];
    final slot = shelf.slots[slotIndex];

    bookIndex = slot.books.indexWhere((final searchBook) => searchBook == book);
  }
}
