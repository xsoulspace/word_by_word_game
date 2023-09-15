import 'package:flutter/material.dart';
import 'package:map_editor/state/models/models.dart';
import 'package:map_editor/state/state.dart';
import 'package:provider/provider.dart';
import 'package:wbw_design_core/wbw_design_core.dart';

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
    final drawerCubit = context.watch<EditorDrawerCubit>();
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
                Expanded(
                  child: ReorderableListView.builder(
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
                                      final shouldDeleteLayer =
                                          await showDialog<bool>(
                                        context: context,
                                        builder: (final context) => AlertDialog(
                                          content: const Text('Delete layer?'),
                                          actions: [
                                            TextButton(
                                              child: const Text('Cancel'),
                                              onPressed: () =>
                                                  Navigator.pop(context, false),
                                            ),
                                            TextButton(
                                              child: const Text('Delete'),
                                              onPressed: () =>
                                                  Navigator.pop(context, true),
                                            ),
                                          ],
                                        ),
                                      );
                                      if (shouldDeleteLayer == true) {
                                        drawerCubit.deleteLayer(layer: layer);
                                      }
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
                                      layer:
                                          layer.copyWith(isCollidable: value),
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
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: layers.length,
                    onReorder: drawerCubit.reorderLayers,
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
