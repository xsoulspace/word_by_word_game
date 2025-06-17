part of 'ui_icon_button.dart';

@Deprecated('remove after UiIconButton will be merged into UiStyledButton')
_ButtonState useUiIconButtonState({final bool isLongButton = false}) => use(
  ContextfulLifeHook(
    debugLabel: '_useButtonState',
    state: _ButtonState(isLongButton: isLongButton),
  ),
);

class _ButtonState extends ContextfulLifeState {
  _ButtonState({required this.isLongButton});
  final bool isLongButton;
  bool _isPressed = false;

  bool get isPressed => _isPressed;

  set isPressed(final bool isPressed) {
    _isPressed = isPressed;

    if (mounted) setState();
  }

  late final pressedIconImagePath = UiAssetHelper.useImagePath(
    "buttons/${isLongButton ? 'long_button_pressed' : 'icon_button_pressed'}",
  );
  late final iconImagePath = UiAssetHelper.useImagePath(
    "buttons/${isLongButton ? 'long_button' : 'icon_button'}",
  );
  final iconImagePixelsHeight = 16.0;
  void _onPressed() {
    final widget = getContext().widget;
    if (widget is UiIconButton) {
      widget.onPressed?.call();
    } else if (widget is UiTextButton) {
      widget.onPressed?.call();
    } else {
      // TODO(arenukvern): description
      throw UnimplementedError();
    }
  }

  Future<void> onTap() async {
    if (isPressed) return;
    isPressed = true;
    _onPressed();
    await Future.delayed(const Duration(milliseconds: 60));
    isPressed = false;
  }

  void onLongPressDown(final _) {
    isPressed = true;
  }

  void onLongPressCancel() {
    isPressed = false;
  }

  void onLongPressUp(final LongPressEndDetails details) {
    if (details.velocity.pixelsPerSecond.dx > 0 ||
        details.velocity.pixelsPerSecond.dy > 0) {
    } else {
      _onPressed();
    }
    WidgetsBinding.instance.addPostFrameCallback((final timeStamp) {
      isPressed = false;
    });
  }
}
