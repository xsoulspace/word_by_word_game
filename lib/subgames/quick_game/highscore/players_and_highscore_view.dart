import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/level_start/start_options/widgets/player_profile_row.dart';
import 'package:word_by_word_game/subgames/quick_game/pause/adventure_view.dart';

class PlayersAndHighscoreView extends HookWidget {
  const PlayersAndHighscoreView({
    required this.onBack,
    super.key,
  });
  final VoidCallback onBack;
  @override
  Widget build(final BuildContext context) {
    final uiTheme = context.uiTheme;
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
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 600,
      ),
      child: Column(
        children: [
          uiTheme.verticalBoxes.large,
          const ViewTitle(
            title: LocalizedMap(
              value: {
                Languages.en: 'Players & Highscore',
                Languages.ru: 'Игроки & Рекорды',
                Languages.it: 'Giocatori & Highscore',
              },
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(24),
              children: [
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
                                context
                                    .read<GlobalGameBloc>()
                                    .onDeletePlayerProfile(
                                      DeletePlayerProfileEvent(
                                          profile: profile),
                                    ),
                              );
                            },
                    ),
                  ),
                ),
              ],
            ),
          ),
          uiTheme.verticalBoxes.extraLarge,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ViewBackButton(onBack: onBack),
            ],
          ),
          uiTheme.verticalBoxes.extraLarge,
        ],
      ),
    );
  }
}
