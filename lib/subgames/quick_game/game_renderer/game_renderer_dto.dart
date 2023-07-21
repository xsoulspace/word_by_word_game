part of 'game_renderer.dart';

class GameRendererDiDto {
  GameRendererDiDto.use({
    required final BuildContext context,
    required this.theme,
    required this.dialogController,
  })  : levelBloc = context.read(),
        levelPlayersBloc = context.read(),
        globalGameBloc = context.read(),
        mechanics = context.read(),
        canvasCubit = context.read(),
        statesStatusesCubit = context.read();

  /// ********************************************
  /// *      Ephemeral
  /// ********************************************
  final LevelBloc levelBloc;
  final LevelPlayersBloc levelPlayersBloc;
  final StatesStatusesCubit statesStatusesCubit;
  final GlobalGameBloc globalGameBloc;
  final CanvasCubit canvasCubit;
  final MechanicsCollection mechanics;
  final ThemeData theme;
  final DialogController dialogController;

  FlameMultiBlocProvider getBlocsProviderComponent({
    required final List<Component>? children,
  }) {
    final providers = <FlameBlocProvider<BlocBase<dynamic>, dynamic>>[
      FlameBlocProvider<LevelBloc, LevelBlocState>.value(
        value: levelBloc,
      ),
      FlameBlocProvider<CanvasCubit, DrawerCubitState>.value(
        value: canvasCubit,
      ),
      FlameBlocProvider<LevelPlayersBloc, LevelPlayersBlocState>.value(
        value: levelPlayersBloc,
      ),
      FlameBlocProvider<GlobalGameBloc, GlobalGameBlocState>.value(
        value: globalGameBloc,
      ),
      FlameBlocProvider<StatesStatusesCubit, StatesStatusesCubitState>.value(
        value: statesStatusesCubit,
      ),
    ];

    return FlameMultiBlocProvider(
      providers: providers,
      children: children,
    );
  }
}
