import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_portal/flutter_portal.dart';

class HighlightFrame extends StatelessWidget {
  const HighlightFrame({
    required this.highlighted,
    required this.highlightPosition,
    required this.child,
    super.key,
  });
  final Alignment highlightPosition;
  final bool highlighted;
  final Widget child;

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

  Aligned get anchor {
    if (highlightPosition == Alignment.topLeft) {
      return const Aligned(
        follower: Alignment.bottomRight,
        target: Alignment.topLeft,
      );
    } else if (highlightPosition == Alignment.topRight) {
      return const Aligned(
        follower: Alignment.bottomLeft,
        target: Alignment.topRight,
      );
    } else if (highlightPosition == Alignment.topCenter) {
      return const Aligned(
        follower: Alignment.bottomCenter,
        target: Alignment.topCenter,
      );
    } else if (highlightPosition == Alignment.bottomLeft) {
      return const Aligned(
        follower: Alignment.topRight,
        target: Alignment.bottomLeft,
      );
    } else if (highlightPosition == Alignment.bottomRight) {
      return const Aligned(
        follower: Alignment.topLeft,
        target: Alignment.bottomRight,
      );
    } else if (highlightPosition == Alignment.bottomCenter) {
      return const Aligned(
        follower: Alignment.topCenter,
        target: Alignment.bottomCenter,
      );
    } else if (highlightPosition == Alignment.centerLeft) {
      return const Aligned(
        follower: Alignment.centerRight,
        target: Alignment.centerLeft,
      );
    } else if (highlightPosition == Alignment.centerRight) {
      return const Aligned(
        follower: Alignment.centerLeft,
        target: Alignment.centerRight,
      );
    } else {
      throw UnsupportedError('$highlightPosition');
    }
  }

  @override
  Widget build(final BuildContext context) {
    return PortalTarget(
      anchor: anchor,
      visible: highlighted,
      portalFollower: Bounce(
        infinite: true,
        child: icon,
      ),
      child: child,
    );
  }
}
