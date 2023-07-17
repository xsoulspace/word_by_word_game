import 'package:map_editor/state/models/models.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/ephemeral/global_game_bloc.dart';

/// !If you want to add new route, please add the route to the [routes]
class NavigationRoutes {
  NavigationRoutes._();
  static const root = '/';
  static const highscore = '/highscore';
  static const settings = '/settings';

  static const levelRoot = '/lvl';
  static const playableLevel = '/lvl/:levelId';
  static String toPlayableLevel({required final CanvasDataModelId id}) =>
      '/lvl/${id.value}';
  static const pause = '/lvl/:levelId/pause';
  static String toPause({required final CanvasDataModelId id}) =>
      '/lvl/${id.value}/pause';

  static const routes = [root, playableLevel, pause, highscore, settings];
}

class AppRouterController extends RouterController {
  AppRouterController.use(super.read) : super.use();
  void toPlayableLevel({required final CanvasDataModelId id}) =>
      to(NavigationRoutes.toPlayableLevel(id: id));

  void toRoot() => to(NavigationRoutes.root);
  void toSettings() => to(NavigationRoutes.settings);
  void toPauseOrRoot({
    required final GlobalGameBloc globalGameBloc,
  }) {
    final levelId = globalGameBloc.state.currentLevelId;
    final isGameIsRunning = levelId.isNotEmpty;
    if (isGameIsRunning) {
      toPause(id: levelId);
    } else {
      toRoot();
    }
  }

  void toPause({
    required final CanvasDataModelId id,
  }) =>
      to(NavigationRoutes.toPause(id: id));
  void toPlayersAndHighscore() => to(NavigationRoutes.highscore);
}
