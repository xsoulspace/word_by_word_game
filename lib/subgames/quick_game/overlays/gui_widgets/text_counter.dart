import 'package:word_by_word_game/common_imports.dart';

class UiTextCounter extends StatefulWidget {
  const UiTextCounter({
    required this.value,
    this.textAlign = TextAlign.start,
    super.key,
    this.style,
    this.prefix = '',
    this.suffix = '',
  });
  final TextAlign textAlign;
  final int value;
  final TextStyle? style;
  final String prefix;
  final String suffix;

  @override
  _UiTextCounterState createState() => _UiTextCounterState();
}

class _UiTextCounterState extends State<UiTextCounter>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  Animation<int>? _animation;
  Animation<Color?>? _colorAnimation;
  late int _oldValue = widget.value;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((final _) {
      _controller = AnimationController(
        duration: 450.milliseconds,
        vsync: this,
      );
      _initializeAnimations();
      _controller.forward();
    });
  }

  void _initializeAnimations() {
    final colorScheme = context.colorScheme;
    _animation = IntTween(begin: _oldValue, end: widget.value)
        .chain(CurveTween(curve: Curves.easeInOut))
        .animate(_controller);
    _colorAnimation = ColorTween(
      begin: _oldValue > widget.value
          ? colorScheme.error
          : context.colorScheme.primary,
      end: widget.style?.color,
    ).chain(CurveTween(curve: Curves.easeInOut)).animate(_controller);
  }

  @override
  void didUpdateWidget(covariant final UiTextCounter oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.value != widget.value) {
      _oldValue = oldWidget.value;
      _initializeAnimations();
      _controller.forward(from: 0);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) => AnimatedBuilder(
        animation: Listenable.merge([_animation, _colorAnimation]),
        builder: (final context, final child) => Text(
          '${widget.prefix}${_animation?.value ?? 0}${widget.suffix}',
          style: widget.style?.copyWith(color: _colorAnimation?.value),
          textAlign: widget.textAlign,
        ),
      );
}
