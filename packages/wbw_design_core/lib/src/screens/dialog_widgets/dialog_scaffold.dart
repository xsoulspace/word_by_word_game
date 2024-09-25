import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:life_hooks/life_hooks.dart';

import '../../../wbw_design_core.dart';

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
    final hovered = useIsBool();
    final bottom = this.bottom;
    final top = this.top;
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
          child: MouseRegion(
            onHover: (final event) => hovered.value = true,
            onExit: (final event) => hovered.value = false,
            child: Semantics(
              container: semanticsContainer,
              child: AnimatedScale(
                scale: hovered.value ? 1.008 : 1.0,
                curve: Curves.easeInOutSine,
                duration: 400.milliseconds,
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
                  child: DefaultTextStyle.merge(
                    style: const TextStyle(
                      fontSize: 16,
                      color: UiColors.dark,
                    ),
                    child: child,
                  ),
                ),
              ),
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
    this.padding,
    this.bottomButton,
    super.key,
  });
  final List<Widget>? children;
  final WidgetBuilder? builder;
  final Widget? bottom;
  final Widget? top;
  final EdgeInsets? padding;
  final Widget? bottomButton;
  @override
  Widget build(final BuildContext context) {
    const horizontalPadding = 8.0;
    const horizontalLine = Row(
      children: [
        Gap(horizontalPadding),
        UiTriangle(
          color: UiColors.mediumLight,
        ),
        Gap(16),
        Expanded(child: UiHorizontalDivider()),
        Gap(16),
        UiTriangle(
          color: UiColors.mediumLight,
        ),
        Gap(horizontalPadding),
      ],
    );
    const verticalLine = Column(
      children: [
        Expanded(child: UiVerticalDivider()),
      ],
    );
    return KeyboardBindingsViewFocusScope(
      child: DialogScaffold(
        bottomButton: bottomButton,
        builder: (final context) => Stack(
          children: [
            const Positioned(
              top: 4,
              left: 0,
              right: 0,
              child: horizontalLine,
            ),
            const Positioned(
              bottom: 4,
              left: 0,
              right: 0,
              child: horizontalLine,
            ),
            const Positioned(
              bottom: 36,
              left: 3,
              top: 36,
              child: verticalLine,
            ),
            const Positioned(
              bottom: 36,
              right: 3,
              top: 36,
              child: verticalLine,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
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
      ),
    );
  }
}
