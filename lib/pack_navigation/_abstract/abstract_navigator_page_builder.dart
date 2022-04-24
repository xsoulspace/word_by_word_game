part of pack_navigation;

abstract class AbstractNavigatorPageBuilder<
    TPopper extends AbstractNavigatorPopper> {
  TPopper get popper;
  BuildContext get context;
}

extension AbstractNavigatorPageBuilderExtension
    on AbstractNavigatorPageBuilder {
  GlobalNavigatorController get navigatorController =>
      popper.navigatorController;
  RouteState get routeState => popper.routeState;
  GameRouteParameters get params => popper.routeState.route.parameters;
  String get pathTemplate => popper.pathTemplate;
}
