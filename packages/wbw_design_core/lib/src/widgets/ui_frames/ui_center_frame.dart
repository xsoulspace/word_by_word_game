import '../../../wbw_design_core.dart';

class UICenterFrame extends StatelessWidget {
  const UICenterFrame({
    required this.onIdea,
    required this.onPause,
    required this.textFieldBuilder,
    required this.leftTopBuilder,
    required this.rightTopBuilder,
    super.key,
  });
  final WidgetBuilder textFieldBuilder;
  final WidgetBuilder? leftTopBuilder;
  final WidgetBuilder? rightTopBuilder;

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
          top: 8,
          left: 0,
          right: 0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 90,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: leftTopBuilder?.call(context) ?? const SizedBox(),
                ),
              ),
              const SizedBox(width: 120),
              SizedBox(
                width: 90,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: rightTopBuilder?.call(context) ?? const SizedBox(),
                ),
              ),
            ],
          ),
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
                    // TODO(arenukvern): enable
                    onPressed: onIdea ?? () {},
                    isEnabled: false,
                    icon: UiIcons.idea,
                  ),
                  uiTheme.horizontalBoxes.medium,
                  UiIconButton(
                    onPressed: onPause,
                    icon: UiIcons.pause,
                  ),
                ],
              ),
              const Spacer(),
              textFieldBuilder(context),
              const Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}
