part of 'game_renderer.dart';

class GameRendererDiDto {
  GameRendererDiDto.use({
    required final Locator read,
    required this.theme,
  })  : mapEditorBloc = read(),
        mechanics = read(),
        drawerCubit = read();

  /// ********************************************
  /// *      Ephemeral
  /// ********************************************
  final MapEditorBloc mapEditorBloc;
  final DrawerCubit drawerCubit;
  final MechanicsCollection mechanics;
  final material.ThemeData theme;

  FlameMultiBlocProvider getBlocsProviderComponent({
    required final List<Component>? children,
  }) {
    final providers = <FlameBlocProvider<BlocBase<dynamic>, dynamic>>[
      FlameBlocProvider<MapEditorBloc, MapEditorBlocState>.value(
        value: mapEditorBloc,
      ),
      FlameBlocProvider<DrawerCubit, DrawerCubitState>.value(value: drawerCubit)
    ];

    return FlameMultiBlocProvider(
      providers: providers,
      children: children,
    );
  }
}
