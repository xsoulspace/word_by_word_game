part of 'game_bottom_bar.dart';

class CardFrostedBackground extends StatelessWidget {
  const CardFrostedBackground({
    required this.child,
    this.padding,
    this.constraints,
    super.key,
  });
  final Widget child;
  final EdgeInsets? padding;

  final BoxConstraints? constraints;
  @override
  Widget build(final BuildContext context) {
    final livePlayerColor = context.select<LevelPlayersBloc, Color>(
      (final cubit) => cubit.state.currentPlayer.color,
    );
    const radius = Radius.elliptical(UiSpace.medium, UiSpace.medium);

    return AnimatedSize(
      duration: 330.milliseconds,
      child: Stack(
        children: [
          Positioned.fill(
            child: AnimatedContainer(
              duration: 80.milliseconds,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(radius),
              ),
            ).frosted(borderRadius: const BorderRadius.all(radius)),
          ),
          AnimatedContainer(
            duration: 330.milliseconds,
            padding: padding,
            constraints: constraints,
            decoration: BoxDecoration(
              color: ElevationOverlay.applySurfaceTint(
                livePlayerColor,
                Colors.white,
                30,
              ).withValues(alpha: 0.1),
              borderRadius: const BorderRadius.all(radius),
            ),
            child: child,
          ),
        ],
      ),
    );
  }
}
