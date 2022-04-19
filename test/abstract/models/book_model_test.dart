import 'package:flutter_test/flutter_test.dart';
import 'package:word_by_word_game/abstract/abstract.dart';

void main() {
  group('BookModel', () {
    test('can create new Book Model', () {
      final resultBookModel = BookModel.create(kind: BookKind.science);
      expect(resultBookModel.id.isNotEmpty, isTrue);
      expect(resultBookModel.kind, equals(BookKind.science));
      expect(resultBookModel.playersInvestments, equals({}));
      expect(resultBookModel.score, equals(ScoreModel.zero));
    });
  });
}
