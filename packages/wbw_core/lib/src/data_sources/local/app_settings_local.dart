import 'dart:ui';

import 'package:wbw_locale/wbw_locale.dart';

import '../../data_models/data_models.dart';
import '../interfaces/interfaces.dart';

class AppSettingsLocalDataSourceImpl implements AppSettingsLocalDataSource {
  AppSettingsLocalDataSourceImpl({
    required this.localDb,
  });
  static const _kLocaleKey = 'settings_locale';
  static const _kBrightnessKey = 'settings_brightness';
  final LocalDbDataSource localDb;
  @override
  Future<BrightnessMode> getBrightness() async {
    final brightnessString = await localDb.getString(
      key: _kBrightnessKey,
    );
    return brightnessString.isEmpty
        ? BrightnessMode.system
        : BrightnessMode.values.byName(brightnessString);
  }

  @override
  Future<void> setBrightness(final BrightnessMode brightness) async {
    await localDb.setString(
      key: _kBrightnessKey,
      value: brightness.name,
    );
  }

  @override
  Future<Locale?> getLocale() async {
    final localString = await localDb.getString(
      key: _kLocaleKey,
    );
    if (localString.isEmpty) return null;
    return localeFromString(localString);
  }

  @override
  Future<void> setLocale(final Locale? locale) async {
    await localDb.setString(
      key: _kLocaleKey,
      value: locale?.toStringJson() ?? '',
    );
  }
}
