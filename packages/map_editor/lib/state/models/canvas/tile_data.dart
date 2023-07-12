// ignore_for_file: invalid_annotation_target

part of '../models.dart';

@Deprecated('')
@freezed
class TileDataModel with _$TileDataModel {
  @Deprecated('')
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

@Deprecated('')

/// Key is stringified int index, i.e. in new scheme
/// it is a [TileId]
typedef TileDataModelMap = Map<String, TileDataModel>;

@Deprecated('')
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

@Deprecated('')
// TODO(antmalofeev): transform to enum
const levelLayers = {'clouds': 1, 'ocean': 2, 'bg': 3, 'water': 4, 'main': 5};
