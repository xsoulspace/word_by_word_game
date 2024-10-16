import 'dart:async';

import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/elements.dart';
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
    final textTheme = context.textTheme;
    final uiTheme = context.uiTheme;
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
        devicePixelRatio: 1,
        textScaler: TextScaler.noScaling,
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 10,
            ),
            child: Stack(
              children: [
                Row(
                  children: [
                    switch (phaseType) {
                      GamePhaseType.entryWord =>
                        Text('', style: textTheme.displaySmall),
                      GamePhaseType.selectAction =>
                        Text('', style: textTheme.displaySmall),
                    },
                  ],
                ),
                Positioned.fill(
                  child: AnimatedAlign(
                    duration: 250.milliseconds,
                    alignment: phaseType == GamePhaseType.entryWord
                        ? Alignment.center
                        : Alignment.centerLeft,
                    child: const UIMobilePlayerName(),
                  ),
                ),
                Positioned.fill(
                  child: AnimatedAlign(
                    duration: 220.milliseconds,
                    alignment: phaseType == GamePhaseType.selectAction
                        ? Alignment.center
                        : Alignment.centerLeft,
                    child: const UIMobilePlayerScore(),
                  ),
                ),
                Positioned.fill(
                  child: AnimatedAlign(
                    duration: 250.milliseconds,
                    alignment: Alignment.centerRight,
                    child: phaseType == GamePhaseType.entryWord
                        ? TutorialFrame(
                            highlightPosition: Alignment.topCenter,
                            uiKey: TutorialUiItem.confirmWordButton,
                            child: UiConfirmWordButton(
                              onPressed: () async => onConfirmWord(context),
                            ).animate().fadeIn(),
                          )
                        : const SizedBox(),
                  ),
                ),
              ],
            ),
          ),
          ...switch (phaseType) {
            GamePhaseType.entryWord => [
                const Gap(8),
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
