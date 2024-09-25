import 'package:flutter/cupertino.dart';
import 'package:flutter_portal/flutter_portal.dart';

import '../atoms/animations/easy_in.dart';

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

/// A widget that highlights a specific area of the UI with an optional icon.
///
/// This class allows you to highlight a specific position in the UI with an
/// icon that indicates the highlighted area. It can be used to draw attention
/// to specific elements in your application.
///
/// ```dart
/// UiHighlightFrame(
///   highlighted: true,
///   highlightPosition: Alignment.topLeft,
///   child: Text('Hello World'),
///   onPressed: () => print('Frame pressed!'),
/// )
/// ```
///
/// @ai Ensure that the [highlighted] property is set to true to display the
/// highlight. Use [highlightPosition] to control where the highlight appears.
class UiHighlightFrame extends StatelessWidget {
  /// Creates a [UiHighlightFrame].
  ///
  /// The [highlighted] parameter must not be null and determines whether the
  /// highlight is visible. The [highlightPosition] parameter specifies the
  /// position of the highlight icon. The [child] parameter is the widget to
  /// be displayed inside the frame.
  const UiHighlightFrame({
    required this.highlighted,
    required this.highlightPosition,
    required this.child,
    this.onPressed,
    super.key,
  });

  /// The position of the highlight icon.
  ///
  /// This property determines where the highlight icon will be displayed.
  final Alignment highlightPosition;

  /// Whether the highlight is visible.
  ///
  /// Set this to true to show the highlight icon.
  final bool highlighted;

  /// The child widget to display inside the highlight frame.
  final Widget child;

  /// A callback that is triggered when the frame is pressed.
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
  Widget build(final BuildContext context) => PortalTarget(
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
