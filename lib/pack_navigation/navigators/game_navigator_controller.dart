part of pack_navigation;

@immutable
class GameNavigatorController {
  const GameNavigatorController.use({
    required final this.routeState,
    required final this.context,
    required this.screenLayout,
  });
  final RouteState routeState;
  final BuildContext context;
  final ScreenLayout screenLayout;

  void go(final GameRouteName routeName) => routeState.go(routeName);
  void goHome() => routeState.go(GameRouteNames.home);

  void goSettings() => routeState.go(GameRouteNames.settings);

  void goAppInfo() => routeState.go(GameRouteNames.appInfo);
}
