import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:map_editor/state/models/models.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/pack_core.dart';
import 'package:word_by_word_game/router.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/pause/pause.dart';

const kQuickGameMapId =
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
        final quickGameCanvasData =
            globalGameCubit.state.allCanvasData.values.firstWhere(
          (final e) => e.id == kQuickGameMapId,
        );

        return Column(
          key: ValueKey(quickGameCanvasData),
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (isLevelRunning)
              UiFilledButton.icon(
                icon: Icons.play_arrow_rounded,
                text:
                    // TODO(arenukvern): l10n
                    // ignore: lines_longer_than_80_chars
                    'Resume ${levelId == kQuickGameMapId ? 'Quick Game' : 'Adventure'}'
                        .toUpperCase(),
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
                canvasDataId: kQuickGameMapId,
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
