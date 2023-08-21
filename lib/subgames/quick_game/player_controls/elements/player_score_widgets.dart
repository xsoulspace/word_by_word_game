import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';

class UIMobilePlayerName extends StatelessWidget {
  const UIMobilePlayerName({super.key});
  @override
  Widget build(final BuildContext context) {
    final playerName = context.select<LevelPlayersBloc, String>(
      (final bloc) => bloc.state.currentPlayer.name,
    );
    final isHighlighted = context.select<LevelBloc, bool>(
      (final s) => s.state.phaseType == GamePhaseType.entryWord,
    );

    return _LabelText(
      uiKeyPosition: Alignment.topCenter,
      uiKey: TutorialUiItem.yourNameLabel,
      text: playerName,
      tooltipMessage: S.of(context).currentPlayerName,
      isHighlighted: isHighlighted,
    );
  }
}

class UIMobilePlayerScore extends StatelessWidget {
  const UIMobilePlayerScore({super.key});
  @override
  Widget build(final BuildContext context) {
    final score = context.select<LevelPlayersBloc, int>(
      (final bloc) => bloc.state.currentPlayer.highscore.score.value.toInt(),
    );
    final isHighlighted = context.select<LevelBloc, bool>(
      (final s) => s.state.phaseType == GamePhaseType.selectFuel,
    );
    final eScore = score ~/ kScoreFactor;
    return _LabelText(
      uiKeyPosition: Alignment.topCenter,
      isHighlighted: isHighlighted,
      uiKey: TutorialUiItem.yourScoreLabel,
      tooltipMessage: S.of(context).yourCurrentHighcoreTooltip,
      text: '$eScore',
    );
  }
}

class _LabelText extends StatelessWidget {
  const _LabelText({
    required this.text,
    required this.tooltipMessage,
    required this.uiKey,
    required this.isHighlighted,
    required this.uiKeyPosition,
  });
  final bool isHighlighted;
  final TutorialUiItem uiKey;
  final Alignment uiKeyPosition;
  final String text;
  final String tooltipMessage;
  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = theme.colorScheme;

    return TutorialFrame(
      highlightPosition: Alignment.topCenter,
      uiKey: uiKey,
      child: Tooltip(
        message: tooltipMessage,
        child: AnimatedDefaultTextStyle(
          duration: 170.milliseconds,
          style: isHighlighted
              ? textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                )
              : textTheme.labelMedium!.copyWith(
                  color: colorScheme.tertiary,
                ),
          child: Text(
            text,
            textAlign: TextAlign.center,
          ).animate().fadeIn().scaleXY(begin: 1.1).slideY(begin: -0.2),
        ),
      ),
    );
  }
}
