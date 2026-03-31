import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:universal_storage_sync/universal_storage_sync.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/di/kernel_game_save_store.dart';
import 'package:word_by_word_game/pack_core/di/storage_kernel_bootstrap.dart';
import 'package:xsoulspace_foundation/xsoulspace_foundation.dart';

void main() {
  group('Word by Word game save migration', () {
    test('migrates legacy game_save key into kernel saves namespace', () async {
      final tempDir = await Directory.systemTemp.createTemp(
        'wbw_game_save_kernel_migration_',
      );
      addTearDown(() => tempDir.delete(recursive: true));

      final bootstrap = WordByWordStorageKernelBootstrap(
        storageRootPath: tempDir.path,
      );
      final initialized = await bootstrap.initialize();
      expect(initialized, isTrue);

      final kernel = bootstrap.kernel;
      expect(kernel, isNotNull);
      if (kernel == null) {
        fail('Expected kernel after WordByWordStorageKernelBootstrap init');
      }

      final localDb = _InMemoryLocalDb();
      await localDb.init();

      final legacySave = _sampleGameSave();
      await localDb.setMap(key: 'game_save', value: legacySave.toJson());

      final repository = GameRespository(
        localDb: localDb,
        saveStore: KernelGameSaveStore(storageKernel: kernel),
        savePath: 'active_game.json',
      );

      final loaded = await repository.loadGame();
      expect(loaded, isNotNull);
      expect(loaded?.id, legacySave.id);
      expect(await localDb.getMap('game_save'), isEmpty);

      final raw = await kernel.read(
        namespace: StorageNamespace.saves,
        path: 'active_game.json',
      );
      expect(raw, isNotNull);
      expect(raw, contains('"id":"game"'));
    });
  });
}

GameSaveModel _sampleGameSave() => GameSaveModel.fromJson(
  const <String, dynamic>{'id': 'game', 'currentLevelId': ''},
);

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
    if (value is List<String>) {
      return List<String>.from(value);
    }
    if (value is List) {
      return value.whereType<String>().toList(growable: false);
    }
    return defaultValue;
  }
}
