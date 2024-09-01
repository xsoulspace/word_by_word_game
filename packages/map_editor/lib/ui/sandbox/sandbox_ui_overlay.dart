import 'dart:ui';

import 'package:blur/blur.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:map_editor/state/models/preset_resources/preset_resources.dart';
import 'package:map_editor/state/state.dart';
import 'package:map_editor/ui/sandbox/level_layers_dialog.dart';
import 'package:map_editor/ui/sandbox/tech_tree_dialog.dart';
import 'package:map_editor/ui/sandbox/tileset_direction_generator.dart';
import 'package:provider/provider.dart';
import 'package:recase/recase.dart';
import 'package:universal_io/io.dart' as io;
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';

class SandboxUiOverlay extends StatelessWidget {
  const SandboxUiOverlay({
    super.key,
  });
  @override
  Widget build(final BuildContext context) => Stack(
        fit: StackFit.passthrough,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 128 + 16,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Container().blurred(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  const TileButtons(),
                ],
              ),
            ),
          ),
        ],
      );
}

class TileButtons extends StatelessWidget {
  const TileButtons({super.key});

  @override
  Widget build(final BuildContext context) {
    final drawerCubit = context.watch<EditorDrawerCubit>();
    final mapEditorBloc = context.watch<MapEditorCubit>();
    final tilesResources = drawerCubit.tilesPresetResources;
    // final locale = useLocale(context);

    return CupertinoScrollbar(
      thumbVisibility: true,
      child: ListView(
        primary: true,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(8),
        children: [
          Column(
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 150),
                child: SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  value: mapEditorBloc.state.isEditing,
                  onChanged: (final isEditing) async {
                    await mapEditorBloc.onChangeIsEditing(
                      isEditing,
                    );
                  },
                  title: const Text('Is Editing'),
                ),
              ),
              const Gap(14),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: ValueListenableBuilder(
                      valueListenable: drawerCubit.levelsMapsNotifier,
                      builder: (final context, final levels, final child) {
                        final name = drawerCubit.state.canvasData.name;
                        return MenuAnchor(
                          menuChildren: levels
                              .map(
                                (final canvasData) => MenuItemButton(
                                  child: Text(
                                    canvasData.name.getValue(Locales.en),
                                  ),
                                  onPressed: () async => drawerCubit
                                      .changeCurrentLevelMap(canvasData),
                                ),
                              )
                              .toList(),
                          builder: (
                            final context,
                            final controller,
                            final child,
                          ) =>
                              TextButton(
                            onPressed: () {
                              if (controller.isOpen) {
                                controller.close();
                              } else {
                                controller.open();
                              }
                            },
                            child: Text(
                              // ignore: lines_longer_than_80_chars
                              'Map: ${name.value.isEmpty ? 'noname' : name.getValue(Locales.en)}',
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const Gap(2),
                  IconButton(
                    tooltip: 'Add new map',
                    icon: const Icon(Icons.add),
                    onPressed: drawerCubit.addLevelMap,
                  ),
                  IconButton(
                    tooltip: 'Delete current map',
                    icon: const Icon(Icons.remove),
                    onPressed: () async => drawerCubit.removeLevelMap(context),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              TextButton(
                onPressed: () async => showLayersDialog(context: context),
                child: Text('Layers - ${drawerCubit.drawLayer.title}'),
              ),
              TextButton(
                onPressed: () async =>
                    showTilesetDirectionGenerator(context: context),
                child: const Text('Tileset Directions Generator'),
              ),
              MenuAnchor(
                menuChildren: drawerCubit.state.tilesetsConfigs
                    .map(
                      (final tilesetConig) => MenuItemButton(
                        child: Text(tilesetConig.type.name),
                        onPressed: () async =>
                            drawerCubit.changeTilesetType(tilesetConig.type),
                      ),
                    )
                    .toList(),
                builder: (final context, final controller, final child) =>
                    TextButton(
                  onPressed: () {
                    if (controller.isOpen) {
                      controller.close();
                    } else {
                      controller.open();
                    }
                  },
                  child: Text(
                    'Tileset: ${drawerCubit.state.canvasData.tilesetType.name}',
                  ),
                ),
              ),
              TextButton(
                onPressed: () async =>
                    showTechnologiesTreeDialog(context: context),
                child: const Text('Technology tree'),
              ),
            ],
          ),
          GridView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            children: [
              ...tilesResources.tiles.values.toList().reversed.map(
                    (final e) => TileSpriteButton(tileResource: e),
                  ),
              ...tilesResources.objects.values
                  .where(
                    (final e) => switch (e.tile.category) {
                      DataCategoryType.plants ||
                      DataCategoryType.buildings =>
                        true,
                      _ => false,
                    },
                  )
                  .toList()
                  .reversed
                  .map(
                    (final e) => TileSpriteButton(tileResource: e),
                  ),
            ],
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
                  onPressed: drawerCubit.saveData,
                  icon: const Icon(Icons.save),
                  label: const Text('Save'),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  TextButton.icon(
                    onPressed: () async => drawerCubit.copy(context: context),
                    icon: const Icon(Icons.copy),
                    label: const Text('Copy'),
                  ),
                  TextButton.icon(
                    onPressed: () async => drawerCubit.paste(context: context),
                    icon: const Icon(Icons.paste),
                    label: const Text('Paste'),
                  ),
                ],
              ),
              TextButton.icon(
                onPressed: () async {
                  final consts = drawerCubit.resourcesLoader.tilesetConstants;
                  await consts.preloadImages();
                  final presetData = drawerCubit.state.tileResources;
                  final tiles = [
                    ...presetData.tiles.values,
                    ...presetData.npcs.values,
                    ...presetData.objects.values,
                    // if players will be in tileset use it
                    // ...presetData.players.values,
                  ];
                  final oldPrefix = consts.images!.prefix;
                  consts.images!.prefix = '';
                  for (final presetTile in tiles) {
                    final tile = presetTile.tile;
                    Future<void> saveFile(
                      final String tileName,
                    ) async {
                      final filename = '${tile.path}${tileName.snakeCase}';
                      if (consts.images!.containsKey(filename)) {
                        final image = await consts.images!.load(filename);
                        final path = await FilePicker.platform.saveFile(
                          fileName: '$filename.png',
                          type: FileType.custom,
                          allowedExtensions: ['.png'],
                        );
                        if (path == null) {
                          consts.images!.prefix = oldPrefix;
                          return;
                        }
                        final bytes = (await image.toByteData(
                          format: ImageByteFormat.png,
                        ))!
                            .buffer
                            .asUint8List();
                        await io.File(path).writeAsBytes(bytes);
                      }
                    }

                    switch (tile.type) {
                      case TileType.autotile:
                        for (final tileName in SpriteTileName.values) {
                          await saveFile(tileName.name);
                        }
                      case TileType.object:
                        for (final behaviour in tile.graphics.behaviours) {
                          await saveFile(behaviour.name);
                        }

                      case TileType.playerObject:
                    }
                  }
                  consts.images!.prefix = oldPrefix;
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Saved!')),
                    );
                  }
                },
                icon: const Icon(Icons.image),
                label: const Text('Save pics'),
              ),
              UiLocalizedTextField(
                fieldConstraints: const BoxConstraints(maxWidth: 140),
                onChanged: drawerCubit.onChangeName,
                value: drawerCubit.state.canvasData.name,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TileSpriteButton extends StatelessWidget {
  const TileSpriteButton({
    required this.tileResource,
    this.dimension = 14,
    super.key,
  });
  final double dimension;
  final PresetTileResource tileResource;

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final drawerCubit = context.watch<EditorDrawerCubit>();

    final isActive = drawerCubit.tileToDraw?.id == tileResource.id;
    final thumbnailPath = tileResource.tile.properties.thumbnailPath;
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        drawerCubit.tileToDraw = tileResource;
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: isActive ? colorScheme.error : Colors.transparent,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (thumbnailPath.isNotEmpty)
              Container(
                width: dimension,
                height: dimension,
                decoration: BoxDecoration(
                  color: colorScheme.secondaryContainer,
                  image: DecorationImage(
                    image: Image.asset(
                      // ignore: lines_longer_than_80_chars
                      '${drawerCubit.resourcesLoader.assetsPrefix}${tileResource.tile.properties.thumbnailPath}',
                    ).image,
                  ),
                ),
              ),
            const Gap(4),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(tileResource.tile.properties.title),
            ),
          ],
        ),
      ),
    );
  }
}
