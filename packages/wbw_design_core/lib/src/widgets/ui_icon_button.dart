import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:life_hooks/life_hooks.dart';

_ButtonState _useButtonState() => use(
      LifeHook(
        debugLabel: '_useButtonState',
        state: _ButtonState(),
      ),
    );

class _ButtonState extends LifeState {
  _ButtonState();
  bool _isPressed = false;

  bool get isPressed => _isPressed;

  set isPressed(final bool isPressed) {
    _isPressed = isPressed;
    setState();
  }

  String useDefaultPath(final String path) =>
      'assets/images/${path}_highres.png';
  late final pressedIconImagePath =
      useDefaultPath('buttons/icon_button_pressed');
  late final iconImagePath = useDefaultPath('buttons/icon_button');
  final iconImagePixelsHeight = 16.0;
  Future<void> onTap() async {
    isPressed = true;
    await Future.delayed(const Duration(milliseconds: 60));
    isPressed = false;
  }

  void onLongPressDown(final _) {
    isPressed = true;
  }

  void onLongPressUp() {
    isPressed = false;
  }
}

enum UiIcons {
  // ignore: constant_identifier_names
  action_minus,
  // ignore: constant_identifier_names
  action_fire,
  // ignore: constant_identifier_names
  action_collect,
  // ignore: constant_identifier_names
  action_pause,
  // ignore: constant_identifier_names
  action_idea;

  const UiIcons();

  String get path => 'icons/icon_$name';
}

class UiIconButton extends HookWidget {
  const UiIconButton({required this.icon, super.key});
  final UiIcons icon;
  @override
  Widget build(final BuildContext context) {
    final state = _useButtonState();
    const dimension = 32.0;
    return GestureDetector(
      onTap: state.onTap,
      onLongPressDown: state.onLongPressDown,
      onLongPressUp: state.onLongPressUp,
      onLongPressCancel: state.onLongPressUp,
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
                  state.useDefaultPath(icon.path),
                ),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
