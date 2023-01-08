import 'package:flutter/cupertino.dart';
import 'package:flutter_portal/flutter_portal.dart';

import 'animations/easy_in.dart';

extension AlignmentPortalExtension on Alignment {
  Aligned toAnchor() {
    if (this == Alignment.topLeft) {
      return const Aligned(
        follower: Alignment.bottomRight,
        target: Alignment.topLeft,
      );
    } else if (this == Alignment.topRight) {
      return const Aligned(
        follower: Alignment.bottomLeft,
        target: Alignment.topRight,
      );
    } else if (this == Alignment.topCenter) {
      return const Aligned(
        follower: Alignment.bottomCenter,
        target: Alignment.topCenter,
      );
    } else if (this == Alignment.bottomLeft) {
      return const Aligned(
        follower: Alignment.topRight,
        target: Alignment.bottomLeft,
      );
    } else if (this == Alignment.bottomRight) {
      return const Aligned(
        follower: Alignment.topLeft,
        target: Alignment.bottomRight,
      );
    } else if (this == Alignment.bottomCenter) {
      return const Aligned(
        follower: Alignment.topCenter,
        target: Alignment.bottomCenter,
      );
    } else if (this == Alignment.centerLeft) {
      return const Aligned(
        follower: Alignment.centerRight,
        target: Alignment.centerLeft,
      );
    } else if (this == Alignment.centerRight) {
      return const Aligned(
        follower: Alignment.centerLeft,
        target: Alignment.centerRight,
      );
    } else {
      throw UnsupportedError('$this');
    }
  }
}

class HighlightFrame extends StatelessWidget {
  const HighlightFrame({
    required this.highlighted,
    required this.highlightPosition,
    required this.child,
    this.onPressed,
    super.key,
  });
  final Alignment highlightPosition;
  final bool highlighted;
  final Widget child;
  final VoidCallback? onPressed;
  Widget get icon {
    if (highlightPosition == Alignment.topLeft) {
      return Transform.translate(
        offset: const Offset(4, 4),
        child: Transform.rotate(
          angle: 45,
          child: const Icon(CupertinoIcons.hand_point_right_fill),
        ),
      );
    } else if (highlightPosition == Alignment.topRight) {
      return Transform.translate(
        offset: const Offset(-4, 4),
        child: Transform.rotate(
          angle: -45,
          child: const Icon(CupertinoIcons.hand_point_left_fill),
        ),
      );
    } else if (highlightPosition == Alignment.topCenter) {
      return const RotatedBox(
        quarterTurns: 3,
        child: Icon(CupertinoIcons.hand_point_left_fill),
      );
    } else if (highlightPosition == Alignment.bottomLeft) {
      return Transform.translate(
        offset: const Offset(8, -4),
        child: Transform.rotate(
          angle: -45,
          child: const Icon(CupertinoIcons.hand_point_right_fill),
        ),
      );
    } else if (highlightPosition == Alignment.bottomRight) {
      return Transform.translate(
        offset: const Offset(-8, -2),
        child: Transform.rotate(
          angle: 45,
          child: const Icon(CupertinoIcons.hand_point_left_fill),
        ),
      );
    } else if (highlightPosition == Alignment.bottomCenter) {
      return const RotatedBox(
        quarterTurns: 1,
        child: Icon(CupertinoIcons.hand_point_left_fill),
      );
    } else if (highlightPosition == Alignment.centerLeft) {
      return const RotatedBox(
        quarterTurns: 0,
        child: Icon(CupertinoIcons.hand_point_right_fill),
      );
    } else if (highlightPosition == Alignment.centerRight) {
      return const RotatedBox(
        quarterTurns: 0,
        child: Icon(CupertinoIcons.hand_point_left_fill),
      );
    } else {
      throw UnsupportedError('$highlightPosition');
    }
  }

  @override
  Widget build(final BuildContext context) {
    return PortalTarget(
      anchor: highlightPosition.toAnchor(),
      visible: highlighted,
      portalFollower: EasyIn(
        child: icon,
      ),
      child: GestureDetector(
        onTap: onPressed,
        child: child,
      ),
    );
  }
}
