import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/pack_core/global_states/ephemeral/ephemeral.dart';

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
