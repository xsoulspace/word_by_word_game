import '../../../wbw_design_core.dart';

class UIActionsFrame extends StatelessWidget {
  const UIActionsFrame({super.key});

  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    const height = 80.0;
    return Stack(
      children: [
        const UiFrame(
          height: height,
          width: 50,
          asset: UiFrameAsset.actions,
        ),
        Positioned.fill(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const UiIconButton(
                icon: UiIcons.action_fire,
              ),
              uiTheme.verticalBoxes.small,
              const UiIconButton(
                icon: UiIcons.action_collect,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
