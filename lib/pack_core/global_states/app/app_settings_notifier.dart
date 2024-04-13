import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/app/locale_logic.dart';

class UiLocaleNotifier extends ValueNotifier<Locale> {
  UiLocaleNotifier(super.value);
}

final uiLocaleNotifier = UiLocaleNotifier(Locales.en);

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

  Future<void> _updateSettings(final AppSettingsModel value) async {
    this.value = value;
    await dto.appSettingsRepository.setSettings(value);
  }

  Future<void> onLoad() async {
    final settings = await dto.appSettingsRepository.getSettings();
    await _updateSettings(settings);
    await updateLocale(value.locale);
  }

  ValueListenable<Locale> get locale => uiLocaleNotifier;
  Languages get language => locale.value.language;
  Future<void> updateLocale(final Locale? locale) async {
    final result = await LocaleLogic().updateLocale(
      newLocale: locale,
      oldLocale: value.locale,
      uiLocale: uiLocaleNotifier.value,
    );
    if (result == null) return;
    uiLocaleNotifier.value = result.uiLocale;
    notifyListeners();
    if (value.locale == result.updatedLocale) return;
    await _updateSettings(value.copyWith(locale: result.updatedLocale));
  }
}

Locale useLocale(
  final BuildContext context, {
  final bool listen = true,
}) =>
    Provider.of<UiLocaleNotifier>(context, listen: listen).value;

extension LocaleX on Locale {
  Languages get language => Languages.byLanguageCode(languageCode);
}
