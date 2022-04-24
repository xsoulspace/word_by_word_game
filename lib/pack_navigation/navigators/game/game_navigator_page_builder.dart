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
  static const _pauseMenuKey = ValueKey(GlobalRouteNames.gamePauseMenu);
  Page bookShelf() {
    return NavigatorMaterialPage(
      key: _homeKey,
      popper: popper,
      child: const GameBookShelfScreen(),
    );
  }

  Page pauseMenu() {
    return NavigatorMaterialPage(
      key: _pauseMenuKey,
      popper: popper,
      child: const SettingsScreen(),
    );
  }
}
