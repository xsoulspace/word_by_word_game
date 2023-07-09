// ignore_for_file: invalid_annotation_target

part of '../models.dart';

@freezed
class TileDataModel with _$TileDataModel {
  @JsonSerializable(explicitToJson: true)
  const factory TileDataModel({
    required final TileStyle style,
    final TileStyle? menu,
    @JsonKey(name: 'menu_surf') @Default('') final String menuSurface,
    @Default('') final String preview,
    @Default('') final String graphics,
    @Default(TileType.autotile) final TileType type,
  }) = _TileDataModel;
  factory TileDataModel.fromJson(final Map<String, dynamic> json) =>
      _$TileDataModelFromJson(json);
}

/// Key is stringified int index, i.e. in new scheme
/// it is a [TileId]
typedef TileDataModelMap = Map<String, TileDataModel>;

enum TileStyle {
  player,
  @JsonValue('cursor_handle')
  cursorHandle,
  terrain,
  water,
  coin,
  enemy,
  sky,
  @JsonValue('palm_fg')
  palmForeground,
  @JsonValue('palm_bg')
  palmBackground,
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
