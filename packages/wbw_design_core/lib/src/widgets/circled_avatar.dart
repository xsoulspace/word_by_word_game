import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircledTextAvatar extends StatelessWidget {
  const CircledTextAvatar({
    required this.text,
    super.key,
  });
  final String text;
  @override
  Widget build(final BuildContext context) => CircleAvatar(
        child: Text(text),
      );
}

class CircledAvatarButton extends StatelessWidget {
  const CircledAvatarButton({
    required this.onPressed,
    required this.text,
    super.key,
  });
  final VoidCallback onPressed;
  final String text;
  @override
  Widget build(final BuildContext context) => CupertinoButton(
        onPressed: onPressed,
        padding: EdgeInsets.zero,
        minSize: 0,
        child: CircledTextAvatar(text: text),
      );
}
