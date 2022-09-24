part of 'wbw_game.dart';

class WbwGameDiDto {
  WbwGameDiDto.use({
    required final Locator read,
    required this.theme,
  })  : levelBloc = read(),
        levelPlayersBloc = read(),
        resourcesBloc = read(),
        globalGameBloc = read();

  /// ********************************************
  /// *      Ephemeral
  /// ********************************************
  final LevelBloc levelBloc;
  final LevelPlayersBloc levelPlayersBloc;
  final GlobalGameBloc globalGameBloc;
  final ResourcesBloc resourcesBloc;
  final ThemeData theme;

  FlameMultiBlocProvider getBlocsProviderComponent({
    required final List<Component>? children,
  }) {
    final providers = <FlameBlocProvider<BlocBase<dynamic>, dynamic>>[
      FlameBlocProvider<ResourcesBloc, ResourcesState>.value(
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
