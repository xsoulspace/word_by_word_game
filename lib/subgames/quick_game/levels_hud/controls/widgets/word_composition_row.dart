import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:rxdart/rxdart.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/gen/gen.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/pack_core.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/levels_hud/controls/widgets/player_swither_bar.dart';
import 'package:word_by_word_game/subgames/quick_game/levels_hud/controls/widgets/word_actions_buttons.dart';

part 'word_composition_row_state.dart';

class UIWordCompositionRow extends HookWidget {
  const UIWordCompositionRow({super.key});
  @override
  Widget build(final BuildContext context) {
    final state = context.read<WordCompositionState>();
    final uiTheme = UiTheme.of(context);
    final buildAndListenWhenCallback = LevelBloc.useCheckStateEqualityBuilder(
      checkLiveState: (final previous, final current) =>
          previous.latestWord != current.latestWord,
    );
    return BlocListener<LevelBloc, LevelBlocState>(
      listener: (final context, final blocState) {
        state.onLatestWordChanged();
      },
      listenWhen: buildAndListenWhenCallback,
      child: BlocBuilder<LevelBloc, LevelBlocState>(
        buildWhen: buildAndListenWhenCallback,
        builder: (final context, final levelState) {
          if (levelState is! LiveLevelBlocState) return const SizedBox();

          return TutorialFrame(
            highlightPosition: Alignment.topCenter,
            uiKey: TutorialUiItem.enterWordPhaseFrame,
            child: UICenterFrame(
              leftButton: UiRandomWordIconButton(
                onPressed: levelState.currentWord.cleanWord.isEmpty
                    ? null
                    : state.onOpenSuggestionDialog,
              ),
              rightButton: UiPauseIconButton(onPressed: state.onPause),
              leftTopBuilder: (final context) => const UIMobilePlayerName(),
              rightTopBuilder: (final context) => const UIMobilePlayerScore(),
              textFieldBuilder: (final context) =>
                  BlocBuilder<LevelBloc, LevelBlocState>(
                buildWhen: LevelBloc.useCheckStateEqualityBuilder(
                  checkLiveState: (final previous, final current) =>
                      previous.currentWord.middlePart !=
                      current.currentWord.middlePart,
                ),
                builder: (final context, final levelState) {
                  if (levelState is! LiveLevelBlocState) {
                    return const SizedBox();
                  }
                  final latestWord = levelState.latestWord;
                  final currentWord = levelState.currentWord;

                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (latestWord.isNotEmpty &&
                          currentWord.middlePart.isNotEmpty)
                        TutorialFrame(
                          highlightPosition: Alignment.topCenter,
                          uiKey: TutorialUiItem.enterWordLeft,
                          child: UiFrameTextField(
                            textFieldFocusNode: state.leftWordFocus,
                            onEnterPressed: state.onRequestRightTextFocus,
                            onSubmitted: state.onRequestRightTextFocus,
                            keyFocusNode: state.leftWordKeyFocus,
                            controller: state.leftPartController,
                            hintText: S.of(context).hintAddBeginning,
                          ),
                        ),
                      if (latestWord.isNotEmpty)
                        TutorialFrame(
                          highlightPosition: Alignment.topCenter,
                          uiKey: TutorialUiItem.removeLetterButton,
                          child: MiddleWordPartActions(
                            middlePartOfWord: currentWord.middlePart,
                            onLetterPressed: state.onDecreaseMiddlePart,
                          ),
                        ),
                      TutorialFrame(
                        highlightPosition: Alignment.topCenter,
                        uiKey: TutorialUiItem.enterWordRight,
                        child: UiFrameTextField(
                          keyFocusNode: state.rightWordKeyFocus,
                          textFieldFocusNode: state.rightWordFocus,
                          controller: state.rightPartController,
                          hintText: S.of(context).hintAddEnding,
                          onSubmitted: state.onToSelectActionPhase,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class LastWordWidget extends StatelessWidget {
  const LastWordWidget({
    super.key,
  });
  @override
  Widget build(final BuildContext context) {
    final latestWord = context.select<LevelBloc, String>(
      (final state) => state.getLiveState().latestWord,
    );
    return LastWordText(latestWord: latestWord);
  }
}

class UiLetterButton extends StatelessWidget {
  const UiLetterButton({
    required this.onPressed,
    required this.letter,
    super.key,
  });
  final VoidCallback onPressed;
  final String letter;

  @override
  Widget build(final BuildContext context) => UiTextButton.text(
        text: letter,
        mainAlignment: MainAxisAlignment.center,
        onPressed: onPressed,
        width: null,
      );
}

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

    final player =
        context.select<LevelPlayersBloc, PlayerProfileModel>((final bloc) {
      final liveState = bloc.getLiveState();
      return liveState.currentPlayer;
    });

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
              (final index, final letter) => UiLetterButton(
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

class LastWordText extends StatelessWidget {
  const LastWordText({
    required this.latestWord,
    super.key,
  });
  final String latestWord;
  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    if (latestWord.isEmpty) return const SizedBox();
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(S.of(context).previousWord),
        uiTheme.horizontalBoxes.small,
        Text(latestWord),
      ],
    );
  }
}
