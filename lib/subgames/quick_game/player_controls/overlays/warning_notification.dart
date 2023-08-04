import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';

class UIWarningNotification extends StatelessWidget {
  const UIWarningNotification({
    super.key,
  });
  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);
    final colorTheme = theme.colorScheme;

    final warning = context.select<LevelBloc, WordWarning>(
      (final s) => s.state.wordWarning,
    );
    final borderRadius = BorderRadius.circular(14);
    final Color backgroundColor;
    final Color borderColor;
    final double shakingHz;

    switch (warning) {
      case WordWarning.none:
      case WordWarning.isWritten:
        backgroundColor = colorTheme.errorContainer;
        borderColor = colorTheme.error;
        shakingHz = 10;
      case WordWarning.isNotCorrect:
        backgroundColor = colorTheme.tertiaryContainer;
        borderColor = colorTheme.onTertiaryContainer;
        shakingHz = 4;
    }

    return Visibility(
      visible: warning != WordWarning.none,
      child: Material(
        borderRadius: borderRadius,
        elevation: 4,
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.all(color: borderColor),
            color: backgroundColor,
            borderRadius: borderRadius,
          ),
          child: Builder(
            builder: (final context) {
              final warningText = () {
                switch (warning) {
                  case WordWarning.isNotCorrect:
                    return S.of(context).wordIsNotCorrect(
                          context.read<LevelBloc>().state.currentWord.cleanWord,
                        );
                  case WordWarning.isWritten:
                    return S.of(context).wordAlreadyWritten;
                  case WordWarning.none:
                    return '';
                }
              }();
              return Text(
                warningText,
              );
            },
          ),
        ),
      )
          .animate(
            onComplete: (final _) {
              context
                  .read<LevelBloc>()
                  .onHideWarning(const LevelBlocEventHideWarning());
            },
          )
          .fadeIn()
          .slideY(begin: -0.3)
          .shake(hz: shakingHz)
          .then(delay: 3.seconds)
          .fadeOut()
          .slideY(end: -0.3),
    );
  }
}
