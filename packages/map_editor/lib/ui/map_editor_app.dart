import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          child: BlocBuilder<MapEditorCubit, MapEditorBlocState>(
            buildWhen: (final previous, final current) =>
                previous.runtimeType != current.runtimeType,
            builder: (final context, final state) => const MaterialApp(
              home: SandboxScreen(),
            ),
          ),
        ),
      );
}
