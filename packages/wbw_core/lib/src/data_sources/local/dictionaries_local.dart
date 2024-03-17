import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

import '../../data_models/data_models.dart';
import '../../gen/assets.gen.dart';
import '../interfaces/interfaces.dart';

class DictionariesLocalDataSourceImpl implements DictionariesLocalDataSource {
  DictionariesLocalDataSourceImpl({
    required this.localDb,
    required this.assetBundle,
  });

  final LocalDbDataSource localDb;
  final AssetBundle assetBundle;
  static const _persistenceKey = 'localdictionary';
  @override
  Future<LocalDictionaryModel> loadDictionary() async {
    final jsonMap = await localDb.getMap(_persistenceKey);
    if (jsonMap.isEmpty) return const LocalDictionaryModel();
    try {
      return LocalDictionaryModel.fromJson(jsonMap);
      // ignore: avoid_catches_without_on_clauses
    } catch (e, st) {
      if (kDebugMode) print({e, st});
      return const LocalDictionaryModel();
    }
  }

  @override
  Future<void> saveDictionary({
    required final LocalDictionaryModel dictionary,
  }) async =>
      localDb.setMap(key: _persistenceKey, value: dictionary.toJson());

  Map<String, bool> _wrongWords = <String, bool>{};
  @override
  Future<void> preloadWrongWordsDictionary() async {
    final values = await assetBundle.loadStructuredData<Map<String, bool>>(
      Assets.dictionaries.wrongWords,
      (final value) async => compute(
        (final v) {
          final list = jsonDecode(v) as List<String>;
          return Map.fromEntries(list.map((final e) => MapEntry(e, true)));
        },
        value,
      ),
    );
    _wrongWords = values;
  }

  @override
  Future<bool> verifyWord(final String word) async =>
      _wrongWords.containsKey(word);
}
