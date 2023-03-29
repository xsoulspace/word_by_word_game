part of 'game_bottom_bar.dart';

class GameBottomBarBackground extends StatelessWidget {
  const GameBottomBarBackground({
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
    final theme = Theme.of(context);
    final uiTheme = UiTheme.of(context);

    final levelPlayersBloc = context.watch<LevelPlayersBloc>();
    final livePlayerColor = levelPlayersBloc.state.mapOrNull(
      live: (final value) => value.currentPlayer.color,
    );

    return Stack(
      children: [
        Positioned.fill(
          child: AnimatedContainer(
            duration: 80.milliseconds,
          ).frosted(),
        ),
        AnimatedContainer(
          duration: 80.milliseconds,
          padding: padding,
          constraints: constraints,
          decoration: BoxDecoration(
            color: ElevationOverlay.applySurfaceTint(
              livePlayerColor ?? theme.colorScheme.surfaceTint,
              Colors.white,
              30,
            ).withOpacity(0.1),
            borderRadius: BorderRadius.all(uiTheme.circularRadius.medium),
          ),
          child: child,
        ),
      ],
    );
  }
}
