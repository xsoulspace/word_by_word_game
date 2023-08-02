import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:universal_io/io.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_locale/wbw_locale.dart';

class AppSettingsCubitDto {
  AppSettingsCubitDto({
    required final BuildContext context,
  }) : appSettingsRepository = context.read();
  final AppSettingsRepository appSettingsRepository;
}

class AppSettingsCubit extends Cubit<AppSettingsModel> {
  AppSettingsCubit({
    required this.dto,
  }) : super(AppSettingsModel.empty);
  final AppSettingsCubitDto dto;

  AppSettingsModel get settings => state;
  set settings(final AppSettingsModel value) {
    emit(value);
    unawaited(dto.appSettingsRepository.setSettings(value));
  }

  Locale? get systemLocale =>
      Locale.fromSubtags(languageCode: Platform.localeName.substring(0, 2));

  Locale? get locale => state.locale;
  set locale(final Locale? value) {
    if (value?.languageCode == locale?.languageCode) return;
    if (value == null) {
      final defaultLocale = systemLocale ?? Locales.en;
      unawaited(dto.appSettingsRepository.setLocale(defaultLocale));
      settings = state.copyWith(locale: defaultLocale);
      unawaited(S.delegate.load(defaultLocale));
    } else {
      final language = Languages.byLanguageCode(value.languageCode);
      final newLocale = Locales.byLanguage(language);
      unawaited(S.delegate.load(newLocale));
      settings = settings.copyWith(locale: newLocale);
    }
  }

  Future<void> onLoad() async {
    settings = await dto.appSettingsRepository.getSettings();
  }
}
