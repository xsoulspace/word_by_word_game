import 'package:flutter/material.dart';

class UiPixelButton extends StatelessWidget {
  const UiPixelButton({
    required this.child,
    required this.onPressed,
    super.key,
  });

  final Widget child;
  final VoidCallback onPressed;

  @override
  Widget build(final BuildContext context) => child;
}
