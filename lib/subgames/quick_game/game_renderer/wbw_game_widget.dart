import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/navigation/game_router.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/core/dialog_stack.dart';
import 'package:word_by_word_game/subgames/quick_game/game_renderer/wbw_game.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/player_controls.dart';

class WbwGameWidget extends HookWidget {
  const WbwGameWidget({super.key});

  @override
  Widget build(final BuildContext context) {
    final gameFocusNode = useFocusNode();
    final uiTheme = UiTheme.of(context);
    final spacing = uiTheme.spacing;

    return Scaffold(
      body: Portal(
        child: DialogStack(
          builder: (final context, final dialogController) => Column(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(spacing.medium),
                  child: MouseRegion(
                    onHover: (final _) {
                      // TODO(arenukvern): do we need this or not?
                      if (!gameFocusNode.hasFocus) {
                        gameFocusNode.requestFocus();
                      }
                    },
                    child: GameWidget<WbwGame>.controlled(
                      focusNode: gameFocusNode,
                      gameFactory: () => WbwGame.use(
                        read: context.read,
                        dialogController: dialogController,
                        theme: Theme.of(context),
                      ),
                      //Work in progress loading screen on game start
                      loadingBuilder: (final context) => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      overlayBuilderMap:
                          const GameOverlayBuilderMapRouter().build(),
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
              BlocSelector<LevelBloc, LevelBlocState, bool>(
                selector: (final state) => state is LiveLevelBlocState,
                builder: (final context, final isLive) {
                  if (isLive) {
                    return const GameBottomBar();
                  } else {
                    return const SizedBox();
                  }
                },
              ),
              const BottomSafeArea()
            ],
          ),
        ),
      ),
    );
  }
}
