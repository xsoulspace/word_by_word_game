import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CommonMenu extends StatelessWidget {
  const CommonMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () => context.go('/'),
          child: const Text('Art'),
        ),
        const SizedBox(width: 16),
        ElevatedButton(
          onPressed: () => context.go('/design-system'),
          child: const Text('System'),
        ),
      ],
    );
  }
}
