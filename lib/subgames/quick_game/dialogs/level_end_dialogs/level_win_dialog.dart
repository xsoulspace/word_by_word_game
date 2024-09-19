import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/router.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/level_start/start_options/widgets/player_profile_row.dart';

class LevelWinDialog extends StatelessWidget {
  const LevelWinDialog({
    required this.onContinue,
    required this.onToLevels,
    super.key,
  });
  final VoidCallback onContinue;
  final VoidCallback onToLevels;

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
                AppPathsController.of(context).toLevels();
                onToLevels();
              },
              child: Text(S.of(context).toLandscapes),
            ),
            TextButton(
              onPressed: onContinue,
              // TODO(arenukvern): replace to continue
              child: Text(S.of(context).startAgain),
            ),
            // TODO(arenukvern): maybe add reset level button
          ],
        ),
      ],
    );
  }
}
