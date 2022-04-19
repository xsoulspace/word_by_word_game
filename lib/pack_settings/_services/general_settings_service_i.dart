part of pack_settings;

/// A service that stores and retrieves user settings.
///
/// By default, this class does not persist user settings. If you'd like to
/// persist the user settings locally, use the shared_preferences package. If
/// you'd like to store settings on a web server, use the http package.
abstract class GeneralSettingsServiceI {
  Future<Locale> locale();

  Future<void> setLocale(final Locale locale);

  Future<bool> migrated();

  Future<void> setMigrated();
}
