import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:rxdart/rxdart.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/pack_core.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/keyboards/keyboards.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/word_actions_buttons.dart';

export 'word_widgets/word_widgets.dart';

part 'word_composition_bar_state.dart';

class UiWordCompositionBar extends HookWidget {
  const UiWordCompositionBar({super.key});
  @override
  Widget build(final BuildContext context) {
    final state = context.read<WordCompositionState>();
    // final uiTheme = UiTheme.of(context);
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
        builder: (final context, final levelState) => TutorialFrame(
          highlightPosition: Alignment.topCenter,
          uiKey: TutorialUiItem.enterWordPhaseFrame,
          child: UICenterFrame(
            leftButton: UiRandomWordIconButton(
              onPressed: levelState.currentWord.cleanWord.isEmpty
                  ? null
                  : state.onOpenSuggestionDialog,
            ),
            rightButton: UiPauseIconButton(onPressed: state.onPause),
            textFieldBuilder: (final context) => TutorialFrame(
              highlightPosition: Alignment.topCenter,
              uiKey: TutorialUiItem.enterWordRight,
              child: WordField(
                controller: state.wordController,
                focusNode: state.wordFocusNode,
              ),

              // hintText: S.of(context).hintAddEnding,
              // onSubmitted: state.onToSelectActionPhase,
            ),
          ),
        ),
      ),
    );
  }
}
