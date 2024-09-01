import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/overlays/gui_widgets/gui_widgets.dart';

class UIMobilePlayerName extends StatelessWidget {
  const UIMobilePlayerName({
    this.canHighlight = true,
    this.forceHighlight = false,
    super.key,
  });
  final bool canHighlight;
  final bool forceHighlight;
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
      isHighlighted: forceHighlight || (canHighlight && isHighlighted),
    );
  }
}

class UIMobilePlayerScore extends StatelessWidget {
  const UIMobilePlayerScore({
    this.canHighlight = true,
    this.forceHighlight = false,
    super.key,
  });
  final bool canHighlight;
  final bool forceHighlight;

  @override
  Widget build(final BuildContext context) {
    final playerName = context.select<LevelPlayersBloc, String>(
      (final bloc) => bloc.state.currentPlayer.name,
    );
    final score = context.select<LevelPlayersBloc, int>(
      (final bloc) => bloc.state.currentPlayer.highscore.score.value.toInt(),
    );
    final isSelectAction = context.select<LevelBloc, bool>(
      (final s) => s.state.phaseType == GamePhaseType.selectAction,
    );
    final eScore = score ~/ kScoreFactor;
    final isHighlighted = forceHighlight || (canHighlight && isSelectAction);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        UiPlayerScoreIcon(
          size: isHighlighted ? 18 : 12,
          color: isHighlighted ? context.colorScheme.onSurface : null,
        ),
        _LabelText(
          uiKeyPosition: Alignment.topCenter,
          isHighlighted: isHighlighted,
          uiKey: TutorialUiItem.yourScoreLabel,
          // TODO(arenukvern): l10n
          tooltipMessage: "$playerName's energy",
          value: eScore,
        ),
      ],
    );
  }
}

class UiPlayerScoreIcon extends StatelessWidget {
  const UiPlayerScoreIcon({
    this.size = 12,
    this.color,
    super.key,
  });
  final double size;
  final Color? color;

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Icon(
      CupertinoIcons.bolt,
      size: size,
      color: color ?? colorScheme.tertiary,
    );
  }
}

class _LabelText extends StatelessWidget {
  const _LabelText({
    required this.tooltipMessage,
    required this.uiKey,
    required this.isHighlighted,
    required this.uiKeyPosition,
    this.value,
    this.text = '',
  }) : assert(
          value != null || text != '',
          'Either value or text must be provided',
        );
  final bool isHighlighted;
  final TutorialUiItem uiKey;
  final Alignment uiKeyPosition;
  final int? value;
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
          child: (text.isEmpty
                  ? UiTextCounter(
                      value: value ?? 0,
                      textAlign: TextAlign.center,
                    )
                  : Text(
                      text,
                      textAlign: TextAlign.center,
                    ))
              .animate()
              .fadeIn()
              .scaleXY(begin: 1.1)
              .slideY(begin: -0.2),
        ),
      ),
    );
  }
}
