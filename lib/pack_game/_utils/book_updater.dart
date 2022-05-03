part of pack_game;

class BookUpdater {
  BookUpdater({
    required final BookModel book,
    required this.level,
  }) : _book = book {
    getPositionIndexes();
  }

  final BookModel _book;
  final BookShelfLevelModel level;

  late int bookIndex;
  late int slotIndex;
  late int shelfIndex;

  void getPositionIndexes() {
    slotIndex = -1;
    shelfIndex = level.shelves.indexWhere(
      (final shelf) {
        slotIndex = shelf.slots.indexWhere((final slot) {
          return slot.id == _book.slotId;
        });
        return slotIndex >= 0;
      },
    );
    if (shelfIndex < 0) {
      throw ArgumentError.value('bookModel not found in the shelves');
    }

    final shelf = level.shelves[shelfIndex];
    final slot = shelf.slots[slotIndex];

    bookIndex =
        slot.books.indexWhere((final searchBook) => searchBook == _book);
  }

  @useResult
  BookShelfModel getShelf() => level.shelves[shelfIndex];

  @useResult
  BookShelfSlotModel getSlot({required final BookShelfModel shelf}) =>
      shelf.slots[slotIndex];

  BookShelfLevelModel updateBook({
    required final BookModel book,
  }) {
    final shelf = getShelf();
    final slot = getSlot(shelf: shelf);
    final updatedSlot = slot.copyWith(
      books: [...slot.books]
        ..removeAt(bookIndex)
        ..insert(bookIndex, book),
    );
    final updatedShelf = shelf.copyWith(
      slots: [...shelf.slots]
        ..removeAt(slotIndex)
        ..insert(slotIndex, updatedSlot),
    );
    final updatedLevel = level.copyWith(
      shelves: [...level.shelves]
        ..removeAt(shelfIndex)
        ..insert(shelfIndex, updatedShelf),
    );

    return updatedLevel;
  }
}
