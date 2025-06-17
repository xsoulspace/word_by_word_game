import 'package:word_by_word_game/common_imports.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/word_composition_bar/word_widgets/word_letter_button.dart';

@Deprecated(
  'will be removed in future. '
  'Functionality should be moved to WordField widget.',
)
class MiddleWordPartActions extends StatelessWidget {
  @Deprecated(
    'will be removed in future. '
    'Functionality should be moved to WordField widget.',
  )
  const MiddleWordPartActions({
    required this.middlePartOfWord,
    required this.onLetterPressed,
    super.key,
  });
  final String middlePartOfWord;
  final ValueChanged<int> onLetterPressed;
  @override
  Widget build(final BuildContext context) {
    final player = context.select<LevelPlayersBloc, PlayerProfileModel>(
      (final bloc) => bloc.state.currentPlayer,
    );

    final mechanics = context.watch<MechanicsCollection>();

    final isPlayerAbleToDecrease = mechanics.score
        .checkPlayerAbilityToDecreaseLetters(player: player);

    Widget child;
    if (isPlayerAbleToDecrease) {
      child = Row(
        mainAxisSize: MainAxisSize.min,
        children: middlePartOfWord.characters
            .mapIndexed(
              (final index, final letter) => UiWordLetterButton(
                onPressed: () {
                  // TODO(arenukvern): add small dialog window about
                  // how letter can be deleted and for deletion cost.
                  onLetterPressed(index);
                },
                letter: letter,
              ),
            )
            .toList(),
      );
    } else {
      child = Text(middlePartOfWord);
    }

    return Visibility(
      visible: middlePartOfWord.isNotEmpty,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: UiSpace.medium),
        child: child,
      ),
    );
  }
}
