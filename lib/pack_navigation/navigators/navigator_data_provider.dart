part of pack_navigation;

class NavigatorDataProvider {
  NavigatorDataProvider({
    required final this.routeState,
    required final BuildContext context,
  })  : pathTemplate = routeState.route.pathTemplate,
        navigatorController = GlobalNavigatorController.use(
          routeState: routeState,
          context: context,
          screenLayout: ScreenLayout.of(context),
        );
  final GlobalNavigatorController navigatorController;
  final RouteState routeState;
  final String pathTemplate;
}
