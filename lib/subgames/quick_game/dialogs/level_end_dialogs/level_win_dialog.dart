import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/pack_core.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/level_start/start_options/widgets/player_profile_row.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/widgets/widgets.dart';

class LevelWinDialog extends StatelessWidget {
  const LevelWinDialog({
    required this.onRestart,
    required this.onSaveResults,
    super.key,
  });
  final VoidCallback onRestart;
  final VoidCallback onSaveResults;

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);
    final uiTheme = UiTheme.of(context);
    final playersState =
        context.select<LevelPlayersBloc, LevelPlayersBlocState>(
      (final value) => value.state,
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
                onSaveResults();
                AppRouterController.use(context.read).toRoot();
                context.read<DialogController>().closeDialog();
              },
              child: const Text('To Landscapes'),
            ),
            TextButton(
              onPressed: onRestart,
              child: const Text('Start Again'),
            ),
          ],
        ),
      ],
    );
  }
}
