part of '../../state.dart';

const int kMinSelectionIndex = 2;
int get kMaxSelectionIndex => 18;

class DrawerCubitDto {
  DrawerCubitDto.use(final Locator read);
}

class DrawerCubit extends Cubit<DrawerCubitState> {
  DrawerCubit({
    required final Locator read,
  })  : dto = DrawerCubitDto.use(read),
        super(DrawerCubitState.empty);
  final DrawerCubitDto dto;
  int get selectionIndex => state.selectionIndex;
  set selectionIndex(final int value) {
    final resultValue = math.max(
      kMinSelectionIndex,
      math.min(kMaxSelectionIndex, value),
    );
    emit(state.copyWith(selectionIndex: resultValue));
  }

  void changeOrigin(final Vector2 value) => emit(state.copyWith(origin: value));

  void changeState(final DrawerCubitState newState) => emit(newState);

  Future<void> load() async {
    final jsonStr = await rootBundle.loadString(Assets.json.tilesSettingsData);
    final json = jsonDecode(jsonStr) as Map<String, dynamic>;
    final tileData = json.map(
      (final key, final value) => MapEntry(key, TileDataModel.fromJson(value)),
    );
    emit(DrawerCubitState.empty.copyWith(tileData: tileData));
  }

  TileDataModelMap get tilesData => state.tileData;

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

  TileDataModel get selectionData => tilesData['$selectionIndex']!;

  Map<CellPointModel, CanvasTileModel> get canvasData => state.canvasData;

  set canvasData(final Map<CellPointModel, CanvasTileModel> value) {
    emit(state.copyWith(canvasData: value));
  }

  // ignore: avoid_positional_boolean_parameters
  void onChangeIsDeleteSelection(final bool isDeleteSelection) {
    emit(state.copyWith(isDeleteSelection: isDeleteSelection));
  }
}
