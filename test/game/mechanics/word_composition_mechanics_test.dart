import 'package:flutter_test/flutter_test.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_game/mechanics/mechanics.dart';

void main() {
  group('WordCompositionMechanics', () {
    final wordCompoisitionMechanics = WordCompositionMechanics();
    test('createNextCurrentWordFromFullWord - fullword. Length >= 3 ', () {
      const fullword = 'dictionary';
      final nextWord =
          wordCompoisitionMechanics.createNextCurrentWordFromFullWord(
        fullword: fullword,
      );

      expect(
        nextWord,
        const CurrentWordModel(fullWord: 'ary', middlePart: 'ary'),
      );
    });
    test('createNextCurrentWordFromFullWord - fullword. Length < 3 ', () {
      const fullword = 'di';

      expect(
        () => wordCompoisitionMechanics.createNextCurrentWordFromFullWord(
          fullword: fullword,
        ),
        throwsArgumentError,
      );
    });
    test('applyDecreaseMiddlePartType - can reset allLetters', () {
      const currentWord = CurrentWordModel(middlePart: 'dic');
      final result = wordCompoisitionMechanics.applyDecreaseMiddlePartType(
        currentWord: currentWord,
        type: DecreaseMiddlePart.allLetters,
      );
      expect(
        result,
        equals(const CurrentWordModel()),
      );
    });
    test('applyDecreaseMiddlePartType - can reset left letter', () {
      const currentWord = CurrentWordModel(middlePart: 'dic');
      final result = wordCompoisitionMechanics.applyDecreaseMiddlePartType(
        currentWord: currentWord,
        type: DecreaseMiddlePart.leftLetter,
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
        type: DecreaseMiddlePart.rightLetter,
      );
      expect(
        result,
        equals(const CurrentWordModel(fullWord: 'di', middlePart: 'di')),
      );
    });
  });
}
