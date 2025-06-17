import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:map_editor/state/models/models.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/pack_core/pack_core.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/quick_game.dart';

final router = GoRouter(
  redirect: _handleRootRedirect,
  routes: [
    ShellRoute(
      builder: (final context, final state, final child) =>
          DialogStack(child: child),
      routes: [
        AppRoute(
          ScreenPaths.root,
          (final context, final state) => const PreloadingScreen(),
          routes: [
            GoRoute(
              path: ScreenPaths.playableLevel,
              builder: (final context, final state) =>
                  const WbwGameWidget(key: ValueKey('lvl')),
              routes: [
                AppRoute(
                  'pause',
                  (final context, final state) =>
                      const PauseScreen(key: ValueKey(ScreenPaths.pause)),
                  isTransparent: true,
                  useFade: true,
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
);

String? _handleRootRedirect(
  final BuildContext context,
  final GoRouterState state,
) {
  final appStatus = context.read<AppStatusNotifier>().value;
  final location = state.uri.toString();
  // Prevent anyone from navigating away from `/` if app is starting up.
  if (appStatus == AppStatus.loading && location != ScreenPaths.root) {
    return ScreenPaths.root;
  }

  debugPrint('Navigate to: ${state.uri}');
  return null; // do nothing
}

/// Custom GoRoute sub-class to make the router declaration easier to read
class AppRoute extends GoRoute {
  AppRoute(
    final String path,
    final Widget Function(BuildContext context, GoRouterState state) builder, {
    final List<GoRoute> routes = const [],
    final bool useFade = false,
    final bool isTransparent = false,
  }) : super(
         path: path,
         routes: routes,
         pageBuilder: (final context, final state) {
           // final pageContent = Scaffold(
           //   body: builder(state),
           //   resizeToAvoidBottomInset: false,
           // );
           final pageContent = builder(context, state);
           if (useFade || isTransparent) {
             return CustomTransitionPage(
               key: state.pageKey,
               child: pageContent,
               opaque: !isTransparent,
               barrierColor: Colors.transparent,
               transitionsBuilder:
                   (
                     final context,
                     final animation,
                     final secondaryAnimation,
                     final child,
                   ) => FadeTransition(opacity: animation, child: child),
             );
           }
           return CupertinoPage(child: pageContent);
         },
       );
}

/// !If you want to add new route, please add the route to the [routes]
class ScreenPaths {
  ScreenPaths._();
  static const root = '/';
  static const playableLevel = 'lvl/:levelId';
  static String toPlayableLevel({required final CanvasDataModelId id}) =>
      '/lvl/${id.value}';
  static const pause = 'lvl/:levelId/pause';
  static String toPause({required final CanvasDataModelId id}) =>
      '/lvl/${id.value}/pause';

  static const routes = [root, playableLevel, pause];
}

/// runtime only
class AppPathsController {
  AppPathsController.of(this.context);
  final BuildContext context;
  void toPlayableLevel({required final CanvasDataModelId id}) =>
      to(ScreenPaths.toPlayableLevel(id: id));
  void toLevels() {
    final gameBloc = context.read<GlobalGameBloc>();
    final currentLevelId = gameBloc.state.currentLevelId;
    to(ScreenPaths.toPause(id: currentLevelId));
  }

  void toPauseOrRoot({required final GlobalGameBloc globalGameBloc}) {
    final levelId = globalGameBloc.state.currentLevelId;
    final isGameIsRunning = levelId.isNotEmpty;
    if (isGameIsRunning) {
      toPause(id: levelId);
    } else {
      toLevels();
    }
  }

  void to(final String path) => context.go(path);

  void toPause({required final CanvasDataModelId id}) =>
      to(ScreenPaths.toPause(id: id));
}

extension RouterBuildContextX on BuildContext {
  GoRouter get router => GoRouter.of(this);
  Map<String, String> get routeParams =>
      router.routerDelegate.currentConfiguration.pathParameters;
}
