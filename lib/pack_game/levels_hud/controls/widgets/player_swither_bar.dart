import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/ephemeral/ephemeral.dart';
import 'package:word_by_word_game/pack_game/levels/screens/level_options/widgets/widgets.dart';

class PlayerSwitcher extends HookWidget {
  const PlayerSwitcher({super.key});

  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    return BlocBuilder<LevelPlayersBloc, LevelPlayersBlocState>(
      builder: (final context, final state) {
        final liveState = state;
        if (liveState is! LiveLevelPlayersBlocState) {
          return const SizedBox();
        }
        final players = liveState.notCurrentPlayers;

        return SizedBox(
          width: 240,
          child: Row(
            children: [
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: uiTheme.spacing.medium),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxHeight: 100,
                    maxWidth: 50,
                  ),
                  child: Wrap(
                    children: [...players, ...players, ...players, ...players]
                        .map(
                          (final player) => Material(
                            elevation: 4,
                            child: PlayerProfileAvatar(
                              player: player,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(uiTheme.spacing.small),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        PlayerProfileAvatar(
                          player: liveState.currentPlayer,
                        ),
                        uiTheme.verticalBoxes.medium,
                        Text(liveState.currentPlayer.name),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
