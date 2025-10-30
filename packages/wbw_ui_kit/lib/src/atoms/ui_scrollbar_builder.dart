import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class UiScrollbarBuilder extends HookWidget {
  const UiScrollbarBuilder({
    required this.builder,
    this.interactive,
    this.thumbVisibility,
    super.key,
  });
  final Widget Function(BuildContext context, ScrollController scrollController)
  builder;
  final bool? interactive;
  final bool? thumbVisibility;

  @override
  Widget build(final BuildContext context) {
    final scrollController = useScrollController();
    return Scrollbar(
      thumbVisibility: thumbVisibility,
      controller: scrollController,
      interactive: interactive,
      child: builder(context, scrollController),
    );
  }
}
