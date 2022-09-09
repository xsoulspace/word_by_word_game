import 'package:wbw_core/wbw_core.dart';

/// !If you want to add new route, please add the route to the [routes]
class NavigationRoutes {
  NavigationRoutes._();
  static const mainMenu = '/main-menu';
  static const game = '/game';
  static const routes = [
    mainMenu,
    game,
  ];
}

class AppRouterController extends RouterController {
  AppRouterController.use(super.read) : super.use();

  void toMainMenu() => to(NavigationRoutes.mainMenu);
  void toGame() => to(NavigationRoutes.game);
}
