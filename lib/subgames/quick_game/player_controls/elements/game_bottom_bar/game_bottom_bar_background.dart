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
    final uiTheme = UiTheme.of(context);

    final levelPlayersBloc = context.watch<LevelPlayersBloc>();
    final livePlayerColor = levelPlayersBloc.state.currentPlayer.color;

    return Stack(
      children: [
        Positioned.fill(
          child: AnimatedContainer(
            duration: 80.milliseconds,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(uiTheme.circularRadius.medium),
            ),
          ).frosted(
            borderRadius: BorderRadius.all(uiTheme.circularRadius.medium),
          ),
        ),
        AnimatedContainer(
          duration: 80.milliseconds,
          padding: padding,
          constraints: constraints,
          decoration: BoxDecoration(
            color: ElevationOverlay.applySurfaceTint(
              livePlayerColor,
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
