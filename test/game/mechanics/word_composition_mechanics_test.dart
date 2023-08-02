import 'package:flutter_test/flutter_test.dart';
import 'package:wbw_core/wbw_core.dart';

void main() {
  group('WordCompositionMechanics', () {
    final wordCompoisitionMechanics = WordCompositionMechanics();
    test('createNextCurrentWordFromFullWord - fullword. Length >= 3 ', () {
      const fullword = 'dictionary';
      const word = CurrentWordModel(fullWord: fullword);
      final nextWord =
          wordCompoisitionMechanics.createNextCurrentWordFromFullWord(
        word: word,
      );

      expect(
        nextWord,
        const CurrentWordModel(fullWord: 'ary', middlePart: 'ary'),
      );
    });
    test('createNextCurrentWordFromFullWord - fullword. Length < 3 ', () {
      const fullword = 'di';
      const word = CurrentWordModel(fullWord: fullword);

      expect(
        () => wordCompoisitionMechanics.createNextCurrentWordFromFullWord(
          word: word,
        ),
        throwsArgumentError,
      );
    });
    test('applyDecreaseMiddlePartType - can reset left letter', () {
      const currentWord = CurrentWordModel(middlePart: 'dic');
      final result = wordCompoisitionMechanics.applyDecreaseMiddlePartType(
        currentWord: currentWord,
        index: 0,
      );
      expect(
        result,
        equals(const CurrentWordModel(fullWord: 'ic', middlePart: 'ic')),
      );
    });
    test('applyDecreaseMiddlePartType - can reset right letter', () {
      const currentWord = CurrentWordModel(middlePart: 'dic');
      final result = wordCompoisitionMechanics.applyDecreaseMiddlePartType(
        currentWord: currentWord,
        index: 2,
      );
      expect(
        result,
        equals(const CurrentWordModel(fullWord: 'di', middlePart: 'di')),
      );
    });
    test('applyDecreaseMiddlePartType - can reset middle letter', () {
      const currentWord = CurrentWordModel(middlePart: 'dic');
      final result = wordCompoisitionMechanics.applyDecreaseMiddlePartType(
        currentWord: currentWord,
        index: 1,
      );
      expect(
        result,
        equals(const CurrentWordModel(fullWord: 'dc', middlePart: 'dc')),
      );
    });
    test('applyDecreaseMiddlePartType - can reset last middle letter', () {
      const currentWord = CurrentWordModel(
        middlePart: 'd',
        leftPart: 's',
        rightPart: 'un',
      );
      final result = wordCompoisitionMechanics.applyDecreaseMiddlePartType(
        currentWord: currentWord,
        index: 0,
      );
      expect(
        result,
        equals(
          const CurrentWordModel(
            fullWord: 'sun',
            rightPart: 'sun',
          ),
        ),
      );
    });
  });
}
