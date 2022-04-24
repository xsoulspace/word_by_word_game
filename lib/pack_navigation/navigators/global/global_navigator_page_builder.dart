part of pack_navigation;

class GlobalNavigatorPageBuilder
    implements AbstractNavigatorPageBuilder<GlobalNavigatorPopper> {
  GlobalNavigatorPageBuilder({
    required final this.popper,
    required final this.context,
  });
  static final emptyPage = MaterialPage(child: Container());

  @override
  final GlobalNavigatorPopper popper;
  @override
  final BuildContext context;

  static const _settingsKey = ValueKey(GlobalRouteNames.settings);
  static const _gameNKey = ValueKey(GlobalRouteNames.home);
  Page game() {
    return NavigatorMaterialPage(
      key: _gameNKey,
      popper: popper,
      child: const GameScaffold(),
    );
  }

  Page settings() {
    return NavigatorMaterialPage(
      key: _settingsKey,
      popper: popper,
      child: const SettingsScreen(),
    );
  }
}
