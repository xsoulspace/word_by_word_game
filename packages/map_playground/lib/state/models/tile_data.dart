// ignore_for_file: invalid_annotation_target

part of 'models.dart';

typedef TileId = String;

@freezed
class TileDataModel with _$TileDataModel {
  @JsonSerializable(explicitToJson: true)
  const factory TileDataModel({
    required final TileStyle style,
    final TileStyle? menu,
    @JsonKey(name: 'menu_surf') @Default('') final String menuSurface,
    @Default('') final String preview,
    @Default('') final String graphics,
    @Default(GameObjectType.tile) final GameObjectType type,
  }) = _TileDataModel;
  factory TileDataModel.fromJson(final Map<String, dynamic> json) =>
      _$TileDataModelFromJson(json);
}

typedef TileDataModelMap = Map<String, TileDataModel>;

enum TileStyle {
  player,
  sky,
  terrain,
  water,
  coin,
  enemy,
  @JsonValue('palm_fg')
  palmForeground,
  @JsonValue('palm_bg')
  palmBackground,
}

enum GameObjectType {
  object,
  tile,
}

enum TileNeighbourDirection { a, b, c, d, e, f, g, h }

const tilesNeighbourDirections = <TileNeighbourDirection, CellPointModel>{
  TileNeighbourDirection.a: CellPointModel(0, -1),
  TileNeighbourDirection.b: CellPointModel(1, -1),
  TileNeighbourDirection.c: CellPointModel(1, 0),
  TileNeighbourDirection.d: CellPointModel(1, 1),
  TileNeighbourDirection.e: CellPointModel(0, 1),
  TileNeighbourDirection.f: CellPointModel(-1, 1),
  TileNeighbourDirection.g: CellPointModel(-1, 0),
  TileNeighbourDirection.h: CellPointModel(-1, -1)
};

// TODO(antmalofeev): transform to enum
const levelLayers = {'clouds': 1, 'ocean': 2, 'bg': 3, 'water': 4, 'main': 5};
