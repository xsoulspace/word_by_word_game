import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:universal_io/io.dart';
import 'package:xsoulspace_foundation/xsoulspace_foundation.dart'
    as xs_foundation;

const int _migrationStateVersion = 1;

/// {@template wbw_local_db}
/// Local DB bridge used by [`word_by_word_game`].
///
/// Supports two backends:
/// - legacy SharedPreferences
/// - file storage with per-key json files
/// and one-time migration between them.
/// {@endtemplate}
class PrefsDb implements xs_foundation.LocalDbI {
  PrefsDb({
    final String? backend,
    final bool? migrateFromAlternative,
    final String? fileDirectory,
    final String? fileNamespace,
  }) : _backendMode = backend ?? _backendModeEnv,
       _migrateFromAlternative = migrateFromAlternative ?? _migrationEnabledEnv,
       _fileDirectory = fileDirectory,
       _fileNamespace = fileNamespace ?? _defaultFileNamespace;

  static const String _backendModeEnv = String.fromEnvironment(
    'WBM_LOCAL_DB_BACKEND',
    defaultValue: 'auto',
  );

  static const bool _migrationEnabledEnv = bool.fromEnvironment(
    'WBM_LOCAL_DB_MIGRATE',
    defaultValue: true,
  );

  static const String _defaultFileNamespace = 'word_by_word_game';
  static const String _migrationStateKey = '__local_db_migration_state__';
  final String _backendMode;
  final bool _migrateFromAlternative;
  final String? _fileDirectory;
  final String? _fileNamespace;

  Future<void>? _initFuture;
  _StorageBackendKind? _activeBackendKind;
  _StorageBackend? _activeBackend;

  @override
  Future<void> init() async {
    if (_initFuture != null) return _initFuture!;

    _initFuture = Future<void>(() async {
      final requested = _resolveBackendKind();
      final active = await _initializeBackend(requested);
      _activeBackend = active;

      if (_migrateFromAlternative) {
        await _runMigration();
      }
    });

    try {
      return await _initFuture!;
    } catch (error) {
      _initFuture = null;
      if (kDebugMode) {
        debugPrint('Local DB init failed: $error');
      }
      rethrow;
    }
  }

  Future<_StorageBackend> _initializeBackend(
    final _StorageBackendKind requested,
  ) async {
    var backendKind = requested;
    if (backendKind == _StorageBackendKind.file && kIsWeb) {
      backendKind = _StorageBackendKind.prefs;
    }

    try {
      final candidate = await _buildBackend(backendKind);
      await candidate.init();
      _activeBackendKind = backendKind;
      return candidate;
    } catch (error) {
      if (backendKind != _StorageBackendKind.prefs) {
        if (kDebugMode) {
          debugPrint('Primary local db backend init failed: $error');
          debugPrint('Falling back to SharedPreferences backend.');
        }
        return _initializeBackend(_StorageBackendKind.prefs);
      }
      rethrow;
    }
  }

  Future<void> _runMigration() async {
    final activeKind = _activeBackendKind;
    final active = _activeBackend;
    if (activeKind == null || active == null) return;

    final sourceKind = activeKind == _StorageBackendKind.file
        ? _StorageBackendKind.prefs
        : _StorageBackendKind.file;

    final previousState = _MigrationState.fromString(
      await active.getString(key: _migrationStateKey),
    );
    if (previousState != null &&
        previousState.matches(activeKind, sourceKind) &&
        previousState.version == _migrationStateVersion) {
      return;
    }

    final source = await _initMigrationSource(sourceKind);
    if (source == null) return;

    for (final spec in _kMigrationSpecs) {
      if (await active.hasKey(spec.key)) continue;
      if (!await source.hasKey(spec.key)) continue;

      await _copyKnownKey(source: source, target: active, spec: spec);
    }

    await active.setString(
      key: _migrationStateKey,
      value: _MigrationState(
        version: _migrationStateVersion,
        activeBackend: activeKind,
        sourceBackend: sourceKind,
      ).toJsonString(),
    );
  }

  Future<_StorageBackend?> _initMigrationSource(
    final _StorageBackendKind kind,
  ) async {
    if (kind == _StorageBackendKind.file && kIsWeb) return null;

    try {
      final source = await _buildBackend(kind);
      await source.init();
      return source;
    } catch (_) {
      return null;
    }
  }

