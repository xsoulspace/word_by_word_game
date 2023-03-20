import 'dart:async';

import 'package:flutter/material.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/gen/gen.dart';

class AppSettingsNotifier extends ChangeNotifier implements Loadable {
  AppSettingsNotifier.use(final Locator read)
      : persistenceService = read<ServicesCollection>().appSettingsPersistence;
  final AppSettingsPersistenceService persistenceService;
  AppSettingsModel _settings = AppSettingsModel.empty;

  AppSettingsModel get settings => _settings;
  set settings(final AppSettingsModel value) {
    _settings = value;
    notify();
    unawaited(persistenceService.saveSettings(settings: value));
  }

  Locale? systemLocale;
  Locale? get locale => _settings.locale;
  set locale(final Locale? value) {
    if (value?.languageCode == locale?.languageCode) return;
    if (value == null) {
      settings = settings.copyWith(locale: null);
      final defaultLocale = systemLocale ?? Locales.en;
      unawaited(S.delegate.load(defaultLocale));
    } else {
      final language = Languages.byLanguageCode(value.languageCode);
      final newLocale = Locales.byLanguage(language);
      unawaited(S.delegate.load(newLocale));
      settings = settings.copyWith(locale: newLocale);
    }
  }

  @override
  Future<void> onLoad() async {
    _settings = await persistenceService.loadSettings();
    notify();
  }

  void notify() => notifyListeners();
}
