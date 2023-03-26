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
    final livePlayersBloc = levelPlayersBloc.state;
    if (livePlayersBloc is! LiveLevelPlayersBlocState) return const SizedBox();

    return Container(
      constraints: constraints ?? const BoxConstraints(),
      child: Stack(
        children: [
          Positioned.fill(
            child: Container().frosted(),
          ),
          Container(
            padding: padding,
            decoration: BoxDecoration(
              color: ElevationOverlay.applySurfaceTint(
                livePlayersBloc.currentPlayer.color,
                Colors.white,
                30,
              ).withOpacity(0.1),
              borderRadius: BorderRadius.all(uiTheme.circularRadius.medium),
            ),
            child: child,
          ),
        ],
      ),
    );
  }
}
