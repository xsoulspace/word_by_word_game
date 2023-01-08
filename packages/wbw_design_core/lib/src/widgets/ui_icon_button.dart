import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:life_hooks/life_hooks.dart';

import '../utils/utils.dart';
import 'ui_text_button.dart';

_ButtonState useUiIconButtonState({
  final bool isLongButton = false,
}) =>
    use(
      ContextfulLifeHook(
        debugLabel: '_useButtonState',
        state: _ButtonState(
          isLongButton: isLongButton,
        ),
      ),
    );

class _ButtonState extends ContextfulLifeState {
  _ButtonState({
    required this.isLongButton,
  });
  final bool isLongButton;
  bool _isPressed = false;

  bool get isPressed => _isPressed;

  set isPressed(final bool isPressed) {
    _isPressed = isPressed;

    setState();
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

enum UiIcons {
  // ignore: constant_identifier_names
  minus,
  // ignore: constant_identifier_names
  fire,
  // ignore: constant_identifier_names
  collect,
  // ignore: constant_identifier_names
  dictionary_add,
  // ignore: constant_identifier_names
  pause,
  // ignore: constant_identifier_names
  idea;

  const UiIcons();

  String get path => 'icons/icon_action_$name';
}

class UiIconButton extends HookWidget {
  const UiIconButton({
    required this.icon,
    this.onPressed,
    this.tooltip = '',
    super.key,
  });
  final UiIcons icon;
  final String tooltip;
  final VoidCallback? onPressed;
  bool get isEnabled => onPressed != null;
  @override
  Widget build(final BuildContext context) {
    final state = useUiIconButtonState();
    const dimension = 32.0;
    final theme = Theme.of(context);

    return Tooltip(
      message: tooltip,
      child: GestureDetector(
        onTap: isEnabled ? state.onTap : null,
        onLongPressEnd: isEnabled ? state.onLongPressUp : null,
        onLongPressDown: isEnabled ? state.onLongPressDown : null,
        onLongPressCancel: isEnabled ? state.onLongPressCancel : null,
        child: FocusableActionDetector(
          mouseCursor: SystemMouseCursors.click,
          child: Container(
            width: dimension,
            height: dimension,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  state.isPressed
                      ? state.pressedIconImagePath
                      : state.iconImagePath,
                ),
                fit: BoxFit.fill,
              ),
            ),
            foregroundDecoration: isEnabled
                ? null
                : BoxDecoration(
                    color: theme.colorScheme.shadow.withOpacity(0.2),
                  ),
            child: Container(
              height: dimension - 1,
              width: dimension - 1,
              margin: EdgeInsets.only(
                top: state.isPressed ? 2 : 0,
                bottom: state.isPressed ? 0 : 2,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    UiAssetHelper.useImagePath(icon.path),
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
