import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/envs.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/router.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/level_start/start_options/widgets/player_profile_row.dart';

class HighscoreScreen extends HookWidget {
  const HighscoreScreen({
    super.key,
  });
  @override
  Widget build(final BuildContext context) {
    final uiTheme = context.uiTheme;
    final theme = Theme.of(context);
    final players = context.select<GlobalGameBloc, List<PlayerProfileModel>>(
      (final value) {
        final effectivePlayers = [...value.state.playersCollection];
        return effectivePlayers
          ..sort(
            (final a, final b) =>
                b.highscore.score.value.compareTo(a.highscore.score.value),
          );
      },
    );
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          uiTheme.verticalBoxes.large,
          Row(
            children: [
              GameBackButton(
                onPressed: () {
                  AppPathsController.of(context).toPauseOrRoot(
                    globalGameBloc: context.read(),
                  );
                },
              ),
              Expanded(
                child: Text(
                  Envs.store.isYandexGames
                      ? S.of(context).playersAndHighscoreYandex
                      : S.of(context).playersAndHighscore,
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
              child: PlayerProfileTile(
                player: e,
                onDelete: !kDebugMode
                    ? null
                    : (final profile) {
                        unawaited(
                          context.read<GlobalGameBloc>().onDeletePlayerProfile(
                                DeletePlayerProfileEvent(profile: profile),
                              ),
                        );
                      },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
