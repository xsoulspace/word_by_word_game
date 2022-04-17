part of pack_navigation;

class NavigatorDataProvider {
  NavigatorDataProvider({
    required final this.routeState,
    required final BuildContext context,
  })  : pathTemplate = routeState.route.pathTemplate,
        navigatorController = GameNavigatorController.use(
          routeState: routeState,
          context: context,
          screenLayout: ScreenLayout.of(context),
        );
  final GameNavigatorController navigatorController;
  final RouteState routeState;
  final String pathTemplate;
}
