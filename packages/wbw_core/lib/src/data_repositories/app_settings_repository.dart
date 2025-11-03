import 'package:flutter/cupertino.dart';
import 'package:xsoulspace_foundation/xsoulspace_foundation.dart';

import '../data_models/data_models.dart';
import '../data_sources/data_sources.dart';
import 'base_repository.dart';

final class AppSettingsRepository
    extends BaseLocalRepository<AppSettingsLocalDataSource> {
  AppSettingsRepository({required final LocalDbI localDb})
    : super(local: AppSettingsLocalDataSourceImpl(localDb: localDb));

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
