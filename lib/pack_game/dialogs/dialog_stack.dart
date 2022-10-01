import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/pack_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/pack_game/dialogs/game_end/game_end_dialog.dart';
import 'package:word_by_word_game/pack_game/dialogs/widgets/dialog_barrier.dart';

part 'dialog_stack_state.dart';

enum GameDialogType { none, endGame }

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
                case GameDialogType.endGame:
                  child = const GameEndDialog();
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
