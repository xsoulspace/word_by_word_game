import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/router.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/level_start/start_options/widgets/player_profile_row.dart';

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
    final uiTheme = context.uiTheme;
    final playersState =
        context.select<LevelPlayersBloc, LevelPlayersBlocState>(
      (final value) => value.state,
    );

    return DialogScaffold(
      children: [
        Text(
          S.of(context).congratulationsYouPassedTheLandscape,
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
                AppPathsController.of(context).toLastLevel();
                context.read<DialogController>().closeDialog();
              },
              child: Text(S.of(context).toLandscapes),
            ),
            TextButton(
              onPressed: onRestart,
              child: Text(S.of(context).startAgain),
            ),
          ],
        ),
      ],
    );
  }
}
