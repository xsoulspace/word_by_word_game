part of subgames/quick_game;

class BookGenerator {
  BookModel createBook({
    required final BookKind kind,
    required final BookShelfSlotModelId slotId,
  }) {
    switch (kind) {
      case BookKind.poem:
        return BookModel.poem(slotId: slotId);
      case BookKind.prose:
        return BookModel.prose(slotId: slotId);
      case BookKind.science:
        return BookModel.science(slotId: slotId);
    }
  }
}
