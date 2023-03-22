import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/core/core.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/widgets/widgets.dart';

class TutorialBoolDialog extends StatelessWidget {
  const TutorialBoolDialog({super.key});

  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    final tutorialEvent = context.select<TutorialBloc, TutorialEventModel?>(
      (final bloc) {
        if (bloc.state is! LiveTutorialBlocState) return null;
        return bloc.getTutorialEvent();
      },
    );
    if (tutorialEvent == null) return const SizedBox();
    return DialogScaffold(
      children: [
        Text(tutorialEvent.localizedMap.getValue()),
        uiTheme.verticalBoxes.extraLarge,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                context.read<DialogController>().closeDialog();
                context.read<TutorialBloc>().add(
                      const TutorialUiActionEvent(
                        action: TutorialCompleteAction.onBoolOptionSelected,
                        key: TutorialUiItem.tutorialBoolDialog,
                      ),
                    );
              },
              child: Text(S.of(context).no),
            ),
            TextButton(
              onPressed: () {
                context.read<DialogController>().closeDialog();
                context.read<TutorialBloc>().add(
                      const TutorialUiActionEvent(
                        action: TutorialCompleteAction.onBoolOptionSelected,
                        boolValue: true,
                        key: TutorialUiItem.tutorialBoolDialog,
                      ),
                    );
              },
              child: Text(S.of(context).yes),
            ),
          ],
        ),
      ],
    );
  }
}
