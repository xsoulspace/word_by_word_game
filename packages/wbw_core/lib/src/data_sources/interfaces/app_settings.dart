import 'package:flutter/material.dart';

import '../../data_models/data_models.dart';

abstract interface class AppSettingsLocalDataSource {
  Future<void> setBrightness(final BrightnessMode brightness);
  Future<BrightnessMode> getBrightness();
  Future<void> setLocale(final Locale? locale);
  Future<Locale?> getLocale();
}
