import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:life_hooks/life_hooks.dart';

import '../../wbw_ui_kit.dart';

part 'ui_icon_button_state.dart';

@Deprecated('refactor to merge with UiStyledButton')
class UiIconButton extends HookWidget {
  @Deprecated('refactor to merge with UiStyledButton')
  const UiIconButton({
    required this.icon,
    this.onPressed,
    this.tooltip = '',
    super.key,
  });
  final UiAssetsIcons icon;
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
