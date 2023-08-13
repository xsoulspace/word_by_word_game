import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:wbw_design_core/wbw_design_core.dart';

import '../../models/models.dart';
import '../tutorial.dart';

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
  static void sendOnClickEvent({
    required final TutorialUiItem uiKey,
    required final BuildContext context,
  }) {
    final event = TutorialUiActionEvent(
      action: TutorialCompleteAction.onClick,
      key: uiKey,
    );
    context.read<TutorialBloc>().add(event);
  }

  @override
  Widget build(final BuildContext context) {
    final highlighted =
        context.select<TutorialBloc, bool>((final tutorialBloc) {
      // return true;
      if (tutorialBloc.state is! LiveTutorialBlocState) return false;
      final tutorialEvent = tutorialBloc.getTutorialEvent();
      return tutorialEvent.anchorUiItem == uiKey;
    });

    final persistentFormFactors = UiPersistentFormFactors.of(context);
    if (persistentFormFactors.screenSize.width <
        WidthFormFactor.mobileTutorialMaxWidth) {
      return PortalTarget(
        // TODO(arenukvern): there is problem with anchor.
        /// when it is Filled, when it switches between states
        /// it forces to rebuild all components, disposing their state etc.
        anchor: const Aligned(
          follower: Alignment.bottomLeft,
          target: Alignment.topRight,
        ),
        portalFollower: const SizedBox(),
        visible: highlighted,
        child: HighlightFrame(
          onPressed: () {
            sendOnClickEvent(context: context, uiKey: uiKey);
          },
          highlighted: highlighted,
          highlightPosition: highlightPosition,
          child: child,
        ),
      );
    } else {
      return PortalTarget(
        anchor: highlightPosition.toAnchor(),
        portalFollower: const DesktopAnchoredTutorialDialog(),
        visible: highlighted,
        child: HighlightFrame(
          onPressed: () {
            sendOnClickEvent(context: context, uiKey: uiKey);
          },
          highlighted: highlighted,
          highlightPosition: highlightPosition,
          child: child,
        ),
      );
    }
  }
}
