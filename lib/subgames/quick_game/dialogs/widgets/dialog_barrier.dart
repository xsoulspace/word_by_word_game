import 'package:flutter/material.dart';

class DialogBarrier extends StatelessWidget {
  const DialogBarrier({
    required this.child,
    super.key,
  });
  final Widget child;
  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      color: theme.colorScheme.tertiaryContainer.withOpacity(0.6),
      alignment: Alignment.center,
      child: child,
    );
  }
}
