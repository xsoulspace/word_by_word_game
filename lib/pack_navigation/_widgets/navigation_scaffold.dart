part of pack_navigation;

/// Builds the top-level navigator for the app. The pages to display are based
/// on the `routeState` that was parsed by the TemplateRouteParser.
class NavigationScaffold<
    TPopper extends AbstractNavigatorPopper,
    TPageBuilder extends AbstractNavigatorPageBuilder<TPopper>,
    TLayoutBuilder extends AbstractNavigatorLayoutBuilder<TPageBuilder,
        TPopper>> extends StatelessWidget {
  const NavigationScaffold({
    required this.navigatorKey,
    required this.routeState,
    required this.layoutBuilderConstructor,
    required this.pageBuilderConstructor,
    required this.popperConstructor,
    final Key? key,
  }) : super(key: key);
  final GlobalKey<NavigatorState> navigatorKey;
  final RouteState routeState;
  final TPopper Function({
    required BuildContext context,
    required RouteState routeState,
  }) popperConstructor;

  final TPageBuilder Function({
    required BuildContext context,
    required TPopper popper,
  }) pageBuilderConstructor;

  final TLayoutBuilder Function({
    required TPageBuilder pageBuilder,
  }) layoutBuilderConstructor;

  @override
  Widget build(final BuildContext context) {
    final popper = popperConstructor(
      routeState: routeState,
      context: context,
    );
    final pageBuilder = pageBuilderConstructor(
      popper: popper,
      context: context,
    );
    final layoutBuilder = layoutBuilderConstructor(
      pageBuilder: pageBuilder,
    );

    return ResponsiveNavigator(
      navigatorKey: navigatorKey,
      onLargeScreen: layoutBuilder.getLargeScreenPages,
      onMediumScreen: layoutBuilder.getMediumScreenPages,
      onSmallScreen: layoutBuilder.getSmallScreenPages,
      onPopPage: popper.onPopPage,
    );
  }
}
