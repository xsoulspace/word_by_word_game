part of 'wbw_game.dart';

class WbwGameDiDto {
  WbwGameDiDto.use({required final Locator read})
      : levelBloc = read(),
        resourcesBloc = read();

  /// ********************************************
  /// *      Ephemeral
  /// ********************************************
  final LevelBloc levelBloc;
  final ResourcesBloc resourcesBloc;

  FlameMultiBlocProvider getBlocsProviderComponent() {
    final providers = <FlameBlocProvider<BlocBase<dynamic>, dynamic>>[
      FlameBlocProvider<ResourcesBloc, ResourcesState>.value(
        value: resourcesBloc,
      ),
      FlameBlocProvider<LevelBloc, LevelBlocState>.value(
        value: levelBloc,
      ),
    ];

    return FlameMultiBlocProvider(
      providers: providers,
    );
  }
}
