import '../../../wbw_design_core.dart';

class UICenterFrame extends StatelessWidget {
  const UICenterFrame({
    required this.onIdea,
    required this.onPause,
    required this.textFieldBuilder,
    super.key,
  });
  final WidgetBuilder textFieldBuilder;

  final VoidCallback? onIdea;
  final VoidCallback onPause;
  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    const height = 108.0;
    return Stack(
      children: [
        const UiFrame(
          height: height,
          width: 315,
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
                  UiIconButton(
                    onPressed: onIdea,
                    icon: UiIcons.idea,
                  ),
                  uiTheme.horizontalBoxes.medium,
                  UiIconButton(
                    onPressed: onPause,
                    icon: UiIcons.pause,
                  ),
                ],
              ),
              Center(
                heightFactor: 2.3,
                child: textFieldBuilder(
                  context,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
