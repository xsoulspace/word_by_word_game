part of 'editor_renderer.dart';

class GameRendererDiDto {
  GameRendererDiDto.use({
    required final Locator read,
    required this.theme,
  })  : mapEditorBloc = read(),
        mechanics = read(),
        drawerCubit = read(),
        worldBloc = read();

  /// ********************************************
  /// *      Ephemeral
  /// ********************************************
  final MapEditorCubit mapEditorBloc;
  final WorldBloc worldBloc;
  final EditorDrawerCubit drawerCubit;
  final EditorMechanicsCollection mechanics;
  final material.ThemeData theme;

  FlameMultiBlocProvider getBlocsProviderComponent({
    required final List<Component>? children,
  }) {
    final providers = <FlameBlocProvider<BlocBase<dynamic>, dynamic>>[
      FlameBlocProvider<MapEditorCubit, MapEditorBlocState>.value(
        value: mapEditorBloc,
      ),
      FlameBlocProvider<EditorDrawerCubit, DrawerCubitState>.value(
        value: drawerCubit,
      ),
    ];

    return FlameMultiBlocProvider(
      providers: providers,
      children: children,
    );
  }
}
