import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_game/levels_hud/controls/widgets/widgets.dart';

class ControlsWidget extends StatelessWidget {
  const ControlsWidget({super.key});

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);
    final uiTheme = UiTheme.of(context);

    final spacing = uiTheme.spacing;
    final levelBloc = context.watch<LevelBloc>();
    final levelState = levelBloc.state;
    if (levelState is! LiveLevelBlocState) return const SizedBox();

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.all(uiTheme.circularRadius.medium),
      ),
      height: 190,
      constraints: const BoxConstraints(maxWidth: 700),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PlayerSwitcher(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: spacing.large,
                vertical: spacing.medium,
              ),
              child: const WordCompositionRow(),
            ),
          ),
        ],
      ),
    );
  }
}
