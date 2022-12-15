import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/generated/l10n.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/pack_core.dart';
import 'package:word_by_word_game/pack_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/pack_game/levels/screens/level_options/widgets/widgets.dart';

class LevelLostDialog extends StatelessWidget {
  const LevelLostDialog({
    required this.onSendEndLevelEvent,
    super.key,
  });
  final VoidCallback onSendEndLevelEvent;

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);
    final uiTheme = UiTheme.of(context);
    final players = context.select<LevelPlayersBloc, List<PlayerProfileModel>>(
      (final value) {
        final effectivePlayers = [...value.getLiveState().players];
        return effectivePlayers
          ..sort(
            (final a, final b) =>
                b.highscore.score.value.compareTo(a.highscore.score.value),
          );
      },
    );
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 450,
      ),
      child: Card(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(uiTheme.spacing.extraLarge),
          children: [
            Text(
              S.of(context).youHaveLandedInTheNowhere,
              style: theme.textTheme.titleLarge,
            ),
            uiTheme.verticalBoxes.extraLarge,
            ...players.map(
              (final e) => Padding(
                padding: EdgeInsets.only(top: uiTheme.spacing.medium),
                child: PlayerProfileTile(player: e),
              ),
            ),
            uiTheme.verticalBoxes.extraLarge,
            if (false)
              // ignore: dead_code
              TextButton(
                onPressed: () {
                  context.read<GlobalGameBloc>().add(const RestartLevelEvent());

                  context.read<DialogController>().closeDialog();
                },
                child: const Text('Use Score to continue'),
              ),
            uiTheme.verticalBoxes.medium,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    onSendEndLevelEvent();
                    AppRouterController.use(context.read).toRoot();
                    context.read<DialogController>().closeDialog();
                  },
                  child: Text(S.of(context).toLandscapes),
                ),
                TextButton(
                  onPressed: () {
                    onSendEndLevelEvent();
                    context
                        .read<GlobalGameBloc>()
                        .add(const RestartLevelEvent());

                    context.read<DialogController>().closeDialog();
                  },
                  child: Text(S.of(context).startAgain),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
