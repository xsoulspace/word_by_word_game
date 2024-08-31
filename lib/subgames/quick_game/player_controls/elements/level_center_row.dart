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

class UiEnergyAnimation extends StatefulWidget {
  const UiEnergyAnimation({super.key});

  @override
  State<UiEnergyAnimation> createState() => _UiEnergyAnimationState();
}

class _UiEnergyAnimationState extends State<UiEnergyAnimation>
    with TickerProviderStateMixin {
  late final StreamSubscription<LevelBlocState> _subscription;
  @override
  void initState() {
    super.initState();
    _subscription = context.read<LevelBloc>().stream.asBroadcastStream().listen(
          (final state) => _onData(
            phaseType: state.phaseType,
            word: state.currentWord.fullWord,
          ),
        );
  }

  ({AnimationController controller, Animation<double> animation})
      _createAnimation() {
    final controller =
        AnimationController(vsync: this, duration: 350.milliseconds);
    final animation = controller.drive(
      CurveTween(curve: Curves.easeInBack),
    );
    return (controller: controller, animation: animation);
  }

  final _icons = <String, Widget>{};

  void _onData({
    required final GamePhaseType phaseType,
    required final String word,
  }) {
    if (phaseType == GamePhaseType.selectAction) {
      final score = context
          .read<MechanicsCollection>()
          .score
          .getScoreFromWord(word: word);
      int count = score.value.formattedScore;
      final maxWidth = _getMaxWidth();
      Timer.periodic(const Duration(milliseconds: 20), (final timer) {
        if (count == 0) {
          timer.cancel();
        } else {
          final tuple = _createAnimation();
          final icon = _UiEnergyIcon(maxWidth: maxWidth, tuple: tuple);
          _icons['l$count'] = icon;
          tuple.animation.addStatusListener(
            (final status) {
              if (status == AnimationStatus.completed) {
                tuple.controller.dispose();
                _icons.remove('l$count');
              }
            },
          );
          tuple.controller.forward();
          setState(() {});
          count--;
        }
      });
    }
  }

  double _getMaxWidth() {
    final parentConstraints =
        context.findRenderObject()?.constraints as BoxConstraints?;
    final parentMaxWidth = parentConstraints?.maxWidth;
    final maxWidth = parentMaxWidth?.isFinite == true
        ? (parentMaxWidth ?? UiGameBottomBarCard.maxWidth)
        : UiGameBottomBarCard.maxWidth;
    return maxWidth;
  }

  @override
  void dispose() {
    unawaited(_subscription.cancel());
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) {
    // TODO(arenukvern): add fade in / fade out animation
    return Stack(
      fit: StackFit.expand,
      children: _icons.values.toList(),
    );
  }
}

typedef AnimationControllerTuple = ({
  Animation<double> animation,
  AnimationController controller
});

class _UiEnergyIcon extends HookWidget {
  const _UiEnergyIcon({
    required this.tuple,
    required this.maxWidth,
  });
  final AnimationControllerTuple tuple;
  final double maxWidth;

  @override
  Widget build(final BuildContext context) {
    final icon = Icon(Icons.bolt, color: context.colorScheme.tertiary);
    useListenable(tuple.controller);
    return Positioned(
      top: lerpDouble(40, 10, tuple.animation.value),
      right: lerpDouble(18, maxWidth / 2.4, tuple.animation.value),
      child: icon,
    );
  }
}
