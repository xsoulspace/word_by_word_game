import 'package:flutter/material.dart';

class UiTextButton extends StatelessWidget {
  const UiTextButton({
    required this.child,
    required this.onPressed,
    super.key,
  });
  UiTextButton.text({
    required final String text,
    required this.onPressed,
    super.key,
  }) : child = Text(text);

  final Widget child;
  final VoidCallback? onPressed;

  @override
  Widget build(final BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: child,
    );
  }
}
