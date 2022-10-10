part of pack_navigation;

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
    return NavigationScaffold(
      navigatorKey: navigatorKey,
      layoutBuilderConstructor: GameNavigatorLayoutBuilder.new,
      pageBuilderConstructor: GameNavigatorPageBuilder.new,
      popperConstructor: GameNavigatorPopper.new,
      routeState: routeState,
    );
  }
}