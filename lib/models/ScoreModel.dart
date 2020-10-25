import 'package:flutter/widgets.dart';

class ScoreModel extends ChangeNotifier {
  // TODO: add to persistent store
  int _highestCounter = 0;
  int _wordsCounter = 0;
  // TODO: add to persistent store
  String _lastWord = '';
  // TODO: add to persistent store
  String _currentLetters = '';
  final int _maxLettersReplacesCounter = 3;
  final int _lettersLimit = 3;
  // TODO: add to persistent store
  int _currentLettersReplacesCounter = 0;

  get counter => _wordsCounter;
  get highscore => _highestCounter;
  get lastWord => _lastWord;
  get lastWordWithoutLetters => _lastWord.length > _lettersLimit
      ? _lastWord.substring(0, _lastWord.length - _lettersLimit)
      : '';

  get currentLettersReplaceCounter => _currentLettersReplacesCounter;
  get currentLetters => _currentLetters;

  void add(String newWord) {
    final fixedNewWord = newWord.replaceAll(' ', '').toLowerCase();
    _wordsCounter++;
    if (_wordsCounter > _highestCounter) _highestCounter = _wordsCounter;
    _lastWord = fixedNewWord;
    if (fixedNewWord.length >= _lettersLimit)
      _currentLetters =
          fixedNewWord.substring(fixedNewWord.length - _lettersLimit);
    else
      throw 'new Word must have length more than $_lettersLimit ';
    notifyListeners();
  }

  void resetWordsCounterAndLastWord() {
    _wordsCounter = 0;
    _lastWord = '';
    _currentLettersReplacesCounter = _maxLettersReplacesCounter;
    notifyListeners();
  }

  void resetLetters() {
    if (_currentLettersReplacesCounter > 0) {
      _currentLetters = '';
      _currentLettersReplacesCounter--;
    } else
      throw 'cannot reset as all resets reach limit';
  }
}
