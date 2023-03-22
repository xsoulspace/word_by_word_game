import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/pack_core/global_states/ephemeral/ephemeral.dart';
import 'package:word_by_word_game/subgames/quick_game/levels/screens/level_options/widgets/widgets.dart';

class UIDesktopPlayerSwitcher extends HookWidget {
  const UIDesktopPlayerSwitcher({super.key});

  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    return BlocBuilder<LevelPlayersBloc, LevelPlayersBlocState>(
      builder: (final context, final state) {
        final liveState = state;
        if (liveState is! LiveLevelPlayersBlocState) {
          return const SizedBox();
        }

        return Card(
          child: Padding(
            padding: EdgeInsets.all(uiTheme.spacing.small),
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
        );
      },
    );
  }
}

class UIMobilePlayerSwitcher extends HookWidget {
  const UIMobilePlayerSwitcher({super.key});

  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    return BlocBuilder<LevelPlayersBloc, LevelPlayersBlocState>(
      builder: (final context, final state) {
        final liveState = state;
        if (liveState is! LiveLevelPlayersBlocState) {
          return const SizedBox();
        }

        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(liveState.currentPlayer.name),
            const SizedBox(width: 180),
            Text('${liveState.currentPlayer.highscore.score.value.toInt()}'),
          ],
        );
      },
    );
  }
}

class UIMobilePlayerName extends StatelessWidget {
  const UIMobilePlayerName({super.key});

  @override
  Widget build(final BuildContext context) {
    final player =
        context.select<LevelPlayersBloc, PlayerProfileModel>((final bloc) {
      final liveState = bloc.state;
      if (liveState is! LiveLevelPlayersBlocState) {
        return PlayerProfileModel.empty;
      }
      return liveState.currentPlayer;
    });
    return TutorialFrame(
      highlightPosition: Alignment.topCenter,
      uiKey: TutorialUiItem.yourNameLabel,
      child: Text(player.name),
    );
  }
}

class UIMobilePlayerScore extends StatelessWidget {
  const UIMobilePlayerScore({super.key});

  @override
  Widget build(final BuildContext context) {
    final player =
        context.select<LevelPlayersBloc, PlayerProfileModel>((final bloc) {
      final liveState = bloc.state;
      if (liveState is! LiveLevelPlayersBlocState) {
        return PlayerProfileModel.empty;
      }
      return liveState.currentPlayer;
    });
    return TutorialFrame(
      highlightPosition: Alignment.topCenter,
      uiKey: TutorialUiItem.yourScoreLabel,
      child: Tooltip(
        message: S.of(context).yourCurrentHighcoreTooltip,
        child: Text('${player.highscore.score.value.toInt()}'),
      ),
    );
  }
}

class UIPlayersSideBar extends StatelessWidget {
  const UIPlayersSideBar({super.key});
  static const maxWidth = 50.0;
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

        return Container(
          padding: EdgeInsets.symmetric(horizontal: uiTheme.spacing.extraSmall),
          constraints: const BoxConstraints(
            maxHeight: 100,
            maxWidth: maxWidth,
          ),
          child: Wrap(
            children: [...players]
                .map(
                  (final player) => Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: uiTheme.spacing.extraSmall,
                    ),
                    child: Material(
                      elevation: 4,
                      child: PlayerProfileAvatar(
                        player: player,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        );
      },
    );
  }
}
