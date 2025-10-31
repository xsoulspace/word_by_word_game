import 'package:word_by_word_game/common_imports.dart';
import 'package:word_by_word_game/router.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/pause/pause.dart';

({
  bool isAdventureSaveExists,
  bool isQuickSaveExists,
  bool isCurrentLevelQuickGame,
  bool isCurrentLevelRunning,
  PauseScreenState pauseScreenState,
  CanvasDataModelId currentLevelId,
})
useGameStartButtonsStatuses(final BuildContext context) {
  final pauseScreenState = context.read<PauseScreenState>();
  final levelPlayersBloc = context.watch<LevelPlayersBloc>();
  final quickGameSave = context.select<GlobalGameBloc, LevelModel?>(
    (final bloc) => bloc.state.savedLevels[kQuickGameMapId],
  );

  context.watch<GlobalGameBloc>();
  context.watch<LevelStartDialogUiState>();

  final hasAdventureGameSave = context.select<GlobalGameBloc, bool>(
    (final bloc) =>
        bloc.state.savedLevels.keys.firstWhereOrNull(
          (final e) => e != kQuickGameMapId,
        ) !=
        null,
  );

  final params = context.routeParams;
  final routeArgs = LevelRouteArgs.fromJson(params);

  /// may be quick game or adventure
  final currentLevelId = CanvasDataModelId.fromJson(routeArgs.levelId);
  final isCurrentLevelRunning =
      currentLevelId.isNotEmpty && levelPlayersBloc.isPlayersNotEmpty;
  final isCurrentLevelQuickGame = currentLevelId == kQuickGameMapId;

  return (
    currentLevelId: currentLevelId,
    pauseScreenState: pauseScreenState,
    isAdventureSaveExists: quickGameSave != null,
    isQuickSaveExists: hasAdventureGameSave,
    isCurrentLevelRunning: isCurrentLevelRunning,
    isCurrentLevelQuickGame: isCurrentLevelQuickGame,
  );
}
