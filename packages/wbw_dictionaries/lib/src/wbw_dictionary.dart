import 'dart:convert';

import 'package:csv/csv.dart';
import 'package:tar/tar.dart';
import 'package:universal_io/io.dart';

class WbwDictionary {
  WbwDictionary({
    final WbwDictionaryDataSource? local,
  }) : local = local ?? WbwDictionaryDataSource();
  final WbwDictionaryDataSource local;
  Future<void> unpackDictionariesAndCache({
    required final String archivePath,
    // TODO(arenukvern): add enum
    /// en, ru, etc
    required final String language,
  }) async {
    final inputStream = File(archivePath).openRead();
    const converter = CsvToListConverter();
    await TarReader.forEach(inputStream, (final entry) async {
      final stream = entry.contents;
      final csvRowStream = stream.transform(utf8.decoder).transform(converter);
      await for (final row in csvRowStream) {
        if (row.length < 3) {
          continue;
        }
        local.writeWord(
          (
            language: language,
            word: row[0],
          ),
          meaning: row[2],
        );
      }
    });
  }
}

class WbwDictionaryDataSource {
  WbwDictionaryDataSource();

  void onLoad() {}

  void writeWord(
    final WordMeaningTuple tuple, {
    required final String meaning,
  }) {}

  String getMeaning(final WordMeaningTuple tuple) {}
}

typedef WordMeaningTuple = ({String language, String word});
