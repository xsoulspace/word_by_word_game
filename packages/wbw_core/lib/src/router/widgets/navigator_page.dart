part of '../router.dart';

class NavigatorPage extends MaterialPage<void> {
  NavigatorPage({
    required final Widget child,
    required ValueKey super.key,
    final RouterPopper popper = const RouterPopper(),
    super.fullscreenDialog,
  }) : super(
          child: RouterPopScope(
            popper: popper,
            child: child,
          ),
        );
}
