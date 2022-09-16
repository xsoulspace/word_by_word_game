import 'package:wbw_core/wbw_core.dart';

/// !If you want to add new route, please add the route to the [routes]
class NavigationRoutes {
  NavigationRoutes._();
  static const root = '/';
  static const pause = '/pause';
  static const allLevels = '/lvl/all';

  static const levelRoot = '/lvl';
  static const playableLevel = '/lvl/:id';

  static String toPlayableLevel({required final LevelModelId id}) => '/lvl/$id';

  static const levelOptions = '/lvl/:id/options';
  static String getLevelOptions({required final LevelModelId id}) =>
      '/lvl/$id/options';

  static const routes = [root, allLevels, playableLevel, levelOptions, pause];
}

class AppRouterController extends RouterController {
  AppRouterController.use(super.read) : super.use();
  void toPlayableLevel({required final LevelModelId id}) =>
      to(NavigationRoutes.toPlayableLevel(id: id));

  void toPause() => to(NavigationRoutes.pause);
  void toLevelOptions({
    required final LevelModelId id,
  }) =>
      to(NavigationRoutes.getLevelOptions(id: id));
  void toAllLevel() => to(NavigationRoutes.allLevels);
}
