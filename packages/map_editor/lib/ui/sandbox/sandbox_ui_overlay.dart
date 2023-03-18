import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_editor/state/state.dart';

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
  Widget build(final BuildContext context) {
    final drawerCubit = context.watch<DrawerCubit>();

    return Material(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Wrap(
            children: [
              TextButton(onPressed: () {}, child: const Text('Grass')),
              TextButton(onPressed: () {}, child: const Text('Water')),
              TextButton(onPressed: () {}, child: const Text('Trees')),
              TextButton(onPressed: () {}, child: const Text('Trees')),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Selection Index ${drawerCubit.state.selectionIndex}'),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      drawerCubit.selectionIndex++;
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.remove),
                    onPressed: () {
                      drawerCubit.selectionIndex--;
                    },
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
