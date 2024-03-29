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

enum GuiArtboard {
  iconButton,
  iconButtonApple,
  iconButtonWordEnergy,
  iconButtonEnergyFire,
  iconButtonIdea,
  iconButtonArrow,
  iconButtonArrowSkip,
  iconButtonSearch,
  iconButtonMenu,
  iconButtonSave,
  markRed,
  markOrange,
  markPurple,
  markGreen,
  tab,
  paneLeft,
  paneCenter,
  paneRight,
  barHorizontalPurple,
  barHorizontalGreen,
  barHorizontalRed,
  barHorizontalBlue,
  barVerticalBlue;

  static const iconButtonLabel = 'iconButton';
}

class GuiIconButton extends HookWidget {
  GuiIconButton({
    required this.icon,
    this.onPressed,
    this.tooltip = '',
    super.key,
  }) : assert(
          icon.name.startsWith(GuiArtboard.iconButtonLabel),
          'pass iconButton Artboard',
        );
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

    // [Tooltip] is causing blinking, when in the tree.
    // TODO(arenukvern): add tooltip
    return GestureDetector(
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
            // TODO(arenukvern): correct path
            /// https://stackoverflow.com/questions/63914819/how-to-access-assets-in-package
            'packages/wbw_design_core/assets/wordbyword_v3.riv',
            artboard: artboard,
            fit: BoxFit.contain,
            stateMachines: const ['IconButtonMachine'],
          ),
        ),
      ),
    );
  }
}
