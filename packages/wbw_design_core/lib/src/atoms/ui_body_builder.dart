import 'package:flutter/material.dart';

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
