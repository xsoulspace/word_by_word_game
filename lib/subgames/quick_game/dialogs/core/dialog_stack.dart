import 'dart:async';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:map_editor/state/models/models.dart';
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
import 'package:word_by_word_game/subgames/quick_game/quick_game.dart';

part 'dialog_stack_state.dart';

enum GameDialogType {
  none,
  levelLost,
  levelWin,
  levelWordSuggestion,
  tutorialBool,
  tutorialOk,
}

class GuiOverlay extends StatelessWidget {
  const GuiOverlay({super.key});

  @override
  Widget build(final BuildContext context) {
    final isLoaded = context.select<StatesStatusesCubit, bool>(
      (final bloc) => bloc.state.levelStateStatus != LevelStateStatus.loading,
    );
    final currentLevelId = context.select<GlobalGameBloc, CanvasDataModelId>(
      (final bloc) => bloc.state.currentLevelId,
    );

    return Portal(
      child: DialogStack(
        child: Builder(
          builder: (final context) {
            final bottomDialog = isLoaded && currentLevelId.isNotEmpty
                ? const GameBottomBar()
                : const SizedBox();
            if (DeviceRuntimeType.isMobile) {
              return Positioned(
                bottom: MediaQuery.viewInsetsOf(context).bottom,
                left: 0,
                right: 0,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: bottomDialog,
                ),
              );
            } else {
              return Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: bottomDialog,
                ),
              );
            }
          },
        ),
      ),
    );
  }
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
