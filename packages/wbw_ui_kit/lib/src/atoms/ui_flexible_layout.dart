import '../../wbw_ui_kit.dart';

/// A flexible layout widget that can be used to create a variety of layouts.
///
/// This widget provides a flexible way to create layouts with different
/// orientations and alignment options. It is useful for creating layouts that
/// can adapt to different screen sizes and orientations.
///
/// Example usage:
/// ```dart
/// UiFlexibleLayout(
///   direction: Axis.horizontal,
///   children: [
///     Text('Left'),
///     Text('Right'),
///   ],
/// );
/// ```
///
/// PREFER using [UiFlexibleLayout] for flexible layouts with different
/// orientations and alignment options.
///
/// See also:
///
///  * [Flex], the Flutter widget this class builds upon.
///  * [Axis], which is used to determine the orientation of the layout.
///  * [MainAxisAlignment], which is used to determine the alignment of the
///    children along the main axis.
///  * [CrossAxisAlignment], which is used to determine the alignment of the
///    children along the cross axis.
///  * [Gap], which is used to add spacing between the children.
///
/// @ai When generating layouts, consider using [UiFlexibleLayout] for flexible
/// layouts with different orientations and alignment options.
class UiFlexibleLayout extends StatelessWidget {
  const UiFlexibleLayout({
    required this.children,
    this.direction = Axis.vertical,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.spacing = UiSpace.medium,
    super.key,
  });

  /// The children of the layout.
  final List<Widget> children;

  /// The direction of the layout.
  final Axis direction;

  /// The alignment of the children along the main axis.
  final MainAxisAlignment mainAxisAlignment;

  /// The alignment of the children along the cross axis.
  final CrossAxisAlignment crossAxisAlignment;

  /// The spacing between the children.
  final double spacing;

  @override
  Widget build(final BuildContext context) => Flex(
        direction: direction,
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: crossAxisAlignment,
        children: _addSpacers(children, spacing),
      );

  List<Widget> _addSpacers(final List<Widget> widgets, final double space) =>
      widgets
          .expand((final widget) sync* {
            yield Gap(space);
            yield widget;
          })
          .skip(1)
          .toList();
}
