import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/pack_game/dialogs/level_end_dialogs/level_end_dialogs.dart';
import 'package:word_by_word_game/pack_game/dialogs/level_word_suggestion/level_word_suggestion.dart';
import 'package:word_by_word_game/pack_game/dialogs/widgets/widgets.dart';

part 'dialog_stack_state.dart';

enum GameDialogType {
  none,
  levelLost,
  levelWin,
  levelWordSuggestion,
  tutorialBool
}

class DialogStack extends HookWidget {
  const DialogStack({
    required this.builder,
    final Key? key,
  }) : super(key: key);
  final Widget Function(BuildContext context, DialogController dialogController)
      builder;
  @override
  Widget build(final BuildContext context) {
    final state = _useDialogStackState(read: context.read);
    return Provider(
      create: (final context) => state.dialogController,
      child: Stack(
        fit: StackFit.expand,
        children: [
          builder(context, state.dialogController),
          Builder(
            builder: (final context) {
              Widget child;
              switch (state.dialogType) {
                case GameDialogType.none:
                  return const SizedBox();
                case GameDialogType.levelLost:
                  child = LevelLostDialog(
                    onSendEndLevelEvent: state.onSendEndLevelEvent,
                  );
                  break;
                case GameDialogType.levelWin:
                  child = const LevelWinDialog();
                  break;
                case GameDialogType.levelWordSuggestion:
                  child = const LevelWordSuggestionDialog();
                  break;
                case GameDialogType.tutorialBool:
                  // TODO(username): description
                  throw UnimplementedError();
                  child = const LevelWordSuggestionDialog();
                  break;
              }

              return DialogBarrier(child: child);
            },
          )
        ],
      ),
    );
  }
}
