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

  static void onConfirmWord(final BuildContext context) {
    context.read<WordCompositionState>().onToSelectActionPhase();
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

    return MediaQuery(
      data: const MediaQueryData(),
      child: Column(
        children: [
          Container(
            constraints: const BoxConstraints(maxHeight: 68),
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Stack(
              children: [
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
                    alignment: phaseType == GamePhaseType.selectFuel
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
                              onPressed: () => onConfirmWord(context),
                            ).animate().fadeIn(),
                          )
                        : const SizedBox(),
                  ),
                ),
              ],
            ),
          ),
          const Gap(8),
          switch (phaseType) {
            GamePhaseType.entryWord => const UiWordCompositionBar(),
            GamePhaseType.selectFuel => const UiFuelBar(),
          }
        ],
      ),
    );
  }
}
