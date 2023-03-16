import 'package:flutter/material.dart';
import 'package:map_editor/state/di/state_di_provider.dart';
import 'package:map_editor/ui/sandbox/sandbox.dart';

class MapEditorApp extends StatelessWidget {
  const MapEditorApp({super.key});

  @override
  Widget build(final BuildContext context) => StateDiProvider(
        builder: (final context) => const MaterialApp(
          home: SandboxScreen(),
        ),
      );
}
