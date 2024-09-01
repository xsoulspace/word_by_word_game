import 'dart:async';
import 'dart:ui';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:word_by_word_game/common_imports.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/game_bottom_bar/ui_bottom_energy_animation.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/screen_animations/ui_tech_points_animation.dart';

class UiPowerPointsAnimationNotifier extends PointsNotifier {
  // ignore: avoid_unused_constructor_parameters
  UiPowerPointsAnimationNotifier(final BuildContext context);
}

class UiPowerPointsAnimation extends StatefulWidget {
  const UiPowerPointsAnimation({super.key});

  @override
  State<UiPowerPointsAnimation> createState() => _UiPowerPointsAnimationState();
}

class _UiPowerPointsAnimationState extends State<UiPowerPointsAnimation>
    with TickerProviderStateMixin {
  final _icons = <String, Widget>{};
  late final _notifier = context.read<UiPowerPointsAnimationNotifier>();
  @override
  void initState() {
    super.initState();
    _notifier.addListener(_onData);
  }

  Future<void> _onData() async {
    final screenSize = MediaQuery.sizeOf(context);
    int count = _notifier.points ~/ 2;
    const minBottomOffsetY = 200.0;
    final screenHeight = screenSize.height;
    final maxBottomOffsetY = screenHeight - 20;

    /// center of the screen
    final minRightOffsetX = screenSize.width / 2;
    const techProgressBarWidth = 90.0;
    final maxRightOffsetX = minRightOffsetX + techProgressBarWidth;
    final tweenSequence = _fadeInTweenSequence();

    Timer.periodic(const Duration(milliseconds: 20), (final timer) {
      if (count == 0) {
        timer.cancel();
      } else {
        final tuple = _createAnimation(tweenSequence: tweenSequence);
        final icon = _UiTechPointIcon(
          bottomOffset: (min: minBottomOffsetY, max: maxBottomOffsetY),
          rightOffset: (min: minRightOffsetX, max: maxRightOffsetX),
          tuple: tuple,
        );
        final key = 'l$count';
        _icons[key] = icon;
        tuple.animation.addStatusListener(
          (final status) {
            if (status == AnimationStatus.completed ||
                status == AnimationStatus.dismissed) {
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

  Animatable<double> _fadeInTweenSequence() {
    const finalOpacity = 0.6;
    return TweenSequence<double>(
      [
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0, end: finalOpacity)
              .chain(CurveTween(curve: Curves.easeIn)),
          weight: 20,
        ),
        TweenSequenceItem<double>(
          tween: ConstantTween<double>(finalOpacity),
          weight: 60,
        ),
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: finalOpacity, end: 0)
              .chain(CurveTween(curve: Curves.easeOut)),
          weight: 20,
        ),
      ],
    );
  }

  AnimationControllerTuple _createAnimation({
    required final Animatable<double> tweenSequence,
  }) {
    final controller =
        AnimationController(vsync: this, duration: 750.milliseconds);
    final moveAnimation = controller.drive(
      CurveTween(curve: Curves.easeInOut),
    );
    final fadeAnimation = tweenSequence.animate(controller);

    return (
      animation: moveAnimation,
      controller: controller,
      fadeAnimation: fadeAnimation
    );
  }

  @override
  Widget build(final BuildContext context) => Stack(
        fit: StackFit.expand,
        children: _icons.values.toList(),
      );
}

class _UiTechPointIcon extends HookWidget {
  const _UiTechPointIcon({
    required this.tuple,
    required this.bottomOffset,
    required this.rightOffset,
  });
  final AnimationControllerTuple tuple;
  final MinMaxOffsetTuple bottomOffset;
  final MinMaxOffsetTuple rightOffset;

  @override
  Widget build(final BuildContext context) {
    final icon = Icon(
      Icons.circle,
      size: 8,
      color: context.colorScheme.error.withOpacity(tuple.fadeAnimation.value),
    );
    useListenable(tuple.controller);
    final bottom =
        lerpDouble(bottomOffset.min, bottomOffset.max, tuple.animation.value);
    final right =
        lerpDouble(rightOffset.min, rightOffset.max, tuple.animation.value);
    return Positioned(
      bottom: bottom,
      right: right,
      child: icon,
    );
  }
}
