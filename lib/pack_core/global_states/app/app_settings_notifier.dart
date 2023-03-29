import 'dart:async';

import 'package:flutter/material.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:universal_io/io.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_locale/wbw_locale.dart';

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

  Locale? get systemLocale => Locale.fromSubtags(
        languageCode: Platform.localeName.substring(0, 2),
      );

  Locale? get locale => _settings.locale;
  set locale(final Locale? value) {
    if (value?.languageCode == locale?.languageCode) return;
    if (value == null) {
      final savedSettings = settings.copyWith(locale: null);
      unawaited(persistenceService.saveSettings(settings: savedSettings));
      final defaultLocale = systemLocale ?? Locales.en;
      _settings = settings.copyWith(locale: defaultLocale);
      unawaited(S.delegate.load(defaultLocale));
      notify();
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
