import 'package:flutter_test/flutter_test.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_dictionaries/wbw_dictionaries.dart';

class FakeLocalDbDataSource extends Fake implements LocalDbDataSource {}

class FakeWbwDictionaryRemoteSource extends Fake
    implements WbwDictionaryRemoteSource {}

class FakeOnlineStatusService extends Fake implements OnlineStatusService {}

void main() {
  group('DictionaryMechanics', () {
    final dictionaryMechanics = DictionaryMechanics();
    final wbwDictionary = WbwDictionary(
      simpleLocal: FakeLocalDbDataSource(),
      repository: WbwDictionaryRepository(
        onlineStatusService: FakeOnlineStatusService(),
        remote: FakeWbwDictionaryRemoteSource(),
        isAllowedToUseRemote: false,
      ),
    );
    const newWord = CurrentWordModel(fullWord: 'life');
    const writtenWord = CurrentWordModel(fullWord: 'PumA');
    const incorrectWord = CurrentWordModel(fullWord: 'lvl');
    const dictionary = WordsType({});
    final Map<FullWordString, PlayerProfileModelId> words = {
      writtenWord.fullWord: 'profileid',
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
    test('checkIsWordIsCorrect - returns true', () async {
      final isCorrect = await dictionaryMechanics.checkIsWordIsCorrect(
        localWords: dictionary,
        word: newWord,
        wbwDictionary: wbwDictionary,
      );
      expect(isCorrect, isTrue);
    });
    test('checkIsWordIsCorrect - returns false', () async {
      final isCorrect = await dictionaryMechanics.checkIsWordIsCorrect(
        localWords: dictionary,
        word: incorrectWord,
        wbwDictionary: wbwDictionary,
      );
      expect(isCorrect, isFalse);
    });
  });
}
