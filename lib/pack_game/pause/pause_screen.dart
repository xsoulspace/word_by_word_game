import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/generated/l10n.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/pack_core.dart';
import 'package:word_by_word_game/pack_game/mechanics/mechanics.dart';
import 'package:yandex_ads_sdk/yandex_ads_sdk.dart';

part 'pause_screen_state.dart';

class PauseScreen extends HookWidget {
  const PauseScreen({
    final Key? key,
  }) : super(key: key);
  static const isPrivacyPolicyEnabled = false;
  @override
  Widget build(final BuildContext context) {
    final state = _usePauseScreenState(read: context.read);
    final routeState = context.watch<RouteState>();
    final routeArgs = LevelRouteArgs.fromJson(routeState.route.parameters);
    final levelId = routeArgs.levelId;
    final isLevelRunning = levelId.isNotEmpty;
    final uiTheme = UiTheme.of(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
              child: YandexBannerPlatformView(),
            ),
            Visibility(
              visible: isLevelRunning,
              child: UiFilledButton.text(
                text: S.of(context).continueGame,
                onPressed: () => state.onContinue(id: levelId),
              ),
            ),
            uiTheme.verticalBoxes.extraLarge,
            UiFilledButton.text(
              text: S.of(context).startNewGame,
              onPressed: state.onToAllLevels,
            ),
            uiTheme.verticalBoxes.medium,
            UiFilledButton.text(
              text: S.of(context).playersAndHighscore,
              onPressed: state.onToPlayersAndHighscore,
            ),
            uiTheme.verticalBoxes.medium,
            UiFilledButton.text(
              text: S.of(context).settings,
              onPressed: state.onToSettings,
            ),
            uiTheme.verticalBoxes.medium,
            UiFilledButton.text(
              text: S.of(context).about,
              onPressed: state.onShowAbout,
            ),
            uiTheme.verticalBoxes.medium,
            if (isPrivacyPolicyEnabled)
              UiTextButton.text(
                text: S.of(context).privacyPolicy,
                onPressed: state.onPrivacyPolicy,
              ),
          ],
        ),
      ),
    );
  }
}
