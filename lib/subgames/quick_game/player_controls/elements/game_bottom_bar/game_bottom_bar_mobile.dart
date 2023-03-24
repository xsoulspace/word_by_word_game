part of 'game_bottom_bar.dart';

class MobileGameBottomBarWidget extends StatelessWidget {
  const MobileGameBottomBarWidget({super.key});

  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(devicePixelRatio: 1),
      child: GameBottomBarBackground(
        padding: EdgeInsets.symmetric(
          vertical: DeviceRuntimeType.isMobile ? 0.0 : uiTheme.spacing.medium,
        ),
        child: Column(
          children: [
            const UILevelCenterBar(),
            if (DeviceRuntimeType.isMobile)
              uiTheme.verticalBoxes.extraSmall
            else
              uiTheme.verticalBoxes.medium,
            const UIMobileActions(),
          ],
        ),
      ),
    );
  }
}
