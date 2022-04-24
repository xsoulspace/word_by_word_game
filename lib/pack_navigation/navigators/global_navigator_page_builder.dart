part of pack_navigation;

class GameNavigatorPageBuilder
    implements AbstractNavigatorPageBuilder<GameNavigatorPopper> {
  GameNavigatorPageBuilder({
    required final this.popper,
    required final this.context,
  });
  static final emptyPage = MaterialPage(child: Container());

  @override
  final GameNavigatorPopper popper;
  @override
  final BuildContext context;

  static const _homeKey = ValueKey(GlobalRouteNames.home);
  Page bookShelf() {
    return NavigatorMaterialPage(
      key: _homeKey,
      popper: popper,
      child: const GameBookShelfScreen(),
    );
  }

  Page settings() {
    return NavigatorMaterialPage(
      key: _homeKey,
      popper: popper,
      child: const SettingsScreen(),
    );
  }
}
