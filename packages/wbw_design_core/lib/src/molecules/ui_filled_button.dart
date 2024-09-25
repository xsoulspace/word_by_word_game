import 'package:flutter/material.dart';

@Deprecated('use UiStyledButton instead')
class UiFilledButton extends StatelessWidget {
  @Deprecated('use UiStyledButton instead')
  const UiFilledButton({
    required this.child,
    required this.onPressed,
    super.key,
  }) : icon = null;
  @Deprecated('use UiStyledButton instead')
  UiFilledButton.icon({
    required final String text,
    required final IconData icon,
    required this.onPressed,
    super.key,
  })  : child = Text(text),
        icon = Icon(icon);
  @Deprecated('use UiStyledButton instead')
  UiFilledButton.text({
    required final String text,
    required this.onPressed,
    super.key,
  })  : child = Text(text),
        icon = null;
  final Widget child;
  final Icon? icon;
  final VoidCallback? onPressed;

  @override
  Widget build(final BuildContext context) {
    final resolvedIcon = icon;
    if (resolvedIcon == null) {
      return ElevatedButton(
        onPressed: onPressed,
        child: child,
      );
    } else {
      return ElevatedButton.icon(
        icon: resolvedIcon,
        onPressed: onPressed,
        label: child,
      );
    }
  }
}
