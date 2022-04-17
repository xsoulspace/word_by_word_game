part of pack_navigation;

class GameNavigatorLayoutBuilder implements AbstractNavigatorLayoutBuilder {
  GameNavigatorLayoutBuilder({
    required final this.pageBuilder,
  }) : popper = pageBuilder.popper;
  @override
  final GameNavigatorPageBuilder pageBuilder;
  @override
  final GameNavigatorPopper popper;

  List<Page> buildPages() {
    return [
      if (pathTemplate.startsWith(GameRouteNames.home)) ...[
        pageBuilder.homePage(),
      ] else
        GameNavigatorPageBuilder.emptyPage,
    ];
  }

  List<Page> getLargeScreenPages() {
    return buildPages();
  }

  List<Page> getSmallScreenPages() {
    return buildPages();
  }
}
