import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_game/controls/widgets/widgets.dart';

class ControlsWidget extends StatelessWidget {
  const ControlsWidget({super.key});

  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    final spacing = uiTheme.spacing;

    return Padding(
      padding: EdgeInsets.all(spacing.large),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BlocBuilder<LevelBloc, LevelBlocState>(
                builder: (final context, final state) {
                  if (state is! LiveLevelBlocState) return const SizedBox();

                  return Text(state.fuelStorage.value.toString());
                },
              ),
              const PlayerSwitcher(),
            ],
          ),
          uiTheme.horizontalBoxes.large,
          const Expanded(child: WordCompositionRow()),
          uiTheme.horizontalBoxes.large,
          const SendWordActionButton(),
        ],
      ),
    );
  }
}
