import '../../wbw_core.dart';

class WordCompositionMechanics {
  CurrentWordModel applyPartsChanges({
    required final CurrentWordModel word,
  }) {
    final fullWord = '${word.leftPart}${word.middlePart}${word.rightPart}';
    return word.copyWith(
      fullWord: fullWord,
    );
  }

  /// 1. Fullword turn into the middlePart
  /// 2. middlepart is the ending part of the Fullword
  CurrentWordModel createNextCurrentWordFromFullWord({
    required final CurrentWordModel word,
    final int middlePartLimit = 3,
  }) {
    final String fullWord = word.cleanWord;
    final wordLength = fullWord.length;
    if (wordLength < middlePartLimit) {
      throw ArgumentError.value(
        'wordLength < middlePartLimit: ${wordLength < middlePartLimit}',
      );
    }
    final middlePart = fullWord.substring(
      wordLength - middlePartLimit,
      wordLength,
    );
    return applyPartsChanges(
      word: CurrentWordModel(
        middlePart: middlePart,
      ),
    );
  }

  CurrentWordModel applyDecreaseMiddlePartType({
    required final int index,
    required final CurrentWordModel currentWord,
  }) {
    CurrentWordModel updatedWord;
    final middlePart = currentWord.middlePart;
    if (middlePart.isEmpty) {
      updatedWord = currentWord;
    } else {
      final newMiddlePart =
          currentWord.middlePart.replaceRange(index, index + 1, '');
      updatedWord = currentWord.copyWith(
        middlePart: newMiddlePart,
      );
      if (newMiddlePart.isEmpty) {
        updatedWord = updatedWord.copyWith(
          leftPart: '',
          rightPart: '${updatedWord.leftPart}${updatedWord.rightPart}',
        );
      }
    }

    return applyPartsChanges(
      word: updatedWord,
    );
  }
}
