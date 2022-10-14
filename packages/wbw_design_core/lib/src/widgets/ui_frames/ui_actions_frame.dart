import '../../../wbw_design_core.dart';

class UIActionsFrame extends StatelessWidget {
  const UIActionsFrame({
    required this.onAddWordToDictionary,
    required this.onCollect,
    required this.onFire,
    super.key,
  });
  final VoidCallback onFire;
  final VoidCallback? onAddWordToDictionary;
  final VoidCallback? onCollect;
  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
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
            children: [
              UiIconButton(
                onPressed: onAddWordToDictionary,
                icon: UiIcons.dictionary_add,
              ),
              uiTheme.verticalBoxes.extraSmall,
              UiIconButton(
                onPressed: onFire,
                icon: UiIcons.fire,
              ),
              uiTheme.verticalBoxes.extraSmall,
              UiIconButton(
                onPressed: onCollect,
                icon: UiIcons.collect,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
