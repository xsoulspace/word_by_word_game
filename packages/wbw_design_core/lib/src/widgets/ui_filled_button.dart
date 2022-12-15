import 'package:flutter/material.dart';

class UiFilledButton extends StatelessWidget {
  const UiFilledButton({
    required this.child,
    required this.onPressed,
    super.key,
  }) : icon = null;
  UiFilledButton.icon({
    required final String text,
    required final IconData icon,
    required this.onPressed,
    super.key,
  })  : child = Text(text),
        icon = Icon(icon);
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
