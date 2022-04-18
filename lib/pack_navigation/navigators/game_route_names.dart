part of pack_navigation;

/// Choose name from [GameRouteNames]
typedef GameRouteName = String;

/// !In case of new routes all routes should be added to values!
class GameRouteNames {
  GameRouteNames._();
  static const home = '/';

  static const gameBookShelf = '/game/book-shelf';
  static const gameWordWriter = '/game/word-writer';

  static const gamePauseMenu = '$gameBookShelf/pause';
  static const gameBookShelfPauseMenu = '$gameBookShelf/pause';
  static const gameWordWriterPauseMenu = '$gameWordWriter/pause';

  static String getPauseMenu({required final RouteState routeState}) {
    final path = routeState.route.path;
    if (path.contains('game')) {
      return '$path/pause';
    }
    return '$gameBookShelf/pause';
  }

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
    gameBookShelf,
    gameWordWriter,
    gamePauseMenu,
    gameBookShelfPauseMenu,
    gameWordWriterPauseMenu,
    unknown404,
    settings,
    appInfo,
    generalSettings,
    profile,
    subscription,
    changelog,
  ];
}
