import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/overlays/overlays.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/elements.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/level_actions_frame/focused_object_actions_view.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/word_composition_bar/word_composition_bar.dart';

class UILevelCenterBar extends StatelessWidget {
  const UILevelCenterBar({
    super.key,
  });

  static Future<void> onConfirmWord(final BuildContext context) async {
    unawaited(context.read<WordCompositionCubit>().onToSelectActionPhase());
    TutorialFrame.sendOnClickEvent(
      uiKey: TutorialUiItem.confirmWordButton,
      context: context,
    );
  }

  @override
  Widget build(final BuildContext context) {
    final phaseType = context.select<LevelBloc, GamePhaseType>(
      (final s) => s.state.phaseType,
    );
    final uiTheme = context.uiTheme;
    final levelCubit = context.watch<LevelBloc>();
    final isActionPhaseAndAdvanced = phaseType == GamePhaseType.selectAction &&
        levelCubit.featuresSettings.isAdvancedGame;
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
        devicePixelRatio: 1,
        textScaler: TextScaler.noScaling,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (isActionPhaseAndAdvanced) const Gap(6),
              // TODO(arenukvern): figure out where to place it
              AnimatedSize(
                duration: 200.milliseconds,
                child: const UiPhaseText(),
              ),
              if (isActionPhaseAndAdvanced) ...[
                const Flexible(child: SwitchFocusButton()),
              ],
            ],
          ),
          Divider(color: context.colorScheme.tertiary.withOpacity(0.2)),
          ...switch (phaseType) {
            GamePhaseType.entryWord => [
                const Gap(12),
                const UiWordCompositionBar(),
                uiTheme.verticalBoxes.medium,
              ],
            GamePhaseType.selectAction => [const UiActionFrame()],
          },
        ],
      ),
    );
  }
}
