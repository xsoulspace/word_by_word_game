import 'dart:async';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/ads/ads.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/level_end_dialogs/level_end_dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/level_word_suggestion/level_word_suggestion.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/tutorial_dialogs/tutorial_dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/widgets/widgets.dart';

part 'dialog_stack_state.dart';

enum GameDialogType {
  none,
  levelLost,
  levelWin,
  levelWordSuggestion,
  tutorialBool,
  tutorialOk,
}

class DefaultDialogOverlayController extends HookWidget {
  const DefaultDialogOverlayController({
    required this.builder,
    super.key,
  });

  final Widget Function(BuildContext context, DialogController dialogController)
      builder;
  @override
  Widget build(final BuildContext context) {
    final state = _useDialogStackState(read: context.read);

    return MultiProvider(
      providers: [
        Provider<DialogController>.value(value: state.dialogController),
        ChangeNotifierProvider<DialogStackState>.value(
          value: state,
        )
      ],
      builder: (final context, final child) =>
          builder(context, state.dialogController),
    );
  }
}

class DialogStack extends HookWidget {
  const DialogStack({
    required this.child,
    super.key,
  });
  final Widget child;
  @override
  Widget build(final BuildContext context) {
    final state = context.watch<DialogStackState>();
    return Stack(
      fit: StackFit.expand,
      children: [
        child,
        DialogBarrier(
          isVisible: state.dialogType != GameDialogType.none,
          child: switch (state.dialogType) {
            GameDialogType.none => const SizedBox(),
            GameDialogType.levelLost => LevelLostDialog(
                onSendEndLevelEvent: state.onSendEndLevelEvent,
              ),
            GameDialogType.levelWin => const LevelWinDialog(),
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
