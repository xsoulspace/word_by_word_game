import 'package:wbw_core/wbw_core.dart';

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
    required final String fullword,
    final int middlePartLimit = 3,
  }) {
    final String word = fullword.toLowerCase().replaceAll(' ', '');
    final wordLength = word.length;
    if (wordLength < middlePartLimit) {
      throw ArgumentError.value(
        'wordLength < middlePartLimit: ${wordLength < middlePartLimit}',
      );
    }
    final middlePart = word.substring(
      wordLength - middlePartLimit,
      wordLength,
    );
    return applyPartsChanges(
      word: CurrentWordModel(
        middlePart: middlePart,
      ),
    );
  }
}
