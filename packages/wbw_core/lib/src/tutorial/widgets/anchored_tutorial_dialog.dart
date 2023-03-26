import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:wbw_design_core/wbw_design_core.dart';

import '../../models/models.dart';
import '../bloc/tutorial_bloc.dart';

enum AnchoredTutorialDialogType {
  idle,
  ok,
}

extension _TutorialEventModelExtension on TutorialEventModel {
  AnchoredTutorialDialogType? getDialogType() {
    for (final action in completeActions) {
      switch (action.uiItem) {
        case TutorialUiItem.anchoredIdleDialog:
          return AnchoredTutorialDialogType.idle;
        case TutorialUiItem.anchoredOkDialog:
          return AnchoredTutorialDialogType.ok;
        // ignore: no_default_cases
        default:
      }
    }
    return null;
  }
}

class MobileAnchoredTutorialDialog extends StatelessWidget {
  const MobileAnchoredTutorialDialog({super.key});

  @override
  Widget build(final BuildContext context) {
    final tutorialEvent = context.select<TutorialBloc, TutorialEventModel?>(
      (final bloc) {
        if (bloc.state is! LiveTutorialBlocState) return null;
        return bloc.getTutorialEvent();
      },
    );
    if (tutorialEvent == null) return const SizedBox();
    Widget child;
    final dialogType = tutorialEvent.getDialogType();
    switch (dialogType) {
      case AnchoredTutorialDialogType.idle:
        child = _AnchoredTutorialIdleDialog(tutorialEvent: tutorialEvent);
        break;
      case AnchoredTutorialDialogType.ok:
        child = _AnchoredTutorialOkDialog(tutorialEvent: tutorialEvent);
        break;
      case null:
        child = const SizedBox();
    }

    return KeyboardVisibilityBuilder(
      builder: (final context, final isKeyboardVisible) {
        if (!isKeyboardVisible) return Center(child: child);
        return SafeArea(
          child: Align(
            alignment: Alignment.topCenter,
            child: child,
          ),
        );
      },
    );
  }
}

class DesktopAnchoredTutorialDialog extends StatelessWidget {
  const DesktopAnchoredTutorialDialog({super.key});

  @override
  Widget build(final BuildContext context) {
    final tutorialEvent = context.select<TutorialBloc, TutorialEventModel?>(
      (final bloc) {
        if (bloc.state is! LiveTutorialBlocState) return null;
        return bloc.getTutorialEvent();
      },
    );
    if (tutorialEvent == null) return const SizedBox();
    Widget child;
    final dialogType = tutorialEvent.getDialogType();
    switch (dialogType) {
      case AnchoredTutorialDialogType.idle:
        child = _AnchoredTutorialIdleDialog(tutorialEvent: tutorialEvent);
        break;
      case AnchoredTutorialDialogType.ok:
        child = _AnchoredTutorialOkDialog(tutorialEvent: tutorialEvent);
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

class _AnchoredTutorialIdleDialog extends StatelessWidget {
  const _AnchoredTutorialIdleDialog({
    required this.tutorialEvent,
  });
  final TutorialEventModel tutorialEvent;

  @override
  Widget build(final BuildContext context) => AnchoredTutorialDialogScaffold(
        children: [
          Text(tutorialEvent.localizedMap.getValue()),
        ],
      );
}

class _AnchoredTutorialOkDialog extends StatelessWidget {
  const _AnchoredTutorialOkDialog({
    required this.tutorialEvent,
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
