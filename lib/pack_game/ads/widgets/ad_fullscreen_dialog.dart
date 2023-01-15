import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:life_hooks/life_hooks.dart';

class AdFullScreenDialog extends HookWidget {
  const AdFullScreenDialog({
    required this.child,
    super.key,
  });
  final Widget child;
  @override
  Widget build(final BuildContext context) {
    final isVisibleNotifier = useIsBool(initial: true);
    final size = MediaQuery.of(context).size;
    return ValueListenableBuilder(
      valueListenable: isVisibleNotifier,
      builder: (final context, final isVisible, final cachedChild) {
        if (!isVisible) return const SizedBox();

        return Stack(
          children: [
            Positioned.fill(
              child: Card(
                margin: EdgeInsets.all(size.width * 0.1),
                child: child,
              ),
            ),
            Positioned(
              right: 24,
              top: 24,
              child: CloseButton(
                onPressed: () => isVisibleNotifier.value = false,
              ),
            ),
          ],
        );
      },
    );
  }
}
