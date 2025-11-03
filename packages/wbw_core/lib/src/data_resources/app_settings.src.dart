import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:wbw_locale/wbw_locale.dart';

import '../data_models/data_models.dart';
import '../data_repositories/data_repositories.dart';

class AppSettingsResource extends ValueNotifier<AppSettingsModel> {
  AppSettingsResource({
    required this.appSettingsRepository,
    required this.uiLocaleResource,
  }) : super(AppSettingsModel.empty);
  final AppSettingsRepository appSettingsRepository;
  final UiLocaleResource uiLocaleResource;

  Future<void> setSettings(final AppSettingsModel value) async {
    this.value = value;
    await appSettingsRepository.setSettings(value);
  }

  Future<void> onLoad() async {
    final settings = await appSettingsRepository.getSettings();
    await setSettings(settings);
    await updateLocale(value.locale);
  }

  ValueListenable<Locale> get locale => uiLocaleResource;
  UiLanguage get language => locale.value.language;
  Future<void> updateLocale(final Locale? locale) async {
    final result = await const LocaleLogic().updateLocale(
      newLocale: locale,
      oldLocale: value.locale,
      uiLocale: uiLocaleResource.value,
    );
    if (result == null) return;
    uiLocaleResource.value = result.uiLocale;
    notifyListeners();
    if (value.locale == result.updatedLocale) return;
    await setSettings(value.copyWith(locale: result.updatedLocale));
  }
}
