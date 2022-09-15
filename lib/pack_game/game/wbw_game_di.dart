part of 'wbw_game.dart';

class WbwGameDiDto {
  WbwGameDiDto.use({required final Locator read})
      : levelBloc = read(),
        resourcesBloc = read(),
        globalGameBloc = read();

  /// ********************************************
  /// *      Ephemeral
  /// ********************************************
  final LevelBloc levelBloc;
  final GlobalGameBloc globalGameBloc;
  final ResourcesBloc resourcesBloc;

  FlameMultiBlocProvider getBlocsProviderComponent() {
    final providers = <FlameBlocProvider<BlocBase<dynamic>, dynamic>>[
      FlameBlocProvider<ResourcesBloc, ResourcesState>.value(
        value: resourcesBloc,
      ),
      FlameBlocProvider<LevelBloc, LevelBlocState>.value(
        value: levelBloc,
      ),
      FlameBlocProvider<GlobalGameBloc, GlobalGameBlocState>.value(
        value: globalGameBloc,
      ),
    ];

    return FlameMultiBlocProvider(
      providers: providers,
    );
  }
}
