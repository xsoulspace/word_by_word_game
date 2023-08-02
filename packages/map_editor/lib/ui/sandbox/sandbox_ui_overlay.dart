import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:map_editor/logic/logic.dart';
import 'package:map_editor/state/models/models.dart';
import 'package:map_editor/state/models/preset_resources/preset_resources.dart';
import 'package:map_editor/state/state.dart';
import 'package:map_editor/ui/renderer/renderer.dart';
import 'package:wbw_design_core/wbw_design_core.dart';

class SandboxUiOverlay extends StatelessWidget {
  const SandboxUiOverlay({super.key});

  @override
  Widget build(final BuildContext context) => const Stack(
        fit: StackFit.passthrough,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 128 + 16,
              child: TileButtons(),
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
      child: CupertinoScrollbar(
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
                Text('Time ${worldBloc.state.dateTime.second}'),
                const Gap(4),
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
            TextButton(
              onPressed: () async => showLayersDialog(context: context),
              child: Text('Layers - ${drawerCubit.drawLayer.title}'),
            ),
            ...[
              ...tilesResources.tiles.values.toList().reversed.map(
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
                    onPressed: drawerCubit.saveData,
                    icon: const Icon(Icons.save),
                    label: const Text('Save'),
                  ),
                  TextButton.icon(
                    onPressed: () async =>
                        mapEditorBloc.onSaveAndPlay(context: context),
                    icon: const Icon(Icons.play_arrow),
                    label: const Text('Save & Play'),
                  ),
                ],
              ),
            ),
            Column(
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
                UiLocalizedTextField(
                  fieldConstraints: const BoxConstraints(maxWidth: 140),
                  onChanged: drawerCubit.onChangeName,
                  initialValue: drawerCubit.state.canvasData.name,
                ),
              ],
            )
          ],
        ),
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
                  image: Image.asset(
                    'assets/images/${tileResource.tile.properties.thumbnailPath}',
                  ).image,
                ),
              ),
            ),
          ),
          const Gap(16),
          Text(
            tileResource.tile.properties.title,
          ),
        ],
      ),
    );
  }
}

Future<void> showLayersDialog({
  required final BuildContext context,
}) async {
  await showDialog(
    context: context,
    builder: (final context) => const LayersDialog(),
  );
}

class LayersDialog extends StatefulWidget {
  const LayersDialog({super.key});

  @override
  State<LayersDialog> createState() => _LayersDialogState();
}

class _LayersDialogState extends State<LayersDialog> {
  final _textController = TextEditingController();
  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) {
    final drawerCubit = context.watch<DrawerCubit>();
    final layers = drawerCubit.layers;
    final theme = Theme.of(context);
    final colorSheme = theme.colorScheme;
    return Dialog.fullscreen(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBar(
            leading: const CloseButton(),
            title: const Text('Layers'),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text('New Layer Name'),
                      const Gap(16),
                      Flexible(
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(
                            maxWidth: 240,
                          ),
                          child: TextFormField(
                            controller: _textController,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.save),
                        onPressed: () {
                          final text = _textController.text;
                          if (text.isEmpty) return;
                          drawerCubit.createNewLayer(title: text);
                          _textController.clear();
                        },
                      ),
                    ],
                  ),
                ),
                ReorderableListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  buildDefaultDragHandles: false,
                  itemBuilder: (final context, final index) {
                    final layer = layers[index];
                    return Card(
                      key: ValueKey(layer.id),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                ReorderableDragStartListener(
                                  index: index,
                                  child: const Icon(Icons.drag_handle),
                                ),
                                const Gap(16),
                                Radio(
                                  value: layer.id,
                                  groupValue: drawerCubit.drawLayer.id,
                                  onChanged: (final id) =>
                                      drawerCubit.selectLayer(
                                    id: id,
                                  ),
                                ),
                                const Gap(16),
                                Flexible(
                                  child: ConstrainedBox(
                                    constraints:
                                        const BoxConstraints(maxWidth: 250),
                                    child: TextFormField(
                                      initialValue: layer.title,
                                      onChanged: (final value) {
                                        drawerCubit.changeLayer(
                                          layer: layer.copyWith(
                                            title: value,
                                          ),
                                          index: index,
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                const Gap(16),
                                Tooltip(
                                  message: layer.isVisible
                                      ? 'Visible. Click to hide'
                                      : 'Not visible. Click to make visible',
                                  child: IconButton.filled(
                                    onPressed: () {
                                      drawerCubit.changeLayer(
                                        index: index,
                                        layer: layer.copyWith(
                                          isVisible: !layer.isVisible,
                                        ),
                                      );
                                    },
                                    icon: layer.isVisible
                                        ? Icon(
                                            Icons.visibility,
                                            color: colorSheme.primary,
                                          )
                                        : const Icon(Icons.visibility_off),
                                  ),
                                ),
                                IconButton.filled(
                                  onPressed: () async {
                                    await showDialog(
                                      context: context,
                                      builder: (final context) => AlertDialog(
                                        content: const Text('Delete layer?'),
                                        actions: [
                                          TextButton(
                                            child: const Text('Cancel'),
                                            onPressed: () =>
                                                Navigator.pop(context),
                                          ),
                                          TextButton(
                                            child: const Text('Delete'),
                                            onPressed: () {
                                              Navigator.pop(context);
                                              drawerCubit.deleteLayer(
                                                layer: layer,
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                  icon: const Icon(Icons.delete),
                                ),
                              ],
                            ),
                            const Gap(16),
                            Row(
                              children: [
                                const Text('Collidable'),
                                Switch(
                                  value: layer.isCollidable,
                                  onChanged: (final value) =>
                                      drawerCubit.changeLayer(
                                    index: index,
                                    layer: layer.copyWith(isCollidable: value),
                                  ),
                                ),
                                const Gap(16),
                                if (layer.isCollidable)
                                  const Text('Collision Consequence'),
                                if (layer.isCollidable)
                                  MenuAnchor(
                                    menuChildren: CollisionConsequence.values
                                        .map(
                                          (final e) => MenuItemButton(
                                            child: Text(e.name),
                                            onPressed: () =>
                                                drawerCubit.changeLayer(
                                              index: index,
                                              layer: layer.copyWith(
                                                collisionConsequence: e,
                                              ),
                                            ),
                                          ),
                                        )
                                        .toList(),
                                    builder: (
                                      final context,
                                      final controller,
                                      final child,
                                    ) =>
                                        TextButton(
                                      onPressed: controller.open,
                                      child: Text(
                                        layer.collisionConsequence.name,
                                      ),
                                    ),
                                  ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: layers.length,
                  onReorder: drawerCubit.reorderLayers,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
