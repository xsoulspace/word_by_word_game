import 'package:flutter_test/flutter_test.dart';
import 'package:wbw_core/src/utils/utils.dart';

void main() {
  group('Randomizer', () {
    test('next generates number within max', () {
      final randomer = Randomizer(max: 10);
      final resultList = List.generate(100, (final index) => randomer.next())
          .where((final value) => value >= 10);
      expect(resultList.isEmpty, isTrue);
    });
    test('next generates number within min', () {
      final randomer = Randomizer(min: 10, max: 100);
      final resultList = List.generate(100, (final index) => randomer.next())
          .where((final value) => value < 10);
      expect(resultList.isEmpty, isTrue);
    });
  });
}
