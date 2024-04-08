import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:wbw_core/wbw_core.dart';

class DialogScaffold extends StatelessWidget {
  const DialogScaffold({
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
    final uiTheme = context.uiTheme;
    Widget child;
    if (builder != null) {
      child = Builder(builder: builder!);
    } else {
      child = ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(uiTheme.spacing.extraLarge),
        children: children!,
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
