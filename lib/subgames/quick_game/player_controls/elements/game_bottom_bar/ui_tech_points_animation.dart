import 'dart:async';
import 'dart:ui';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:word_by_word_game/common_imports.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/game_bottom_bar/ui_bottom_energy_animation.dart';

/// value is count of visible tech points
class UiTechPointsAnimationNotifier extends ValueNotifier<int> {
  // ignore: avoid_unused_constructor_parameters
  UiTechPointsAnimationNotifier(final BuildContext context) : super(0);
}

class UiTechPointsAnimation extends StatefulWidget {
  const UiTechPointsAnimation({super.key});

  @override
  State<UiTechPointsAnimation> createState() => _UiTechPointsAnimationState();
}

class _UiTechPointsAnimationState extends State<UiTechPointsAnimation>
    with TickerProviderStateMixin {
  final _icons = <String, Widget>{};
  bool _isAnimationRunning = false;
  late final _notifier = context.read<UiTechPointsAnimationNotifier>();
  @override
  void initState() {
    super.initState();
    _notifier.addListener(_onData);
  }

  Future<void> _onData() async {
    if (_isAnimationRunning) return;
    _isAnimationRunning = true;
    final screenSize = MediaQuery.sizeOf(context);
    int count = _notifier.value;
    const minBottomOffsetY = 260.0;
    final screenHeight = screenSize.height;
    final maxBottomOffsetY = screenHeight;

    /// center of the screen
    final minRightOffsetX = screenSize.width / 2;
    const techProgressBarWidth = 90.0;
    final maxRightOffsetX = minRightOffsetX - techProgressBarWidth;
    final tweenSequence = _fadeInTweenSequence();

    Timer.periodic(const Duration(milliseconds: 20), (final timer) {
      if (count == 0) {
        timer.cancel();
        _isAnimationRunning = false;
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
    const finalOpacity = 0.8;
    return TweenSequence<double>(
      [
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0, end: finalOpacity)
              .chain(CurveTween(curve: Curves.easeIn)),
          weight: 10,
        ),
        TweenSequenceItem<double>(
          tween: ConstantTween<double>(finalOpacity),
          weight: 80,
        ),
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: finalOpacity, end: 0)
              .chain(CurveTween(curve: Curves.easeOut)),
          weight: 10,
        ),
      ],
    );
  }

  AnimationControllerTuple _createAnimation({
    required final Animatable<double> tweenSequence,
  }) {
    final controller =
        AnimationController(vsync: this, duration: 750.milliseconds);
    final moveAnimation =
        controller.drive(CurveTween(curve: Curves.easeInBack));
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
      size: 12,
      color:
          context.colorScheme.tertiary.withOpacity(tuple.fadeAnimation.value),
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

typedef MinMaxOffsetTuple = ({
  double min,
  double max,
});
