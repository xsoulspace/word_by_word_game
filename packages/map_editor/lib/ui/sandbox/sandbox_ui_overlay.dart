import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:map_editor/state/state.dart';
import 'package:map_editor/ui/renderer/renderer.dart';

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
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const TileSpriteButton(),
            const Gap(8),
            const TileSpriteButton(),
            const Gap(8),
            const TileSpriteButton(),
            const Gap(8),
            const TileSpriteButton(),
            const Gap(8),
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
      ),
    );
  }
}

class TileSpriteButton extends StatelessWidget {
  const TileSpriteButton({super.key});

  @override
  Widget build(final BuildContext context) => SizedBox.square(
        dimension: kTileDimension.toDouble(),
        child: const Placeholder(),
      );
}
