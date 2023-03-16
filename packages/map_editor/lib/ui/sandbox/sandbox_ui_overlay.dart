import 'package:flutter/material.dart';

class SandboxUiOverlay extends StatelessWidget {
  const SandboxUiOverlay({super.key});

  @override
  Widget build(final BuildContext context) => Stack(
        fit: StackFit.passthrough,
        children: const [
          Align(
            alignment: Alignment.bottomRight,
            child: TileButtons(),
          ),
        ],
      );
}

class TileButtons extends StatelessWidget {
  const TileButtons({super.key});

  @override
  Widget build(final BuildContext context) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton(onPressed: () {}, child: const Text('Grass')),
          TextButton(onPressed: () {}, child: const Text('Water')),
          TextButton(onPressed: () {}, child: const Text('Trees')),
        ],
      );
}
