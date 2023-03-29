import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:rxdart/rxdart.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/pack_core.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/word_actions_buttons.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/word_composition_bar/word_widgets/middle_word_part_actions.dart';

export 'word_widgets/word_widgets.dart';

part 'word_composition_bar_state.dart';

class UiWordCompositionBar extends HookWidget {
  const UiWordCompositionBar({super.key});
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
