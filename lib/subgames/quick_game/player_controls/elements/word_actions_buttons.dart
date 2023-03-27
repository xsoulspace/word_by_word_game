import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/pack_core/global_states/ephemeral/ephemeral.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/word_composition_bar/word_composition_bar.dart';

class UIDesktopActions extends StatelessWidget {
  const UIDesktopActions({super.key});

  @override
  Widget build(final BuildContext context) {
    final state = context.read<WordCompositionState>();
    final uiTheme = UiTheme.of(context);
    final phaseType = context.select<LevelBloc, GamePhaseType>(
      (final s) => s.getLiveState().phaseType,
    );
    final children = <Widget>[];
    switch (phaseType) {
      case GamePhaseType.entryWord:
        children.addAll([
          TutorialFrame(
            highlightPosition: Alignment.topLeft,
            uiKey: TutorialUiItem.addToDictionaryButton,
            child: UIAddWordToDictionaryButton(
              onPressed: () {
                state.onAddWordToDictionary();
                TutorialFrame.sendOnClickEvent(
                  uiKey: TutorialUiItem.addToDictionaryButton,
                  context: context,
                );
              },
            ),
          ),
          uiTheme.verticalBoxes.extraSmall,
          TutorialFrame(
            highlightPosition: Alignment.topLeft,
            uiKey: TutorialUiItem.confirmWordButton,
            child: UiConfirmWordButton(
              onPressed: () {
                state.onToSelectActionPhase();

                TutorialFrame.sendOnClickEvent(
                  uiKey: TutorialUiItem.confirmWordButton,
                  context: context,
                );
              },
            ),
          ),
        ]);
        break;
      case GamePhaseType.selectFuel:
        break;
    }

    return UIDesktopActionsFrame(
      children: children,
    );
  }
}

class UIMobileActions extends StatelessWidget {
  const UIMobileActions({super.key});

  @override
  Widget build(final BuildContext context) {
    final state = context.read<WordCompositionState>();
    final uiTheme = UiTheme.of(context);
    final phaseType = context.select<LevelBloc, GamePhaseType>(
      (final s) => s.getLiveState().phaseType,
    );
    final children = <Widget>[];
    switch (phaseType) {
      case GamePhaseType.entryWord:
        children.addAll([
          TutorialFrame(
            highlightPosition: Alignment.topCenter,
            uiKey: TutorialUiItem.addToDictionaryButton,
            child: UIAddWordToDictionaryButton(
              onPressed: state.onAddWordToDictionary,
            ),
          ),
          if (DeviceRuntimeType.isMobile)
            uiTheme.verticalBoxes.small
          else
            uiTheme.verticalBoxes.medium,
          TutorialFrame(
            highlightPosition: Alignment.topCenter,
            uiKey: TutorialUiItem.confirmWordButton,
            child: UiConfirmWordButton(
              onPressed: () {
                state.onToSelectActionPhase();
                TutorialFrame.sendOnClickEvent(
                  uiKey: TutorialUiItem.confirmWordButton,
                  context: context,
                );
              },
            ),
          ),
        ]);
        break;
      case GamePhaseType.selectFuel:
        break;
    }

    return UIMobileActionsFrame(
      children: children,
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
      (final s) => s.getLiveState().wordWarning,
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
      (final s) => s.getLiveState().wordWarning,
    );
    final currentWord = context.select<LevelBloc, String>(
      (final s) => s.getLiveState().currentWord.fullWord,
    );
    final mechanics = context.read<MechanicsCollection>();
    final score = mechanics.score.getScoreFromWord(word: currentWord);
    return UiTextButton.icon(
      text: '${S.of(context).confirm} +${score.value.toInt()}',
      onPressed: warning == WordWarning.isNotCorrect ? null : onPressed,
      icon: UiIcons.fire,
      mainAlignment: MainAxisAlignment.center,
      isLongButton: true,
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

class UiRandomWordIconButton extends StatelessWidget {
  const UiRandomWordIconButton({
    required this.onPressed,
    super.key,
  });
  final VoidCallback? onPressed;
  @override
  Widget build(final BuildContext context) => TutorialFrame(
        highlightPosition: Alignment.topCenter,
        uiKey: TutorialUiItem.suggestWordButton,
        child: UiIconButton(
          tooltip: S.of(context).suggestWordButtonTooltip,
          onPressed: onPressed,
          icon: UiIcons.idea,
        ),
      );
}

class UiPauseIconButton extends StatelessWidget {
  const UiPauseIconButton({
    required this.onPressed,
    super.key,
  });
  final VoidCallback onPressed;

  @override
  Widget build(final BuildContext context) => TutorialFrame(
        highlightPosition: Alignment.topCenter,
        uiKey: TutorialUiItem.pauseIconButton,
        child: Hero(
          tag: const ValueKey('UiPauseIconButton'),
          child: UiIconButton(
            tooltip: S.of(context).mainMenuButtonTooltip,
            onPressed: onPressed,
            icon: UiIcons.pause,
          ),
        ),
      );
}