import 'package:flutter/material.dart';

class UiFilledButton extends StatelessWidget {
  const UiFilledButton({
    required this.child,
    required this.onPressed,
    super.key,
  });
  UiFilledButton.text({
    required final String text,
    required this.onPressed,
    super.key,
  }) : child = Text(text);
  final Widget child;
  final VoidCallback? onPressed;

  @override
  Widget build(final BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: child,
    );
  }
}
