import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/word_composition_bar/word_widgets/word_letter_button.dart';

class MiddleWordPartActions extends StatelessWidget {
  const MiddleWordPartActions({
    required this.middlePartOfWord,
    required this.onLetterPressed,
    super.key,
  });
  final String middlePartOfWord;
  final ValueChanged<int> onLetterPressed;
  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    final spacing = uiTheme.spacing;

    final player = context.select<LevelPlayersBloc, PlayerProfileModel>(
      (final bloc) => bloc.state.currentPlayer,
    );

    final mechanics = context.watch<MechanicsCollection>();

    final isPlayerAbleToDecrease =
        mechanics.score.checkPlayerAbilityToDecreaseLetters(
      player: player,
    );

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
        padding: EdgeInsets.symmetric(horizontal: spacing.medium),
        child: child,
      ),
    );
  }
}
