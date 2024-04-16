import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:wbw_core/wbw_core.dart';

class DialogScaffold extends StatelessWidget {
  const DialogScaffold({
    this.children,
    this.builder,
    this.side,
    this.padding,
    super.key,
  }) : assert(
          children != null || builder != null,
          'Children or builder should be provided',
        );
  final List<Widget>? children;
  final Widget? side;
  final WidgetBuilder? builder;
  final EdgeInsets? padding;
  @override
  Widget build(final BuildContext context) {
    final side = this.side;
    final uiTheme = context.uiTheme;
    final padding = this.padding ?? EdgeInsets.all(uiTheme.spacing.extraLarge);
    Widget child;
    if (builder != null) {
      child = Builder(builder: builder!);
    } else {
      child = Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: ListView(
              shrinkWrap: true,
              padding: padding,
              children: children!,
            ),
          ),
          if (side != null) side,
        ],
      );
    }
    return AnimatedContainer(
      duration: 50.milliseconds,
      constraints: const BoxConstraints(
        maxWidth: 450,
      ),
      child: Card(
        child: child,
      ),
    );
  }
}
