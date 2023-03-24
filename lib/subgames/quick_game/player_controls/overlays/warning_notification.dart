import 'package:flutter/material.dart';
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
      (final s) => s.getLiveState().wordWarning,
    );

    return Visibility(
      visible: warning != WordWarning.none,
      maintainState: true,
      maintainAnimation: true,
      maintainSize: true,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(color: colorTheme.tertiary),
          color: colorTheme.tertiaryContainer,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Builder(
          builder: (final context) {
            final warningText = () {
              switch (warning) {
                case WordWarning.isNotCorrect:
                  return S.of(context).wordIsNotCorrect(
                        context
                            .read<LevelBloc>()
                            .getLiveState()
                            .currentWord
                            .cleanWord,
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
    );
  }
}
