import 'package:word_by_word_game/common_imports.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/core/dialog_stack.dart';

class TutorialOkDialog extends StatelessWidget {
  const TutorialOkDialog({super.key});

  @override
  Widget build(final BuildContext context) {
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
        UiGaps.extraLarge,
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
