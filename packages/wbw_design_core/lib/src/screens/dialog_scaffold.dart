import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../wbw_design_core.dart';

class DialogScaffold extends HookWidget {
  const DialogScaffold({
    this.children,
    this.builder,
    this.bottom,
    this.top,
    this.padding,
    this.semanticsContainer = true,
    this.bottomButton,
    super.key,
  }) : assert(
          children != null || builder != null,
          'Children or builder should be provided',
        );
  final List<Widget>? children;
  final Widget? bottom;
  final Widget? top;
  final WidgetBuilder? builder;
  final bool semanticsContainer;
  final EdgeInsets? padding;
  final Widget? bottomButton;

  @override
  Widget build(final BuildContext context) {
    final padding = this.padding ?? const EdgeInsets.all(24);
    final child = UiBodyBuilder(
      builder: builder,
      top: top,
      bottom: bottom,
      padding: padding,
      children: children,
    );

    return Stack(
      children: [
        Container(
          margin:
              bottomButton != null ? const EdgeInsets.only(bottom: 24) : null,
          constraints: const BoxConstraints(
            maxWidth: 450,
          ),
          child: Semantics(
            container: semanticsContainer,
            child: UiCard(
              child: child,
            ),
          ),
        ),
        if (bottomButton != null)
          Positioned(
            bottom: 6,
            right: 0,
            left: 0,
            child: Center(
              child: bottomButton,
            ),
          ).animate().fadeIn(),
      ],
    );
  }
}

class DecoratedDialogScaffold extends StatelessWidget {
  const DecoratedDialogScaffold({
    this.children,
    this.builder,
    this.bottom,
    this.top,
    this.padding = const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 13,
    ),
    this.bottomButton,
    super.key,
  });

  final List<Widget>? children;
  final WidgetBuilder? builder;
  final Widget? bottom;
  final Widget? top;
  final EdgeInsets padding;
  final Widget? bottomButton;

  @override
  Widget build(final BuildContext context) => KeyboardBindingsViewFocusScope(
        child: DialogScaffold(
          bottomButton: bottomButton,
          builder: (final context) => UiDecoratedContainer(
            padding: padding,
            child: UiBodyBuilder(
              builder: builder,
              top: top,
              bottom: bottom,
              padding: padding,
              children: children,
            ),
          ),
        ),
      );
}
