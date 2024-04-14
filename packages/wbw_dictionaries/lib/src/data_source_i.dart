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
  StoreRef<String, Map<String, String>> get _store => StoreRef.main();

  Future<void> onLoad() async {
    _db = await dbFactory.openDatabase(_path);
  }

  Future<void> cleanup() => dbFactory.deleteDatabase(_path);
  Future<void> dispose() => _db.close();
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
    return record?['meaning'] ?? '';
  }

  /// returns valid or not
  Future<bool> checkWord(final WordMeaningTuple tuple) async {
    final record = await _store.record(tuple._dbKey).get(_db);
    return record != null;
  }
}
