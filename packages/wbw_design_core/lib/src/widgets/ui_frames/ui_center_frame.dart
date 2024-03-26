import 'package:wbw_core/wbw_core.dart';

import '../../../wbw_design_core.dart';

class UICenterFrame extends StatelessWidget {
  const UICenterFrame({
    required this.leftButton,
    required this.rightButton,
    required this.textFieldBuilder,
    super.key,
  });
  final WidgetBuilder textFieldBuilder;
  final Widget leftButton;
  final Widget rightButton;
  @override
  Widget build(final BuildContext context) {
    final uiTheme = context.uiTheme;
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
              uiTheme.verticalBoxes.extraLarge,
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
