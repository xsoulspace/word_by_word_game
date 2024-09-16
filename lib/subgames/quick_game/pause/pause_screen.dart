import 'dart:async';

import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
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
import 'package:word_by_word_game/subgames/quick_game/dialogs/level_start/level_start_dialog.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/level_start/start_options/level_options.dart';
import 'package:word_by_word_game/subgames/quick_game/highscore/highscore.dart';
import 'package:word_by_word_game/subgames/quick_game/pause/adventure_view.dart';
import 'package:word_by_word_game/subgames/quick_game/pause/credits_view.dart';
import 'package:word_by_word_game/subgames/quick_game/pause/widgets/start_game_hex.dart';
import 'package:word_by_word_game/subgames/quick_game/settings/settings_view.dart';

part 'pause_screen_state.dart';

const _kIsPrivacyPolicyEnabled = false;
const _kIsCharacterVisible = false;

enum PauseScreenRoute {
  mainMenu,
  adventure,
  settings,
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
          Visibility(
            visible: false,
            child: AnimatedSwitcher(
              duration: 350.milliseconds,
              child: switch (screenRouteState.value) {
                PauseScreenRoute.mainMenu => _MainMenuView(
                    onChangeRoute: (final route) =>
                        screenRouteState.value = route,
                  ),
                PauseScreenRoute.adventure => AdventureView(onBack: onBack),
                PauseScreenRoute.settings => SettingsView(onBack: onBack),
                PauseScreenRoute.playersAndHighscore =>
                  PlayersAndHighscoreView(onBack: onBack),
                PauseScreenRoute.credits => CreditsView(onBack: onBack),
              },
            ),
          ),

          if (_kIsCharacterVisible)
            Positioned(
              right: 24,
              top: 24,
              child: CharacterAvatarButton.useDefault(),
            ),
          Positioned.fill(
            child: IgnorePointer(
              child: ColoredBox(
                color: context.colorScheme.surface,
                child: const SizedBox.expand(),
              ),
            ),
          )
              .animate(delay: 550.milliseconds)
              .fadeOut(duration: 550.milliseconds),

          Positioned.fill(
            child: SimpleMainMenu(
              onContinueQuick: () =>
                  screenRouteState.value = PauseScreenRoute.adventure,
              onNewQuick: () =>
                  screenRouteState.value = PauseScreenRoute.adventure,
              onContinueAdventure: () =>
                  screenRouteState.value = PauseScreenRoute.adventure,
              onChooseAdventure: () =>
                  screenRouteState.value = PauseScreenRoute.adventure,
              onPlayersAndHighscore: () =>
                  screenRouteState.value = PauseScreenRoute.playersAndHighscore,
              onCredits: () =>
                  screenRouteState.value = PauseScreenRoute.credits,
              onStart: () =>
                  screenRouteState.value = PauseScreenRoute.adventure,
              onSettings: () =>
                  screenRouteState.value = PauseScreenRoute.settings,
              onExit: () => screenRouteState.value = PauseScreenRoute.mainMenu,
            ),
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
    super.key,
  });
  final ValueChanged<PauseScreenRoute> onChangeRoute;
  @override
  Widget build(final BuildContext context) {
    final uiTheme = context.uiTheme;
    final formFactors = UiPersistentFormFactors.of(context);
    final hasMobileLayout = formFactors.isMobile;
    final state = context.watch<PauseScreenState>();

    return CustomScrollView(
      physics: hasMobileLayout ? null : const NeverScrollableScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          child: Column(
            children: [
              const TopSafeArea(),
              ConstrainedGap(
                minHeight: 12,
                maxHeight: 64,
                expand: !hasMobileLayout,
              ),
              const _Title(),
              ConstrainedGap(
                minHeight: 12,
                maxHeight: 64,
                expand: !hasMobileLayout,
              ),
              Expanded(
                child: SingleChildScrollView(
                  primary: !hasMobileLayout,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GameStartButtons(
                        onChangeRoute: onChangeRoute,
                      ),
                      uiTheme.verticalBoxes.medium,
                      UiFilledButton.icon(
                        icon: Icons.settings,
                        text: S.of(context).settings.toUpperCase(),
                        onPressed: () =>
                            onChangeRoute(PauseScreenRoute.settings),
                      )
                          .animate()
                          .fadeIn(
                            curve: Curves.easeIn,
                            duration: 450.milliseconds,
                          )
                          .slideY(begin: -0.1),
                      uiTheme.verticalBoxes.medium,
                      UiFilledButton.icon(
                        icon: Icons.scoreboard_rounded,
                        text: (Envs.store.isYandexGames
                                ? S.of(context).playersAndHighscoreYandex
                                : S.of(context).playersAndHighscore)
                            .toUpperCase(),
                        onPressed: () =>
                            onChangeRoute(PauseScreenRoute.playersAndHighscore),
                      )
                          .animate()
                          .fadeIn(
                            curve: Curves.easeIn,
                            duration: 450.milliseconds,
                          )
                          .slideY(begin: -0.1),
                      uiTheme.verticalBoxes.medium,
                      UiFilledButton.icon(
                        icon: Icons.question_mark_rounded,
                        text: S.of(context).about.toUpperCase(),
                        onPressed: () async => state.onShowAbout(context),
                      )
                          .animate()
                          .fadeIn(
                            curve: Curves.easeIn,
                            duration: 450.milliseconds,
                          )
                          .slideY(begin: -0.1),
                      uiTheme.verticalBoxes.medium,
                      if (_kIsPrivacyPolicyEnabled)
                        UiTextButton.text(
                          text: S.of(context).privacyPolicy.toUpperCase(),
                          onPressed: state.onPrivacyPolicy,
                        )
                            .animate()
                            .fadeIn(
                              curve: Curves.easeIn,
                              duration: 450.milliseconds,
                            )
                            .slideY(begin: -0.1),
                      uiTheme.horizontalBoxes.medium,
                    ],
                  ),
                ),
              ),
              const BottomSafeArea(),
            ],
          ),
        ),
      ],
    );
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
    super.key,
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

class _Title extends StatelessWidget {
  const _Title({super.key});

  @override
  Widget build(final BuildContext context) {
    final shadows = [
      const Shadow(blurRadius: 1),
      const Shadow(blurRadius: 1),
      const Shadow(blurRadius: 1),
    ];
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'WORLD',
            style: context.textThemeBold.displayLarge!.copyWith(
              letterSpacing: 5,
              color: const Color.fromARGB(255, 241, 244, 241),
              shadows: shadows,
            ),
            textAlign: TextAlign.start,
          )
              .animate()
              .then(duration: 150.milliseconds)
              .fadeIn()
              .slideY(begin: -0.1),
          Text(
            'BY WORDS',
            style: context.textThemeBold.displayMedium!.copyWith(
              color: const Color.fromARGB(255, 241, 244, 241),
              shadows: shadows,
            ),
            textAlign: TextAlign.start,
          ),
          const Gap(12),
          Text(
            '2D ADVENTURE GAME',
            style: context.textThemeBold.titleMedium!.copyWith(
              color: const Color.fromARGB(255, 241, 244, 241),
              shadows: [
                const Shadow(blurRadius: 1),
                const Shadow(blurRadius: 1, color: Colors.black38),
              ],
            ),
            textAlign: TextAlign.start,
          )
              .animate()
              .then(duration: 150.milliseconds)
              .fadeIn()
              .slideY(begin: -0.1),
        ],
      ),
    );
  }
}
