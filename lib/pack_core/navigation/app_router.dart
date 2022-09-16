import 'package:wbw_core/wbw_core.dart';

/// !If you want to add new route, please add the route to the [routes]
class NavigationRoutes {
  NavigationRoutes._();
  static const root = '/';
  static const pause = '/pause';
  static const allLevels = '/lvl/all';

  static const levelRoot = '/lvl';

  static const levelOptions = '/lvl/:id/options';
  static String getLevelOptions({required final LevelModelId id}) =>
      '/lvl/$id/options';

  static const routes = [pause, root, levelOptions, allLevels];
}

class AppRouterController extends RouterController {
  AppRouterController.use(super.read) : super.use();

  void toMainMenu() => to(NavigationRoutes.pause);
  void toGame() => to(NavigationRoutes.root);
  void toLevelOptions({
    required final LevelModelId id,
  }) =>
      to(NavigationRoutes.getLevelOptions(id: id));
  void toAllLevel() => to(NavigationRoutes.allLevels);
}
