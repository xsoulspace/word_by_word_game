import 'package:sembast/sembast.dart';

typedef WordMeaningTuple = ({String language, String word});

extension WordMeaningTupleExt on WordMeaningTuple {
  String get _dbKey => '$language:$word';
}

abstract base class WbwDictionaryDataSourceBase {
  WbwDictionaryDataSourceBase();
  static const _path = 'dic_storage.db';
  DatabaseFactory get dbFactory;
  late final Database _db;
  StoreRef<String, Map<String, Object?>> get _store => StoreRef.main();

  Future<void> setupDb() async {
    _db = await dbFactory.openDatabase(_path);
  }

  Future<void> cleanup() => dbFactory.deleteDatabase(_path);
  Future<void> dispose() => _db.close();

  Future<void> writeWords<T>({
    required final String language,
    required final Stream<T> Function() callback,
    required final ({
      String word,
      String meaning,
    })?
            Function(T)
        converter,
  }) async =>
      _db.transaction(
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
    await _store.record(tuple._dbKey).put(_db, {
      'language': tuple.language,
      'word': tuple.word,
      'meaning': meaning,
    });
  }

  Future<String> getWordMeaning(final WordMeaningTuple tuple) async {
    final record = await _store.record(tuple._dbKey).get(_db);
    final meaning = record?['meaning'];
    return meaning == null || meaning is! String ? '' : meaning;
  }

  /// returns valid or not
  Future<bool> checkWord(final WordMeaningTuple tuple) async {
    final record = await _store.record(tuple._dbKey).get(_db);
    return record != null;
  }
}
