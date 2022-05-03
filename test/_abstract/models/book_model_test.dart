import 'package:flutter_test/flutter_test.dart';
import 'package:word_by_word_game/_abstract/abstract.dart';

void main() {
  group('BookModel', () {
    test('can create new Science Book Model', () {
      final resultBookModel = BookModel.science(slotId: '');
      expect(resultBookModel.id.isNotEmpty, isTrue);
      expect(resultBookModel.kind, equals(BookKind.science));
      expect(resultBookModel.playersInvestments.isEmpty, isTrue);
    });
    test('can create new Poem Book Model', () {
      final resultBookModel = BookModel.poem(slotId: '');
      expect(resultBookModel.id.isNotEmpty, isTrue);
      expect(resultBookModel.kind, equals(BookKind.poem));
      expect(resultBookModel.playersInvestments.isEmpty, isTrue);
    });
    test('can create new Prose Book Model', () {
      final resultBookModel = BookModel.prose(slotId: '');
      expect(resultBookModel.id.isNotEmpty, isTrue);
      expect(resultBookModel.kind, equals(BookKind.prose));
      expect(resultBookModel.playersInvestments.isEmpty, isTrue);
    });
  });
}
