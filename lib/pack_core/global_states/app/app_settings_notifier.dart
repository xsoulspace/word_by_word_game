import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/app/locale_logic.dart';

final uiLocaleNotifier = ValueNotifier(Locales.en);

class AppSettingsCubitDto {
  AppSettingsCubitDto({
    required final BuildContext context,
  }) : appSettingsRepository = context.read();
  final AppSettingsRepository appSettingsRepository;
}

class AppSettingsNotifier extends ValueNotifier<AppSettingsModel> {
  AppSettingsNotifier(final BuildContext context)
      : dto = AppSettingsCubitDto(context: context),
        super(AppSettingsModel.empty);
  final AppSettingsCubitDto dto;

  AppSettingsModel get settings => value;
  set settings(final AppSettingsModel value) {
    this.value = value;
    unawaited(dto.appSettingsRepository.setSettings(value));
    unawaited(updateLocale(value.locale));
  }

  Future<void> onLoad() async {
    settings = await dto.appSettingsRepository.getSettings();
  }

  ValueListenable<Locale> get locale => uiLocaleNotifier;

  Future<void> updateLocale(final Locale? locale) async {
    final result = await LocaleLogic().updateLocale(
      newLocale: locale,
      oldLocale: settings.locale,
      uiLocale: uiLocaleNotifier.value,
    );
    if (result == null) return;
    uiLocaleNotifier.value = result.uiLocale;
    notifyListeners();
    settings = settings.copyWith(locale: result.updatedLocale);
  }
}

Locale useLocale(final BuildContext context) =>
    context.select<AppSettingsNotifier, Locale>(
      (final c) => uiLocaleNotifier.value,
    );
