import 'dart:async';

import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:map_editor/state/models/models.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:provider/provider.dart';
// import 'package:universal_io/io.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/envs.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/core/core.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/level_start/level_start_dialog.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/level_start/start_options/level_options.dart';
import 'package:word_by_word_game/subgames/quick_game/highscore/highscore.dart';
import 'package:word_by_word_game/subgames/quick_game/pause/adventure_view.dart';
import 'package:word_by_word_game/subgames/quick_game/pause/credits_view.dart';
import 'package:word_by_word_game/subgames/quick_game/pause/widgets/start_game_hex.dart';

part 'pause_screen_state.dart';

const _kIsCharacterVisible = false;

enum PauseScreenRoute {
  mainMenu,
  adventure,
  playersAndHighscore,
  credits,
}

class PauseScreen extends HookWidget {
  const PauseScreen({super.key});
  @override
  Widget build(final BuildContext context) {
    final screenRouteState = useState(PauseScreenRoute.mainMenu);
    void onBack() => screenRouteState.value = PauseScreenRoute.mainMenu;

    return _Scaffold(
      builder: (final context) => Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Container().blurred(blur: 0.6, colorOpacity: 0.01),
          ),
          AnimatedSwitcher(
            duration: 350.milliseconds,
            child: switch (screenRouteState.value) {
              PauseScreenRoute.mainMenu => _MainMenuView(
                  onChangeRoute: (final route) =>
                      screenRouteState.value = route,
                ),
              PauseScreenRoute.adventure => AdventureView(onBack: onBack),
              PauseScreenRoute.playersAndHighscore =>
                PlayersAndHighscoreView(onBack: onBack),
              PauseScreenRoute.credits => CreditsView(onBack: onBack),
            },
          ),
          if (DeviceRuntimeType.isNativeDesktop)
            Builder(
              builder: (final context) {
                final hasBack = switch (screenRouteState.value) {
                  PauseScreenRoute.mainMenu => true,
                  _ => true,
                };
                return Positioned(
                  bottom: 8,
                  right: 8,
                  child: KeyboardBindingsTips(hasBack: hasBack),
                );
              },
            ),

          if (_kIsCharacterVisible)
            Positioned(
              right: 24,
              top: 24,
              child: CharacterAvatarButton.useDefault(),
            ),

          /// left for test cases
          // const Positioned.fill(
          //   child: Column(
          //     children: [
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}

class _MainMenuView extends StatelessWidget {
  const _MainMenuView({
    required this.onChangeRoute,
  });
  final ValueChanged<PauseScreenRoute> onChangeRoute;
  @override
  Widget build(final BuildContext context) {
    final formFactors = UiPersistentFormFactors.of(context);
    final hasMobileLayout = formFactors.isMobile;
    final buttonStatuses = useGameStartButtonsStatuses(context);
    final dialogController = context.read<DialogController>();
    Future<void> onContinueAdventure() async {
      final CanvasDataModelId adventureLevelId;
      final savedLevels = [
        ...context.read<GlobalGameBloc>().state.savedLevels.values.where(
              (final e) => e.id != kQuickGameMapId,
            ),
      ]..sort(
          (final a, final b) {
            // 1 - later, -1 - earlier
            if (a.updatedAt == null) return 1;
            if (b.updatedAt == null) return -1;
            return b.updatedAt!.compareTo(a.updatedAt!);
          },
        );
      if (buttonStatuses.isCurrentLevelRunning &&
          !buttonStatuses.isCurrentLevelQuickGame) {
        adventureLevelId = buttonStatuses.currentLevelId;
      } else {
        /// last saved level
        adventureLevelId = savedLevels.first.id;
      }

      return buttonStatuses.pauseScreenState.onContinueFromSamePlace(
        context: context,
        id: adventureLevelId,
      );
    }

    Future<void> onContinueQuick() async {
      if (buttonStatuses.isQuickSaveExists) {
        return buttonStatuses.pauseScreenState.onContinueFromSamePlace(
          context: context,
          id: kQuickGameMapId,
        );
      }
      unawaited(
        buttonStatuses.pauseScreenState.onShowStartDialog(
          canvasDataId: kQuickGameMapId,
          context: context,
        ),
      );
    }

    Future<void> onRestartQuick() async =>
        buttonStatuses.pauseScreenState.onShowStartDialog(
          canvasDataId: kQuickGameMapId,
          context: context,
        );
    final tuple = (
      onContinueQuick: onContinueQuick,
      onNewQuick: onRestartQuick,
      onContinueAdventure: onContinueAdventure,
      onChooseAdventure: () => onChangeRoute(PauseScreenRoute.adventure),
      onPlayersAndHighscore: () =>
          onChangeRoute(PauseScreenRoute.playersAndHighscore),
      // onCredits: () => screenRouteState.value = PauseScreenRoute.credits,
      onCredits: () async =>
          buttonStatuses.pauseScreenState.onShowAbout(context),
      onSettings: dialogController.openSettings,
      onExit: SystemNavigator.pop,
      isAdventureSaveExists: buttonStatuses.isAdventureSaveExists,
      isQuickSaveExists: buttonStatuses.isQuickSaveExists,
      onPrivacyPolicy: buttonStatuses.pauseScreenState.onPrivacyPolicy,
    );

    /// desktop
    return SimpleMainMenu(tuple: tuple);
  }
}

class ConstrainedGap extends StatelessWidget {
  const ConstrainedGap({
    this.maxHeight = double.infinity,
    this.maxWidth = double.infinity,
    this.minHeight = 0.0,
    this.minWidth = 0.0,
    this.expand = false,
    super.key,
  });
  final double minHeight;
  final double maxHeight;
  final double maxWidth;
  final double minWidth;
  final bool expand;
  @override
  Widget build(final BuildContext context) => ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: minHeight,
          maxHeight: maxHeight,
          maxWidth: maxWidth,
          minWidth: minWidth,
        ),
        child: expand ? const SizedBox.expand() : const SizedBox.shrink(),
      );
}

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.builder,
  });
  final WidgetBuilder builder;
  @override
  Widget build(final BuildContext context) => LevelUiUxStatesProvider(
        builder: (final context) => Scaffold(
          backgroundColor: Colors.transparent,
          resizeToAvoidBottomInset: false,
          body: builder(context),
        ),
      );
}
