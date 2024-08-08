import 'package:collection/collection.dart';
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

const _kQuickGameMapId =
    CanvasDataModelId(value: '823ea880-44c3-11ee-a8e7-c3f4020ba610');

class QuickStartGameButtons extends StatelessWidget {
  const QuickStartGameButtons({super.key});
  @override
  Widget build(final BuildContext context) {
    final state = context.read<PauseScreenState>();
    final levelPlayersBloc = context.watch<LevelPlayersBloc>();

    final params = context.routeParams;
    final routeArgs = LevelRouteArgs.fromJson(params);
    final levelId = CanvasDataModelId.fromJson(routeArgs.levelId);
    final isLevelRunning =
        levelId.isNotEmpty && levelPlayersBloc.isPlayersNotEmpty;
    final uiTheme = context.uiTheme;
    final globalGameCubit = context.watch<GlobalGameBloc>();
    context.watch<LevelStartDialogUiState>();

    return ChangeNotifierProvider.value(
      value: state,
      builder: (final context, final child) {
        final canvasData =
            globalGameCubit.state.allCanvasData.values.firstWhere(
          (final e) => e.id == _kQuickGameMapId,
        );

        return Column(
          key: ValueKey(canvasData),
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (isLevelRunning)
              UiFilledButton.icon(
                icon: Icons.play_arrow_rounded,
                text: S.of(context).continueGame.toUpperCase(),
                onPressed: () async => state.onContinueFromSamePlace(
                  context: context,
                  id: levelId,
                ),
              )
                  .animate()
                  .then(duration: 450.milliseconds)
                  .fadeIn()
                  .slideY(begin: -0.1),
            uiTheme.verticalBoxes.medium,
            UiFilledButton.icon(
              icon: Icons.accessibility_new_rounded,
              // TODO(arenukvern): l10n
              text: 'QUICK GAME',
              onPressed: () async => state.onShowStartDialog(
                canvasDataId: canvasData.id,
                context: context,
              ),
            )
                .animate()
                .then(duration: 150.milliseconds)
                .fadeIn()
                .slideY(begin: -0.1),
          ],
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
      (final c) => c.state.allCanvasData.keys
          .whereNot((final id) => id == _kQuickGameMapId)
          .toList(),
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
        Text('Worlds', style: context.textThemeBold.headlineLarge)
            .animate()
            .then(duration: 150.milliseconds)
            .fadeIn()
            .slideY(begin: -0.1),
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
                  onStart: () async => state.onShowStartDialog(
                    context: context,
                    canvasDataId: canvasId,
                  ),
                  onOpenNewGameDialog: () async => state.onShowStartDialog(
                    context: context,
                    canvasDataId: canvasId,
                  ),
                  onContinue: () async => state.onContinueFromSamePlace(
                    context: context,
                    id: canvasId,
                  ),
                );
              },
              separatorBuilder: (final context, final index) => const Gap(16),
              itemCount: canvasIds.length,
            ),
          ),
        )
            .animate()
            .then(duration: 450.milliseconds)
            .fadeIn()
            .slideY(begin: -0.1),
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
    required this.onOpenNewGameDialog,
    super.key,
  });
  final CanvasDataModelId canvasId;
  final LevelModel? levelSave;
  final VoidCallback onStart;
  final VoidCallback onContinue;
  final VoidCallback onOpenNewGameDialog;

  final bool isCurrent;
  static const dimension = 170.0;
  @override
  Widget build(final BuildContext context) {
    final canvasData =
        context.read<GlobalGameBloc>().state.allCanvasData[canvasId];
    if (canvasData == null) return const SizedBox();
    final levelSave = this.levelSave;
    final playerId = levelSave?.players.currentPlayerId ?? '';
    final isSaveExists =
        playerId.isNotEmpty && playerId != PlayerProfileModel.emptyPlayerId;
    // TODO(arenukvern): l10n
    return UiBaseButton(
      onPressed: () {
        if (isSaveExists) {
          onContinue();
        } else {
          onStart();
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
              if (isCurrent && isSaveExists) const Text('Recent play'),
              // TODO(arenukvern): add players,
              const Gap(16),
              const Spacer(),
              if (isSaveExists) ...[
                FilledButton.tonal(
                  onPressed: onContinue,
                  child: const Text('Continue'),
                ),
                TextButton(
                  onPressed: onOpenNewGameDialog,
                  child: Text(
                    'Start Anew',
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
