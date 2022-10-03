part of pack_preloaders;

class GlobalStateNotifiers {
  GlobalStateNotifiers._();
  // Set up the SettingsController, which will glue user settings to multiple
  // Flutter Widgets.
  static final settings = GeneralSettingsNotifier(
    settingsService: GeneralSettingsService(),
  );
}
