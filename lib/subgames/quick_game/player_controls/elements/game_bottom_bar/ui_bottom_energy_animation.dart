import 'dart:async';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:word_by_word_game/common_imports.dart';
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
        AnimationController(vsync: this, duration: 350.milliseconds);
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
      final maxCount = count;
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
                final firstKey = 'l$maxCount';
                final isFirstKey = firstKey == key;
                if (isFirstKey) {
                  context
                      .read<UiTechPointsAnimationNotifier>()
                      .setPoints(maxCount);
                }
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
        // ignore: invalid_use_of_protected_member
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
      Icons.circle,
      color: context.colorScheme.tertiary.withOpacity(
        tuple.fadeAnimation.value,
      ),
      size: 8,
    );
    useListenable(tuple.controller);
    final offset = _calculateBezierOffset(
      t: tuple.animation.value,
      points: [
        const Offset(18, 80),
        Offset.zero,
        Offset(maxWidth / 2.5, 0),
        Offset(maxWidth / 2, 10),
      ],
    );

    return Positioned(
      top: offset.dy,
      right: offset.dx,
      child: icon,
    );
  }

  Offset _calculateBezierOffset({
    required final double t,
    required final List<Offset> points,
  }) {
    final u = 1 - t;
    final tt = t * t;
    final uu = u * u;
    final uuu = uu * u;
    final ttt = tt * t;

    final dx = (uuu * points[0].dx) +
        (3 * uu * t * points[1].dx) +
        (3 * u * tt * points[2].dx) +
        (ttt * points[3].dx);
    final dy = (uuu * points[0].dy) +
        (3 * uu * t * points[1].dy) +
        (3 * u * tt * points[2].dy) +
        (ttt * points[3].dy);

    return Offset(dx, dy);
  }
}
