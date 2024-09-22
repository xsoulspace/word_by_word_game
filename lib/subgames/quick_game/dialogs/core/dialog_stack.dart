import 'dart:async';

import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/level_word_suggestion.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/technologies/tech_level_achieved_dialog.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/technologies/tech_level_dialog.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/tutorial_dialogs/tutorial_dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/settings/settings.dart';

part 'dialog_controller.dart';

enum GameDialogType {
  none,
  gameLevelLost,
  gameLevelWin,
  gameLevelWordSuggestion,
  gameTutorialBool,
  gameTutorialOk,
  gameTechnologiesTree,
  gameTechLevelAchieved,
  menuSettings,
  // menuCredits,
  // menuAdventure,
  // menuQuickGame,
}

class DialogStack extends StatefulWidget {
  const DialogStack({
    required this.child,
    super.key,
  });
  final Widget child;

  @override
  State<DialogStack> createState() => _DialogStackState();
}

class _DialogStackState extends State<DialogStack> {
  late final _controller = context.read<DialogController>();
  GameDialogType? _lastDialogType;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((final _) {
      _controller.addListener(_onRouteChange);
    });
  }

  void _onRouteChange() {
    final dialogType = _controller.dialogType;
    if (_lastDialogType == dialogType) return;
    if (dialogType != GameDialogType.none) {
      unawaited(
        Navigator.of(context).push(
          _Dialog(
            dialogType: dialogType,
            onDismiss: _controller.closeDialog,
          ),
        ),
      );
    }
    _lastDialogType = _controller.dialogType;
  }

  @override
  void dispose() {
    _controller.removeListener(_onRouteChange);
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) => widget.child;
}

class _Dialog extends PopupRoute {
  _Dialog({
    required this.dialogType,
    required this.onDismiss,
  });

  final GameDialogType dialogType;
  final VoidCallback onDismiss;

  @override
  Color? get barrierColor => UiColors.offWhite.withOpacity(0.5);

  // This allows the popup to be dismissed by tapping the scrim or by pressing
  // the escape key on the keyboard.
  @override
  bool get barrierDismissible => switch (dialogType) {
        GameDialogType.menuSettings => true,
        _ => false,
      };

  @override
  String? get barrierLabel => 'Game Dialog';

  @override
  Widget buildPage(
    final BuildContext context,
    final Animation<double> animation,
    final Animation<double> secondaryAnimation,
  ) =>
      AnimatedBuilder(
        animation: animation,
        builder: (final context, final child) => SlideTransition(
          position: animation
              .drive(Tween(begin: const Offset(0, 0.05), end: Offset.zero)),
          child: FadeTransition(
            opacity: animation,
            child: FocusScope(
              autofocus: true,
              child: PopScope(
                canPop: barrierDismissible,
                onPopInvokedWithResult: (final didPop, final result) {
                  if (didPop) onDismiss();
                },
                child: child!,
              ),
            ),
          ),
        ),
        child: _DialogBody(onDismiss: onDismiss),
      );

  @override
  Duration get transitionDuration => 250.milliseconds;
}

class _DialogBody extends HookWidget {
  const _DialogBody({required this.onDismiss});

  final VoidCallback onDismiss;

  @override
  Widget build(final BuildContext context) {
    final state = context.watch<DialogController>();

    useEffect(
      () {
        if (state.dialogType case GameDialogType.none when context.mounted) {
          Navigator.pop(context);
        }
        return null;
      },
      [state],
    );

    return switch (state.dialogType) {
      GameDialogType.none => const SizedBox(),
      GameDialogType.gameTechnologiesTree => TechLevelsDialog(
          onClose: state.closeDialogAndResume,
        ),
      GameDialogType.gameTechLevelAchieved => TechLevelAchievedDialog(
          onClose: state.closeDialogAndResume,
        ),
      GameDialogType.gameLevelLost => LevelLostDialog(
          onRestart: state.onRestartContinueLevel,
          onToLevels: state.onExitLevel,
        ),
      GameDialogType.gameLevelWin => LevelWinDialog(
          onContinue: state.onRestartContinueLevel,
          onToLevels: state.onExitLevel,
        ),
      GameDialogType.gameLevelWordSuggestion =>
        const LevelWordSuggestionDialog(),
      GameDialogType.gameTutorialBool => const TutorialBoolDialog(),
      GameDialogType.gameTutorialOk => const TutorialOkDialog(),
      GameDialogType.menuSettings => const Center(child: SettingsView()),

      // GameDialogType.menuCredits => ,
      // GameDialogType.menuAdventure => AdventureView(
      //     onBack: dialogController.closeDialog,
      //   ),
      // GameDialogType.menuQuickGame => const MenuQuickGameDialog(),
    };
  }
}
