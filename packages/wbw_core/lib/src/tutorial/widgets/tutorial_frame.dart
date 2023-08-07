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
    final uiTheme = UiTheme.of(context);

    switch (uiTheme.persistentFormFactors.width) {
      case WidthFormFactor.desktop:
      case WidthFormFactor.tablet:
        return PortalTarget(
          anchor: highlightPosition.toAnchor(),
          visible: highlighted,
          portalFollower: const DesktopAnchoredTutorialDialog(),
          child: HighlightFrame(
            onPressed: () {
              sendOnClickEvent(context: context, uiKey: uiKey);
            },
            highlighted: highlighted,
            highlightPosition: highlightPosition,
            child: child,
          ),
        );
      case WidthFormFactor.mobile || WidthFormFactor.xs:
        return PortalTarget(
          visible: highlighted,
          portalFollower: const MobileAnchoredTutorialDialog(),
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
