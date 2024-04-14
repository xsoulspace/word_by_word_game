import 'package:sembast/sembast.dart';

typedef WordMeaningTuple = ({String language, String word});

extension WordMeaningTupleExt on WordMeaningTuple {
  String get _dbKey => '$language:$word';
}

abstract base class WbwDictionaryDataSourceBase {
  WbwDictionaryDataSourceBase();
  static const _path = 'dic_storage.db';
  DatabaseFactory get dbFactory;
  Database? _db;
  StoreRef<String, Map<String, Object?>> get _store => StoreRef.main();
  bool _isInitialized = false;
  Future<void> setupDb() async {
    if (_isInitialized) return;
    _isInitialized = true;
    _db = await dbFactory.openDatabase(_path);
  }

  Future<void> deleteDb() async {
    await dispose();
    await dbFactory.deleteDatabase(_path);
  }

  Future<void> cleanup() => dbFactory.deleteDatabase(_path);
  Future<void> dispose() async => _db?.close();
  Database get _eDb {
    if (_db == null) throw Exception('db not initialized');
    return _db!;
  }

  Future<void> writeWordsList<T>({
    required final String language,
    required final List<T> data,
    required final ({
      String word,
      String meaning,
    })?
            Function(T)
        converter,
  }) async =>
      _eDb.transaction(
        // ignore: avoid_function_literals_in_foreach_calls
        (final txn) async {
          final futures = <Future>{};
          for (final row in data) {
            final tuple = converter(row);
            if (tuple == null) return;
            final future = _store.record('$language:${tuple.word}').put(txn, {
              'language': language,
              'word': tuple.word,
              'meaning': tuple.meaning,
            });
            futures.add(future);
          }
          await Future.wait(futures);
        },
      );
  Future<void> writeWordsStream<T>({
    required final String language,
    required final Stream<T> Function() callback,
    required final ({
      String word,
      String meaning,
    })?
            Function(T)
        converter,
  }) async =>
      _eDb.transaction(
        (final txn) async => callback().forEach((final e) async {
          final tuple = converter(e);
          if (tuple == null) return;
          await _store.record('$language:${tuple.word}').put(txn, {
            'language': language,
            'word': tuple.word,
            'meaning': tuple.meaning,
          });
        }),
      );

  Future<void> writeWord(
    final WordMeaningTuple tuple, {
    required final String meaning,
  }) async {
    await _store.record(tuple._dbKey).put(_eDb, {
      'language': tuple.language,
      'word': tuple.word,
      'meaning': meaning,
    });
  }

  Future<String> getWordMeaning(final WordMeaningTuple tuple) async {
    final record = await _store.record(tuple._dbKey).get(_eDb);
    final meaning = record?['meaning'];
    return meaning == null || meaning is! String ? '' : meaning;
  }

  /// returns valid or not
  Future<bool> checkWord(final WordMeaningTuple tuple) async {
    final record = await _store.record(tuple._dbKey).get(_eDb);
    return record != null;
  }
}
