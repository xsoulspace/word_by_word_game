import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:intl/intl_standalone.dart';
import 'package:word_by_word_game/constants/Locales.dart';
import 'package:word_by_word_game/entities/NamedLocale.dart';
import 'package:word_by_word_game/localizations/MainLocalizations.dart';
import 'package:word_by_word_game/models/StorageMixin.dart';
import 'package:word_by_word_game/utils/storage_util.dart';

class LocaleModelConsts {
  static final String storagename = 'locale';
  static final List<NamedLocale> namedLocales = [
    NamedLocale(
      name: 'English',
      locale: Locales.en,
    ),
    NamedLocale(
      name: 'Русский',
      locale: Locales.ru,
    ),
  ];
}

class LocaleModel extends ChangeNotifier with StorageMixin {
  bool isInitialized = false;
  Locale _locale = Locales.en;
  Locale get locale => _locale;
  set locale(Locale localef) {
    _locale = localef;
    notifyListeners();
  }

  MainLocalizationsDelegate get localeOverrideDelegate =>
      MainLocalizationsDelegate(locale);
  static Future<LocaleModel> create() async {
    var localeModel = LocaleModel();
    var localef = await LocaleModel.loadSavedLocale();
    localeModel._locale = localef;
    return localeModel;
  }

  static Future<Locale> loadSavedLocale() async {
    StorageUtil storage = await StorageUtil.getInstance();
    String localeStr = storage.getString(LocaleModelConsts.storagename);
    if (localeStr.isEmpty) {
      // FIXME: strange things happend with locales on all OS!
      // seems like it has new formats nn__UTF08__NN
      if (kIsWeb ||
          Platform.isWindows ||
          Platform.isLinux ||
          Platform.isAndroid ||
          Platform.isIOS ||
          Platform.isMacOS) return Locales.en;

      var systemLocale = await findSystemLocale();
      Intl.defaultLocale = systemLocale;
      return Locale(Intl.defaultLocale);
    }

    String localeCanon = Intl.canonicalizedLocale(localeStr);
    Locale localef = Locale(localeCanon, localeCanon.toUpperCase());
    return localef;
  }

  Future<void> switchLang(Locale localef) async {
    await MainLocalizations.load(localef);
    await checkAndLoadStorageInstance();
    await storage.putString(
        LocaleModelConsts.storagename, localef.languageCode);
    locale = localef;
  }

  NamedLocale get currentNamedLocale =>
      LocaleModelConsts.namedLocales.firstWhere((namedLocale) {
        var isEqual = _locale.languageCode == namedLocale.locale.languageCode;
        return isEqual;
      });
}
