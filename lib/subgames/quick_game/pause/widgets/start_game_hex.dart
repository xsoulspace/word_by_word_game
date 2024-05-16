import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:map_editor/state/models/models.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/pack_core.dart';
import 'package:word_by_word_game/router.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/pause/pause.dart';

class QuickStartGameButtons extends StatelessWidget {
  const QuickStartGameButtons({super.key});

  @override
  Widget build(final BuildContext context) {
    final state = context.read<PauseScreenState>();
    final levelPlayersBloc = context.watch<LevelPlayersBloc>();
    final statusCubit = context.watch<StatesStatusesCubit>();
    final params = context.routeParams;
    final routeArgs = LevelRouteArgs.fromJson(params);
    final levelId = CanvasDataModelId.fromJson(routeArgs.levelId);
    final isLevelRunning =
        levelId.isNotEmpty && levelPlayersBloc.isPlayersNotEmpty;
    final uiTheme = context.uiTheme;
    final globalGameCubit = context.watch<GlobalGameBloc>();
    return Provider(
      create: (final context) => state,
      builder: (final context, final child) {
        final canvasData = globalGameCubit.state.allCanvasData.values
            .firstWhere((final e) => e.tilesetType == TilesetType.whiteBlack);

        return AnimatedCrossFade(
          alignment: Alignment.center,
          duration: 350.milliseconds,
          crossFadeState: statusCubit.isLoading
              ? CrossFadeState.showSecond
              : CrossFadeState.showFirst,
          firstChild: Column(
            key: ValueKey(canvasData),
            mainAxisSize: MainAxisSize.min,
            children: [
              uiTheme.verticalBoxes.large,
              LevelRestartDialogButton(level: canvasData)
                  .animate()
                  .then(duration: 150.milliseconds)
                  .fadeIn()
                  .slideY(begin: -0.1),
              uiTheme.verticalBoxes.large,
              if (isLevelRunning)
                UiFilledButton.text(
                  text: S.of(context).continueGame,
                  onPressed: () async => state.onContinue(
                    context: context,
                    id: levelId,
                  ),
                )
                    .animate()
                    .then(duration: 450.milliseconds)
                    .fadeIn()
                    .slideY(begin: -0.1),
              uiTheme.verticalBoxes.medium,
            ],
          ),
          secondChild: const UiCircularProgress(),
        );
      },
    );
  }
}

class LevelsView extends StatelessWidget {
  const LevelsView({super.key});

  @override
  Widget build(final BuildContext context) {
    final state = context.read<PauseScreenState>();
    final canvasIds = context.select<GlobalGameBloc, List<CanvasDataModelId>>(
      (final c) => c.state.allCanvasData.keys.toList(),
    );
    final levelSaves =
        context.select<GlobalGameBloc, Map<CanvasDataModelId, LevelModel>>(
      (final c) => c.state.savedLevels,
    );
    final currentLevelId = context.select<GlobalGameBloc, CanvasDataModelId>(
      (final c) => c.state.currentLevelId,
    );

    return Column(
      children: [
        const Gap(24),
        // TODO(arenukvern): l10n
        Text('Worlds', style: context.textThemeBold.headlineLarge),
        const Gap(24),
        Center(
          child: SizedBox(
            height: _LevelCard.dimension,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (final context, final index) {
                final canvasId = canvasIds[index];
                return _LevelCard(
                  key: ValueKey(canvasId),
                  canvasId: canvasId,
                  levelSave: levelSaves[canvasId],
                  isCurrent: currentLevelId == canvasId,
                  onStart: () async =>
                      state.onStart(context: context, id: canvasId),
                  onRestart: () async => state.onStart(
                    context: context,
                    id: canvasId,
                    restart: true,
                  ),
                  onContinue: () async =>
                      state.onContinue(context: context, id: canvasId),
                );
              },
              separatorBuilder: (final context, final index) => const Gap(16),
              itemCount: canvasIds.length,
            ),
          ),
        ),
      ],
    );
  }
}

class _LevelCard extends StatelessWidget {
  const _LevelCard({
    required this.canvasId,
    required this.levelSave,
    required this.isCurrent,
    required this.onStart,
    required this.onContinue,
    required this.onRestart,
    super.key,
  });
  final CanvasDataModelId canvasId;
  final LevelModel? levelSave;
  final VoidCallback onStart;
  final VoidCallback onContinue;
  final VoidCallback onRestart;

  final bool isCurrent;
  static const dimension = 170.0;
  @override
  Widget build(final BuildContext context) {
    final canvasData =
        context.read<GlobalGameBloc>().state.allCanvasData[canvasId];
    if (canvasData == null) return const SizedBox();
    final levelSave = this.levelSave;

    return UiBaseButton(
      onPressed: () {
        if (levelSave == null) {
          onStart();
        } else {
          onContinue();
        }
      },
      child: Card.outlined(
        elevation: isCurrent ? 8 : 0,
        child: SizedBox.square(
          dimension: dimension,
          child: Column(
            children: [
              const Gap(16),
              Text(
                canvasData.name.getValueByLanguage(),
                style: context.textThemeBold.titleLarge,
              ),
              if (isCurrent) const Text('Recent play'),
              // TODO(arenukvern): add players,
              const Gap(16),
              const Spacer(),
              if (levelSave != null) ...[
                FilledButton.tonal(
                  onPressed: onContinue,
                  child: const Text('Continue'),
                ),
                TextButton(
                  onPressed: onRestart,
                  child: Text(
                    'Restart',
                    style: context.errorTextTheme.bodyMedium,
                  ),
                ),
              ] else
                TextButton(
                  onPressed: onStart,
                  child: const Text('Start'),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
