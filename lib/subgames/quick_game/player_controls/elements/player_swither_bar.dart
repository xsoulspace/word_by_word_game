import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/pack_core/global_states/ephemeral/ephemeral.dart';

class UIMobilePlayerName extends StatelessWidget {
  const UIMobilePlayerName({super.key});

  @override
  Widget build(final BuildContext context) {
    final playerName = context.select<LevelPlayersBloc, String>((final bloc) {
      final liveState = bloc.state;
      if (liveState is! LiveLevelPlayersBlocState) {
        return PlayerProfileModel.empty.name;
      }
      return liveState.currentPlayer.name;
    });
    return TutorialFrame(
      highlightPosition: Alignment.topCenter,
      uiKey: TutorialUiItem.yourNameLabel,
      child: Text(playerName),
    ).animate().fadeIn().scaleXY(begin: 1.1).slideY(begin: -0.2);
  }
}

class UIMobilePlayerScore extends StatelessWidget {
  const UIMobilePlayerScore({super.key});

  @override
  Widget build(final BuildContext context) {
    final score = context.select<LevelPlayersBloc, int>(
      (final bloc) => bloc.state.maybeMap(
        orElse: () => 0,
        live: (final value) =>
            value.currentPlayer.highscore.score.value.toInt(),
      ),
    );
    return TutorialFrame(
      highlightPosition: Alignment.topCenter,
      uiKey: TutorialUiItem.yourScoreLabel,
      child: Tooltip(
        message: S.of(context).yourCurrentHighcoreTooltip,
        child: Text('$score'),
      ),
    ).animate().fadeIn().scaleXY(begin: 1.1).slideY(begin: -0.2);
  }
}
