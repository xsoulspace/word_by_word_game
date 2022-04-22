part of pack_game;

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
