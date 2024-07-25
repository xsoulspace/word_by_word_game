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
        debugCubit = context.read(),
        statesStatusesCubit = context.read(),
        gameConstantsCubit = context.read(),
        buildingCubit = context.read(),
        guiFocusableObjectsNotifier = context.read(),
        weatherCubit = context.read();

  /// ********************************************
  /// *      Ephemeral
  /// ********************************************
  final LevelBloc levelBloc;
  final DebugCubit debugCubit;
  final GuiBuildingNotifier buildingCubit;
  final GuiFocusableObjectsNotifier guiFocusableObjectsNotifier;
  final LevelPlayersBloc levelPlayersBloc;
  final StatesStatusesCubit statesStatusesCubit;
  final GameConstantsCubit gameConstantsCubit;
  final GlobalGameBloc globalGameBloc;
  final CanvasCubit canvasCubit;
  final WeatherCubit weatherCubit;
  final MechanicsCollection mechanics;
  final ThemeData theme;
  final DialogController dialogController;

  FlameMultiBlocProvider getBlocsProviderComponent({
    required final List<Component>? children,
  }) {
    final providers = <FlameBlocProvider<BlocBase<dynamic>, dynamic>>[
      FlameBlocProvider<LevelBloc, LevelBlocState>.value(value: levelBloc),
      FlameBlocProvider<DebugCubit, DebugCubitState>.value(value: debugCubit),
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
