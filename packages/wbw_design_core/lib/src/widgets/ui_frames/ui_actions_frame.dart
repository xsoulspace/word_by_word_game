import '../../../wbw_design_core.dart';

class UIActionsFrame extends StatelessWidget {
  const UIActionsFrame({super.key});

  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    const height = 50.0;
    return Stack(
      children: [
        const UiFrame(
          height: height,
          width: 50,
          asset: UiFrameAsset.actions,
        ),
        Positioned(
          height: height,
          top: 3,
          left: 0,
          right: 0,
          child: Column(
            children: [
              const UiIconButton(
                icon: UiIcons.action_idea,
              ),
              uiTheme.horizontalBoxes.medium,
              const UiIconButton(
                icon: UiIcons.action_pause,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
