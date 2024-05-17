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

    return _Scaffold(
      builder: (final context) {
        final state = context.read<PauseScreenState>();
        return Stack(
          children: [
            Positioned.fill(child: Container().blurred()),
            Column(
              children: [
                Expanded(
                  child: CustomScrollView(
                    slivers: [
                      const TopSafeArea().toSliver(),
                      SliverFillRemaining(
                        hasScrollBody: false,
                        child: AnimatedCrossFade(
                          alignment: Alignment.center,
                          duration: 350.milliseconds,
                          crossFadeState: statusCubit.isLoading
                              ? CrossFadeState.showSecond
                              : CrossFadeState.showFirst,
                          firstChild: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              QuickStartGameButtons(),
                              LevelsView(),
                            ],
                          ),
                          secondChild: const UiCircularProgress(),
                        ),
                      ),
                    ],
                  ),
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 2,
                  runSpacing: 12,
                  children: [
                    UiFilledButton.icon(
                      icon: Icons.settings,
                      text: S.of(context).settings,
                      onPressed: () => state.onToSettings(context),
                    ).animate(delay: 500.milliseconds).fadeIn(
                          curve: Curves.easeIn,
                          duration: 450.milliseconds,
                        ),
                    uiTheme.horizontalBoxes.medium,
                    UiFilledButton.icon(
                      icon: Icons.scoreboard_rounded,
                      text: Envs.store.isYandexGames
                          ? S.of(context).playersAndHighscoreYandex
                          : S.of(context).playersAndHighscore,
                      onPressed: () => state.onToPlayersAndHighscore(context),
                    ).animate(delay: 500.milliseconds).fadeIn(
                          curve: Curves.easeIn,
                          duration: 450.milliseconds,
                        ),
                    uiTheme.horizontalBoxes.medium,
                    UiFilledButton.icon(
                      icon: Icons.question_mark_rounded,
                      text: S.of(context).about,
                      onPressed: () async => state.onShowAbout(context),
                    ).animate(delay: 500.milliseconds).fadeIn(
                          curve: Curves.easeIn,
                          duration: 450.milliseconds,
                        ),
                    uiTheme.horizontalBoxes.medium,
                    if (_kIsPrivacyPolicyEnabled)
                      UiTextButton.text(
                        text: S.of(context).privacyPolicy,
                        onPressed: state.onPrivacyPolicy,
                      ).animate(delay: 500.milliseconds).fadeIn(
                            curve: Curves.easeIn,
                            duration: 450.milliseconds,
                          ),
                  ],
                ),
                uiTheme.verticalBoxes.extraLarge,
                const BottomSafeArea(),
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
