import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/generated/l10n.dart';
import 'package:word_by_word_game/pack_game/dialogs/dialog_controller.dart';
import 'package:word_by_word_game/pack_game/dialogs/widgets/widgets.dart';

class TutorialBoolDialog extends StatelessWidget {
  const TutorialBoolDialog({super.key});

  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    final tutorialEvent = context.select<TutorialBloc, TutorialEventModel>(
      (final bloc) {
        return bloc.getTutorialEvent();
      },
    );
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
