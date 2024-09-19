import 'package:flutter_animate/flutter_animate.dart';
import 'package:wbw_core/wbw_core.dart';

import '../../../wbw_design_core.dart';

class DialogScaffold extends StatelessWidget {
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
    final uiTheme = context.uiTheme;
    final bottom = this.bottom;
    final top = this.top;
    final padding = this.padding ?? EdgeInsets.all(uiTheme.spacing.extraLarge);
    Widget child;
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
    return Semantics(
      container: semanticsContainer,
      child: AnimatedContainer(
        duration: 50.milliseconds,
        constraints: const BoxConstraints(
          maxWidth: 450,
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.elliptical(
              UiDecorators.radiusMedium,
              UiDecorators.radiusLarge,
            ),
          ),
          color: UiColors.offWhite,
          boxShadow: [
            BoxShadow(
              color: UiColors.dark.withOpacity(0.1),
              blurRadius: 0.5,
              blurStyle: BlurStyle.solid,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Semantics(
          explicitChildNodes: !semanticsContainer,
          child: child,
        ),
      ),
    );
  }
}
