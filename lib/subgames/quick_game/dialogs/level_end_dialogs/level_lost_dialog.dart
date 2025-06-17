import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:wbw_ui_kit/wbw_ui_kit.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/router.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/level_start/start_options/widgets/player_profile_row.dart';

class LevelLostDialog extends StatelessWidget {
  const LevelLostDialog({
    required this.onToLevels,
    required this.onRestart,
    super.key,
  });
  final VoidCallback onToLevels;
  final VoidCallback onRestart;

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);
    final players = context.select<LevelPlayersBloc, List<PlayerProfileModel>>((
      final value,
    ) {
      final effectivePlayers = [...value.state.players];
      return effectivePlayers..sort(
        (final a, final b) =>
            b.highscore.score.value.compareTo(a.highscore.score.value),
      );
    });
    return DialogScaffold(
      children: [
        Text(
          S.of(context).youHaveLandedInTheNowhere,
          style: theme.textTheme.titleLarge,
        ),
        UiGaps.large,
        ...players.map(
          (final e) => Padding(
            padding: const EdgeInsets.only(top: 16),
            child: PlayerProfileTile(player: e),
          ),
        ),
        const Gap(24),
        if (false)
          // TODO(arenukvern): add revive
          // ignore: dead_code
          TextButton(
            onPressed: () {
              throw UnimplementedError('unimplemented error');
            },
            child: const Text('Use Score to continue'),
          ),
        const Gap(16),
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
              onPressed: onRestart,
              child: Text(S.of(context).startAgain),
            ),
          ],
        ),
      ],
    );
  }
}
