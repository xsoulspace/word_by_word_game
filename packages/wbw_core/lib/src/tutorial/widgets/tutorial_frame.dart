import 'package:wbw_design_core/wbw_design_core.dart';

class TutorialFrame extends StatelessWidget {
  const TutorialFrame({
    required this.highlightPosition,
    required this.child,
    super.key,
  });
  final Alignment highlightPosition;
  final Widget child;
  @override
  Widget build(final BuildContext context) {
    const highlighted = false;
    return HighlightFrame(
      highlighted: highlighted,
      highlightPosition: highlightPosition,
      child: child,
    );
  }
}
