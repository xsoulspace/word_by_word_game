import 'package:wbw_client/wbw_client.dart';
import 'package:wbw_locale/wbw_locale.dart';

import 'sources.dart';
import 'wbw_local_source_i.dart';

class WbwDictionaryRemoteSource {
  const WbwDictionaryRemoteSource({required this.client});
  final AppServerpodClient client;

  Future<String> getWordMeaning(final WordMeaningRequestTuple tuple) async =>
      client.word.getWordMeaning(tuple.toWordRequest());

  Future<bool> checkWord(final WordMeaningRequestTuple tuple) async =>
      client.word.checkWord(tuple.toWordRequest());
}

extension WordMeaningRequestTupleX on WordMeaningRequestTuple {
  WordRequest toWordRequest() =>
      WordRequest(language: language.toLanguage(), word: word);
}

extension _LanguagesX on UiLanguage {
  WordLanguage toLanguage() {
    if (this == uiLanguages.en) return WordLanguage.eng;
    if (this == uiLanguages.ru) return WordLanguage.ru;
    if (this == uiLanguages.it) throw UnimplementedError();
    throw UnimplementedError();
  }
}
