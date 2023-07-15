import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_playground/state/models/models.dart';
import 'package:map_playground/state/state.dart';
import 'package:map_playground/ui/renderer/renderer.dart';

class SandboxUiOverlay extends StatelessWidget {
  const SandboxUiOverlay({super.key});

  @override
  Widget build(final BuildContext context) => Stack(
        fit: StackFit.passthrough,
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              height: (kTileDimension * 2).toDouble() + 16,
              child: const TileButtons(),
            ),
          ),
        ],
      );
}

class TileButtons extends StatelessWidget {
  const TileButtons({super.key});

  @override
  Widget build(final BuildContext context) {
    final drawerCubit = context.watch<DrawerCubit>();
    final menuTiles = context.watch<MapEditorBloc>().menuTiles;

    return Material(
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(8),
        shrinkWrap: true,
        children: [
          ...[
            TileSpriteButton(
              tiles: menuTiles[TileStyle.terrain]!,
            ),
            TileSpriteButton(
              tiles: menuTiles[TileStyle.coin]!,
            ),
            TileSpriteButton(
              tiles: menuTiles[TileStyle.enemy]!,
            ),
            TileSpriteButton(
              tiles: menuTiles[TileStyle.palmForeground]!,
            ),
            TileSpriteButton(
              tiles: menuTiles[TileStyle.palmBackground]!,
            )
          ].map(
            (final e) => Padding(
              padding: const EdgeInsets.only(right: 8),
              child: e,
            ),
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(minWidth: 100),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Tile Index ${drawerCubit.state.selectionIndex}'),
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
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 150),
                  child: CheckboxListTile(
                    value: drawerCubit.state.isDeleteSelection,
                    onChanged: (final isDeleteSelection) {
                      drawerCubit.onChangeIsDeleteSelection(
                        isDeleteSelection ?? false,
                      );
                    },
                    title: const Text('Delete Tile'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TileSpriteButton extends StatefulWidget {
  const TileSpriteButton({
    required this.tiles,
    super.key,
  });
  final List<TileMenuItem> tiles;

  @override
  State<TileSpriteButton> createState() => _TileSpriteButtonState();
}

class _TileSpriteButtonState extends State<TileSpriteButton> {
  // ignore: prefer_final_fields
  int _index = 0;
  TileMenuItem get _item => widget.tiles[_index];
  void _onPressed() {
    if (mounted) context.read<DrawerCubit>().selectionIndex = _item.index;
  }

  void _onNext() {
    _index++;
    if (_index > (widget.tiles.length - 1)) {
      _index = 0;
    }
    setState(() {});
    _onPressed();
  }

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);
    final colorSheme = theme.colorScheme;
    final dimension = kTileDimension.toDouble();
    final drawerCubit = context.watch<DrawerCubit>();

    final isActive = widget.tiles.firstWhereOrNull(
          (final e) => e.index == drawerCubit.selectionIndex,
        ) !=
        null;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: isActive ? colorSheme.error : Colors.transparent,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 6),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton(onPressed: _onNext, child: const Text('next')),
          const Spacer(),
          InkWell(
            onTap: _onPressed,
            child: Container(
              width: dimension,
              height: dimension,
              decoration: BoxDecoration(
                color: colorSheme.secondaryContainer,
              ),
              child: Image.asset('assets/images/${_item.data.menuSurface}'),
            ),
          ),
        ],
      ),
    );
  }
}
