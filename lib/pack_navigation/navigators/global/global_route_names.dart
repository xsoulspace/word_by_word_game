part of pack_navigation;

/// Choose name from [GlobalRouteNames]
typedef GlobalRouteName = String;

/// !In case of new routes all routes should be added to values!
class GlobalRouteNames {
  GlobalRouteNames._();
  static const home = '/';

  /// ********************************************
  /// *      GAME START
  /// ********************************************

  static const gameBookShelf = '/game/book-shelf';
  static const gameWordWriter = '/game/word-writer';

  static const gameBookShelfPauseMenu = '$gameBookShelf/pause';
  static const gameWordWriterPauseMenu = '$gameWordWriter/pause';

  static String getPauseMenu({required final RouteState routeState}) {
    final path = routeState.route.path;
    if (path.contains('game')) {
      return '$path/pause';
    }
    return '$gameWordWriter/pause';
  }

  /// ********************************************
  /// *      GAME END
  /// ********************************************

  static const unknown404 = '/404';
  static const menu = '/menu';

  /// ********************************************
  /// *      SETTINGS START
  /// ********************************************

  static const settings = '/menu/settings';
  static const generalSettings = '$settings/general';
  static const profile = '$settings/profile';
  static const subscription = '$settings/subscription';
  static const changelog = '$settings/changelog';
  static const appInfo = '/game-info';

  /// ********************************************
  /// *      SETTINGS END
  /// ********************************************

  /// !In case of new routes all routes should be added to values!
  static const values = [
    home,

    /// ********************************************
    /// *      GAME START
    /// ********************************************

    gameBookShelf,
    gameWordWriter,
    gameBookShelfPauseMenu,
    gameWordWriterPauseMenu,

    /// ********************************************
    /// *      GAME END
    /// ********************************************

    unknown404,
    menu,

    /// ********************************************
    /// *      SETTINGS START
    /// ********************************************

    settings,
    generalSettings,
    profile,
    subscription,
    changelog,
    appInfo,

    /// ********************************************
    /// *      SETTINGS END
    /// ********************************************
  ];
}
