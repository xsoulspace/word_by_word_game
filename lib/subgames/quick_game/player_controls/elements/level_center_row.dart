import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/level_actions_row.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/word_composition_row.dart';

class UIDesktopLevelCenterRow extends StatelessWidget {
  const UIDesktopLevelCenterRow({super.key});

  @override
  Widget build(final BuildContext context) {
    final state = context.read<WordCompositionState>();
    final uiTheme = UiTheme.of(context);
    final phaseType = context.select<LevelBloc, LevelPlayerPhaseType>(
      (final s) => s.getLiveState().phaseType,
    );
    switch (phaseType) {
      case LevelPlayerPhaseType.entryWord:
        return const UIWordCompositionRow();
      case LevelPlayerPhaseType.selectAction:
        return const UIDesktopLevelActionsRow();
    }
  }
}

class UIMobileLevelCenterRow extends StatelessWidget {
  const UIMobileLevelCenterRow({super.key});

  @override
  Widget build(final BuildContext context) {
    final state = context.read<WordCompositionState>();
    final uiTheme = UiTheme.of(context);
    final phaseType = context.select<LevelBloc, LevelPlayerPhaseType>(
      (final s) => s.getLiveState().phaseType,
    );
    switch (phaseType) {
      case LevelPlayerPhaseType.entryWord:
        return const UIWordCompositionRow();
      case LevelPlayerPhaseType.selectAction:
        return const UIMobileLevelActionsRow();
    }
  }
}
