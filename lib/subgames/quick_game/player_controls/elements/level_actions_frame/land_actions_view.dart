import 'package:flutter/material.dart';

class LandActionsView extends StatelessWidget {
  const LandActionsView({super.key});

  @override
  Widget build(final BuildContext context) => Column(
        children: [
          const Text('Land Actions'),
          Row(
            children: [
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.home_outlined),
                // TODO(arenukvern): l10n
                label: const Text('Build Tent'),
              ),
            ],
          ),
        ],
      );
}
