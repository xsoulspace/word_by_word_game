import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:word_by_word_game/pack_core/pack_core.dart';
import 'package:word_by_word_game/pack_game/game/wbw_game.dart';

class WbwGameWidget extends HookWidget {
  const WbwGameWidget({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    final gameFocusNode = useFocusNode();

    return MouseRegion(
      onHover: (final _) {
        if (!gameFocusNode.hasFocus) {
          gameFocusNode.requestFocus();
        }
      },
      child: Scaffold(
        body: GameWidget<WbwGame>.controlled(
          focusNode: gameFocusNode,
          gameFactory: () => WbwGame.use(read: context.read),
          //Work in progress loading screen on game start
          loadingBuilder: (final context) => const Center(
            child: CircularProgressIndicator(),
          ),
          overlayBuilderMap: const GameOverlayBuilderMapRouter().build(),
          //Work in progress error handling
          errorBuilder: (final context, final ex) {
            //Print the error in th dev console
            debugPrint(ex.toString());
            return const Center(
              child: Text('Sorry, something went wrong. Reload me'),
            );
          },
        ),
      ),
    );
  }
}
