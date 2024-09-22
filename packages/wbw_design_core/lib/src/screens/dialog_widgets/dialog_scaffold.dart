import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:wbw_core/wbw_core.dart';

import '../../../wbw_design_core.dart';

class DialogScaffold extends HookWidget {
  const DialogScaffold({
    this.children,
    this.builder,
    this.bottom,
    this.top,
    this.padding,
    this.semanticsContainer = true,
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

  @override
  Widget build(final BuildContext context) {
    final hovered = useIsBool();
    final uiTheme = context.uiTheme;
    final bottom = this.bottom;
    final top = this.top;
    final padding = this.padding ?? EdgeInsets.all(uiTheme.spacing.extraLarge);
    final child = UiBodyBuilder(
      builder: builder,
      top: top,
      bottom: bottom,
      padding: padding,
      children: children,
    );

    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 450,
      ),
      child: MouseRegion(
        onHover: (final event) => hovered.value = true,
        onExit: (final event) => hovered.value = false,
        child: Semantics(
          container: semanticsContainer,
          child: AnimatedScale(
            scale: hovered.value ? 1.004 : 1.0,
            curve: Curves.ease,
            duration: 800.milliseconds,
            child: Card(
              color: UiColors.offWhite,
              shadowColor: UiColors.light,
              surfaceTintColor: Colors.transparent,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.elliptical(
                    UiDecorators.radiusLarge,
                    UiDecorators.radiusLarge,
                  ),
                ),
              ),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}

class UiBodyBuilder extends StatelessWidget {
  const UiBodyBuilder({
    this.builder,
    this.children,
    this.top,
    this.bottom,
    this.padding,
    super.key,
  });

  final EdgeInsets? padding;
  final WidgetBuilder? builder;
  final List<Widget>? children;
  final Widget? top;
  final Widget? bottom;
  @override
  Widget build(final BuildContext context) {
    final top = this.top;
    final bottom = this.bottom;
    final Widget child;
    if (builder != null) {
      child = Builder(builder: builder!);
    } else {
      final body = ListView(
        shrinkWrap: true,
        padding: padding,
        primary: true,
        children: children!,
      );
      child = Column(
        mainAxisSize: MainAxisSize.min,
        children: top != null || bottom != null
            ? [
                if (top != null) top,
                Expanded(child: body),
                if (bottom != null) bottom,
              ]
            : [body],
      );
    }
    return child;
  }
}

class DecoratedDialogScaffold extends StatelessWidget {
  const DecoratedDialogScaffold({
    this.children,
    this.builder,
    this.bottom,
    this.top,
    this.padding,
    super.key,
  });
  final List<Widget>? children;
  final WidgetBuilder? builder;
  final Widget? bottom;
  final Widget? top;
  final EdgeInsets? padding;

  @override
  Widget build(final BuildContext context) {
    const verticalPadding = 22.0;
    const horizontalPadding = 16.0;
    const height = 150.0;
    final verticalLine = ConstrainedBox(
      constraints: const BoxConstraints(
        maxHeight: height,
      ),
      child: const RotatedBox(
        quarterTurns: 1,
        child: Row(
          children: [
            Gap(verticalPadding),
            UiTriangle(
              color: UiColors.mediumLight,
            ),
            Gap(16),
            Expanded(child: UiLinearDivider()),
            Gap(16),
            UiTriangle(
              color: UiColors.mediumLight,
            ),
            Gap(verticalPadding),
          ],
        ),
      ),
    );
    return DialogScaffold(
      builder: (final context) => Stack(
        children: [
          Row(
            children: [
              verticalLine,
              const Spacer(),
              verticalLine,
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: horizontalPadding,
              vertical: 13,
            ),
            child: UiBodyBuilder(
              builder: builder,
              top: top,
              bottom: bottom,
              padding: padding,
              children: children,
            ),
          ),
        ],
      ),
    );
  }
}
