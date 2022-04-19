part of pack_navigation;

class NavigatorMaterialPage extends MaterialPage<void> {
  NavigatorMaterialPage({
    required final Widget child,
    required final ValueKey key,
    required final AbstractNavigatorPopper popper,
    final bool fullscreenDialog = true,
  }) : super(
          fullscreenDialog: fullscreenDialog,
          key: key,
          child: NavigatorPopScope(
            popper: popper,
            child: child,
          ),
        );
}
