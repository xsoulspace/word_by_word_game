import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/pack_core.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/widgets/widgets.dart';
import 'package:word_by_word_game/subgames/quick_game/start_options/widgets/widgets.dart';

class LevelWinDialog extends StatelessWidget {
  const LevelWinDialog({super.key});

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);
    final uiTheme = UiTheme.of(context);
    final playersState =
        context.select<LevelPlayersBloc, LiveLevelPlayersBlocState>(
      (final value) => value.getLiveState(),
    );

    return DialogScaffold(
      children: [
        Text(
          'Congratulations! You passed this landscape!',
          style: theme.textTheme.titleLarge,
        ),
        uiTheme.verticalBoxes.extraLarge,
        ...playersState.players.map(
          (final e) => PlayerProfileTile(player: e),
        ),
        uiTheme.verticalBoxes.extraLarge,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                AppRouterController.use(context.read).toRoot();
                context.read<DialogController>().closeDialog();
              },
              child: const Text('To Landscapes'),
            ),
            TextButton(
              onPressed: () {
                context.read<GlobalGameBloc>().add(const RestartLevelEvent());

                context.read<DialogController>().closeDialog();
              },
              child: const Text('Start Again'),
            ),
          ],
        ),
      ],
    );
  }
}
