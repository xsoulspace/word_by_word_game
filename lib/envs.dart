// ignore_for_file: do_not_use_environment

class Envs {
  Envs._();

  /// ********************************************
  /// *      ADS START
  /// ********************************************

  static const yandexFlexibleMobile =
      String.fromEnvironment('YANDEX_FLEXIBLE_MOBILE');
  static const yandexFlexibleMobileWeb =
      String.fromEnvironment('YANDEX_FLEXIBLE_MOBILE_WEB');
  static const yandexFlexibleDesktopWeb =
      String.fromEnvironment('YANDEX_FLEXIBLE_DESKTOP_WEB');
  static const yandexFullscreenYGMobileWeb =
      String.fromEnvironment('YANDEX_FULLSCREEN_YG_MOBILE_WEB');
  static const yandexFullscreenYGDesktopWeb =
      String.fromEnvironment('YANDEX_FULLSCREEN_YG_DESKTOP_WEB');
  static final store = StoreType.fromEnv();
  static const isMarketingMode = bool.fromEnvironment('IS_MARKETING_MODE');
  static const isDebugAds = bool.fromEnvironment('IS_DEBUG_ADS');
  static const isAnalyticsEnabled =
      bool.fromEnvironment('IS_ANALYTICS_ENABLED');
  static const isLinksAllowed = bool.fromEnvironment('IS_LINKS_ALLOWED');
  static const isCrashlyticsEnabled =
      bool.fromEnvironment('IS_CRASHLYTICS_ENABLED');
  static const wiredashProjectId =
      String.fromEnvironment('WIREDASH_PROJECT_ID');
  static const wiredashProjectSecret =
      String.fromEnvironment('WIREDASH_PROJECT_SECRET');
  static const serverUrl = String.fromEnvironment('SERVER_URL');
}

enum StoreType {
  googlePlay,
  rustore,
  huawaiStore,
  appleStore,
  windowsStore,
  snapstore,
  vkPlay,
  itch,
  crazyGames,
  yandexGames,
  xsoulspaceWebsite;

  bool get isGooglePlay => this == StoreType.googlePlay;
  bool get isItch => this == StoreType.itch;
  bool get isVkPlay => this == StoreType.vkPlay;
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
