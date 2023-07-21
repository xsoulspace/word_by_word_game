import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:map_editor/state/models/models.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/navigation/game_router.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/core/dialog_stack.dart';
import 'package:word_by_word_game/subgames/quick_game/game_renderer/game_renderer.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/player_controls.dart';

class WbwGameWidget extends HookWidget {
  const WbwGameWidget({super.key});

  @override
  Widget build(final BuildContext context) {
    final gameFocusNode = useFocusNode();
    final isLoaded = context.select<StatesStatusesCubit, bool>(
      (final bloc) => bloc.state.levelStateStatus != LevelStateStatus.loading,
    );
    final currentLevelId = context.select<GlobalGameBloc, CanvasDataModelId>(
      (final bloc) => bloc.state.currentLevelId,
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Portal(
        child: DialogStack(
          builder: (final context, final dialogController) {
            final bottomDialog = isLoaded && currentLevelId.isNotEmpty
                ? const GameBottomBar()
                : const SizedBox();
            return Column(
              children: [
                Expanded(
                  child: MouseRegion(
                    onHover: (final _) {
                      // TODO(arenukvern): do we need this or not?
                      // if (!gameFocusNode.hasFocus) {
                      //   gameFocusNode.requestFocus();
                      // }
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
                if (DeviceRuntimeType.isMobile)
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.viewInsetsOf(context).bottom,
                    ),
                    child: bottomDialog,
                  )
                else
                  bottomDialog,
                const BottomSafeArea(),
              ],
            );
          },
        ),
      ),
    );
  }
}
