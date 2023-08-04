part of 'game_bottom_bar.dart';

class DesktopGameBottomBarWidget extends StatelessWidget {
  const DesktopGameBottomBarWidget({
    super.key,
  });
  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const Expanded(
            child: UILevelCenterBar(),
          ),
          uiTheme.horizontalBoxes.medium,
          const UiWordActions(),
        ],
      ),
    );
  }
}
