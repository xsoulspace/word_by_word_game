import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:wbw_core/wbw_core.dart';

class DialogScaffold extends StatelessWidget {
  const DialogScaffold({
    this.children,
    this.builder,
    this.bottom,
    this.top,
    this.padding,
    super.key,
  }) : assert(
          children != null || builder != null,
          'Children or builder should be provided',
        );
  final List<Widget>? children;
  final Widget? bottom;
  final Widget? top;
  final WidgetBuilder? builder;
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
        children: children!,
      );
      child = Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (top != null) top,
          Expanded(child: body),
          if (bottom != null) bottom,
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
