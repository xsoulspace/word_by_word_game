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

  static const isYandexGames = bool.fromEnvironment('is-yandex-games');
  static const isMarketingMode = bool.fromEnvironment('is-marketing-mode');
  static const isDebugAds = bool.fromEnvironment('is-debug-ads');
  static const isAnalyticsEnabled =
      bool.fromEnvironment('is-analytics-enabled');
  static const isCrashlyticsEnabled =
      bool.fromEnvironment('is-crashlytics-enabled');
}
