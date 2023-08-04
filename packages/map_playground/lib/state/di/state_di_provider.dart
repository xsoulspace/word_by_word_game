import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:map_playground/logic/logic.dart';
import 'package:map_playground/state/state.dart';
import 'package:provider/provider.dart';

class EditorStateInitializer extends StateInitializer {
  @override
  Future<void> onLoad(final BuildContext context) async {
    final read = context.read;
    read<MapEditorBloc>().add(const LoadMapEditorBlocEvent());
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
            create: (final context) => MechanicsCollection(),
          ),
        ],
        builder: (final context, final child) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (final context) => MapEditorBloc(),
            ),
            BlocProvider(
              create: (final context) => DrawerCubit(
                dto: DrawerCubitDto(context.read),
              ),
            ),
          ],
          child: Builder(
            builder: builder,
          ),
        ),
      );
}
