import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/navigation/navigation.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/word_composition_bar/word_composition_bar.dart';

class UiWordActions extends StatelessWidget {
  const UiWordActions({
    super.key,
  });
  @override
  Widget build(final BuildContext context) {
    final state = context.read<WordCompositionCubit>();
    final uiTheme = UiTheme.of(context);
    final phaseType = context.select<LevelBloc, GamePhaseType>(
      (final s) => s.state.phaseType,
    );
    final children = <Widget>[];
    switch (phaseType) {
      case GamePhaseType.entryWord:
        children.addAll([
          Row(
            children: [
              TutorialFrame(
                highlightPosition: Alignment.topCenter,
                uiKey: TutorialUiItem.addToDictionaryButton,
                child: UIAddWordToDictionaryButton(
                  onPressed: state.onAddWordToDictionary,
                ),
              ),
              const Gap(4),
              const TutorialFrame(
                highlightPosition: Alignment.topCenter,
                uiKey: TutorialUiItem.suggestWordButton,
                child: UiSuggestionsButton(),
              ),
            ],
          ),
          if (DeviceRuntimeType.isMobile)
            uiTheme.verticalBoxes.small
          else
            uiTheme.verticalBoxes.medium,
        ]);
      case GamePhaseType.selectFuel:
        break;
    }

    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
        textScaler: TextScaler.noScaling,
        devicePixelRatio: 1,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: children,
      ),
    );
  }
}

class UIAddWordToDictionaryButton extends StatelessWidget {
  const UIAddWordToDictionaryButton({
    required this.onPressed,
    super.key,
  });
  final VoidCallback onPressed;
  @override
  Widget build(final BuildContext context) {
    final warning = context.select<LevelBloc, WordWarning>(
      (final s) => s.state.wordWarning,
    );

    return UiTextButton.icon(
      text: S.of(context).addToDictionary,
      onPressed: warning == WordWarning.isNotCorrect ? onPressed : null,
      icon: UiIcons.dictionary_add,
      isLongButton: true,
    );
  }
}

class UiConfirmWordButton extends StatelessWidget {
  const UiConfirmWordButton({
    required this.onPressed,
    super.key,
  });
  final VoidCallback onPressed;
  @override
  Widget build(final BuildContext context) {
    final warning = context.select<LevelBloc, WordWarning>(
      (final s) => s.state.wordWarning,
    );
    final currentWord = context.select<LevelBloc, String>(
      (final s) => s.state.currentWord.fullWord,
    );
    final mechanics = context.read<MechanicsCollection>();
    final score = mechanics.score.getScoreFromWord(word: currentWord);
    final isPressable = warning != WordWarning.isNotCorrect;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Tooltip(
          message: S.of(context).powerOfEnteredWord,
          child: Text('+${score.value ~/ kScoreFactor}'),
        ),
        FloatingActionButton.small(
          tooltip: S.of(context).confirm,
          elevation: 1,
          backgroundColor: Theme.of(context)
              .colorScheme
              .tertiaryContainer
              .withOpacity(isPressable ? 0.8 : 0.1),
          hoverElevation: 3,
          onPressed: isPressable ? onPressed : null,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  UiAssetHelper.useImagePath(UiIcons.fire.path),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class UIToEndTurnButton extends StatelessWidget {
  const UIToEndTurnButton({
    required this.onPressed,
    super.key,
  });
  final VoidCallback onPressed;
  @override
  Widget build(final BuildContext context) => UiTextButton.icon(
        text: S.of(context).applyAndEndTurn,
        onPressed: onPressed,
        icon: UiIcons.fire,
        mainAlignment: MainAxisAlignment.center,
        isLongButton: true,
      );
}

class UiSuggestionsButton extends StatelessWidget {
  const UiSuggestionsButton({
    super.key,
  });
  @override
  Widget build(final BuildContext context) => UiTextButton.icon(
        isLongButton: true,
        text: S.of(context).suggestions,
        tooltip: S.of(context).suggestWordButtonTooltip,
        onPressed: () {
          context.read<DialogController>().showLevelWordSuggestionDialog();
        },
        icon: UiIcons.idea,
      );
}

class UiPauseButton extends StatelessWidget {
  const UiPauseButton({
    super.key,
  });

  @override
  Widget build(final BuildContext context) => TutorialFrame(
        highlightPosition: Alignment.topCenter,
        uiKey: TutorialUiItem.pauseIconButton,
        child: UiIconButton(
          tooltip: S.of(context).mainMenuButtonTooltip,
          onPressed: () async {
            final globalGameBloc = context.read<GlobalGameBloc>();
            final levelBloc = context.read<LevelBloc>();
            final appRouterController = context.read<AppRouterController>();

            context.read<StatesStatusesCubit>().pause();

            await globalGameBloc
                .onSaveCurrentLevel(const SaveCurrentLevelEvent());
            final id = levelBloc.state.id;
            appRouterController.toPause(id: id);
          },
          icon: UiIcons.pause,
        ),
      );
}
