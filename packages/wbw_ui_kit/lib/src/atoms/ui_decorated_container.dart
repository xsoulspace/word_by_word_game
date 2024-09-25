import '../../wbw_ui_kit.dart';

/// A container widget with decorative lines on the top and bottom.
///
/// This widget provides a decorative border around its child, with lines on the
/// top and bottom. It is useful for creating a distinctive visual style for
/// containers.
///
/// Example usage:
/// ```dart
/// UiDecoratedContainer(
///   child: Text('This is a decorated container'),
/// );
/// ```
///
/// PREFER using [UiDecoratedContainer] for containers that need a distinctive
/// visual style with lines on the top and bottom.
///
/// See also:
///
///  * [Container], the Flutter widget this class builds upon.
///  * [Stack], which is used to position the decorative lines.
///  * [Positioned], which is used to position the decorative lines.
///  * [Padding], which is used to apply padding to the child.
///  * [UiTriangle], which is used to create the decorative lines.
///  * [UiHorizontalDivider], which is used to create the decorative lines.
///  * [UiVerticalDivider], which is used to create the decorative lines.
///
/// @ai When generating layouts, consider using [UiDecoratedContainer] for
/// containers that need a distinctive visual style with lines on the top and
/// bottom.
class UiDecoratedContainer extends StatelessWidget {
  const UiDecoratedContainer({
    required this.child,
    this.padding = const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 13,
    ),
    super.key,
  });

  /// The child widget to be decorated.
  final Widget child;

  /// The padding to be applied to the child.
  final EdgeInsetsGeometry padding;

  @override
  Widget build(final BuildContext context) => Stack(
        children: [
          const Positioned(
            top: 4,
            left: 0,
            right: 0,
            child: _HorizontalLine(),
          ),
          const Positioned(
            bottom: 4,
            left: 0,
            right: 0,
            child: _HorizontalLine(),
          ),
          const Positioned(
            bottom: 36,
            left: 3,
            top: 36,
            child: _VerticalLine(),
          ),
          const Positioned(
            bottom: 36,
            right: 3,
            top: 36,
            child: _VerticalLine(),
          ),
          Padding(
            padding: padding,
            child: child,
          ),
        ],
      );
}

/// A horizontal line with a gap on the left.
class _HorizontalLine extends StatelessWidget {
  const _HorizontalLine();

  @override
  Widget build(final BuildContext context) => const Row(
        children: [
          Gap(8),
          UiTriangle(color: UiColors.mediumLight),
          Gap(16),
          Expanded(child: UiHorizontalDivider()),
          Gap(16),
          UiTriangle(color: UiColors.mediumLight),
          Gap(8),
        ],
      );
}

/// A vertical line with a gap on the top.
class _VerticalLine extends StatelessWidget {
  const _VerticalLine();

  @override
  Widget build(final BuildContext context) => const Column(
        children: [
          Expanded(child: UiVerticalDivider()),
        ],
      );
}
