import 'package:flutter_test/flutter_test.dart';
import 'package:word_by_word_game/_utils/utils.dart';

void main() {
  group('Randomer', () {
    test('next generates number within max', () {
      final randomer = Randomer(max: 10);
      final resultList = List.generate(100, (final index) => randomer.next())
          .where((final value) => value >= 10);
      expect(resultList.isEmpty, isTrue);
    });
    test('next generates number within min', () {
      final randomer = Randomer(min: 10, max: 100);
      final resultList = List.generate(100, (final index) => randomer.next())
          .where((final value) => value < 10);
      expect(resultList.isEmpty, isTrue);
    });
  });
}
