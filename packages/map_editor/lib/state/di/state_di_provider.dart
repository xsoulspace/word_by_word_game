import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:map_editor/logic/logic.dart';
import 'package:map_editor/state/state.dart';
import 'package:provider/provider.dart';

class EditorStateInitializer extends StateInitializer {
  @override
  Future<void> onLoad(final BuildContext context) async {
    final read = context.read;
    await read<DrawerCubit>().loadInitialData();
    await read<MapEditorCubit>().load();
  }
}

class StateDiProvider extends StatelessWidget {
  const StateDiProvider({
    required this.builder,
    super.key,
  });
  final WidgetBuilder builder;
  @override
  Widget build(final BuildContext context) => MultiProvider(
        providers: [
          Provider(
            create: (final context) => EditorMechanicsCollection.v1(),
          ),
        ],
        builder: (final context, final child) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (final context) => WorldBloc(
                read: context.read,
              ),
            ),
            BlocProvider(
              create: (final context) => DrawerCubit(
                read: context.read,
              ),
            ),
            BlocProvider(
              create: (final context) => MapEditorCubit(
                read: context.read,
              ),
            ),
          ],
          child: Builder(
            builder: builder,
          ),
        ),
      );
}
