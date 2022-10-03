import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SendWordActionButton extends HookWidget {
  const SendWordActionButton({
    required this.onPressed,
    super.key,});
  final VoidCallback onPressed;
  @override
  Widget build(final BuildContext context) {
    return SendWordButton(
      onPressed: onPressed,
    );
  }
}

class SendWordButton extends StatelessWidget {
  const SendWordButton({
    required this.onPressed,
    super.key,
  });
  final VoidCallback onPressed;
  @override
  Widget build(final BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: const Text('Send'),
    );
  }
}
