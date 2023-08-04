import 'dart:ui';

import '../datasources/datasources.dart';
import '../models/models.dart';
import 'base_repository.dart';

final class AppSettingsRepository
    extends BaseLocalRepository<AppSettingsLocalDataSource> {
  AppSettingsRepository({
    required super.local,
  });

  Future<BrightnessMode> getBrightness() => local.getBrightness();
  Future<void> setBrightness(final BrightnessMode brightness) =>
      local.setBrightness(brightness);
  Future<Locale?> getLocale() => local.getLocale();
  Future<void> setLocale(final Locale? locale) => local.setLocale(locale);

  Future<AppSettingsModel> getSettings() async => AppSettingsModel(
        brightnessMode: await getBrightness(),
        locale: await getLocale(),
      );
  Future<void> setSettings(final AppSettingsModel settings) async {
    await setBrightness(settings.brightnessMode);
    await setLocale(settings.locale);
  }
}
