part of 'game_renderer.dart';

class GameRendererDiDto {
  GameRendererDiDto.use({
    required final Locator read,
    required this.theme,
    required this.dialogController,
  })  : levelBloc = read(),
        levelPlayersBloc = read(),
        globalGameBloc = read(),
        mechanics = read(),
        canvasCubit = read();

  /// ********************************************
  /// *      Ephemeral
  /// ********************************************
  final LevelBloc levelBloc;
  final LevelPlayersBloc levelPlayersBloc;
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
      FlameBlocProvider<LevelPlayersBloc, LevelPlayersBlocState>.value(
        value: levelPlayersBloc,
      ),
      FlameBlocProvider<GlobalGameBloc, GlobalGameBlocState>.value(
        value: globalGameBloc,
      ),
    ];

    return FlameMultiBlocProvider(
      providers: providers,
      children: children,
    );
  }
}
