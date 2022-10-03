part of pack_navigation;

class GlobalNavigator extends StatelessWidget {
  const GlobalNavigator({
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
      layoutBuilderConstructor: GlobalNavigatorLayoutBuilder.new,
      pageBuilderConstructor: GlobalNavigatorPageBuilder.new,
      popperConstructor: GlobalNavigatorPopper.new,
      routeState: routeState,
    );
  }
}
