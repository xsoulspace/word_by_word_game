import 'package:wbw_core/wbw_core.dart';

import 'local_source_i.dart';
import 'sources.dart';

class WbwDictionaryRemoteSource {
  const WbwDictionaryRemoteSource({
    required this.client,
    required this.onlineStatusService,
  });
  final ServerpodClient client;

  final OnlineStatusService onlineStatusService;
  Future<String> getWordMeaning(final WordMeaningRequestTuple tuple) async {
    if (onlineStatusService.isConnected) {
      final result = onlineStatusService.onRequest(
        () => client,
      );
    }
    return '';
  }

  Future<bool> checkWord(final WordMeaningRequestTuple tuple) async {
    if (onlineStatusService.isConnected) {
      final result = onlineStatusService.onRequest(
        () => client,
      );
    }
    return false;
  }
}
