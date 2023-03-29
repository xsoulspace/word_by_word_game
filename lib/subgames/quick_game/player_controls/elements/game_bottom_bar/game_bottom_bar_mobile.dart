part of 'game_bottom_bar.dart';

class MobileGameBottomBarWidget extends StatelessWidget {
  const MobileGameBottomBarWidget({
    super.key,
  });

  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);

    return Column(
      children: [
        const UILevelCenterBar(),
        if (DeviceRuntimeType.isMobile)
          uiTheme.verticalBoxes.extraSmall
        else
          uiTheme.verticalBoxes.medium,
        const UiWordActions(alignAsRow: true),
      ],
    );
  }
}
