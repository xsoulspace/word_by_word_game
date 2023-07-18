import 'package:flutter/material.dart';

import '../../models/models.dart';

abstract interface class AppSettingsLocalDataSource {
  Future<void> setBrightness(final BrightnessMode brightness);
  Future<BrightnessMode> getBrightness();
  Future<void> setLocale(final Locale? locale);
  Future<Locale?> getLocale();
}
