import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/overlays/overlays.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/elements.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/word_composition_bar/word_composition_bar.dart';

class UILevelCenterBar extends StatelessWidget {
  const UILevelCenterBar({
    super.key,
  });

  static Future<void> onConfirmWord(final BuildContext context) async {
    unawaited(context.read<GuiWordCompositionCubit>().onToSelectActionPhase());
    TutorialFrame.sendOnClickEvent(
      uiKey: TutorialUiItem.confirmWordButton,
      context: context,
    );
  }

  @override
  Widget build(final BuildContext context) {
    final phaseType = context.select<LevelBloc, GamePhaseType>(
      (final s) => s.state.phaseType,
    );
    final uiTheme = context.uiTheme;
    final levelCubit = context.watch<LevelBloc>();
    final isActionPhaseAndAdvanced = phaseType == GamePhaseType.selectAction &&
        levelCubit.featuresSettings.isAdvancedGame;

    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
        devicePixelRatio: 1,
        textScaler: TextScaler.noScaling,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // TODO(arenukvern): figure out where to place it
              AnimatedSize(
                duration: 200.milliseconds,
                child: const UiPhaseText(),
              ),
            ],
          ),
          Divider(color: context.colorScheme.tertiary.withOpacity(0.2)),
          ...switch (phaseType) {
            GamePhaseType.entryWord => [
                const UiWordCompositionBar(
                  rightSlot: Padding(
                    padding: EdgeInsets.only(left: 4),
                    child: ActionConfirmWordButton(),
                  ),
                ),
                uiTheme.verticalBoxes.medium,
              ],
            GamePhaseType.selectAction => [const UiActionFrame()],
          },
        ],
      ),
    );
  }
}

class UiEnergyAnimation extends StatefulHookWidget {
  const UiEnergyAnimation({super.key});

  @override
  State<UiEnergyAnimation> createState() => _UiEnergyAnimationState();
}

class _UiEnergyAnimationState extends State<UiEnergyAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;
  late final StreamSubscription<LevelBlocState> _subscription;
  @override
  void initState() {
    super.initState();
    _subscription = context.read<LevelBloc>().stream.asBroadcastStream().listen(
          (final state) => _onData(state.phaseType),
        );
    _controller = AnimationController(vsync: this, duration: 2.seconds);
    _animation = _controller.drive(
      CurveTween(curve: Curves.easeInBack),
    )..addStatusListener(
        (final status) {
          if (status == AnimationStatus.completed) {
            _controller.reset();
          }
        },
      );
  }

  void _onData(final GamePhaseType phaseType) {
    if (phaseType == GamePhaseType.selectAction) {
      _controller.forward();
    }
  }

  @override
  void dispose() {
    unawaited(_subscription.cancel());
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) {
    final parentConstraints =
        context.findRenderObject()?.constraints as BoxConstraints?;
    final parentMaxWidth = parentConstraints?.maxWidth;
    final maxWidth = parentMaxWidth?.isFinite == true
        ? (parentMaxWidth ?? UiGameBottomBarCard.maxWidth)
        : UiGameBottomBarCard.maxWidth;
    useListenable(_controller);
    final icon = Icon(Icons.bolt, color: context.colorScheme.tertiary);
    // TODO(arenukvern): generate icons
    // TODO(arenukvern): add fade in / fade out animation
    return Positioned(
      top: lerpDouble(40, 10, _animation.value),
      right: lerpDouble(18, maxWidth / 2.4, _animation.value),
      child: icon,
    );
  }
}
