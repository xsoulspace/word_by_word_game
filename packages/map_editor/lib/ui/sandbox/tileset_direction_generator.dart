import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:map_editor/state/models/saveable_models/saveable_models.dart';

Future<void> showTilesetDirectionGenerator({
  required final BuildContext context,
}) async =>
    showDialog(
      context: context,
      builder: (final context) => const TilesetDirectionGenerator(),
    );

class TilesetDirectionGenerator extends StatefulWidget {
  const TilesetDirectionGenerator({super.key});

  @override
  State<TilesetDirectionGenerator> createState() =>
      _TilesetDirectionGeneratorState();
}

class _TilesetDirectionGeneratorState extends State<TilesetDirectionGenerator> {
  final _items = <String>[];
  final _currentDirections = <TileNeighbourDirection>[];
  void _onConfirm() {
    _currentDirections.sort(
      (final a, final b) => a.index.compareTo(b.index),
    );
    final item =
        _currentDirections.map((final e) => e.name.toUpperCase()).join();
    _items.add(item);
    _currentDirections.clear();
    setState(() {});
  }

  void _onChange(final TileNeighbourDirection direction) {
    if (_currentDirections.contains(direction)) {
      _currentDirections.remove(direction);
    } else {
      _currentDirections.add(direction);
    }
    setState(() {});
  }

  void _onDeleteItem(final int index) {
    _items.removeAt(index);
    setState(() {});
  }

  Future<void> _onClear() async {
    _items.clear();
    setState(() {});
  }

  Future<void> _onCopy() async {
    final messenger = ScaffoldMessenger.of(context);
    final text = jsonEncode(_items);
    await Clipboard.setData(ClipboardData(text: text));
    messenger.showMaterialBanner(
      MaterialBanner(
        content: const Text('Copied'),
        actions: [
          TextButton(
            onPressed: messenger.clearMaterialBanners,
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(final BuildContext context) => Dialog.fullscreen(
        child: Column(
          children: [
            AppBar(
              leading: const CloseButton(),
              title: const Text('Directions generator'),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxHeight: 150,
                    maxWidth: 150,
                  ),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(8),
                    itemBuilder: (final context, final index) {
                      final int i = index;
                      if (index == 4) {
                        return const SizedBox();
                      }
                      final direction = switch (i) {
                        0 => TileNeighbourDirection.h,
                        1 => TileNeighbourDirection.a,
                        2 => TileNeighbourDirection.b,
                        3 => TileNeighbourDirection.g,
                        5 => TileNeighbourDirection.c,
                        6 => TileNeighbourDirection.f,
                        7 => TileNeighbourDirection.e,
                        8 => TileNeighbourDirection.d,
                        _ => throw UnsupportedError(''),
                      };
                      return Row(
                        children: [
                          Text(direction.name),
                          Checkbox(
                            value: _currentDirections.contains(direction),
                            onChanged: (final isAdded) {
                              _onChange(direction);
                            },
                          ),
                        ],
                      );
                    },
                    itemCount: TileNeighbourDirection.values.length + 1,
                  ),
                ),
                TextButton(
                  onPressed: _onConfirm,
                  child: const Text('Confirm'),
                ),
              ],
            ),
            Row(
              children: [
                TextButton.icon(
                  onPressed: _onCopy,
                  icon: const Icon(Icons.copy),
                  label: const Text('Copy'),
                ),
                TextButton.icon(
                  onPressed: _onClear,
                  icon: const Icon(Icons.clear),
                  label: const Text('Clear'),
                ),
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: _items.length,
              itemBuilder: (final context, final index) {
                final item = _items[index];
                return ListTile(
                  key: ValueKey(item),
                  title: Text(item),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () => _onDeleteItem(index),
                  ),
                );
              },
            ),
          ],
        ),
      );
}
