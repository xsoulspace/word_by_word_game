import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_game/levels_hud/controls/widgets/level_actions_row.dart';
import 'package:word_by_word_game/pack_game/levels_hud/controls/widgets/word_composition_row.dart';

class UILevelCenterRow extends StatelessWidget {
  const UILevelCenterRow({
    this.leftTopBuilder,
    this.rightTopBuilder,
    final Key? key,
  }) : super(key: key);
  final WidgetBuilder? leftTopBuilder;
  final WidgetBuilder? rightTopBuilder;

  @override
  Widget build(final BuildContext context) {
    final state = context.read<WordCompositionState>();
    final uiTheme = UiTheme.of(context);
    final phaseType =
        context.select<LevelBloc, LevelPlayerPhaseType>((final s) {
      return s.getLiveState().phaseType;
    });
    switch (phaseType) {
      case LevelPlayerPhaseType.entryWord:
        return UIWordCompositionRow(
          leftTopBuilder: leftTopBuilder,
          rightTopBuilder: rightTopBuilder,
        );
      case LevelPlayerPhaseType.selectAction:
        return UILevelActionsRow(
          leftTopBuilder: leftTopBuilder,
          rightTopBuilder: rightTopBuilder,
        );
    }
  }
}
