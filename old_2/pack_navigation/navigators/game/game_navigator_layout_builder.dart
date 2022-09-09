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
      GameNavigatorPageBuilder.emptyPage,
      if (pathTemplate.startsWith(GlobalRouteNames.home)) ...[
        if (pathTemplate == GlobalRouteNames.home ||
            pathTemplate == GlobalRouteNames.gameWordWriter)
          pageBuilder.wordWriter()
        else if (pathTemplate == GlobalRouteNames.gameBookShelf)
          pageBuilder.bookShelf(),
        if (pathTemplate.contains('pause')) pageBuilder.pauseMenu()
      ]
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
