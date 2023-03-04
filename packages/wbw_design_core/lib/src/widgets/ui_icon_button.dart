import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:recase/recase.dart';
import 'package:rive/rive.dart';

import '../utils/utils.dart';
import 'ui_text_button.dart';

part 'ui_icon_button_state.dart';

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

@Deprecated('use GuiIconButton instead')
class UiIconButton extends HookWidget {
  @Deprecated('use GuiIconButton instead')
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

enum GuiArtboard {
  iconButton,
}

class GuiIconButton extends HookWidget {
  const GuiIconButton({
    required this.icon,
    this.onPressed,
    this.tooltip = '',
    super.key,
  });
  final GuiArtboard icon;
  final String tooltip;
  final VoidCallback? onPressed;
  bool get isEnabled => onPressed != null;

  @override
  Widget build(final BuildContext context) {
    final state = useUiIconButtonState();
    const dimension = 32.0;
    final theme = Theme.of(context);
    final artboard = icon.name.snakeCase;
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
            foregroundDecoration: isEnabled
                ? null
                : BoxDecoration(
                    color: theme.colorScheme.shadow.withOpacity(0.2),
                  ),
            child: RiveAnimation.asset(
              'assets/wordbyword_v3.riv',
              artboard: artboard,
              fit: BoxFit.contain,
              stateMachines: const ['IconButtonMachine'],
            ),
          ),
        ),
      ),
    );
  }
}
