part of pack_navigation;

class GlobalNavigatorLayoutBuilder
    implements
        AbstractNavigatorLayoutBuilder<GlobalNavigatorPageBuilder,
            GlobalNavigatorPopper> {
  GlobalNavigatorLayoutBuilder({
    required final this.pageBuilder,
  }) : popper = pageBuilder.popper;
  @override
  final GlobalNavigatorPageBuilder pageBuilder;
  @override
  final GlobalNavigatorPopper popper;

  List<Page> buildPages() {
    return [
      if (pathTemplate.startsWith(GlobalRouteNames.home)) ...[
        pageBuilder.game(),
        if (pathTemplate.startsWith(GlobalRouteNames.menu)) ...[
          pageBuilder.menu(),
          // TODO(arenukvern): refactor settings to settings navigator
          if (pathTemplate == GlobalRouteNames.settings) pageBuilder.settings(),
        ]
      ] else
        GlobalNavigatorPageBuilder.emptyPage,
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
