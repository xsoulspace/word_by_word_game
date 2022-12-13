import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/ephemeral/ephemeral.dart';
import 'package:word_by_word_game/pack_game/levels_hud/controls/widgets/word_composition_row.dart';

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
          AddWordToDictionaryButton(
            onPressed: state.onAddWordToDictionary,
          ),
          uiTheme.verticalBoxes.extraSmall,
          ToSelectActionPhaseButton(
            onPressed: state.onToSelectActionPhase,
          ),
        ]);
        break;
      case LevelPlayerPhaseType.selectAction:
        children.addAll([
          ToEntryWordPahseButton(
            onPressed: state.onToEntryWordPhase,
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

    return UIMobileActionsFrame(
      children: [
        AddWordToDictionaryButton(
          onPressed: state.onAddWordToDictionary,
        ),
        uiTheme.verticalBoxes.medium,
        ToSelectActionPhaseButton(
          onPressed: state.onToEntryWordPhase,
        ),
      ],
    );
  }
}

class AddWordToDictionaryButton extends StatelessWidget {
  const AddWordToDictionaryButton({
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
      text: 'Add to Dictionary',
      onPressed: warning == WordWarning.isNotCorrect ? onPressed : null,
      icon: UiIcons.dictionary_add,
      isLongButton: true,
    );
  }
}

class ToSelectActionPhaseButton extends StatelessWidget {
  const ToSelectActionPhaseButton({
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
      text: 'Confirm',
      onPressed: warning == WordWarning.isNotCorrect ? null : onPressed,
      icon: UiIcons.fire,
      mainAlignment: MainAxisAlignment.center,
      isLongButton: true,
    );
  }
}

class ToEntryWordPahseButton extends StatelessWidget {
  const ToEntryWordPahseButton({
    required this.onPressed,
    super.key,
  });
  final VoidCallback onPressed;
  @override
  Widget build(final BuildContext context) {
    return UiTextButton.icon(
      text: 'Apply & End Turn',
      onPressed: onPressed,
      icon: UiIcons.fire,
      mainAlignment: MainAxisAlignment.center,
      isLongButton: true,
    );
  }
}
