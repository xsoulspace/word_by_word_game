import 'package:flutter/material.dart';
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
          Provider(
            create: (final context) => MapEditorBloc(),
          ),
          Provider(
            create: (final context) => DrawerCubit(),
          ),
        ],
        builder: (final context, final child) => builder(context),
      );
}
