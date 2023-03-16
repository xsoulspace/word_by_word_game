part of 'game_renderer.dart';

class GameRendererDiDto {
  GameRendererDiDto.use({
    required final Locator read,
    required this.theme,
  })  : mapEditorBloc = read(),
        mechanics = read();

  /// ********************************************
  /// *      Ephemeral
  /// ********************************************
  final MapEditorBloc mapEditorBloc;
  final MechanicsCollection mechanics;
  final ThemeData theme;

  FlameMultiBlocProvider getBlocsProviderComponent({
    required final List<Component>? children,
  }) {
    final providers = <FlameBlocProvider<BlocBase<dynamic>, dynamic>>[
      FlameBlocProvider<MapEditorBloc, MapEditorBlocState>.value(
        value: mapEditorBloc,
      ),
    ];

    return FlameMultiBlocProvider(
      providers: providers,
      children: children,
    );
  }
}