  Future<_StorageBackend> _buildBackend(final _StorageBackendKind kind) async {
    switch (kind) {
      case _StorageBackendKind.file:
        return _FileStorageBackend(
          namespace: _fileNamespace ?? _defaultFileNamespace,
          forcedDirectoryPath: _fileDirectory,
        );
      case _StorageBackendKind.prefs:
        return _PrefsStorageBackend();
    }
  }

  _StorageBackendKind _resolveBackendKind() {
    final mode = _backendMode.toLowerCase();
    if (mode == 'prefs') return _StorageBackendKind.prefs;
    if (mode == 'file') return _StorageBackendKind.file;
    return kIsWeb ? _StorageBackendKind.prefs : _StorageBackendKind.file;
  }

  Future<void> _copyKnownKey({
    required final _StorageBackend source,
    required final _StorageBackend target,
    required final _MigrationSpec spec,
  }) async {
    switch (spec.valueKind) {
      case _LegacyValueKind.bool:
        await target.setBool(
          key: spec.key,
          value: await source.getBool(key: spec.key),
        );
      case _LegacyValueKind.int:
        await target.setInt(
          key: spec.key,
          value: await source.getInt(key: spec.key),
        );
      case _LegacyValueKind.string:
        await target.setString(
          key: spec.key,
          value: await source.getString(key: spec.key),
        );
      case _LegacyValueKind.stringList:
        await target.setStringList(
          key: spec.key,
          value: await source
              .getStringsIterable(key: spec.key)
              .then((final iterable) => List<String>.from(iterable)),
        );
      case _LegacyValueKind.map:
        await target.setMap(
          key: spec.key,
          value: await source.getMap(spec.key),
        );
      case _LegacyValueKind.mapList:
        await target.setMapList(
          key: spec.key,
          value: await source
              .getMapIterable(key: spec.key)
              .then(
                (final iterable) => List<Map<String, dynamic>>.from(iterable),
              ),
        );
    }
  }

  _StorageBackend get _engine {
    final backend = _activeBackend;
    if (backend == null) {
      throw StateError('Local DB not initialized. Call init() before use.');
    }
    return backend;
  }

  @override
  Future<void> clear() => _engine.clear();

  @override
  Future<void> clearKey({required final String key}) =>
      _engine.clearKey(key: key);

  @override
  Future<Map<String, dynamic>> getMap(final String key) => _engine.getMap(key);

  @override
  Future<void> setMap({
    required final String key,
    required final Map<String, dynamic> value,
  }) => _engine.setMap(key: key, value: value);

  @override
  Future<String> getString({
    required final String key,
    final String defaultValue = '',
  }) => _engine.getString(key: key, defaultValue: defaultValue);

  @override
  Future<void> setString({
    required final String key,
    required final String value,
  }) => _engine.setString(key: key, value: value);

  @override
  Future<bool> getBool({
    required final String key,
    final bool defaultValue = false,
  }) => _engine.getBool(key: key, defaultValue: defaultValue);

  @override
  Future<void> setBool({
    required final String key,
    required final bool value,
  }) => _engine.setBool(key: key, value: value);

  @override
  Future<int> getInt({required final String key, final int defaultValue = 0}) =>
      _engine.getInt(key: key, defaultValue: defaultValue);

  @override
  Future<void> setInt({required final String key, final int value = 0}) =>
      _engine.setInt(key: key, value: value);

  @override
  Future<Iterable<Map<String, dynamic>>> getMapIterable({
    required final String key,
    final List<Map<String, dynamic>> defaultValue = const [],
  }) => _engine.getMapIterable(key: key, defaultValue: defaultValue);

  @override
  Future<void> setMapList({
    required final String key,
    required final List<Map<String, dynamic>> value,
  }) => _engine.setMapList(key: key, value: value);

  @override
  Future<Iterable<String>> getStringsIterable({
    required final String key,
    final List<String> defaultValue = const [],
  }) => _engine.getStringsIterable(key: key, defaultValue: defaultValue);

  @override
  Future<void> setStringList({
    required final String key,
    required final List<String> value,
  }) => _engine.setStringList(key: key, value: value);

  @override
  Future<T> getItem<T>({
    required final String key,
    required final T? Function(Map<String, dynamic>) fromJson,
    required final T defaultValue,
  }) =>
      _engine.getItem(key: key, fromJson: fromJson, defaultValue: defaultValue);

  @override
  Future<void> setItem<T>({
    required final String key,
    required final T value,
    required final Map<String, dynamic> Function(T) toJson,
  }) => _engine.setItem(key: key, value: value, toJson: toJson);

