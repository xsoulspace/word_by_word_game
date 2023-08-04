import 'package:flutter/material.dart';
import 'package:wbw_design_core/wbw_design_core.dart';

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
    final uiTheme = UiTheme.of(context);
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
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 450,
      ),
      child: Card(
        child: child,
      ),
    );
  }
}
