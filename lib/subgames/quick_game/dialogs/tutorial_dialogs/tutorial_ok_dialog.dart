import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/core/dialog_controller.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/widgets/widgets.dart';

class TutorialOkDialog extends StatelessWidget {
  const TutorialOkDialog({super.key});

  @override
  Widget build(final BuildContext context) {
    final uiTheme = context.uiTheme;
    final tutorialEvent = context.select<TutorialBloc, TutorialEventModel?>(
      (final bloc) {
        if (bloc.state is! TutorialBlocStateLive) return null;
        return bloc.getTutorialEvent();
      },
    );
    final locale = useLocale(context);
    if (tutorialEvent == null) return const SizedBox();

    return DialogScaffold(
      children: [
        Text(tutorialEvent.localizedMap.getValue(locale)),
        uiTheme.verticalBoxes.extraLarge,
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  context.read<DialogController>().closeDialog();
                  context.read<TutorialBloc>().onTutorialUiAction(
                        const TutorialUiActionEvent(
                          action: TutorialCompleteAction.onClick,
                          key: TutorialUiItem.tutorialOkDialog,
                        ),
                      );
                },
                child: const Text('Ok'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
