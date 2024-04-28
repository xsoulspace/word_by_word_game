import 'package:flutter/foundation.dart';
import 'package:wbw_core/wbw_core.dart';

import 'local_source.dart';
import 'local_source_i.dart';
import 'remote_source.dart';

class WbwDictionaryRepository {
  WbwDictionaryRepository({
    required this.remote,
    required this.onlineStatusService,
    final WbwDictionaryLocalSource? local,
  }) : local = local ?? WbwDictionaryLocalSource();
  final WbwDictionaryLocalSource local;
  final WbwDictionaryRemoteSource remote;
  final OnlineStatusService onlineStatusService;
  static const bool isAllowedToUseRemote = kDebugMode || kIsWeb;

  Future<String> getWordMeaning(final WordMeaningRequestTuple tuple) async {
    if (isAllowedToUseRemote) {
      final result = await onlineStatusService.onRequest(
        () => remote.getWordMeaning(tuple),
        negativeResponse: Future.value(''),
      );

      if (result.isNotEmpty) return result;
    }
    return local.getWordMeaning(tuple);
  }

  Future<bool> checkWord(final WordMeaningRequestTuple tuple) async {
    if (isAllowedToUseRemote) {
      final result = await onlineStatusService.onRequest(
        () => remote.checkWord(tuple),
        negativeResponse: Future.value(false),
      );

      if (result == true) return true;
    }
    return local.checkWord(tuple);
  }
}
