import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/common_imports.dart';
import 'package:word_by_word_game/router.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/pause/pause.dart';

const kQuickGameMapId =
    CanvasDataModelId(value: '823ea880-44c3-11ee-a8e7-c3f4020ba610');

class GameStartButtons extends StatelessWidget {
  const GameStartButtons({
    required this.onChangeRoute,
    super.key,
  });
  final ValueSetter<PauseScreenRoute> onChangeRoute;
  @override
  Widget build(final BuildContext context) {
    final state = context.read<PauseScreenState>();
    final levelPlayersBloc = context.watch<LevelPlayersBloc>();
    final quickGameSave = context.select<GlobalGameBloc, LevelModel?>(
      (final bloc) => bloc.state.savedLevels[kQuickGameMapId],
    );
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

    final uiTheme = context.uiTheme;
    final globalGameCubit = context.watch<GlobalGameBloc>();

    context.watch<LevelStartDialogUiState>();

    return ChangeNotifierProvider.value(
      value: state,
      builder: (final context, final child) {
        final quickGameCanvasData =
            globalGameCubit.state.allCanvasData.values.firstWhere(
          (final e) => e.id == kQuickGameMapId,
        );
        return Column(
          key: ValueKey(quickGameCanvasData),
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card.outlined(
              color: context.colorScheme.surface,
              child: Column(
                children: [
                  uiTheme.verticalBoxes.medium,
                  const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.timer_outlined),
                      Gap(6),
                      Text('QUICK GAME'),
                    ],
                  ),
                  uiTheme.verticalBoxes.medium,
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Gap(6),
                      UiFilledButton.icon(
                        icon: quickGameSave != null
                            ? Icons.play_arrow_rounded
                            : Icons.accessibility_new_rounded,
                        // TODO(arenukvern): l10n
                        text: quickGameSave != null ||
                                (isCurrentLevelQuickGame &&
                                    isCurrentLevelRunning)
                            ? 'RESUME'
                            : 'START',
                        onPressed: () async {
                          if (quickGameSave != null) {
                            return state.onContinueFromSamePlace(
                              context: context,
                              id: kQuickGameMapId,
                            );
                          }
                          return state.onShowStartDialog(
                            canvasDataId: kQuickGameMapId,
                            context: context,
                          );
                        },
                      )
                          .animate()
                          .then(duration: 150.milliseconds)
                          .fadeIn()
                          .slideY(begin: -0.1),
                      if (quickGameSave != null) ...[
                        const Gap(6),
                        UiFilledButton.icon(
                          // TODO(arenukvern): l10n
                          text: 'RESTART',
                          icon: CupertinoIcons.refresh_thick,
                          onPressed: () async => state.onShowStartDialog(
                            canvasDataId: kQuickGameMapId,
                            context: context,
                          ),
                        ),
                      ],
                      const Gap(6),
                    ],
                  ),
                  uiTheme.verticalBoxes.medium,
                ],
              ),
            ),
            uiTheme.verticalBoxes.medium,
            Card.outlined(
              color: context.colorScheme.surface,
              child: Column(
                children: [
                  uiTheme.verticalBoxes.medium,
                  const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.air),
                      Gap(6),
                      Text('ADVENTURE'),
                    ],
                  ),
                  uiTheme.verticalBoxes.medium,
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Gap(6),
                      if (hasAdventureGameSave) ...[
                        UiFilledButton.icon(
                          icon: Icons.play_arrow_rounded,
                          // TODO(arenukvern): l10n
                          text: 'RESUME',
                          onPressed: () async {
                            final CanvasDataModelId adventureLevelId;
                            final savedLevels = [
                              ...context
                                  .read<GlobalGameBloc>()
                                  .state
                                  .savedLevels
                                  .values
                                  .where(
                                    (final e) => e.id != kQuickGameMapId,
                                  ),
                            ]..sort(
                                (final a, final b) {
                                  // 1 - later, -1 - earlier
                                  if (a.updatedAt == null) return 1;
                                  if (b.updatedAt == null) return -1;
                                  return b.updatedAt!.compareTo(a.updatedAt!);
                                },
                              );
                            if (isCurrentLevelRunning &&
                                !isCurrentLevelQuickGame) {
                              adventureLevelId = currentLevelId;
                            } else {
                              /// last saved level
                              adventureLevelId = savedLevels.first.id;
                            }

                            return state.onContinueFromSamePlace(
                              context: context,
                              id: adventureLevelId,
                            );
                          },
                        )
                            .animate()
                            .then(duration: 150.milliseconds)
                            .fadeIn()
                            .slideY(begin: -0.1),
                        const Gap(6),
                      ],
                      UiFilledButton.icon(
                        // TODO(arenukvern): l10n
                        text: 'CHOOSE',
                        icon: Icons.explore_outlined,
                        onPressed: () =>
                            onChangeRoute(PauseScreenRoute.adventure),
                      ),
                      const Gap(6),
                    ],
                  ),
                  uiTheme.verticalBoxes.medium,
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
