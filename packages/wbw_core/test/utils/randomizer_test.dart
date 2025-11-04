import 'package:flutter_test/flutter_test.dart';
import 'package:xsoulspace_foundation/xsoulspace_foundation.dart';

void main() {
  group('Randomizer', () {
    test('next generates number within max', () {
      final randomer = Randomizer();
      final resultList = List.generate(
        100,
        (final index) => randomer.nextInt(max: 10),
      ).where((final value) => value >= 10);
      expect(resultList.isEmpty, isTrue);
    });
    test('next generates number within min', () {
      final randomer = Randomizer();
      final resultList = List.generate(
        100,
        (final index) => randomer.nextInt(min: 10, max: 100),
      ).where((final value) => value < 10);
      expect(resultList.isEmpty, isTrue);
    });
  });
}
