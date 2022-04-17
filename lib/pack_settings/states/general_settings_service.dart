part of pack_settings;

/// A service that stores and retrieves user settings.
///
/// By default, this class does not persist user settings. If you'd like to
/// persist the user settings locally, use the shared_preferences package. If
/// you'd like to store settings on a web server, use the http package.
class GeneralSettingsService with SharedPreferencesUtil {
  Future<Locale> locale() async {
    final languageCode = await getString(SharedPreferencesKeys.locale.name);
    try {
      if (languageCode.isEmpty) return Locales.en;

      return Locale.fromSubtags(languageCode: languageCode);
      // ignore: avoid_catches_without_on_clauses
    } catch (e) {
      return Locales.en;
    }
  }

  Future<void> setLocale(final Locale locale) async {
    await setString(SharedPreferencesKeys.locale.name, locale.languageCode);
  }

  Future<bool> migrated() async => getBool(SharedPreferencesKeys.migrated.name);

  Future<void> setMigrated() async =>
      setBool(SharedPreferencesKeys.migrated.name, true);
}
