import 'package:flutter/widgets.dart';
import 'package:word_by_word_game/utils/storage_util.dart';

class ScoreModelConsts {
  static String highscore = 'highscore';
}

class ScoreModel extends ChangeNotifier {
  StorageUtil _storage;
  ScoreModel() {
    _checkAndLoadStorageInstance();
  }
  _checkAndLoadStorageInstance() async {
    if (_storage == null) {
      await StorageUtil.getInstance().then((inst) => _storage = inst);
    }
  }

  int _highestCounter = 0;
  Future<void> loadHighscoreToStorage() async {
    await _checkAndLoadStorageInstance();
    _highestCounter =
        int.parse(_storage.getString(ScoreModelConsts.highscore) ?? '0');
  }

  Future<void> _saveHighscoreToStorage() async {
    await _checkAndLoadStorageInstance();
    await _storage.putString(
        ScoreModelConsts.highscore, _highestCounter.toString());
  }

  int _wordsCounter = 0;
  String _lastWord = '';
  String _currentLetters = '';
  get isCurrentLettersEmpty => _currentLetters.isEmpty;
  get isCurrentLettersNotEmpty => _currentLetters.isNotEmpty;

  final int _initialLettersLimit = 3;
  int _lettersLimit = 3;

  get lettersLimit => _lettersLimit;
  get counter => _wordsCounter;
  get highscore => _highestCounter;
  get lastWord => _lastWord;
  get lastWordWithoutLetters => _lastWord.length > _lettersLimit
      ? _lastWord.substring(0, _lastWord.length - _lettersLimit)
      : '';
  get isNewGame => _lastWord.isEmpty;
  get isNotNewGame => _lastWord.isNotEmpty;
  get currentLetters => _currentLetters;
  void _setCurrentLetters() {
    if (_lastWord.length >= _lettersLimit)
      _currentLetters = _lastWord.substring(_lastWord.length - _lettersLimit);
    else
      throw 'new Word must have length more than $_lettersLimit ';
    notifyListeners();
  }

  Future<void> add(String newWord) async {
    _resetLettersLimit();
    final fixedNewWord = newWord.replaceAll(' ', '').toLowerCase();
    _wordsCounter++;
    if (_wordsCounter > _highestCounter) {
      _highestCounter = _wordsCounter;
      await _saveHighscoreToStorage();
    }
    _lastWord = fixedNewWord;
    _setCurrentLetters();
    notifyListeners();
  }

  void resetParams() {
    _wordsCounter = 0;
    _lastWord = '';
    _currentLettersIncreaseDecreaseCounter = _maxLettersIncreaseDecreaseCounter;
    _resetLettersLimit();
    notifyListeners();
  }

  // REPLACE LETTERS LOGIC
  get isLettersReplaceAvailable =>
      _currentLettersIncreaseDecreaseCounter > 0 && isNotNewGame;
  get isLettersReplaceNotAvailable => !isLettersReplaceAvailable;

  void resetLetters() {
    if (_currentLetters.isEmpty) return;
    if (isLettersReplaceAvailable) {
      final length = _currentLetters.length;
      _currentLetters = '';
      _currentLettersIncreaseDecreaseCounter =
          _currentLettersIncreaseDecreaseCounter - length;
      notifyListeners();
    } else
      // TODO: add translate
      throw 'cannot reset as all resets reach limit';
  }

  // count how many times user can increase or decrease letters in word
  final int _maxLettersIncreaseDecreaseCounter = 6;
  int _currentLettersIncreaseDecreaseCounter = 6;
  get currentLettersIncreaseDecreaseCounter =>
      _currentLettersIncreaseDecreaseCounter;
  get isLettersIncreaseDescreaseAvailable =>
      _currentLettersIncreaseDecreaseCounter > 0;
  get isLettersIncreaseDescreaseNotAvailable =>
      _currentLettersIncreaseDecreaseCounter < 1;

  _checkDecreaseIncreasePossibility() {
    if (isLettersIncreaseDescreaseNotAvailable)
      // TODO: add translate
      throw 'cannot reset as all resets reach limit';
  }

  void _resetLettersLimit() {
    _lettersLimit = _initialLettersLimit;
  }

  void decreaseLettersLimit({bool fromBeginning = false}) {
    if (isNewGame || isCurrentLettersEmpty) return;
    _checkDecreaseIncreasePossibility();
    _lettersLimit--;
    _currentLettersIncreaseDecreaseCounter--;
    if (fromBeginning) {
      _currentLetters =
          _currentLetters.substring(_currentLetters.length - _lettersLimit);
    } else {
      _currentLetters = _currentLetters.substring(0, _lettersLimit);
    }
    notifyListeners();
  }
}
