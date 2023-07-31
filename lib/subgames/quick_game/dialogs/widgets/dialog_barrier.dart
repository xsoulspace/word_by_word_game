import 'package:flutter/material.dart';

class DialogBarrier extends StatelessWidget {
  const DialogBarrier({
    required this.child,
    required this.isVisible,
    super.key,
  });
  final Widget child;
  final bool isVisible;
  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);
    if (!isVisible) return const SizedBox();
    return Container(
      color: theme.colorScheme.tertiaryContainer.withOpacity(0.6),
      alignment: Alignment.center,
      child: child,
    );
  }
}
