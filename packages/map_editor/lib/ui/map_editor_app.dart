import 'package:flutter/material.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:map_editor/state/state.dart';
import 'package:map_editor/ui/sandbox/sandbox.dart';

class MapEditorApp extends StatelessWidget {
  const MapEditorApp({super.key});

  @override
  Widget build(final BuildContext context) => StateDiProvider(
    builder: (final context) => StateLoader(
      initializer: EditorStateInitializer(),
      loader: const Center(),
      child: const MaterialApp(home: SandboxScreen()),
    ),
  );
}
