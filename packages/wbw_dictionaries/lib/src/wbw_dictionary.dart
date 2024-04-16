// ignore_for_file: avoid_print

import 'dart:async';
import 'dart:convert';

import 'package:archive/archive_io.dart';
import 'package:csv/csv.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:tar/tar.dart';
// import 'package:universal_io/io.dart';
import 'package:wbw_core/wbw_core.dart';

import 'data_source.dart';
import 'gen/assets.gen.dart';
// TODO(arenukvern): add enum
/// en, ru, etc

enum WbwDictionariesVersion {
  $1;

  static const latest = $1;
}

enum WbwDictionariesLoadingStatus {
  notLoaded,
  loading,
  loaded,
}

typedef WbwDictionaryEntryTuple = ({
  String language,
  String archivePath,
  String csvPath
});
const _kVersionKey = 'wbw_dictionary_version';
const _kWasCalledToLoadKey = 'wbw_dictionary_load_called';

class WbwDictionary extends ValueNotifier<WbwDictionariesLoadingStatus> {
  WbwDictionary({
    required this.simpleLocal,
    final WbwDictionaryDataSource? localDb,
    final AssetBundle? assetBundle,
  })  : local = localDb ?? WbwDictionaryDataSource(),
        assetBundle = assetBundle ?? rootBundle,
        super(WbwDictionariesLoadingStatus.notLoaded);

  // ignore: avoid_unused_constructor_parameters
  factory WbwDictionary.provide(final BuildContext context) => WbwDictionary(
        assetBundle: DefaultAssetBundle.of(context),
        simpleLocal: context.read(),
      );
  final LocalDbDataSource simpleLocal;
  final AssetBundle assetBundle;
  final WbwDictionaryDataSource local;
  bool get isLoaded => value == WbwDictionariesLoadingStatus.loaded;
  bool get isLoading => value == WbwDictionariesLoadingStatus.loading;
  bool get isNotLoaded => value == WbwDictionariesLoadingStatus.notLoaded;
  int debugLoadingTimeInSeconds = 0;
  late final getWordMeaning = local.getWordMeaning;
  late final getDictionaryLength = local.getDictionaryLength;

  /// allows to start dictionaries loading
  /// as it is heavy operation, and therefore user should
  /// be prepared to wait
  Future<void> startLoadingAndCaching() async {
    await simpleLocal.setBool(key: _kWasCalledToLoadKey, value: true);
    await loadAndCache();
  }

  @override
  void dispose() {
    _stopStopwatch();
    super.dispose();
  }

  final _stopwatch = Stopwatch();
  void _startStopwatch() => _stopwatch
    ..reset()
    ..start();
  void _stopStopwatch() {
    _stopwatch.stop();
    debugLoadingTimeInSeconds = _stopwatch.elapsed.inSeconds;
  }

  // TODO(arenukvern): implement online check-in:
  /// check if user is online, then download dictionaries
  /// with chunks and with requests, it would be better for performance
  /// and memory usage
  ///
  /// can be called anytime, as once it is cached,
  /// it is very fast operation.
  Future<void> loadAndCache({
    final bool shouldForceUpdate = false,
  }) async {
    if (isLoading) return;
    final isAllowedToBeLoaded =
        await simpleLocal.getBool(key: _kWasCalledToLoadKey);
    if (!isAllowedToBeLoaded) return;

    value = WbwDictionariesLoadingStatus.loading;
    _startStopwatch();
    print('caching dictionaries started');

    /// check is update needed
    final versionName = await simpleLocal.getString(key: _kVersionKey);
    final version = versionName.isEmpty
        ? null
        : WbwDictionariesVersion.values.byName(versionName);
    final requiresUpdate = shouldForceUpdate ||
        version == null ||
        version != WbwDictionariesVersion.latest;
    print('dictionaries version $version requiresUpdate: $requiresUpdate');

    /// need to check but maybe don't need to delete the whole db
    // if (requiresUpdate) await local.deleteDb();

    await local.setupDb();
    print('dictionaries source loaded');

    if (requiresUpdate) {
      print('dictionaries update needed');
      // should update db
      for (final tuple in _paths) {
        print('caching dictionary ${tuple.language}');
        if (kIsWeb) {
          await _cacheDictionariesCsv(tuple);
        } else {
          await _unzipDictionariesAndCache(tuple);
        }
      }
      await simpleLocal.setString(
        key: _kVersionKey,
        value: WbwDictionariesVersion.latest.name,
      );
    } else {
      // noop
    }
    print('caching dictionaries completed');
    _stopStopwatch();
    value = WbwDictionariesLoadingStatus.loaded;
  }

  late final _paths = <WbwDictionaryEntryTuple>[
    (
      archivePath: Assets.archives.engDicTar,
      csvPath: Assets.src.engDic,
      // TODO(arenukvern): add enum
      language: 'en',
    ),
    (
      archivePath: Assets.archives.ruDicTar,
      csvPath: Assets.src.ruDic,
      // TODO(arenukvern): add enum
      language: 'ru',
    ),
  ];

  /// checks for all languages
  Future<bool> checkWord(final String word) async {
    if (isLoading) return false;

    for (final path in _paths) {
      final isCorrect =
          await local.checkWord((language: path.language, word: word));
      if (isCorrect) return true;
    }
    return false;
  }

  Future<void> _cacheDictionariesCsv(
    final WbwDictionaryEntryTuple tuple,
  ) async {
    // tar.gz
    final csvStr = await assetBundle.loadString(tuple.csvPath, cache: false);
    // TODO(arenukvern): since compute didn't implemented on web
    /// then web worker may help. Or may not 😅
    final csv = await compute(
      (final e) => const CsvToListConverter(fieldDelimiter: ';').convert(e),
      csvStr,
    );
    // var i = 0;
    await local.writeWordsList(
      language: tuple.language,
      data: csv,
      converter: (final row) {
        if (row case [final String word, final String meaning]) {
          if (word.isEmpty) return null;

          /// debug lines
          // if (i < 5) {
          //   print(word);
          //   print(meaning);
          //   i++;
          // }
          return (word: word, meaning: meaning);
        }
        return null;
      },
    );
  }

  /// use on native
  Future<void> _unzipDictionariesAndCache(
    final WbwDictionaryEntryTuple tuple,
  ) async {
    // tar.gz
    final buffer = await assetBundle.load(tuple.archivePath);
    final uint8List = Uint8List.sublistView(buffer);
    final unzipped = GZipDecoder().decodeBytes(uint8List);
    final stream = Stream.value(unzipped);
    final reader = TarReader(stream);
    const converter = CsvToListConverter(fieldDelimiter: ';');
    // var i = 0;
    try {
      while (await reader.moveNext()) {
        final entry = reader.current;
        final contents = entry.contents;
        await local.writeWordsStream(
          language: tuple.language,
          callback: () => contents
              .transform(const Utf8Decoder(allowMalformed: true))
              .transform(converter),
          converter: (final row) {
            if (row case [final String word, final String meaning]) {
              if (word.isEmpty) return null;

              /// debug lines
              // if (i < 5) {
              //   print(word);
              //   print(meaning);
              //   i++;
              // }
              return (word: word, meaning: meaning);
            }
            return null;
          },
        );
      }
    } finally {
      await reader.cancel();
    }
  }
}