import 'package:wbw_client/wbw_client.dart';

import 'local_source_i.dart';
import 'sources.dart';

class WbwDictionaryRemoteSource {
  const WbwDictionaryRemoteSource({
    required this.client,
  });
  final AppServerpodClient client;

  Future<String> getWordMeaning(final WordMeaningRequestTuple tuple) async =>
      client.word.getWordMeaning(tuple.toWordRequest());

  Future<bool> checkWord(final WordMeaningRequestTuple tuple) async =>
      client.word.checkWord(tuple.toWordRequest());
}

extension WordMeaningRequestTupleX on WordMeaningRequestTuple {
  WordRequest toWordRequest() => WordRequest(
        language: language.value,
        word: word,
      );
}
