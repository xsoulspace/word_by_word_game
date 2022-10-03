import 'package:wbw_core/wbw_core.dart';

enum DecreaseMiddlePart {
  leftLetter,
  rightLetter,
  allLetters,
}

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
    required final DecreaseMiddlePart type,
    required final CurrentWordModel currentWord,
  }) {
    CurrentWordModel updatedWord;
    final middlePart = currentWord.middlePart;
    if (middlePart.isEmpty) {
      updatedWord = currentWord;
    } else {
      final middlePartLength = middlePart.length;
      switch (type) {
        case DecreaseMiddlePart.allLetters:
          updatedWord = currentWord.copyWith(
            middlePart: '',
          );
          break;
        case DecreaseMiddlePart.leftLetter:
          updatedWord = currentWord.copyWith(
            middlePart: currentWord.middlePart.substring(1),
          );
          break;
        case DecreaseMiddlePart.rightLetter:
          updatedWord = currentWord.copyWith(
            middlePart: currentWord.middlePart.substring(
              0,
              middlePartLength - 1,
            ),
          );
          break;
      }
    }

    return applyPartsChanges(
      word: updatedWord,
    );
  }
}
