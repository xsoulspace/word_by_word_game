part of pack_navigation;

/// Builds the top-level navigator for the app. The pages to display are based
/// on the `routeState` that was parsed by the TemplateRouteParser.
class GameNavigator extends StatelessWidget {
  const GameNavigator({
    required final this.navigatorKey,
    required final this.routeState,
    final Key? key,
  }) : super(key: key);
  final GlobalKey<NavigatorState> navigatorKey;
  final RouteState routeState;

  @override
  Widget build(final BuildContext context) {
    final popper = GameNavigatorPopper(
      routeState: routeState,
      context: context,
    );
    final pageBuilder = GameNavigatorPageBuilder(
      popper: popper,
      context: context,
    );
    final layoutBuilder = GameNavigatorLayoutBuilder(
      pageBuilder: pageBuilder,
    );

    return ResponsiveNavigator(
      navigatorKey: navigatorKey,
      onLargeScreen: layoutBuilder.getLargeScreenPages,
      onSmallScreen: layoutBuilder.getSmallScreenPages,
      onPopPage: popper.onPopPage,
    );
  }
}
