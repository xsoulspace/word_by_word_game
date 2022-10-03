part of 'wbw_game.dart';

class WbwGameDiDto {
  WbwGameDiDto.use({
    required final Locator read,
    required this.theme,
    required this.dialogController,
  })  : levelBloc = read(),
        levelPlayersBloc = read(),
        resourcesBloc = read(),
        globalGameBloc = read(),
        mechanics = read();

  /// ********************************************
  /// *      Ephemeral
  /// ********************************************
  final LevelBloc levelBloc;
  final LevelPlayersBloc levelPlayersBloc;
  final GlobalGameBloc globalGameBloc;
  final ResourcesBloc resourcesBloc;
  final MechanicsCollection mechanics;
  final ThemeData theme;
  final DialogController dialogController;

  FlameMultiBlocProvider getBlocsProviderComponent({
    required final List<Component>? children,
  }) {
    final providers = <FlameBlocProvider<BlocBase<dynamic>, dynamic>>[
      FlameBlocProvider<ResourcesBloc, ResourcesBlocState>.value(
        value: resourcesBloc,
      ),
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
