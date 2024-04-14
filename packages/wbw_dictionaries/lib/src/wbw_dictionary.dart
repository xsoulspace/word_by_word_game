import 'dart:convert';

import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:tar/tar.dart';
import 'package:universal_io/io.dart';
import 'package:wbw_core/wbw_core.dart';

import 'data_source.dart';
import 'gen/assets.gen.dart';
// TODO(arenukvern): add enum
/// en, ru, etc

enum WbwDictionariesVersion {
  $1;

  static const latest = $1;
}

typedef WbwDictionaryEntryTuple = ({String language, String archivePath});
extension type IsLoadedType(bool value) {}
const _kVersionKey = 'wbw_dictionary_version';

class WbwDictionary extends ValueNotifier<IsLoadedType> {
  WbwDictionary({
    required this.simpleLocal,
    final WbwDictionaryDataSource? localDb,
    final AssetBundle? assetBundle,
  })  : local = localDb ?? WbwDictionaryDataSource(),
        assetBundle = assetBundle ?? rootBundle,
        super(IsLoadedType(false));

  // ignore: avoid_unused_constructor_parameters
  factory WbwDictionary.provide(final BuildContext context) => WbwDictionary(
        assetBundle: DefaultAssetBundle.of(context),
        simpleLocal: context.read(),
      );
  final LocalDbDataSource simpleLocal;
  final AssetBundle assetBundle;
  final WbwDictionaryDataSource local;
  bool get isLoaded => value.value;
  bool get isLoading => !isLoaded;
  int debugLoadingTimeInSeconds = 0;
  Future<void> onLoad() async {
    final stopwatch = Stopwatch()..start();
    await local.onLoad();
    final versionName = await simpleLocal.getString(key: _kVersionKey);
    final version = versionName.isEmpty
        ? null
        : WbwDictionariesVersion.values.byName(versionName);
    if (version == null || version != WbwDictionariesVersion.latest) {
      // should update db
      for (final tuple in _paths) {
        await unpackDictionariesAndCache(tuple);
      }
      await simpleLocal.setString(
        key: _kVersionKey,
        value: WbwDictionariesVersion.latest.name,
      );
    } else {
      // noop
    }
    stopwatch.stop();
    debugLoadingTimeInSeconds = stopwatch.elapsed.inSeconds;
    value = IsLoadedType(true);
  }

  late final _paths = <WbwDictionaryEntryTuple>[
    (
      archivePath: Assets.archives.engDicTar,
      // TODO(arenukvern): add enum
      language: 'en',
    ),
  ];

  /// checks for all languages
  Future<bool> checkWord(final String word) async {
    if (isLoading) return false;

    for (final (:language, archivePath: _) in _paths) {
      final isCorrect = await local.checkWord((language: language, word: word));
      if (isCorrect) return true;
    }
    return false;
  }

  Future<void> unpackDictionariesAndCache(
    final WbwDictionaryEntryTuple tuple,
  ) async {
    // tar.gz
    final buffer = await assetBundle.load(tuple.archivePath);
    final unzipped = gzip.decode(Uint8List.sublistView(buffer));
    final reader = TarReader(Stream.value(unzipped));
    const converter = CsvToListConverter(fieldDelimiter: ';');
    // var i = 0;
    try {
      while (await reader.moveNext()) {
        final entry = reader.current;
        final contents = entry.contents;

        final csvRowStream = contents
            .transform(const Utf8Decoder(allowMalformed: true))
            .transform(converter);
        await for (final row in csvRowStream) {
          if (row.length < 3) continue;
          final word = '${row[0]}';
          final meaning = '${row[2]}';

          /// debug lines
          // if (i < 5) {
          //   print(word);
          //   print(meaning);
          //   i++;
          // }
          if (word.isEmpty) continue;
          await local.writeWord(
            (
              language: tuple.language,
              word: word,
            ),
            meaning: meaning,
          );
        }
      }
    } finally {
      await reader.cancel();
    }
  }
}
