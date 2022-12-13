import 'package:flutter/material.dart';

class GameBackButton extends StatelessWidget {
  const GameBackButton({
    required this.onPressed,
    super.key,
  });
  final VoidCallback onPressed;
  @override
  Widget build(final BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: const Icon(Icons.arrow_back_ios_new),
    );
  }
}
