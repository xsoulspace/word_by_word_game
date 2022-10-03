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

  static const _bookShelfKey = ValueKey(GlobalRouteNames.gameBookShelf);
  static const _pauseMenuKey =
      ValueKey(GlobalRouteNames.gameBookShelfPauseMenu);
  static const _wordWriterKey = ValueKey(GlobalRouteNames.gameWordWriter);
  Page bookShelf() {
    return NavigatorMaterialPage(
      key: _bookShelfKey,
      popper: popper,
      child: const GameBookShelfScreen(),
    );
  }

  Page wordWriter() {
    return NavigatorMaterialPage(
      key: _wordWriterKey,
      popper: popper,
      child: const GameWordWriterScreen(),
    );
  }

  Page pauseMenu() {
    return NavigatorMaterialPage(
      key: _pauseMenuKey,
      popper: popper,
      child: const PauseMenuScreen(),
    );
  }
}