  @override
  Future<Iterable<T>> getItemsIterable<T>({
    required final String key,
    required final T Function(Map<String, dynamic>) fromJson,
    final List<T> defaultValue = const [],
  }) => _engine.getItemsIterable(
    key: key,
    fromJson: fromJson,
    defaultValue: defaultValue,
  );

  @override
  Future<void> setItemsList<T>({
    required final String key,
    required final List<T> value,
    required final Map<String, dynamic> Function(T) toJson,
  }) => _engine.setItemsList(key: key, value: value, toJson: toJson);
}

enum _StorageBackendKind { prefs, file }

enum _LegacyValueKind { bool, int, string, stringList, map, mapList }

class _MigrationSpec {
  const _MigrationSpec(this.key, this.valueKind);

  final String key;
  final _LegacyValueKind valueKind;
}

const List<_MigrationSpec> _kMigrationSpecs = <_MigrationSpec>[
  _MigrationSpec('game_save', _LegacyValueKind.map),
  _MigrationSpec('localdictionary', _LegacyValueKind.stringList),
  _MigrationSpec('template_levels', _LegacyValueKind.map),
  _MigrationSpec('settings_locale', _LegacyValueKind.string),
  _MigrationSpec('settings_brightness', _LegacyValueKind.string),
];

class _MigrationState {
  const _MigrationState({
    required this.version,
    required this.activeBackend,
    required this.sourceBackend,
  });

  final int version;
  final _StorageBackendKind activeBackend;
  final _StorageBackendKind sourceBackend;

  bool matches(
    final _StorageBackendKind active,
    final _StorageBackendKind source,
  ) =>
      version == _migrationStateVersion &&
      activeBackend == active &&
      sourceBackend == source;

  String toJsonString() => jsonEncode(<String, String>{
    'v': version.toString(),
    'active': activeBackend.name,
    'source': sourceBackend.name,
  });

  static _MigrationState? fromString(final String raw) {
    if (raw.isEmpty) return null;
    try {
      final decoded = jsonDecode(raw) as Map<String, dynamic>;
      final versionValue = int.tryParse(decoded['v'].toString());
      if (versionValue == null) return null;
      return _MigrationState(
        version: versionValue,
        activeBackend: decoded['active'] == _StorageBackendKind.file.name
            ? _StorageBackendKind.file
            : _StorageBackendKind.prefs,
        sourceBackend: decoded['source'] == _StorageBackendKind.file.name
            ? _StorageBackendKind.file
            : _StorageBackendKind.prefs,
      );
    } catch (_) {
      return null;
    }
  }
}

abstract interface class _StorageBackend implements xs_foundation.LocalDbI {
  Future<bool> hasKey(final String key);
  Future<void> clear();
  Future<void> clearKey({required String key});
}

class _PrefsStorageBackend implements _StorageBackend {
  final xs_foundation.PrefsDb _prefs = xs_foundation.PrefsDb();

  @override
  Future<void> init() => _prefs.init();

  @override
  Future<bool> hasKey(final String key) async {
    try {
      return _prefs.prefs.getKeys().contains(key);
    } catch (_) {
      return false;
    }
  }

  @override
  Future<void> clear() async {
    final keys = _prefs.prefs.getKeys().toList();
    for (final key in keys) {
      await _prefs.prefs.remove(key);
    }
  }

  @override
  Future<void> clearKey({required final String key}) async {
    await _prefs.prefs.remove(key);
  }

  @override
  Future<Map<String, dynamic>> getMap(final String key) => _prefs.getMap(key);

  @override
  Future<void> setMap({
    required final String key,
    required final Map<String, dynamic> value,
  }) => _prefs.setMap(key: key, value: value);

  @override
  Future<String> getString({
    required final String key,
    final String defaultValue = '',
  }) => _prefs.getString(key: key, defaultValue: defaultValue);

  @override
  Future<void> setString({
    required final String key,
    required final String value,
  }) => _prefs.setString(key: key, value: value);

  @override
  Future<bool> getBool({
    required final String key,
    final bool defaultValue = false,
  }) => _prefs.getBool(key: key, defaultValue: defaultValue);

  @override
  Future<void> setBool({
    required final String key,
    required final bool value,
  }) => _prefs.setBool(key: key, value: value);

  @override
  Future<int> getInt({required final String key, final int defaultValue = 0}) =>
      _prefs.getInt(key: key, defaultValue: defaultValue);

  @override
  Future<void> setInt({required final String key, final int value = 0}) =>
      _prefs.setInt(key: key, value: value);

