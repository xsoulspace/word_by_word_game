import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../wbw_design_core.dart';

class UiTextButton extends HookWidget {
  const UiTextButton.icon({
    required this.icon,
    required this.text,
    this.onPressed,
    this.width = 158.0,
    this.tooltip = '',
    this.mainAlignment = MainAxisAlignment.start,
    this.isLongButton = false,
    super.key,
  });
  const UiTextButton.text({
    required this.text,
    this.isLongButton = false,
    this.icon,
    this.onPressed,
    this.mainAlignment = MainAxisAlignment.start,
    this.width = 140.0,
    this.tooltip = '',
    super.key,
  });
  final UiIcons? icon;
  final String text;
  final double? width;
  final VoidCallback? onPressed;
  final MainAxisAlignment mainAlignment;
  final bool isLongButton;
  final String tooltip;
  bool get isEnabled => onPressed != null;
  @override
  Widget build(final BuildContext context) {
    final state = useUiIconButtonState(
      isLongButton: isLongButton,
    );
    const height = 32.0;
    final theme = Theme.of(context);
    // final uiTheme = UiTheme.of(context);
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
            width: width,
            height: height,
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
              height: height - 1,
              width: height - 1,
              margin: EdgeInsets.only(
                top: state.isPressed ? 2 : 0,
                bottom: state.isPressed ? 0 : 2,
              ),
              child: Row(
                mainAxisAlignment: mainAlignment,
                children: [
                  if (icon != null) ...[
                    Container(
                      width: height,
                      height: height,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            UiAssetHelper.useImagePath(icon!.path),
                          ),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                  Text(text),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
