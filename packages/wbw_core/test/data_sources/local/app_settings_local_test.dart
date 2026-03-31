import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:xsoulspace_foundation/xsoulspace_foundation.dart' show LocalDbI;

void main() {
  group('AppSettingsLocalDataSourceImpl', () {
    late _InMemoryLocalDb localDb;

    setUpAll(() {
      LocalizationConfig.initialize(
        LocalizationConfig(
          supportedLanguages: uiLanguages.all,
          fallbackLanguage: uiLanguages.en,
        ),
      );
    });

    setUp(() async {
      localDb = _InMemoryLocalDb();
      await localDb.init();
    });

    test('persists and loads settings via settings store', () async {
      const settingsPath = 'settings/app_settings.json';
      final settingsStore = _InMemoryAppSettingsStore();
      final dataSource = AppSettingsLocalDataSourceImpl(
        localDb: localDb,
        settingsStore: settingsStore,
        settingsPath: settingsPath,
      );

      await dataSource.setLocale(const Locale('it'));
      await dataSource.setBrightness(BrightnessMode.dark);

      expect(await localDb.getString(key: 'settings_locale'), isEmpty);
      expect(await localDb.getString(key: 'settings_brightness'), isEmpty);
      expect(await settingsStore.readSettings(path: settingsPath), isNotNull);

      final locale = await dataSource.getLocale();
      final brightness = await dataSource.getBrightness();
      expect(locale?.languageCode, 'it');
      expect(brightness, BrightnessMode.dark);
    });

    test('migrates legacy settings keys into store and clears legacy keys',
        () async {
      const settingsPath = 'settings/migrated_app_settings.json';
      final settingsStore = _InMemoryAppSettingsStore();
      await localDb.setString(key: 'settings_locale', value: 'ru');
      await localDb.setString(key: 'settings_brightness', value: 'light');

      final dataSource = AppSettingsLocalDataSourceImpl(
        localDb: localDb,
        settingsStore: settingsStore,
        settingsPath: settingsPath,
      );

      final locale = await dataSource.getLocale();
      final brightness = await dataSource.getBrightness();
      expect(locale?.languageCode, 'ru');
      expect(brightness, BrightnessMode.light);

      expect(await localDb.getString(key: 'settings_locale'), isEmpty);
      expect(await localDb.getString(key: 'settings_brightness'), isEmpty);
      expect(await settingsStore.readSettings(path: settingsPath), isNotNull);
    });

    test('propagates store read/write failures', () async {
      final writeFailingStore = _InMemoryAppSettingsStore(throwOnWrite: true);
      final writeSource = AppSettingsLocalDataSourceImpl(
        localDb: localDb,
        settingsStore: writeFailingStore,
        settingsPath: 'settings/write_failure.json',
      );
      await expectLater(
        () => writeSource.setLocale(const Locale('en')),
        throwsStateError,
      );

      final readFailingStore = _InMemoryAppSettingsStore(throwOnRead: true);
      final readSource = AppSettingsLocalDataSourceImpl(
        localDb: localDb,
        settingsStore: readFailingStore,
        settingsPath: 'settings/read_failure.json',
      );
      await expectLater(readSource.getLocale, throwsStateError);
    });
  });
}

final class _InMemoryAppSettingsStore implements AppSettingsStore {
  _InMemoryAppSettingsStore({
    this.throwOnRead = false,
    this.throwOnWrite = false,
  });

  final bool throwOnRead;
  final bool throwOnWrite;
  final Map<String, String> _storage = <String, String>{};

  @override
  Future<String?> readSettings({required final String path}) async {
    if (throwOnRead) {
      throw StateError('read failed');
    }
    return _storage[path];
  }

  @override
  Future<void> writeSettings({
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
