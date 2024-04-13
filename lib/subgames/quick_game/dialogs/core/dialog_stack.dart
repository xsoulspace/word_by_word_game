import 'dart:async';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/ads/ads.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/level_word_suggestion.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/tutorial_dialogs/tutorial_dialogs.dart';

part 'dialog_stack_notifier.dart';

enum GameDialogType {
  none,
  levelLost,
  levelWin,
  levelWordSuggestion,
  tutorialBool,
  tutorialOk,
  technologiesTree,
}

class DialogStack extends HookWidget {
  const DialogStack({
    required this.children,
    super.key,
  });
  final List<Widget> children;
  @override
  Widget build(final BuildContext context) {
    final state = context.watch<DialogStackNotifier>();
    final dialogController = context.read<DialogController>();
    return Stack(
      fit: StackFit.expand,
      children: [
        ...children,
        DialogBarrier(
          isVisible: state.dialogType != GameDialogType.none,
          child: switch (state.dialogType) {
            GameDialogType.none => const SizedBox(),
            GameDialogType.technologiesTree => TechnologiesTreeDialog(
                dto: state.technologiesTreeDto,
                onClose: dialogController.closeDialogAndResume,
              ),
            GameDialogType.levelLost => LevelLostDialog(
                onRestart: state.onRestartContinueLevel,
                onToLevels: state.onExitLevel,
              ),
            GameDialogType.levelWin => LevelWinDialog(
                onContinue: state.onRestartContinueLevel,
                onToLevels: state.onExitLevel,
              ),
            GameDialogType.levelWordSuggestion =>
              const LevelWordSuggestionDialog(),
            GameDialogType.tutorialBool => const TutorialBoolDialog(),
            GameDialogType.tutorialOk => const TutorialOkDialog(),
          },
        ),
        if (state.isWinLoseDialog)
          const Positioned(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TopSafeArea(),
                AdLevelEndScreenBanner(),
              ],
            ),
          ),
      ],
    );
  }
}
