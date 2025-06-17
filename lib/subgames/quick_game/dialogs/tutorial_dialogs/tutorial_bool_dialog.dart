import 'package:word_by_word_game/common_imports.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/core/core.dart';

class TutorialBoolDialog extends StatelessWidget {
  const TutorialBoolDialog({super.key});

  @override
  Widget build(final BuildContext context) {
    final tutorialEvent = context.select<TutorialBloc, TutorialEventModel?>((
      final bloc,
    ) {
      if (bloc.state is! TutorialBlocStateLive) return null;
      return bloc.getTutorialEvent();
    });
    final locale = useLocale(context);
    if (tutorialEvent == null) return const SizedBox();
    return DialogScaffold(
      children: [
        Text(tutorialEvent.localizedMap.getValue(locale)),
        UiGaps.large,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                context.read<DialogController>().closeDialog();
                context.read<TutorialBloc>().onTutorialUiAction(
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
                context.read<TutorialBloc>().onTutorialUiAction(
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
