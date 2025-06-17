import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:xsoulspace_foundation/xsoulspace_foundation.dart';

import '../../data_models/data_models.dart';
import '../../gen/assets.gen.dart';
import '../interfaces/interfaces.dart';

class UserWordsLocalDataSourceImpl implements UserWordsLocalDataSource {
  UserWordsLocalDataSourceImpl({
    required this.localDb,
    required this.assetBundle,
  });

  final LocalDbI localDb;
  final AssetBundle assetBundle;
  static const _persistenceKey = 'localdictionary';
  @override
  Future<WordsType> loadUserWords() async {
    /// old implementation
    dynamic json;
    try {
      json = await localDb.getMap(_persistenceKey);
      // ignore: avoid_catches_without_on_clauses, empty_catches
    } catch (e) {}

    /// new implementation
    if (json == null) {
      try {
        json = await localDb.getStringsIterable(key: _persistenceKey);
        // ignore: avoid_catches_without_on_clauses, empty_catches
      } catch (e) {}
    }

    if (json == null) return const WordsType({});
    try {
      return switch (json) {
        {'words': final Set<String> words} => WordsType(words),
        final List<String> words => WordsType(words.toSet()),
        _ => const WordsType({}),
      };
      // ignore: avoid_catches_without_on_clauses
    } catch (e, st) {
      if (kDebugMode) print({e, st});
      return const WordsType({});
    }
  }

  @override
  Future<void> saveUserWords(final WordsType words) async =>
      localDb.setStringList(key: _persistenceKey, value: words.words.toList());

  Set<String> _profanities = {};
  @override
  Future<void> preloadProfanities() async {
    final values = await assetBundle.loadStructuredData<Set<String>>(
      Assets.dictionaries.wrongWords,
      (final value) async => compute((final v) {
        final list = List.castFrom<dynamic, String>(jsonDecode(v));
        return list.toSet();
      }, value),
    );
    _profanities = values;
  }

  @override
  Future<bool> verifyNonProfanityWord(final String word) async {
    final isWrong = _profanities.contains(word.toLowerCase());
    return !isWrong;
  }
}
