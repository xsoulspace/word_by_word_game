import 'package:flutter_test/flutter_test.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_game/mechanics/mechanics.dart';

void main() {
  group('DictionaryMechanics', () {
    final dictionaryMechanics = DictionaryMechanics();
    const newWord = CurrentWordModel(fullWord: 'life');
    const writtenWord = CurrentWordModel(fullWord: 'PumA');
    const incorrectWord = CurrentWordModel(fullWord: 'lvl');
    final Map<FullWordString, PlayerProfileModelId> words = {
      writtenWord.cleanWord: 'profileid',
    };
    test('checkIsWordIsWritten - returns true', () {
      final isWritten = dictionaryMechanics.checkIsWordIsWritten(
        word: writtenWord,
        words: words,
      );
      expect(isWritten, isTrue);
    });
    test('checkIsWordIsWritten - returns false', () {
      final isWritten = dictionaryMechanics.checkIsWordIsWritten(
        word: newWord,
        words: words,
      );
      expect(isWritten, isFalse);
    });
    test('checkIsWordIsCorrect - returns true', () {
      final isCorrect = dictionaryMechanics.checkIsWordIsCorrect(
        word: newWord,
      );
      expect(isCorrect, isTrue);
    });
    test('checkIsWordIsCorrect - returns false', () {
      final isCorrect = dictionaryMechanics.checkIsWordIsCorrect(
        word: incorrectWord,
      );
      expect(isCorrect, isFalse);
    });
  });
}
