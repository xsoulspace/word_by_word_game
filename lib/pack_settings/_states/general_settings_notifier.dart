part of pack_settings;

/// A class that many Widgets can interact with to read user settings, update
/// user settings, or listen to user settings changes.
///
/// Controllers glue Data Services to Flutter Widgets. The SettingsController
/// uses the SettingsService to store and retrieve user settings.
class GeneralSettingsNotifier extends ChangeNotifier implements Loadable {
  GeneralSettingsNotifier({required final this.settingsService});

  // Make SettingsService a private variable so it is not used directly.
  final GeneralSettingsServiceI settingsService;

  Locale? _locale;
  Locale? get locale => _locale;

  Future<void> updateLocale(final Locale? locale) async {
    if (locale == null) return;

    if (locale == _locale) return;
    _locale = locale;
    await S.load(locale);
    notify();

    await settingsService.setLocale(locale);
  }

  /// Load the user's settings from the SettingsService. It may load from a
  /// local database or the internet. The controller only knows it can load the
  /// settings from the service.
  @override
  Future<void> onLoad({required final BuildContext context}) async {
    _locale = await settingsService.locale();
    migrated = await settingsService.migrated();

    // Important! Inform listeners a change has occurred.
    notify();
  }

  GameStateLoadingStatuses? _loadingStatus;

  GameStateLoadingStatuses? get loadingStatus => _loadingStatus;

  set loadingStatus(final GameStateLoadingStatuses? loadingStatus) {
    _loadingStatus = loadingStatus;
    notify();
  }

  bool migrated = false;
  Future<void> setMigrated() async {
    migrated = true;

    return settingsService.setMigrated();
  }

  void notify() => notifyListeners();

  ThemeData lightTheme = ThemeData.light();
  ThemeData darkTheme = ThemeData.dark();
  ThemeMode themeMode = ThemeMode.system;
}

/// Provides the current [GeneralSettingsNotifier] to descendent widgets in the tree.
class SettingsStateScope extends InheritedNotifier<GeneralSettingsNotifier> {
  const SettingsStateScope({
    required final GeneralSettingsNotifier notifier,
    required final Widget child,
    final Key? key,
  }) : super(key: key, notifier: notifier, child: child);

  static GeneralSettingsNotifier of(final BuildContext context) {
    final state = context
        .dependOnInheritedWidgetOfExactType<SettingsStateScope>()
        ?.notifier;
    if (state == null) throw ArgumentError.notNull('SettingsStateScope');

    return state;
  }
}
