// ignore_for_file: do_not_use_environment

class Envs {
  Envs._();

  /// ********************************************
  /// *      ADS START
  /// ********************************************

  static const yandexFlexibleMobile =
      String.fromEnvironment('yandex-flexible-mobile');
  static const yandexFlexibleMobileWeb =
      String.fromEnvironment('yandex-flexible-mobile-web');
  static const yandexFlexibleDesktopWeb =
      String.fromEnvironment('yandex-flexible-desktop-web');
  static const yandexFullscreenYGMobileWeb =
      String.fromEnvironment('yandex-fullscreen-yg-mobile-web');
  static const yandexFullscreenYGDesktopWeb =
      String.fromEnvironment('yandex-fullscreen-yg-desktop-web');
  static final store = StoreType.fromEnv();
  static const isMarketingMode = bool.fromEnvironment('IS_MARKETING_MODE');
  static const isDebugAds = bool.fromEnvironment('IS_DEBUG_ADS');
  static const isAnalyticsEnabled =
      bool.fromEnvironment('IS_ANALYTICS_ENABLED');
  static const isCrashlyticsEnabled =
      bool.fromEnvironment('IS_CRASHLYTICS_ENABLED');
  static const wiredashProjectId =
      String.fromEnvironment('WIREDASH_PROJECT_ID');
  static const wiredashProjectSecret =
      String.fromEnvironment('WIREDASH_PROJECT_SECRET');
}

enum StoreType {
  googlePlay,
  rustore,
  huawaiStore,
  appleStore,
  windowsStore,
  snapstore,
  crazyGames,
  yandexGames,
  xsoulspaceWebsite;

  bool get isGooglePlay => this == StoreType.googlePlay;
  bool get isRustore => this == StoreType.rustore;
  bool get isHuaweiStore => this == StoreType.huawaiStore;
  bool get isAppleStore => this == StoreType.appleStore;
  bool get isWindowsStore => this == StoreType.windowsStore;
  bool get isSnapStore => this == StoreType.snapstore;
  bool get isCrazyGames => this == StoreType.crazyGames;
  bool get isYandexGames => this == StoreType.yandexGames;
  bool get isXsoulspaceWebsite => this == StoreType.xsoulspaceWebsite;

  static StoreType fromEnv() => values.byName(
        const String.fromEnvironment('STORE', defaultValue: 'snapstore'),
      );
}
