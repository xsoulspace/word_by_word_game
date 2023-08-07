import 'dart:async';

import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:map_editor/state/models/models.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:provider/provider.dart';
import 'package:universal_io/io.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/pack_core/ads/ads.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/pack_core.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/level_start/start_options/level_options.dart';
import 'package:word_by_word_game/subgames/quick_game/keyboards/keyboards.dart';
import 'package:word_by_word_game/subgames/quick_game/pause/widgets/start_game_hex.dart';
import 'package:yandex_ads_sdk/yandex_ads_sdk.dart';

part 'pause_screen_state.dart';

class PauseScreen extends HookWidget {
  const PauseScreen({
    super.key,
  });
  static const _kIsPrivacyPolicyEnabled = false;
  static const _kIsCharacterVisible = false;
  @override
  Widget build(final BuildContext context) {
    final state = _usePauseScreenState(read: context.read);
    final uiTheme = UiTheme.of(context);

    return Provider(
      create: (final context) => state,
      builder: (final context, final child) => Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        body: Portal(
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const TopSafeArea(),
                    const AdPauseScreenBanner(),
                    const Spacer(),
                    const StartGameHex(),
                    const Spacer(),
                    Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 2,
                      runSpacing: 12,
                      children: [
                        UiFilledButton.icon(
                          icon: Icons.settings,
                          text: S.of(context).settings,
                          onPressed: state.onToSettings,
                        ).animate().then(delay: 500.milliseconds).fadeIn(
                              curve: Curves.easeIn,
                              duration: 450.milliseconds,
                            ),
                        uiTheme.horizontalBoxes.medium,
                        UiFilledButton.icon(
                          icon: Icons.scoreboard_rounded,
                          text: S.of(context).playersAndHighscore,
                          onPressed: state.onToPlayersAndHighscore,
                        ).animate().then(delay: 500.milliseconds).fadeIn(
                              curve: Curves.easeIn,
                              duration: 450.milliseconds,
                            ),
                        uiTheme.horizontalBoxes.medium,
                        UiFilledButton.icon(
                          icon: Icons.question_mark_rounded,
                          text: S.of(context).about,
                          onPressed: state.onShowAbout,
                        ).animate().then(delay: 500.milliseconds).fadeIn(
                              curve: Curves.easeIn,
                              duration: 450.milliseconds,
                            ),
                        uiTheme.horizontalBoxes.medium,
                        if (_kIsPrivacyPolicyEnabled)
                          UiTextButton.text(
                            text: S.of(context).privacyPolicy,
                            onPressed: state.onPrivacyPolicy,
                          ).animate().then(delay: 500.milliseconds).fadeIn(
                                curve: Curves.easeIn,
                                duration: 450.milliseconds,
                              ),
                      ],
                    ),
                    uiTheme.verticalBoxes.extraLarge,
                    const BottomSafeArea(),
                  ],
                ),
              ),
              if (_kIsCharacterVisible)
                Positioned(
                  right: 24,
                  top: 24,
                  child: CharacterAvatarButton.useDefault(),
                ),
              Positioned.fill(child: Container().blurred()),
              const Positioned.fill(
                child: Column(
                  children: [
                    TestWordField(),
                    // TestTextField(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TestWordField extends StatefulWidget {
  const TestWordField({super.key});

  @override
  State<TestWordField> createState() => _TestWordFieldState();
}

class _TestWordFieldState extends State<TestWordField> {
  final _focusNode = FocusNode();
  final _controller = WordFieldController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((final timeStamp) {
      _controller.split(
        inactiveIndexes: [1, 2],
        text: 'Ola!',
      );
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) => WordField(
        controller: _controller,
        focusNode: _focusNode,
      );
}

class TestTextField extends HookWidget {
  const TestTextField({super.key});

  @override
  Widget build(final BuildContext context) {
    final focusNode = useFocusNode();
    final controller = useTextEditingController(text: 'Ola!');
    return TextFieldWithKeyboard(
      focusNode: focusNode,
      controller: controller,
    );
  }
}
