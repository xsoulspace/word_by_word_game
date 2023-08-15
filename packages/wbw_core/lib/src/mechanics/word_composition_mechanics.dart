import '../../wbw_core.dart';

class WordCompositionMechanics {
  /// 1. Fullword turn into the middlePart
  /// 2. middlepart is the ending part of the Fullword
  CurrentWordModel createNextCurrentWord({
    required final CurrentWordModel word,
    final int middlePartLimit = 3,
  }) {
    final String fullWord = word.fullWord;
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
    return CurrentWordModel(
      fullWord: middlePart,
      inactiveIndexes: List.generate(middlePartLimit, (final i) => i),
    );
  }

  CurrentWordModel unblockInactiveIndex({
    required final int index,
    required final CurrentWordModel currentWord,
  }) =>
      currentWord.copyWith(
        inactiveIndexes: [...currentWord.inactiveIndexes]..remove(index),
      );
}
