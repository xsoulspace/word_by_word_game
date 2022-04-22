import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:word_by_word_game/_abstract/abstract.dart';
import 'package:word_by_word_game/pack_game/pack_game.dart';

void main() {
  group('BookShelfGenerator', () {
    final bookShelfGenerator = BookShelfGenerator(screenWidth: 600);
    test('can create BookShelf with one book for each kind', () {
      final shelf = bookShelfGenerator.createShelf(
        booksToFill: {
          BookKind.poem: 1,
          BookKind.prose: 1,
          BookKind.science: 1,
        },
      );
      expect(shelf.getAllBooks().length, equals(3));
    });
    test('can create BookShelf with no books', () {
      final shelf = bookShelfGenerator.createShelf(
        booksToFill: {
          BookKind.poem: 0,
          BookKind.prose: 0,
          BookKind.science: 0,
        },
      );
      expect(shelf.getAllBooks().length, isZero);
    });

    test('can create BookShelf can divide science books into  slots', () {
      final shelf = bookShelfGenerator.createShelf(
        booksToFill: {
          BookKind.poem: 5,
          BookKind.prose: 2,
          BookKind.science: 5,
        },
      );
      final slotsWithAllScienceBooks = shelf.slots.where(
        (final slot) =>
            slot.books
                .where((final book) => book.kind == BookKind.science)
                .length ==
            slot.books.length,
      );

      final slotsWithScienceBooks = shelf.slots.where(
        (final slot) =>
            slot.books.firstWhereOrNull(
              (final book) => book.kind == BookKind.science,
            ) !=
            null,
      );
      expect(
        slotsWithScienceBooks.length == slotsWithAllScienceBooks.length,
        isTrue,
      );

      expect(slotsWithScienceBooks.length >= 2, isTrue);
      final expectedBooksCount =
          (bookShelfGenerator.screenWidth / BookModel.scienceWidth).floor();
      expect(slotsWithScienceBooks.length <= expectedBooksCount, isTrue);
    });
  });
}
