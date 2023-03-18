import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_editor/logic/logic.dart';
import 'package:map_editor/state/state.dart';
import 'package:provider/provider.dart';

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
              create: (final context) => DrawerCubit(),
            ),
          ],
          child: Builder(
            builder: builder,
          ),
        ),
      );
}
