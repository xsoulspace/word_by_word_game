import '../../../wbw_design_core.dart';

class UIMobileActionsFrame extends StatelessWidget {
  const UIMobileActionsFrame({
    required this.children,
    super.key,
  });
  final List<Widget> children;
  @override
  Widget build(final BuildContext context) => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: children,
      );
}

class UIDesktopActionsFrame extends StatelessWidget {
  const UIDesktopActionsFrame({
    required this.children,
    super.key,
  });
  final List<Widget> children;
  @override
  Widget build(final BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: children,
      );
}
