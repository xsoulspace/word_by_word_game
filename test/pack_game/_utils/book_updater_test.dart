import 'package:flutter_test/flutter_test.dart';
import 'package:word_by_word_game/_abstract/abstract.dart';
import 'package:word_by_word_game/pack_game/pack_game.dart';

const _gamePlayer = GamePlayerModel.empty;
void main() {
  group('BookUpdater', () {
    final levelGenerator = GameLevelGenerator();
    final shelfLevels = levelGenerator.createBookShelfLevels(
      players: {_gamePlayer.id: _gamePlayer},
      screenWidth: 600,
    );
    final level = shelfLevels.first;
    final shelves = level.shelves;

    Iterable<BookModel> books = [];
    final shelfIndex = shelves.indexWhere(
      (final shelf) {
        books = shelf
            .getAllBooks()
            .where((final searchBook) => searchBook.kind == BookKind.poem);
        return books.isNotEmpty;
      },
    );

    final shelf = shelves[shelfIndex];
    final poemBook = books.first;

    int bookIndex = -1;
    final slotIndex = shelf.slots.indexWhere(
      (final slot) {
        bookIndex =
            slot.books.indexWhere((final searchBook) => searchBook == poemBook);
        return bookIndex >= 0;
      },
    );
    test('can get correct indexes', () {
      final bookUpdater = BookUpdater(book: poemBook, level: level);

      expect(bookUpdater.bookIndex, equals(bookIndex));
      expect(bookUpdater.slotIndex, equals(slotIndex));
      expect(bookUpdater.shelfIndex, equals(shelfIndex));
    });
    test('can update book', () {
      final bookUpdater = BookUpdater(book: poemBook, level: level);
      final updatedBook = poemBook.copyWith(
        playersInvestments: poemBook.updatePlayerInvestments(
          gamePlayer: _gamePlayer,
          letterCount: 3,
        ),
      );
      final updatedLevel = bookUpdater.updateBook(book: updatedBook);
      expect(
        updatedLevel.shelves[shelfIndex].slots[slotIndex].books[bookIndex]
            .playersInvestments[_gamePlayer.id],
        equals(3),
      );
    });
  });
}
