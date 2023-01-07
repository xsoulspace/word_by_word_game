import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_design_core/wbw_design_core.dart';

import '../../models/models.dart';
import '../bloc/tutorial_bloc.dart';

enum AnchoredTutorialDialogType {
  idle,
  ok,
}

class AnchoredTutorialDialog extends StatelessWidget {
  const AnchoredTutorialDialog({super.key});
  AnchoredTutorialDialogType? getDialogType(
    final TutorialEventModel tutorialEvent,
  ) {
    for (final action in tutorialEvent.completeActions) {
      switch (action.uiItem) {
        case TutorialUiItem.anchoredIdleDialog:
          return AnchoredTutorialDialogType.idle;
        case TutorialUiItem.anchoredOkDialog:
          return AnchoredTutorialDialogType.ok;
        default:
          break;
      }
    }
    return null;
  }

  @override
  Widget build(final BuildContext context) {
    final tutorialEvent = context.select<TutorialBloc, TutorialEventModel>(
      (final bloc) {
        return bloc.getTutorialEvent();
      },
    );
    Widget child;
    final dialogType = getDialogType(tutorialEvent);
    switch (dialogType) {
      case AnchoredTutorialDialogType.idle:
        child = AnchoredTutorialIdleDialog(tutorialEvent: tutorialEvent);
        break;
      case AnchoredTutorialDialogType.ok:
        child = AnchoredTutorialOkDialog(tutorialEvent: tutorialEvent);
        break;
      case null:
        child = const SizedBox();
    }
    return Transform.translate(
      offset: const Offset(0, -40),
      child: child,
    );
  }
}

class AnchoredTutorialIdleDialog extends StatelessWidget {
  const AnchoredTutorialIdleDialog({
    required this.tutorialEvent,
    super.key,
  });
  final TutorialEventModel tutorialEvent;

  @override
  Widget build(final BuildContext context) {
    return AnchoredTutorialDialogScaffold(
      children: [
        Text(tutorialEvent.localizedMap.getValue()),
      ],
    );
  }
}

class AnchoredTutorialOkDialog extends StatelessWidget {
  const AnchoredTutorialOkDialog({
    required this.tutorialEvent,
    super.key,
  });
  final TutorialEventModel tutorialEvent;
  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    return AnchoredTutorialDialogScaffold(
      children: [
        Text(tutorialEvent.localizedMap.getValue()),
        uiTheme.verticalBoxes.medium,
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  context.read<TutorialBloc>().add(
                        const TutorialUiActionEvent(
                          action: TutorialCompleteAction.onClick,
                          key: TutorialUiItem.anchoredOkDialog,
                        ),
                      );
                },
                child: const Text('Ok'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class AnchoredTutorialDialogScaffold extends StatelessWidget {
  const AnchoredTutorialDialogScaffold({
    this.children,
    this.builder,
    super.key,
  }) : assert(
          children != null || builder != null,
          'Children or builder should be provided',
        );
  final List<Widget>? children;
  final WidgetBuilder? builder;
  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);
    final uiTheme = UiTheme.of(context);
    Widget child;
    if (builder != null) {
      child = Builder(builder: builder!);
    } else {
      child = ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(uiTheme.spacing.medium),
        children: children!,
      );
    }
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 250,
      ),
      child: Card(
        child: child,
      ),
    );
  }
}
