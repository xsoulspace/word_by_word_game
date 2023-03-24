part of 'game_bottom_bar.dart';

class DesktopGameBottomBarWidget extends StatelessWidget {
  const DesktopGameBottomBarWidget({super.key});

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);
    final uiTheme = UiTheme.of(context);
    final state = context.read<WordCompositionState>();

    return GameBottomBarBackground(
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
          const UIDesktopLevelCenterRow(),
          uiTheme.horizontalBoxes.medium,
          const UIDesktopActions(),
        ],
      ),
    );
  }
}
