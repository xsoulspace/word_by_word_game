import 'package:flame/cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:map_editor/logic/logic.dart';
import 'package:map_editor/state/state.dart';
import 'package:map_editor/ui/renderer/resources_loader.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';

class EditorStateInitializer implements StateInitializer {
  @override
  Future<void> onLoad(final BuildContext context) async {
    final read = context.read;
    await read<EditorDrawerCubit>().loadInitialData();
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
          Provider<LocalDbDataSource>(
            create: SharedPreferencesDbDataSourceImpl.new,
          ),
          Provider(create: EditorMechanicsCollection.v1),
        ],
        builder: (final context, final child) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (final context) => WorldBloc(
                read: context.read,
              ),
            ),
            BlocProvider(
              create: (final context) => EditorDrawerCubit(
                resourcesLoader: ResourcesLoader(
                  tilesetAssets: AssetsCache(
                    prefix: 'assets/images/',
                  ),
                ),
                dto: DrawerCubitDto.use(context: context),
              ),
            ),
            BlocProvider(
              create: (final context) => MapEditorCubit(
                dto: MapEditorCubitDto.use(context),
              ),
            ),
          ],
          child: Builder(
            builder: builder,
          ),
        ),
      );
}
