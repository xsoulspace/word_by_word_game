import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/generated/l10n.dart';
import 'package:word_by_word_game/pack_core/global_states/ephemeral/ephemeral.dart';
import 'package:word_by_word_game/pack_game/levels_hud/controls/widgets/word_composition_row.dart';
import 'package:word_by_word_game/pack_game/mechanics/mechanics.dart';

class UIDesktopActions extends StatelessWidget {
  const UIDesktopActions({super.key});

  @override
  Widget build(final BuildContext context) {
    final state = context.read<WordCompositionState>();
    final uiTheme = UiTheme.of(context);
    final phaseType =
        context.select<LevelBloc, LevelPlayerPhaseType>((final s) {
      return s.getLiveState().phaseType;
    });
    final children = <Widget>[];
    switch (phaseType) {
      case LevelPlayerPhaseType.entryWord:
        children.addAll([
          UIAddWordToDictionaryButton(
            onPressed: state.onAddWordToDictionary,
          ),
          uiTheme.verticalBoxes.extraSmall,
          UIToSelectActionPhaseButton(
            onPressed: state.onToSelectActionPhase,
          ),
        ]);
        break;
      case LevelPlayerPhaseType.selectAction:
        children.addAll([
          UIToEndTurnButton(
            onPressed: state.onToEndTurn,
          ),
        ]);
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
    final phaseType =
        context.select<LevelBloc, LevelPlayerPhaseType>((final s) {
      return s.getLiveState().phaseType;
    });
    final children = <Widget>[];
    switch (phaseType) {
      case LevelPlayerPhaseType.entryWord:
        children.addAll([
          UIAddWordToDictionaryButton(
            onPressed: state.onAddWordToDictionary,
          ),
          if (DeviceRuntimeType.isMobile)
            uiTheme.verticalBoxes.small
          else
            uiTheme.verticalBoxes.medium,
          UIToSelectActionPhaseButton(
            onPressed: state.onToSelectActionPhase,
          ),
        ]);
        break;
      case LevelPlayerPhaseType.selectAction:
        children.addAll([
          UIToEndTurnButton(
            onPressed: state.onToEndTurn,
          ),
        ]);
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
    final warning = context.select<LevelBloc, WordWarning>((final s) {
      return s.getLiveState().wordWarning;
    });

    return UiTextButton.icon(
      text: S.of(context).addToDictionary,
      onPressed: warning == WordWarning.isNotCorrect ? onPressed : null,
      icon: UiIcons.dictionary_add,
      isLongButton: true,
    );
  }
}

class UIToSelectActionPhaseButton extends StatelessWidget {
  const UIToSelectActionPhaseButton({
    required this.onPressed,
    super.key,
  });
  final VoidCallback onPressed;
  @override
  Widget build(final BuildContext context) {
    final warning = context.select<LevelBloc, WordWarning>((final s) {
      return s.getLiveState().wordWarning;
    });
    final currentWord = context.select<LevelBloc, String>((final s) {
      return s.getLiveState().currentWord.fullWord;
    });
    final mechanicsCollection = context.read<MechanicsCollection>();
    final score = mechanicsCollection.score.getScoreFromWord(word: currentWord);
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
  Widget build(final BuildContext context) {
    final actionType =
        context.select<LevelBloc, LevelPlayerActionType?>((final s) {
      return s.getLiveState().actionType;
    });

    return UiTextButton.icon(
      text: S.of(context).applyAndEndTurn,
      onPressed: actionType == null ? null : onPressed,
      icon: UiIcons.fire,
      mainAlignment: MainAxisAlignment.center,
      isLongButton: true,
    );
  }
}
