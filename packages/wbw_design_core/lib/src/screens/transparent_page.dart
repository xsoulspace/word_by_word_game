import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class MaterialTransparentRoute<T> extends PageRoute<T> {
  MaterialTransparentRoute({
    super.settings,
    this.maintainState = true,
    super.fullscreenDialog,
    super.allowSnapshotting,
  });

  MaterialTransparentPage<T> get _page =>
      settings as MaterialTransparentPage<T>;

  @override
  Widget buildPage(
    final BuildContext context,
    final Animation<double> animation,
    final Animation<double> secondaryAnimation,
  ) {
    final Widget result = _page.child;
    return Stack(
      children: [
        Container().frosted().animate().then(delay: 25.milliseconds).fadeIn(
              curve: Curves.easeIn,
              duration: 400.milliseconds,
            ),
        Semantics(
          scopesRoute: true,
          explicitChildNodes: true,
          child: result,
        ),
      ],
    );
  }

  @override
  bool get opaque => false;

  @override
  final bool maintainState;

  @override
  String get debugLabel => '${super.debugLabel}(${settings.name})';

  @override
  Color? get barrierColor => null;

  @override
  String? get barrierLabel => null;

  @override
  Duration get transitionDuration => Duration.zero;
}

class MaterialTransparentPage<T> extends Page<T> {
  /// Creates a material page.
  const MaterialTransparentPage({
    required this.child,
    this.maintainState = true,
    this.fullscreenDialog = false,
    this.allowSnapshotting = true,
    super.key,
    super.name,
    super.arguments,
    super.restorationId,
  });

  /// The content to be shown in the [Route] created by this page.
  final Widget child;

  /// {@macro flutter.widgets.ModalRoute.maintainState}
  final bool maintainState;

  /// {@macro flutter.widgets.PageRoute.fullscreenDialog}
  final bool fullscreenDialog;

  /// {@macro flutter.widgets.TransitionRoute.allowSnapshotting}
  final bool allowSnapshotting;

  @override
  Route<T> createRoute(final BuildContext context) =>
      MaterialTransparentRoute<T>(
        settings: this,
        allowSnapshotting: allowSnapshotting,
      );
}
