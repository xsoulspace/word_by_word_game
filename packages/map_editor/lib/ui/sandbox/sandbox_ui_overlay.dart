import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_editor/logic/logic.dart';
import 'package:map_editor/state/models/preset_resources/preset_resources.dart';
import 'package:map_editor/state/state.dart';
import 'package:map_editor/ui/renderer/renderer.dart';

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
    final mapEditorBloc = context.watch<MapEditorCubit>();
    final worldBloc = context.watch<WorldBloc>();
    final worldTime = context.read<EditorMechanicsCollection>().worldTime;
    final tilesResources = context.watch<DrawerCubit>().tilesResources;

    return Material(
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(8),
        shrinkWrap: true,
        children: [
          Column(
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 150),
                child: CheckboxListTile(
                  value: mapEditorBloc.state.isEditing,
                  onChanged: (final isEditing) async {
                    await mapEditorBloc.onChangeIsEditing(
                      isEditing ?? false,
                    );
                  },
                  title: const Text('Is Editing'),
                ),
              ),
              const SizedBox(height: 14),
              Text('Time ${worldBloc.state.dateTime.second}'),
              const SizedBox(height: 4),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton(
                    onPressed:
                        worldTime.paused ? worldTime.resume : worldTime.pause,
                    child: Text(worldTime.paused ? '>' : '||'),
                  ),
                  TextButton(
                    onPressed: worldTime.speedX2,
                    child: Text(worldTime.isSpeed2 ? '(>>)' : '>>'),
                  ),
                ],
              ),
            ],
          ),
          ...[
            ...tilesResources.tiles.values.map(
              (final e) => TileSpriteButton(
                tileResource: e,
              ),
            ),
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
                Text(
                  // ignore: lines_longer_than_80_chars
                  'Selected Tile ${drawerCubit.state.tileToDraw?.tile.properties.title}',
                ),
                // TODO(arenukvern): add layer crud
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 150),
                  child: CheckboxListTile(
                    value: drawerCubit.state.isDeleteSelection,
                    onChanged: (final isDeleteSelection) {
                      drawerCubit.onChangeIsDeleteSelection(
                        isDeleteSelection ?? false,
                      );
                    },
                    dense: true,
                    title: const Text('Delete Tile'),
                  ),
                ),
                TextButton.icon(
                  onPressed: mapEditorBloc.onSaveAndPlay,
                  icon: const Icon(Icons.save),
                  label: const Text('Save & Play'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TileSpriteButton extends StatelessWidget {
  const TileSpriteButton({
    required this.tileResource,
    super.key,
  });
  final PresetTileResource tileResource;

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);
    final colorSheme = theme.colorScheme;
    final dimension = kTileDimension.toDouble();
    final drawerCubit = context.watch<DrawerCubit>();

    final isActive = drawerCubit.tileToDraw?.id == tileResource.id;

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
          InkWell(
            onTap: () {
              drawerCubit.tileToDraw = tileResource;
            },
            child: Container(
              width: dimension,
              height: dimension,
              decoration: BoxDecoration(
                color: colorSheme.secondaryContainer,
                image: DecorationImage(
                  image: Image.asset(tileResource.tile.properties.thumbnailPath)
                      .image,
                ),
              ),
              child: Text(
                tileResource.tile.properties.title,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
