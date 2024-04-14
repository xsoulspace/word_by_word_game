import 'dart:convert';

import 'package:csv/csv.dart';
import 'package:tar/tar.dart';
import 'package:universal_io/io.dart';

import 'data_source.dart';
import 'gen/assets.gen.dart';
// TODO(arenukvern): add enum
/// en, ru, etc

typedef WbwDictionaryEntryTuple = ({String language, String archivePath});

class WbwDictionary {
  WbwDictionary({
    final WbwDictionaryDataSource? local,
  }) : local = local ?? WbwDictionaryDataSource();
  final WbwDictionaryDataSource local;
  Future<void> onLoad() async {
    final paths = <WbwDictionaryEntryTuple>[
      (
        archivePath: Assets.archives.engDicTar,
        language: 'en',
      ),
    ];
    await local.onLoad();
    for (final tuple in paths) {
      await unpackDictionariesAndCache(tuple);
    }
  }

  Future<void> unpackDictionariesAndCache(
    final WbwDictionaryEntryTuple tuple,
  ) async {
    final inputStream = File(tuple.archivePath).openRead();
    const converter = CsvToListConverter();
    await TarReader.forEach(inputStream, (final entry) async {
      final stream = entry.contents;
      final csvRowStream = stream.transform(utf8.decoder).transform(converter);
      await for (final row in csvRowStream) {
        if (row.length < 3) continue;

        await local.writeWord(
          (
            language: tuple.language,
            word: row[0],
          ),
          meaning: row[2],
        );
      }
    });
  }
}
