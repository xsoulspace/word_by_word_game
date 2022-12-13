import 'dart:async';

import 'package:flutter/material.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/generated/l10n.dart';

/// A class that many Widgets can interact with to read user settings, update
/// user settings, or listen to user settings changes.

class AppSettingsNotifier extends ChangeNotifier implements Loadable {
  AppSettingsNotifier.use(final Locator read)
      : persistenceService = read<ServicesCollection>().appSettingsPersistence;
  final AppSettingsPersistenceService persistenceService;
  AppSettingsModel _settings = AppSettingsModel.empty;

  AppSettingsModel get settings => _settings;
  set settings(final AppSettingsModel value) {
    _settings = value;
    notify();
    persistenceService.saveSettings(settings: value);
  }

  Locale? get locale => _settings.locale;
  set locale(final Locale? value) {
    if (value == null) return;
    if (value.languageCode == locale?.languageCode) return;
    final newLocale = localeFromString(value.languageCode);
    S.load(newLocale);
    settings = settings.copyWith(locale: newLocale);
  }

  /// Load the user's settings from the SettingsService. It may load from a
  /// local database or the internet. The controller only knows it can load the
  /// settings from the service.
  @override
  Future<void> onLoad() async {
    _settings = await persistenceService.loadSettings();
    notify();
  }

  void notify() => notifyListeners();
}
