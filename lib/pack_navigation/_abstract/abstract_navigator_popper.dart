part of pack_navigation;

abstract class AbstractNavigatorPopper implements NavigatorDataProvider {
  Future<bool> handleWillPop();
  bool onPopPage(
    final Route<dynamic> route,
    final dynamic result,
  );
}
