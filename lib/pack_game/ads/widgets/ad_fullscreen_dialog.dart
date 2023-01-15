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
    final theme = Theme.of(context);
    final isVisibleNotifier = useIsBool(initial: true);
    final size = MediaQuery.of(context).size;
    return ValueListenableBuilder(
      valueListenable: isVisibleNotifier,
      builder: (final context, final isVisible, final cachedChild) {
        if (!isVisible) return const SizedBox();

        return Stack(
          children: [
            Positioned.fill(
              child: Container(
                color: theme.backgroundColor.withOpacity(0.85),
                child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () => isVisibleNotifier.value = false,
                  child: const SizedBox.expand(),
                ),
              ),
            ),
            Positioned(
              left: size.width * 0.1,
              right: size.width * 0.1,
              top: size.width * 0.1,
              bottom: size.width * 0.1,
              child: Stack(
                children: [
                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () => isVisibleNotifier.value = false,
                    child: const SizedBox.expand(),
                  ),
                  child,
                ],
              ),
            ),
            Positioned(
              right: 0,
              left: 0,
              top: 24,
              child: Center(
                child: Card(
                  child: CloseButton(
                    onPressed: () => isVisibleNotifier.value = false,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
