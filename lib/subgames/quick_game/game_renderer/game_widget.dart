import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:word_by_word_game/pack_core/navigation/game_router.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/core/core.dart';
import 'package:word_by_word_game/subgames/quick_game/game_renderer/game_renderer.dart';

class WbwGameWidget extends HookWidget {
  const WbwGameWidget({super.key});

  @override
  Widget build(final BuildContext context) {
    final gameFocusNode = useFocusNode();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Portal(
        child: DefaultDialogOverlayController(
          builder: (final context, final dialogController) => MouseRegion(
            onEnter: (final event) {
              if (!gameFocusNode.hasFocus) gameFocusNode.requestFocus();
            },
            child: GameWidget<CanvasRendererGame>.controlled(
              focusNode: gameFocusNode,
              gameFactory: () => CanvasRendererGame.use(
                context: context,
                dialogController: dialogController,
                theme: Theme.of(context),
              ),
              //Work in progress loading screen on game start
              loadingBuilder: (final context) => const Center(
                child: CircularProgressIndicator(),
              ),
              initialActiveOverlays: [
                GameOverlaysRoutes.dialog.name,
                GameOverlaysRoutes.debug.name,
              ],
              overlayBuilderMap: const GameOverlayBuilderMapRouter().build(),
              //Work in progress error handling
              errorBuilder: (final context, final ex) {
                //Print the error in th dev console
                debugPrint(ex.toString());
                return const Center(
                  child: Text(
                    'Sorry, something went wrong. Reload me',
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
