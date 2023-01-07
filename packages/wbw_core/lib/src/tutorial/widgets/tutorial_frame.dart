import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:wbw_design_core/wbw_design_core.dart';

import '../../models/models.dart';
import '../tutorial.dart';
import 'anchored_tutorial_dialog.dart';

class TutorialFrame extends StatelessWidget {
  const TutorialFrame({
    required this.highlightPosition,
    required this.uiKey,
    required this.child,
    super.key,
  });
  final Alignment highlightPosition;
  final TutorialUiItem uiKey;
  final Widget child;
  @override
  Widget build(final BuildContext context) {
    final highlighted =
        context.select<TutorialBloc, bool>((final tutorialBloc) {
      if (tutorialBloc.state is! LiveTutorialBlocState) return false;
      final tutorialEvent = tutorialBloc.getTutorialEvent();
      return tutorialEvent.anchorUiItem == uiKey;
    });
    return PortalTarget(
      anchor: highlightPosition.toAnchor(),
      visible: highlighted,
      portalFollower: const AnchoredTutorialDialog(),
      child: HighlightFrame(
        onPressed: () {
          final event = TutorialUiActionEvent(
            action: TutorialCompleteAction.onClick,
            key: uiKey,
          );
          context.read<TutorialBloc>().add(event);
        },
        highlighted: highlighted,
        highlightPosition: highlightPosition,
        child: child,
      ),
    );
  }
}
