part of pack_navigation;

/// Choose name from [GameRouteNames]
typedef GameRouteName = String;

/// !In case of new routes all routes should be added to values!
class GameRouteNames {
  GameRouteNames._();
  static const home = '/';
  static const unknown404 = '/404';
  static const settings = '/settings';
  static const generalSettings = '$settings/general';
  static const profile = '$settings/profile';
  static const subscription = '$settings/subscription';
  static const changelog = '$settings/changelog';
  static const appInfo = '/game-info';

  /// !In case of new routes all routes should be added to values!
  static const values = [
    home,
    unknown404,
    settings,
    appInfo,
    generalSettings,
    profile,
    subscription,
    changelog,
  ];
}
