import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:from_json_to_json/from_json_to_json.dart';
import 'package:is_dart_empty_or_not/is_dart_empty_or_not.dart';
import 'package:xsoulspace_foundation/xsoulspace_foundation.dart' show LocalDbI;

import '../../data_models/data_models.dart';
import '../interfaces/interfaces.dart';

abstract interface class GameSaveStore {
  Future<String?> readSave({required final String path});
  Future<void> writeSave({
    required final String path,
    required final String content,
  });
}

class GameLocalDataSourceImpl implements GameLocalDataSource {
  GameLocalDataSourceImpl({
    required this.localDb,
    required final GameSaveStore saveStore,
    final String savePath = _defaultSavePath,
    final String persistenceKey = _defaultPersistenceKey,
  }) : _savePersistence = _GameSavePersistenceBridge(
         localDb: localDb,
         saveStore: saveStore,
         savePath: savePath,
         persistenceKey: persistenceKey,
       );

  final LocalDbI localDb;
  final _GameSavePersistenceBridge _savePersistence;
  static const _defaultPersistenceKey = 'game_save';
  static const _defaultSavePath = 'game_save_v1.json';

  @override
  Future<void> saveGame({required final GameSaveModel game}) async {
    await _savePersistence.save(game.toJson());
  }

  // https://isar.dev/recipes/data_migration.html
  @override
  Future<GameSaveModel?> loadGame() async {
    final jsonMap = await _savePersistence.load();
    if (jsonMap.isEmpty) {
      return null;
    }
    try {
      return GameSaveModel.fromJson(jsonMap);
      // TODO(arenukvern): add correct exception
    } on Object catch (e) {
      // TODO(arenukvern): replace with analytics service
      if (kDebugMode) print(e);

      return null;
    }
  }
}

final class _GameSavePersistenceBridge {
  _GameSavePersistenceBridge({
    required final LocalDbI localDb,
    required final GameSaveStore saveStore,
    required final String savePath,
    required final String persistenceKey,
  }) : _localDb = localDb,
       _saveStore = saveStore,
       _savePath = savePath,
       _persistenceKey = persistenceKey;

  final LocalDbI _localDb;
  final GameSaveStore _saveStore;
  final String _savePath;
  final String _persistenceKey;

  Future<void>? _migrationFuture;

  Future<Map<String, dynamic>> load() async {
    await _ensureMigrationChecked();
    return _readSaveStoreMap();
  }

  Future<void> save(final Map<String, dynamic> map) async {
    await _writeSaveStoreMap(map);
    await _clearLegacyMap();
  }

  Future<void> _ensureMigrationChecked() =>
      _migrationFuture ??= _migrateLegacyIfNeeded();

  Future<void> _migrateLegacyIfNeeded() async {
    final legacyMap = await _readLegacyMap();
    if (legacyMap.isEmpty) {
      return;
    }

    final storeMap = await _readSaveStoreMap();
    if (storeMap.isNotEmpty) {
      await _clearLegacyMap();
      return;
    }

    await _writeSaveStoreMap(legacyMap);
    await _clearLegacyMap();
  }

  Future<Map<String, dynamic>> _readSaveStoreMap() async {
    final raw = await _saveStore.readSave(path: _savePath);
    if (raw == null || raw.trim().isEmpty) {
      return const <String, dynamic>{};
    }

    return jsonDecodeMap(raw).whenEmptyUse(const <String, dynamic>{});
  }

  Future<void> _writeSaveStoreMap(final Map<String, dynamic> map) async {
    await _saveStore.writeSave(path: _savePath, content: jsonEncode(map));
  }

  Future<Map<String, dynamic>> _readLegacyMap() =>
      _localDb.getMap(_persistenceKey);

  Future<void> _clearLegacyMap() =>
      _localDb.setMap(key: _persistenceKey, value: const <String, dynamic>{});
}
