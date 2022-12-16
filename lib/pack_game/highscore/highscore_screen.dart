import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/generated/l10n.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/pack_core.dart';
import 'package:word_by_word_game/pack_game/levels/screens/level_options/widgets/widgets.dart';

class HighscoreScreen extends HookWidget {
  const HighscoreScreen({
    final Key? key,
  }) : super(key: key);
  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    final theme = Theme.of(context);
    final players = context.select<GlobalGameBloc, List<PlayerProfileModel>>(
      (final value) {
        final effectivePlayers = [...value.getLiveState().playersCollection];
        return effectivePlayers
          ..sort(
            (final a, final b) =>
                b.highscore.score.value.compareTo(a.highscore.score.value),
          );
      },
    );
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            uiTheme.verticalBoxes.large,
            Row(
              children: [
                GameBackButton(
                  onPressed: () {
                    AppRouterController.use(context.read).toPauseOrRoot(
                      globalGameBloc: context.read(),
                    );
                  },
                ),
                Expanded(
                  child: Text(
                    S.of(context).playersAndHighscore,
                    style: theme.textTheme.headlineLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            uiTheme.verticalBoxes.extraLarge,
            uiTheme.verticalBoxes.extraLarge,
            ...players.map(
              (final e) => Padding(
                padding: EdgeInsets.only(top: uiTheme.spacing.medium),
                child: PlayerProfileTile(player: e),
              ),
            ),
          ],
        ),
      ),
    );
  }
}