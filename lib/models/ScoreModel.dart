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
  int _initialLettersLimit = 3;
  int _lettersLimit = 3;

  // TODO: add to persistent store
  int _currentLettersReplacesCounter = 0;
  get lettersLimit => _lettersLimit;
  get counter => _wordsCounter;
  get highscore => _highestCounter;
  get lastWord => _lastWord;
  get lastWordWithoutLetters => _lastWord.length > _lettersLimit
      ? _lastWord.substring(0, _lastWord.length - _lettersLimit)
      : '';
  get isNewGame => _lastWord.isEmpty;
  get currentLettersReplaceCounter => _currentLettersReplacesCounter;
  get currentLetters => _currentLetters;
  void _setCurrentLetters() {
    if (_lastWord.length >= _lettersLimit)
      _currentLetters = _lastWord.substring(_lastWord.length - _lettersLimit);
    else
      throw 'new Word must have length more than $_lettersLimit ';
    notifyListeners();
  }

  void add(String newWord) {
    _resetLettersLimit();
    final fixedNewWord = newWord.replaceAll(' ', '').toLowerCase();
    _wordsCounter++;
    if (_wordsCounter > _highestCounter) _highestCounter = _wordsCounter;
    _lastWord = fixedNewWord;
    _setCurrentLetters();
    notifyListeners();
  }

  void resetWordsCounterAndLastWord() {
    _wordsCounter = 0;
    _lastWord = '';
    _currentLettersReplacesCounter = _maxLettersReplacesCounter;
    _resetLettersLimit();
    notifyListeners();
  }

  void resetLetters() {
    if (_currentLettersReplacesCounter > 0) {
      _currentLetters = '';
      _currentLettersReplacesCounter--;
    } else
      throw 'cannot reset as all resets reach limit';
  }

  void _resetLettersLimit() {
    _lettersLimit = _initialLettersLimit;
  }

  void increaseLettersLimit() {
    final newMaxLimit = _lastWord.length;
    _lettersLimit++;
    if (_lettersLimit > newMaxLimit) _lettersLimit = newMaxLimit;
    _setCurrentLetters();
  }

  void decreaseLettersLimit() {
    _lettersLimit--;
    if (_lettersLimit < 1) _lettersLimit = 1;
    _setCurrentLetters();
  }
}
