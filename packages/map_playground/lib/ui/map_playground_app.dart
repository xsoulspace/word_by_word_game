import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:map_playground/state/state.dart';
import 'package:map_playground/ui/sandbox/sandbox.dart';

class MapPlaygroundApp extends StatelessWidget {
  const MapPlaygroundApp({super.key});

  @override
  Widget build(final BuildContext context) => StateDiProvider(
        builder: (final context) => StateLoader(
          initializer: EditorStateInitializer(),
          loader: const Center(),
          child: BlocBuilder<MapEditorBloc, MapEditorBlocState>(
            buildWhen: (final previous, final current) =>
                previous.runtimeType != current.runtimeType,
            builder: (final context, final state) => state.map(
              empty: (final value) => const Center(),
              loaded: (final state) => const MaterialApp(
                home: SandboxScreen(),
              ),
            ),
          ),
        ),
      );
}
