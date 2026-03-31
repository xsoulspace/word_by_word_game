import 'package:flutter_test/flutter_test.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:xsoulspace_foundation/xsoulspace_foundation.dart' show LocalDbI;

void main() {
  group('GameLocalDataSourceImpl', () {
    late _InMemoryLocalDb localDb;

    setUp(() async {
      localDb = _InMemoryLocalDb();
      await localDb.init();
    });

    test('persists and loads game save via save store', () async {
      const savePath = 'saves/active_game.json';
      final saveStore = _InMemoryGameSaveStore();
      final dataSource = GameLocalDataSourceImpl(
        localDb: localDb,
        saveStore: saveStore,
        savePath: savePath,
      );
      final game = _sampleGameSave();

      await dataSource.saveGame(game: game);

      expect(await localDb.getMap('game_save'), isEmpty);
      expect(await saveStore.readSave(path: savePath), isNotNull);

      final loaded = await dataSource.loadGame();
      expect(loaded, isNotNull);
      expect(loaded?.id, game.id);
      expect(loaded?.currentLevelId, game.currentLevelId);
    });

    test('migrates legacy game_save map and clears legacy key', () async {
      const savePath = 'saves/migrated_game.json';
      final saveStore = _InMemoryGameSaveStore();
      final game = _sampleGameSave();
      await localDb.setMap(key: 'game_save', value: game.toJson());

      final dataSource = GameLocalDataSourceImpl(
        localDb: localDb,
        saveStore: saveStore,
        savePath: savePath,
      );

      final loaded = await dataSource.loadGame();
      expect(loaded, isNotNull);
      expect(loaded?.id, game.id);

      expect(await localDb.getMap('game_save'), isEmpty);
      expect(await saveStore.readSave(path: savePath), isNotNull);
    });

    test('propagates store read/write failures', () async {
      final writeFailingStore = _InMemoryGameSaveStore(throwOnWrite: true);
      final writeSource = GameLocalDataSourceImpl(
        localDb: localDb,
        saveStore: writeFailingStore,
        savePath: 'saves/write_failure.json',
      );
      await expectLater(
        () => writeSource.saveGame(game: _sampleGameSave()),
        throwsStateError,
      );

      final readFailingStore = _InMemoryGameSaveStore(throwOnRead: true);
      final readSource = GameLocalDataSourceImpl(
        localDb: localDb,
        saveStore: readFailingStore,
        savePath: 'saves/read_failure.json',
      );
      await expectLater(readSource.loadGame, throwsStateError);
    });
  });
}

GameSaveModel _sampleGameSave() => GameSaveModel.fromJson(
  const <String, dynamic>{'id': 'game', 'currentLevelId': ''},
);

final class _InMemoryGameSaveStore implements GameSaveStore {
  _InMemoryGameSaveStore({this.throwOnRead = false, this.throwOnWrite = false});

  final bool throwOnRead;
  final bool throwOnWrite;
  final Map<String, String> _storage = <String, String>{};

  @override
  Future<String?> readSave({required final String path}) async {
    if (throwOnRead) {
      throw StateError('read failed');
    }
    return _storage[path];
  }

  @override
  Future<void> writeSave({
    required final String path,
    required final String content,
  }) async {
    if (throwOnWrite) {
      throw StateError('write failed');
    }
    _storage[path] = content;
  }
}

final class _InMemoryLocalDb implements LocalDbI {
  final Map<String, Object?> _store = <String, Object?>{};

  @override
  Future<void> init() async {}

  @override
  Future<void> setMap({
    required final String key,
    required final Map<String, dynamic> value,
  }) async {
    _store[key] = Map<String, dynamic>.from(value);
  }

  @override
  Future<Map<String, dynamic>> getMap(final String key) async {
    final value = _store[key];
    if (value is Map<String, dynamic>) {
      return Map<String, dynamic>.from(value);
    }
    if (value is Map) {
      return Map<String, dynamic>.from(value);
    }
    return <String, dynamic>{};
  }

  @override
  Future<void> setString({
    required final String key,
    required final String value,
  }) async {
    _store[key] = value;
  }

  @override
  Future<String> getString({
    required final String key,
    final String defaultValue = '',
  }) async {
    final value = _store[key];
    return value is String ? value : defaultValue;
  }

  @override
  Future<void> setBool({
    required final String key,
    required final bool value,
  }) async {
    _store[key] = value;
  }

  @override
  Future<bool> getBool({
    required final String key,
    final bool defaultValue = false,
  }) async {
    final value = _store[key];
    return value is bool ? value : defaultValue;
  }

  @override
  Future<void> setInt({required final String key, final int value = 0}) async {
    _store[key] = value;
  }

  @override
  Future<int> getInt({
    required final String key,
    final int defaultValue = 0,
  }) async {
    final value = _store[key];
    return value is int ? value : defaultValue;
  }

  @override
  Future<void> setItem<T>({
    required final String key,
    required final T value,
    required final Map<String, dynamic> Function(T) toJson,
  }) async {
    _store[key] = toJson(value);
  }

  @override
  Future<T> getItem<T>({
    required final String key,
    required final T? Function(Map<String, dynamic>) fromJson,
    required final T defaultValue,
  }) async {
    final map = await getMap(key);
    return fromJson(map) ?? defaultValue;
  }

  @override
  Future<void> setItemsList<T>({
    required final String key,
    required final List<T> value,
    required final Map<String, dynamic> Function(T) toJson,
  }) async {
    _store[key] = value.map(toJson).toList(growable: false);
  }

  @override
  Future<Iterable<T>> getItemsIterable<T>({
    required final String key,
    required final T Function(Map<String, dynamic>) fromJson,
    final List<T> defaultValue = const [],
  }) async {
    final value = _store[key];
    if (value is! List) return defaultValue;
    final result = <T>[];
    for (final rawItem in value) {
      if (rawItem is Map) {
        result.add(fromJson(Map<String, dynamic>.from(rawItem)));
      }
    }
    return result;
  }

  @override
  Future<void> setMapList({
    required final String key,
    required final List<Map<String, dynamic>> value,
  }) async {
    _store[key] = value.map(Map<String, dynamic>.from).toList(growable: false);
  }

  @override
  Future<Iterable<Map<String, dynamic>>> getMapIterable({
    required final String key,
    final List<Map<String, dynamic>> defaultValue = const [],
  }) async {
    final value = _store[key];
    if (value is! List) return defaultValue;
    final result = <Map<String, dynamic>>[];
    for (final rawItem in value) {
      if (rawItem is Map) {
        result.add(Map<String, dynamic>.from(rawItem));
      }
    }
    return result;
  }

  @override
  Future<void> setStringList({
    required final String key,
    required final List<String> value,
  }) async {
    _store[key] = List<String>.from(value);
  }

  @override
  Future<Iterable<String>> getStringsIterable({
    required final String key,
    final List<String> defaultValue = const [],
  }) async {
    final value = _store[key];
    if (value is List<String>) return List<String>.from(value);
    if (value is List) return value.whereType<String>().toList(growable: false);
    return defaultValue;
  }

  @override
  Future<void> clear() async {
    _store.clear();
  }

  @override
  Future<void> clearAll() async {
    _store.clear();
  }

  @override
  Future<void> clearKey({required final String key}) async {
    _store.remove(key);
  }
}
