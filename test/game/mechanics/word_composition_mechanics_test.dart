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
  });
}
