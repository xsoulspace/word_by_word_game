import 'package:flutter_bloc/flutter_bloc.dart';
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
  @override
  Widget build(final BuildContext context) {
    final highlighted =
        context.select<TutorialBloc, bool>((final tutorialBloc) {
      if (tutorialBloc is! LiveTutorialBlocState) return false;
      return tutorialBloc.getTutorialEvent().uiItem == uiKey;
    });
    return HighlightFrame(
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
    );
  }
}
