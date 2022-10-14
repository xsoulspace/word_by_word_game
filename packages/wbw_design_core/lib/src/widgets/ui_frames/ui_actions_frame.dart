import '../../../wbw_design_core.dart';

class UIActionsFrame extends StatelessWidget {
  const UIActionsFrame({
    required this.children,
    super.key,
  });
  final List<Widget> children;
  @override
  Widget build(final BuildContext context) {
    const height = 108.0;
    return Stack(
      children: [
        const UiFrame(
          height: height,
          width: 45,
          asset: UiFrameAsset.actions,
        ),
        Positioned.fill(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: children,
          ),
        ),
      ],
    );
  }
}
