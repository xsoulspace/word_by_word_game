import 'package:flutter_test/flutter_test.dart';
import 'package:wbw_core/wbw_core.dart';

void main() {
  group('WordCompositionMechanics', () {
    final wordCompoisitionMechanics = WordCompositionMechanics();
    test('createNextCurrentWordFromFullWord - fullword. Length >= 3 ', () {
      const fullword = 'dictionary';
      const word = CurrentWordModel(fullWord: fullword);
      final nextWord = wordCompoisitionMechanics.createNextCurrentWord(
        word: word,
      );

      expect(
        nextWord,
        const CurrentWordModel(fullWord: 'ary', inactiveIndexes: [0, 1, 2]),
      );
    });
    test('createNextCurrentWordFromFullWord - fullword. Length < 3 ', () {
      const fullword = 'di';
      const word = CurrentWordModel(fullWord: fullword);

      expect(
        () => wordCompoisitionMechanics.createNextCurrentWord(
          word: word,
        ),
        throwsArgumentError,
      );
    });
    test('applyDecreaseMiddlePartType - can unblock any index', () {
      const currentWord =
          CurrentWordModel(inactiveIndexes: [0, 1, 2], fullWord: 'dic');
      final result = wordCompoisitionMechanics.unblockInactiveIndex(
        currentWord: currentWord,
        index: 1,
      );
      expect(
        result,
        equals(
          const CurrentWordModel(fullWord: 'dic', inactiveIndexes: [0, 2]),
        ),
      );
    });
  });
}
