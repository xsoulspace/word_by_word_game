import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:map_editor/state/state.dart';
import 'package:map_editor/ui/renderer/editor_renderer.dart';

enum GameOverlays {
  sandboxUi,
}

class GameRendererWidget extends HookWidget {
  const GameRendererWidget({super.key});

  @override
  Widget build(final BuildContext context) {
    final gameFocusNode = useFocusNode();
    final backgroundColor = context.select<EditorDrawerCubit, Color>(
      (final cubit) => cubit.tilesPresetResources.theme.backgroundSkyColor,
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      body: Portal(
        child: GameWidget<EditorRendererGame>.controlled(
          focusNode: gameFocusNode,
          gameFactory: () => EditorRendererGame.use(
            read: context.read,
            theme: Theme.of(context),
          ),
          //Work in progress loading screen on game start
          loadingBuilder: (final context) => const Center(
            child: CircularProgressIndicator(),
          ),
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
    );
  }
}
