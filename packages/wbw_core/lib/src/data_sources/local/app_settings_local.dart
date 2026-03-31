import 'dart:convert';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:from_json_to_json/from_json_to_json.dart';
import 'package:is_dart_empty_or_not/is_dart_empty_or_not.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:xsoulspace_foundation/xsoulspace_foundation.dart' show LocalDbI;

import '../../data_models/data_models.dart';
import '../interfaces/interfaces.dart';

abstract interface class AppSettingsStore {
  Future<String?> readSettings({required final String path});
  Future<void> writeSettings({
    required final String path,
    required final String content,
  });
}

class AppSettingsLocalDataSourceImpl implements AppSettingsLocalDataSource {
  AppSettingsLocalDataSourceImpl({
    required this.localDb,
    required final AppSettingsStore settingsStore,
    final String settingsPath = _defaultSettingsPath,
  }) : _settingsPersistence = _AppSettingsPersistenceBridge(
         localDb: localDb,
         settingsStore: settingsStore,
         settingsPath: settingsPath,
         legacyLocaleKey: _kLocaleKey,
         legacyBrightnessKey: _kBrightnessKey,
       );

  static const _kLocaleKey = 'settings_locale';
  static const _kBrightnessKey = 'settings_brightness';
  static const _defaultSettingsPath = 'app_settings_v1.json';
  final LocalDbI localDb;
  final _AppSettingsPersistenceBridge _settingsPersistence;

  @override
  Future<BrightnessMode> getBrightness() async {
    final settings = await _settingsPersistence.load();
    final brightnessString =
        jsonDecodeString(settings[_kBrightnessKey]).whenEmptyUse('system');
    return _brightnessFromName(brightnessString);
  }

  @override
  Future<void> setBrightness(final BrightnessMode brightness) async {
    final settings = await _settingsPersistence.load();
    await _settingsPersistence.save(<String, dynamic>{
      ...settings,
      _kBrightnessKey: brightness.name,
    });
  }

  @override
  Future<Locale?> getLocale() async {
    final settings = await _settingsPersistence.load();
    final localString = jsonDecodeString(settings[_kLocaleKey]);
    if (localString.isEmpty) {
      return null;
    }
    return localeFromString(localString);
  }

  @override
  Future<void> setLocale(final Locale? locale) async {
    final settings = await _settingsPersistence.load();
    await _settingsPersistence.save(<String, dynamic>{
      ...settings,
      _kLocaleKey: locale?.toStringJson() ?? '',
    });
  }

  BrightnessMode _brightnessFromName(final String brightnessString) {
    try {
      return BrightnessMode.values.byName(brightnessString);
    } on Object catch (error) {
      debugPrint(
        'AppSettingsLocalDataSourceImpl: invalid brightness '
        'value "$brightnessString": $error',
      );
      return BrightnessMode.system;
    }
  }
}

final class _AppSettingsPersistenceBridge {
  _AppSettingsPersistenceBridge({
    required final LocalDbI localDb,
    required final AppSettingsStore settingsStore,
    required final String settingsPath,
    required final String legacyLocaleKey,
    required final String legacyBrightnessKey,
  }) : _localDb = localDb,
       _settingsStore = settingsStore,
       _settingsPath = settingsPath,
       _legacyLocaleKey = legacyLocaleKey,
       _legacyBrightnessKey = legacyBrightnessKey;

  final LocalDbI _localDb;
  final AppSettingsStore _settingsStore;
  final String _settingsPath;
  final String _legacyLocaleKey;
  final String _legacyBrightnessKey;

  Future<void>? _migrationFuture;

  Future<Map<String, dynamic>> load() async {
    await _ensureMigrationChecked();
    return _readStoreMap();
  }

  Future<void> save(final Map<String, dynamic> settings) async {
    await _writeStoreMap(settings);
    await _clearLegacyMap();
  }

  Future<void> _ensureMigrationChecked() =>
      _migrationFuture ??= _migrateLegacyIfNeeded();

  Future<void> _migrateLegacyIfNeeded() async {
    final legacyMap = await _readLegacyMap();
    if (legacyMap.isEmpty) {
      return;
    }

    final storeMap = await _readStoreMap();
    if (storeMap.isNotEmpty) {
      await _clearLegacyMap();
      return;
    }

    await _writeStoreMap(legacyMap);
    await _clearLegacyMap();
  }

  Future<Map<String, dynamic>> _readStoreMap() async {
    final raw = await _settingsStore.readSettings(path: _settingsPath);
    if (raw == null || raw.trim().isEmpty) {
      return const <String, dynamic>{};
    }

    final decodedRaw = jsonDecodeMap(raw).whenEmptyUse(
      const <String, dynamic>{},
    );
    return <String, dynamic>{
      _legacyLocaleKey: jsonDecodeString(decodedRaw[_legacyLocaleKey]),
      _legacyBrightnessKey: jsonDecodeString(decodedRaw[_legacyBrightnessKey]),
    };
  }

  Future<void> _writeStoreMap(final Map<String, dynamic> settings) async {
    final payload = <String, dynamic>{
      'schema_version': 1,
      'updated_at_utc': DateTime.now().toUtc().toIso8601String(),
      _legacyLocaleKey: jsonDecodeString(settings[_legacyLocaleKey]),
      _legacyBrightnessKey: jsonDecodeString(settings[_legacyBrightnessKey]),
    };

    await _settingsStore.writeSettings(
      path: _settingsPath,
      content: jsonEncode(payload),
    );
  }

  Future<Map<String, dynamic>> _readLegacyMap() async {
    final locale = await _localDb.getString(key: _legacyLocaleKey);
    final brightness = await _localDb.getString(key: _legacyBrightnessKey);
    if (locale.isEmpty && brightness.isEmpty) {
      return const <String, dynamic>{};
    }
    return <String, dynamic>{
      _legacyLocaleKey: locale,
      _legacyBrightnessKey: brightness,
    };
  }

  Future<void> _clearLegacyMap() async {
    await _localDb.setString(key: _legacyLocaleKey, value: '');
    await _localDb.setString(key: _legacyBrightnessKey, value: '');
  }
}
