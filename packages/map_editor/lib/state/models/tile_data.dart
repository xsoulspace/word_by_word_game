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

final tilesNeighborDirections = {
  'A': Vector2(0, -1),
  'B': Vector2(1, -1),
  'C': Vector2(1, 0),
  'D': Vector2(1, 1),
  'E': Vector2(0, 1),
  'F': Vector2(-1, 1),
  'G': Vector2(-1, 0),
  'H': Vector2(-1, -1)
};

final levelLayers = {'clouds': 1, 'ocean': 2, 'bg': 3, 'water': 4, 'main': 5};
