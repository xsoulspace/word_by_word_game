import '../../wbw_ui_kit.dart';

class UiDecoratedContainer extends StatelessWidget {
  const UiDecoratedContainer({
    required this.child,
    this.padding = const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 13,
    ),
    super.key,
  });

  final Widget child;
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

class _VerticalLine extends StatelessWidget {
  const _VerticalLine();

  @override
  Widget build(final BuildContext context) => const Column(
        children: [
          Expanded(child: UiVerticalDivider()),
        ],
      );
}
