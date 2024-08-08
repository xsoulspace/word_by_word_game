import 'dart:async';

import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
import 'package:word_by_word_game/router.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/level_start/level_start_dialog.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/level_start/start_options/level_options.dart';
import 'package:word_by_word_game/subgames/quick_game/pause/widgets/start_game_hex.dart';

part 'pause_screen_state.dart';

class PauseScreen extends StatelessWidget {
  const PauseScreen({super.key});
  static const _kIsPrivacyPolicyEnabled = false;
  static const _kIsCharacterVisible = false;
  @override
  Widget build(final BuildContext context) {
    final uiTheme = context.uiTheme;
    final statusCubit = context.watch<StatesStatusesCubit>();
    final formFactors = UiPersistentFormFactors.of(context);
    final hasMobileLayout = DeviceRuntimeType.isMobile ||
        formFactors.width == WidthFormFactor.mobile;
    return _Scaffold(
      builder: (final context) {
        final state = context.read<PauseScreenState>();
        return Stack(
          fit: StackFit.expand,
          children: [
            Positioned.fill(
              child: Container().blurred(blur: 0.6, colorOpacity: 0.01),
            ),
            CustomScrollView(
              physics:
                  hasMobileLayout ? null : const NeverScrollableScrollPhysics(),
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
                        child: Column(
                          children: [
                            AnimatedCrossFade(
                              alignment: Alignment.center,
                              duration: 350.milliseconds,
                              crossFadeState: statusCubit.isLoading
                                  ? CrossFadeState.showSecond
                                  : CrossFadeState.showFirst,
                              firstChild: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const QuickStartGameButtons(),
                                  uiTheme.verticalBoxes.medium,
                                  UiFilledButton.icon(
                                    // TODO(arenukvern): l10n
                                    text: 'ADVENTURE',
                                    icon: Icons.air,
                                    onPressed: () {
                                      throw UnimplementedError();
                                    },
                                  ),
                                  uiTheme.verticalBoxes.medium,
                                  UiFilledButton.icon(
                                    icon: Icons.settings,
                                    text: S.of(context).settings.toUpperCase(),
                                    onPressed: () =>
                                        state.onToSettings(context),
                                  ).animate(delay: 500.milliseconds).fadeIn(
                                        curve: Curves.easeIn,
                                        duration: 450.milliseconds,
                                      ),
                                  uiTheme.verticalBoxes.medium,
                                  UiFilledButton.icon(
                                    icon: Icons.scoreboard_rounded,
                                    text: (Envs.store.isYandexGames
                                            ? S
                                                .of(context)
                                                .playersAndHighscoreYandex
                                            : S.of(context).playersAndHighscore)
                                        .toUpperCase(),
                                    onPressed: () =>
                                        state.onToPlayersAndHighscore(context),
                                  ).animate(delay: 500.milliseconds).fadeIn(
                                        curve: Curves.easeIn,
                                        duration: 450.milliseconds,
                                      ),
                                  uiTheme.verticalBoxes.medium,
                                  UiFilledButton.icon(
                                    icon: Icons.question_mark_rounded,
                                    text: S.of(context).about.toUpperCase(),
                                    onPressed: () async =>
                                        state.onShowAbout(context),
                                  ).animate(delay: 500.milliseconds).fadeIn(
                                        curve: Curves.easeIn,
                                        duration: 450.milliseconds,
                                      ),
                                  uiTheme.verticalBoxes.medium,
                                  if (_kIsPrivacyPolicyEnabled)
                                    UiTextButton.text(
                                      text: S
                                          .of(context)
                                          .privacyPolicy
                                          .toUpperCase(),
                                      onPressed: state.onPrivacyPolicy,
                                    ).animate(delay: 500.milliseconds).fadeIn(
                                          curve: Curves.easeIn,
                                          duration: 450.milliseconds,
                                        ),
                                  uiTheme.horizontalBoxes.medium,
                                ],
                              ),
                              secondChild: const UiCircularProgress(),
                            ),
                          ],
                        ),
                      ),
                      const BottomSafeArea(),
                    ],
                  ),
                ),
              ],
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
        );
      },
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
