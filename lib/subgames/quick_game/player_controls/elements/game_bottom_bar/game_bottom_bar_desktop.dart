part of 'game_bottom_bar.dart';

class DesktopGameBottomBarWidget extends StatelessWidget {
  const DesktopGameBottomBarWidget({super.key});

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);
    final uiTheme = UiTheme.of(context);
    final state = context.read<WordCompositionState>();

    return MediaQuery(
      data: MediaQuery.of(context).copyWith(devicePixelRatio: 1),
      child: GameBottomBarBackground(
        padding: EdgeInsets.symmetric(
          horizontal: uiTheme.spacing.medium,
        ).copyWith(
          top: 10,
          bottom: 12,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const UILevelCenterBar(),
            uiTheme.horizontalBoxes.medium,
            const UIDesktopActions(),
          ],
        ),
      ),
    );
  }
}
