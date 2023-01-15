class Envs {
  Envs._();

  /// ********************************************
  /// *      GOOGLE START
  /// ********************************************

  static const revenueCatApiKeyGoogle =
      String.fromEnvironment('revenue-cat-api-key-google');

  static bool get revenueCatApiKeyGoogleIsEmpty =>
      revenueCatApiKeyGoogle.isEmpty;

  static bool get revenueCatApiKeyGoogleIsNotEmpty =>
      revenueCatApiKeyGoogle.isNotEmpty;

  /// ********************************************
  /// *      APPLE START
  /// ********************************************

  static const revenueCatApiKeyApple =
      String.fromEnvironment('revenue-cat-api-key-apple');

  static bool get revenueCatApiKeyAppleIsEmpty => revenueCatApiKeyApple.isEmpty;

  static bool get revenueCatApiKeyAppleIsNotEmpty =>
      revenueCatApiKeyApple.isNotEmpty;

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
}