  @override
  Future<Iterable<Map<String, dynamic>>> getMapIterable({
    required final String key,
    final List<Map<String, dynamic>> defaultValue = const [],
  }) => _prefs.getMapIterable(key: key, defaultValue: defaultValue);

  @override
  Future<void> setMapList({
    required final String key,
    required final List<Map<String, dynamic>> value,
  }) => _prefs.setMapList(key: key, value: value);

  @override
  Future<Iterable<String>> getStringsIterable({
    required final String key,
    final List<String> defaultValue = const [],
  }) => _prefs.getStringsIterable(key: key, defaultValue: defaultValue);

  @override
  Future<void> setStringList({
    required final String key,
    required final List<String> value,
  }) => _prefs.setStringList(key: key, value: value);

  @override
  Future<T> getItem<T>({
    required final String key,
    required final T? Function(Map<String, dynamic>) fromJson,
    required final T defaultValue,
  }) =>
      _prefs.getItem(key: key, fromJson: fromJson, defaultValue: defaultValue);

  @override
  Future<void> setItem<T>({
    required final String key,
    required final T value,
    required final Map<String, dynamic> Function(T) toJson,
  }) => _prefs.setItem(key: key, value: value, toJson: toJson);

  @override
  Future<Iterable<T>> getItemsIterable<T>({
    required final String key,
    required final T Function(Map<String, dynamic>) fromJson,
    final List<T> defaultValue = const [],
  }) => _prefs.getItemsIterable(
    key: key,
    fromJson: fromJson,
    defaultValue: defaultValue,
  );

  @override
  Future<void> setItemsList<T>({
    required final String key,
    required final List<T> value,
    required final Map<String, dynamic> Function(T) toJson,
  }) => _prefs.setItemsList(key: key, value: value, toJson: toJson);
}

class _FileStorageBackend implements _StorageBackend {
  _FileStorageBackend({
    required final String namespace,
    final String? forcedDirectoryPath,
  }) : _namespace = namespace,
       _forcedDirectoryPath = forcedDirectoryPath;

  static const String _baseDir = 'storage';

  final String _namespace;
  final String? _forcedDirectoryPath;
  Directory? _rootDirectory;

  @override
  Future<void> init() async {
    if (_rootDirectory != null) return;
    if (kIsWeb) {
      throw UnsupportedError('FileStorageBackend does not support web.');
    }

    final root = await _resolveRootDirectory();
    await root.create(recursive: true);
    _rootDirectory = root;
  }

  Future<Directory> _resolveRootDirectory() async {
    final overridePath = _forcedDirectoryPath;
    if (overridePath != null && overridePath.isNotEmpty) {
      return Directory(overridePath);
    }

    try {
      final appSupportDirectory = await getApplicationSupportDirectory();
      return Directory(
        p.join(appSupportDirectory.path, _baseDir, _namespace, 'local_db'),
      );
    } catch (_) {
      return Directory(
        p.join(Directory.systemTemp.path, _baseDir, _namespace, 'local_db'),
      );
    }
  }

  Directory get _baseDirectory {
    final directory = _rootDirectory;
    if (directory == null) {
      throw StateError('File storage backend not initialized');
    }
    return directory;
  }

  @override
  Future<bool> hasKey(final String key) async {
    for (final type in _FileValueType.values) {
      if (await _fileFor(key, type).exists()) return true;
    }
    return false;
  }

  @override
  Future<void> clear() async {
    await for (final entity in _baseDirectory.list(recursive: false)) {
      if (entity is File) {
        try {
          await entity.delete();
        } catch (_) {}
      }
    }
  }

  @override
  Future<void> clearKey({required final String key}) async {
    for (final type in _FileValueType.values) {
      final file = _fileFor(key, type);
      if (await file.exists()) {
        try {
          await file.delete();
        } catch (_) {}
      }
    }
  }

  @override
  Future<Map<String, dynamic>> getMap(final String key) async {
    final raw = await _readRawContent(key, _FileValueType.map);
    if (raw == null || raw.isEmpty) return <String, dynamic>{};

    final decoded = jsonDecode(raw);
    if (decoded is Map<String, dynamic>) return decoded;
    if (decoded is Map) return Map<String, dynamic>.from(decoded);
    return <String, dynamic>{};
  }

  @override
  Future<void> setMap({
    required final String key,
    required final Map<String, dynamic> value,
  }) => _writeRawContent(
    key: key,
    type: _FileValueType.map,
    content: jsonEncode(value),
  );

