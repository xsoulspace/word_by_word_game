import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/elements.dart';

class UiBottomEnergyAnimation extends StatefulWidget {
  const UiBottomEnergyAnimation({super.key});

  @override
  State<UiBottomEnergyAnimation> createState() =>
      _UiBottomEnergyAnimationState();
}

class _UiBottomEnergyAnimationState extends State<UiBottomEnergyAnimation>
    with TickerProviderStateMixin {
  late final StreamSubscription<LevelBlocState> _subscription;
  @override
  void initState() {
    super.initState();
    _subscription = context.read<LevelBloc>().stream.asBroadcastStream().listen(
          (final state) => _onData(
            phaseType: state.phaseType,
            word: state.latestWord,
          ),
        );
  }

  Animatable<double> _fadeInTweenSequence() => TweenSequence<double>(
        [
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 0, end: 1)
                .chain(CurveTween(curve: Curves.easeIn)),
            weight: 3,
          ),
          TweenSequenceItem<double>(
            tween: ConstantTween<double>(1),
            weight: 87,
          ),
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 1, end: 0)
                .chain(CurveTween(curve: Curves.easeOut)),
            weight: 10,
          ),
        ],
      );
  AnimationControllerTuple _createAnimation({
    required final Animatable<double> tweenSequence,
  }) {
    final controller =
        AnimationController(vsync: this, duration: 240.milliseconds);
    final moveAnimation = controller.drive(
      CurveTween(curve: Curves.easeInBack),
    );

    final fadeAnimation = tweenSequence.animate(controller);

    return (
      controller: controller,
      animation: moveAnimation,
      fadeAnimation: fadeAnimation
    );
  }

  final _icons = <String, Widget>{};
  bool _isAnimationRunning = false;
  String _lastWord = '';
  void _onData({
    required final GamePhaseType phaseType,
    required final String word,
  }) {
    if (phaseType == GamePhaseType.selectAction) {
      if (_isAnimationRunning || word == _lastWord) return;
      _lastWord = word;
      _isAnimationRunning = true;
      final score = context
          .read<MechanicsCollection>()
          .score
          .getScoreFromWord(word: word);
      int count = score.value.formattedScore ~/ 3;
      final maxWidth = _getMaxWidth();
      final tweenSequence = _fadeInTweenSequence();

      Timer.periodic(const Duration(milliseconds: 20), (final timer) {
        if (count == 0) {
          timer.cancel();
          _isAnimationRunning = false;
        } else {
          final tuple = _createAnimation(tweenSequence: tweenSequence);
          final icon = _UiEnergyIcon(maxWidth: maxWidth, tuple: tuple);
          final key = 'l$count';
          _icons[key] = icon;
          tuple.animation.addStatusListener(
            (final status) {
              if (status
                  case AnimationStatus.completed || AnimationStatus.dismissed) {
                tuple.controller.dispose();
                _icons.remove(key);
                setState(() {});
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
  Widget build(final BuildContext context) => Stack(
        fit: StackFit.expand,
        children: _icons.values.toList(),
      );
}

typedef AnimationControllerTuple = ({
  Animation<double> animation,
  AnimationController controller,
  Animation<double> fadeAnimation,
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
    final icon = Icon(
      Icons.bolt,
      color: context.colorScheme.tertiary.withOpacity(
        tuple.fadeAnimation.value,
      ),
    );
    useListenable(tuple.controller);
    return Positioned(
      top: lerpDouble(40, 10, tuple.animation.value),
      right: lerpDouble(18, maxWidth / 2.5, tuple.animation.value),
      child: icon,
    );
  }
}
