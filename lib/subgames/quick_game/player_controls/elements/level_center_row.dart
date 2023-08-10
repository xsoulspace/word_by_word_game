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
    // final uiTheme = UiTheme.of(context);
    final Widget body;
    switch (phaseType) {
      case GamePhaseType.entryWord:
        body = const UiWordCompositionBar();
      case GamePhaseType.selectFuel:
        body = Column(
          children: [
            const SizedBox(height: 48),
            const UiFuelBar(),
            if (DeviceRuntimeType.isMobile) const SizedBox(height: 36),
          ],
        );
    }

    return Column(
      children: [
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 16,
              ),
              child: UIMobilePlayerName(),
            ),
            UIMobilePlayerScore(),
          ],
        ),
        body,
      ],
    );
  }
}
