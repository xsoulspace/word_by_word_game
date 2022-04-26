part of pack_navigation;

@immutable
class GlobalNavigatorController {
  const GlobalNavigatorController.use({
    required this.routeState,
    required this.context,
    required this.screenLayout,
  });
  final RouteState routeState;
  final BuildContext context;
  final ScreenLayout screenLayout;

  void go(final GlobalRouteName routeName) => routeState.go(routeName);
  void goHome() => routeState.go(GlobalRouteNames.home);
  void goSettings() => routeState.go(GlobalRouteNames.settings);

  void goBookShelf() => routeState.go(GlobalRouteNames.gameBookShelf);
  void goPauseMenu() => routeState.go(
        GlobalRouteNames.getPauseMenu(routeState: routeState),
      );

  void goAppInfo() => routeState.go(GlobalRouteNames.appInfo);
}
