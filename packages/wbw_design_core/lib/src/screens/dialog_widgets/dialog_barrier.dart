import 'package:flutter/material.dart';

import '../../theme/theme.dart';

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
    if (!isVisible) return const SizedBox();
    return Container(
      color: UiColors.light.withOpacity(0.6),
      alignment: Alignment.center,
      child: child,
    );
  }
}
