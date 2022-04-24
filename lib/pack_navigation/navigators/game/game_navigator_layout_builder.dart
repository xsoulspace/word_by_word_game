part of pack_navigation;

class GameNavigatorLayoutBuilder
    implements
        AbstractNavigatorLayoutBuilder<GameNavigatorPageBuilder,
            GameNavigatorPopper> {
  GameNavigatorLayoutBuilder({
    required final this.pageBuilder,
  }) : popper = pageBuilder.popper;
  @override
  final GameNavigatorPageBuilder pageBuilder;
  @override
  final GameNavigatorPopper popper;

  List<Page> buildPages() {
    return [
      if (pathTemplate.startsWith(GlobalRouteNames.home)) ...[
        pageBuilder.bookShelf(),
        if (pathTemplate == GlobalRouteNames.gamePauseMenu)
          pageBuilder.pauseMenu()
      ] else
        GameNavigatorPageBuilder.emptyPage,
    ];
  }

  @override
  List<Page> getLargeScreenPages() {
    return buildPages();
  }

  @override
  List<Page> getMediumScreenPages() {
    return buildPages();
  }

  @override
  List<Page> getSmallScreenPages() {
    return buildPages();
  }
}
