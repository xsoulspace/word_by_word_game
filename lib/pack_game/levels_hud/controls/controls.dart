import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_game/levels_hud/controls/widgets/widgets.dart';

class ControlsWidget extends StatelessWidget {
  const ControlsWidget({super.key});

  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    final spacing = uiTheme.spacing;
    final levelBloc = context.watch<LevelBloc>();
    final levelState = levelBloc.state;
    if (levelState is! LiveLevelBlocState) return const SizedBox();

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          children: [
            Text(levelState.fuelStorage.value.toString()),
            const PlayerSwitcher(),
          ],
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(spacing.large),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Expanded(child: WordCompositionRow()),
                uiTheme.horizontalBoxes.large,
                const SendWordActionButton(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