  @override
  Future<String> getString({
    required final String key,
    final String defaultValue = '',
  }) async {
    final raw = await _readRawContent(key, _FileValueType.string);
    return raw ?? defaultValue;
  }

  @override
  Future<void> setString({
    required final String key,
    required final String value,
  }) => _writeRawContent(key: key, type: _FileValueType.string, content: value);

  @override
  Future<bool> getBool({
    required final String key,
    final bool defaultValue = false,
  }) async {
    final raw = await _readRawContent(key, _FileValueType.boolean);
    if (raw == null) return defaultValue;
    if (raw == 'true') return true;
    if (raw == 'false') return false;
    return defaultValue;
  }

  @override
  Future<void> setBool({
    required final String key,
    required final bool value,
  }) => _writeRawContent(
    key: key,
    type: _FileValueType.boolean,
    content: value.toString(),
  );

  @override
  Future<int> getInt({
    required final String key,
    final int defaultValue = 0,
  }) async {
    final raw = await _readRawContent(key, _FileValueType.integer);
    if (raw == null) return defaultValue;
    return int.tryParse(raw) ?? defaultValue;
  }

  @override
  Future<void> setInt({required final String key, final int value = 0}) =>
      _writeRawContent(
        key: key,
        type: _FileValueType.integer,
        content: value.toString(),
      );

  @override
  Future<Iterable<Map<String, dynamic>>> getMapIterable({
    required final String key,
    final List<Map<String, dynamic>> defaultValue = const [],
  }) async {
    final raw = await _readRawContent(key, _FileValueType.mapList);
    if (raw == null || raw.isEmpty) return defaultValue;

    final decoded = jsonDecode(raw);
    if (decoded is! List) return defaultValue;
    return decoded.whereType<Map<String, dynamic>>();
  }

  @override
  Future<void> setMapList({
    required final String key,
    required final List<Map<String, dynamic>> value,
  }) => _writeRawContent(
    key: key,
    type: _FileValueType.mapList,
    content: jsonEncode(value),
  );

  @override
  Future<Iterable<String>> getStringsIterable({
    required final String key,
    final List<String> defaultValue = const [],
  }) async {
    final raw = await _readRawContent(key, _FileValueType.stringList);
    if (raw == null || raw.isEmpty) return defaultValue;

    final decoded = jsonDecode(raw);
    if (decoded is! List) return defaultValue;
    return decoded.whereType<String>();
  }

  @override
  Future<void> setStringList({
    required final String key,
    required final List<String> value,
  }) => _writeRawContent(
    key: key,
    type: _FileValueType.stringList,
    content: jsonEncode(value),
  );

  @override
  Future<T> getItem<T>({
    required final String key,
    required final T? Function(Map<String, dynamic>) fromJson,
    required final T defaultValue,
  }) async {
    final map = await getMap(key);
    if (map.isEmpty) return defaultValue;
    return fromJson(map) ?? defaultValue;
  }

  @override
  Future<void> setItem<T>({
    required final String key,
    required final T value,
    required final Map<String, dynamic> Function(T) toJson,
  }) => setMap(key: key, value: toJson(value));

  @override
  Future<Iterable<T>> getItemsIterable<T>({
    required final String key,
    required final T Function(Map<String, dynamic>) fromJson,
    final List<T> defaultValue = const [],
  }) async {
    final values = await getMapIterable(key: key, defaultValue: const []);
    if (values.isEmpty) return defaultValue;
    return values.map(fromJson);
  }

  @override
  Future<void> setItemsList<T>({
    required final String key,
    required final List<T> value,
    required final Map<String, dynamic> Function(T) toJson,
  }) => setMapList(key: key, value: value.map(toJson).toList());

  Future<String?> _readRawContent(
    final String key,
    final _FileValueType type,
  ) async {
    final file = _fileFor(key, type);
    if (!await file.exists()) return null;
    try {
      return await file.readAsString();
    } catch (_) {
      return null;
    }
  }

  Future<void> _writeRawContent({
    required final String key,
    required final _FileValueType type,
    required final String content,
  }) async {
    final file = _fileFor(key, type);
    await file.writeAsString(content);
  }

  File _fileFor(final String key, final _FileValueType type) {
    final normalized = base64UrlEncode(utf8.encode(key)).replaceAll('=', '');
    final fileName = '${normalized}_${type.name}.json';
    return File(p.join(_baseDirectory.path, fileName));
  }
}

enum _FileValueType { boolean, integer, string, map, mapList, stringList }
