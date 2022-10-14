import '../../../wbw_design_core.dart';

class UICenterFrame extends StatelessWidget {
  const UICenterFrame({super.key});

  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    const height = 108.0;
    return Stack(
      children: [
        const UiFrame(
          height: height,
          width: 400,
          asset: UiFrameAsset.center,
        ),
        Positioned(
          height: height,
          top: 3,
          left: 0,
          right: 0,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
              Center(
                heightFactor: 2.3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const UiIconButton(
                      icon: UiIcons.action_minus,
                    ),
                    uiTheme.horizontalBoxes.medium,
                    const UiIconButton(
                      icon: UiIcons.action_minus,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
