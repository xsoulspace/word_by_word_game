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
  @override
  Widget build(final BuildContext context) {
    final phaseType = context.select<LevelBloc, GamePhaseType>(
      (final s) => s.state.phaseType,
    );

    return Column(
      children: [
        Row(
          children: [
            const Gap(16),
            const UIMobilePlayerName(),
            const UIMobilePlayerScore(),
            const Spacer(),
            TutorialFrame(
              highlightPosition: Alignment.topCenter,
              uiKey: TutorialUiItem.confirmWordButton,
              child: UiConfirmWordButton(
                onPressed: () {
                  context.read<WordCompositionState>().onToSelectActionPhase();
                  TutorialFrame.sendOnClickEvent(
                    uiKey: TutorialUiItem.confirmWordButton,
                    context: context,
                  );
                },
              ),
            ),
            const Gap(16),
          ],
        ),
        const Gap(8),
        switch (phaseType) {
          GamePhaseType.entryWord => const UiWordCompositionBar(),
          GamePhaseType.selectFuel => Column(
              children: [
                const SizedBox(height: 48),
                const UiFuelBar(),
                if (DeviceRuntimeType.isMobile) const SizedBox(height: 36),
              ],
            ),
        }
      ],
    );
  }
}
