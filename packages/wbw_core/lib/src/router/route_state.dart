part of 'router.dart';

class RouteState extends ChangeNotifier {
  RouteState(this.parser) : _route = parser.initialRoute;
  TemplateRouteParser parser;
  ParsedRoute _route;

  ParsedRoute get route => _route;
  bool checkIsCurrentRoute(final String routeName) =>
      route.pathTemplate == routeName;

  set route(final ParsedRoute route) {
    // Don't notify listeners if the path hasn't changed.
    if (_route == route) return;

    _route = route;
    notifyListeners();
  }

  Future<void> go(final String route) async {
    this.route =
        await parser.parseRouteInformation(RouteInformation(location: route));
  }
}
