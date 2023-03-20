part of '../state.dart';

class MapEditorBloc extends Bloc<MapEditorBlocEvent, MapEditorBlocState> {
  MapEditorBloc() : super(const EmptyMapEditorBlocState()) {
    on<LoadMapEditorBlocEvent>(_onLoad);
  }

  Future<void> _onLoad(
    final LoadMapEditorBlocEvent event,
    final Emitter<MapEditorBlocState> emit,
  ) async {
    final jsonStr = await rootBundle.loadString(Assets.json.tilesSettingsData);
    final json = jsonDecode(jsonStr) as Map<String, dynamic>;
    final tileData = json.map(
      (final key, final value) => MapEntry(key, TileDataModel.fromJson(value)),
    );
    emit(MapEditorBlocState.loaded(tileData: tileData));
  }

  LoadedMapEditorBlocState get loadedState => state.maybeMap(
        orElse: () => throw ArgumentError(),
        loaded: (final value) => value,
      );
  TileDataModelMap get tilesData => loadedState.tileData;

  Map<TileStyle, List<TileMenuItem>> get menuTiles {
    final tiles = <TileStyle, List<TileMenuItem>>{};
    for (var i = 0; i < tilesData.values.length; i++) {
      final tileData = tilesData['$i']!;
      final menuTitle = tileData.menu;
      if (menuTitle == null) continue;
      final item = TileMenuItem(data: tileData, index: i);
      tiles.update(
        menuTitle,
        (final value) => [...value, item],
        ifAbsent: () => [item],
      );
    }

    return tiles;
  }
}
