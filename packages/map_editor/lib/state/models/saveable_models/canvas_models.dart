// ignore_for_file: invalid_annotation_target

part of 'saveable_models.dart';

@immutable
@Freezed(fromJson: false, toJson: false, equal: false)
abstract class CanvasDataModelId with _$CanvasDataModelId, EquatableMixin {
  const factory CanvasDataModelId({required final String value}) =
      _CanvasDataModelId;
  const CanvasDataModelId._();
  factory CanvasDataModelId.fromJson(final String value) =>
      CanvasDataModelId(value: value);
  static const empty = CanvasDataModelId(value: '');
  bool get isEmpty => value.isEmpty;
  bool get isNotEmpty => value.isNotEmpty;
  String toJson() => value;
  static String toJsonString(final CanvasDataModelId id) => id.value;
  @override
  List<Object?> get props => [value];
}

/// Canvas data is what is displayed on the screen
/// It can be changed from the editor.
///
/// Currently immutable from whithin the game.
///
/// In future:
/// It can be changed during the game. If this will be
/// implemented, then it should be saved with the level.
@freezed
abstract class CanvasDataModel with _$CanvasDataModel {
  const factory CanvasDataModel({
    @JsonKey(
      fromJson: CanvasDataModelId.fromJson,
      toJson: CanvasDataModelId.toJsonString,
    )
    @Default(CanvasDataModelId.empty)
    final CanvasDataModelId id,
    @JsonKey(
      fromJson: LocalizedMap.fromJsonValueMap,
      toJson: LocalizedMap.toJsonValueMap,
    )
    @Default(LocalizedMap.empty)
    final LocalizedMap name,
    @Default([]) final List<LayerModel> layers,

    /// Moving or idle obstacle, decoration - objects,
    /// like the birds, trees etc.
    ///
    /// The main idea, that any objet should be accessed from top to bottom
    /// This way there will be easy way to loop all objects or change just
    /// one object.
    @JsonKey(
      fromJson: CanvasDataModel.objectsFromJson,
      toJson: CanvasDataModel.objectsToJson,
    )
    @Default({})
    final Map<Gid, RenderObjectModel> objects,

    /// As player is unique - it should be used separately from [objects].
    @Default(RenderObjectModel.empty) final RenderObjectModel playerObject,

    /// can be negative and positive. Should be absolute tile index.
    @Default(0) final int skyYTilePosition,

    /// can be negative and positive. Should be absolute tile index.
    @Default(GravityModel.initial) final GravityModel gravity,
    @Default([]) final List<TechnologyModel> technologies,
    @Default(TilesetType.whiteBlack) final TilesetType tilesetType,
  }) = _CanvasDataModel;
  const CanvasDataModel._();
  factory CanvasDataModel.fromJson(final Map<String, dynamic> json) =>
      _$CanvasDataModelFromJson(json);
  factory CanvasDataModel.create() =>
      CanvasDataModel(id: CanvasDataModelId(value: IdCreator.create()));
  static const empty = CanvasDataModel();

  static Map<Gid, RenderObjectModel> objectsFromJson(
    final Map<String, dynamic> json,
  ) => json.map(
    (final key, final value) =>
        MapEntry(Gid.fromJson(key), RenderObjectModel.fromJson(value)),
  );
  static Map<String, dynamic> objectsToJson(
    final Map<Gid, RenderObjectModel> json,
  ) =>
      json.map((final key, final value) => MapEntry(key.value, value.toJson()));
}

@freezed
abstract class GravityModel with _$GravityModel {
  const factory GravityModel({
    ///absolute tile position. may be negative and positive
    required final int yTilePosition,
  }) = _GravityModel;
  const GravityModel._();
  factory GravityModel.fromJson(final Map<String, dynamic> json) =>
      _$GravityModelFromJson(json);

  static const initial = GravityModel(yTilePosition: 10);
  int get tileDistance => yTilePosition * kTileDimension;

  /// "above the line"
  double getHeight(final Offset distanceToOrigin) =>
      tileDistance - distanceToOrigin.dy;

  /// "above the line"
  int getHeightInTiles(final Offset distanceToOrigin) =>
      getHeight(distanceToOrigin) ~/ kTileDimension;
}

@immutable
@Freezed(fromJson: false, toJson: false, equal: false)
abstract class LayerModelId with _$LayerModelId, EquatableMixin {
  const factory LayerModelId({required final String value}) = _LayerModelId;
  const LayerModelId._();
  factory LayerModelId.fromJson(final String value) =>
      LayerModelId(value: value);
  factory LayerModelId.create() => LayerModelId(value: IdCreator.create());
  static const empty = LayerModelId(value: '');

  bool get isEmpty => value.isEmpty;
  bool get isNotEmpty => value.isNotEmpty;
  String toJson() => value;
  static String toJsonString(final LayerModelId id) => id.value;
  @override
  List<Object?> get props => [value];
}

enum CollisionConsequence { none, win, lose }

@freezed
abstract class LayerModel with _$LayerModel {
  const factory LayerModel({
    @JsonKey(fromJson: LayerModelId.fromJson, toJson: LayerModelId.toJsonString)
    required final LayerModelId id,
    @Default('') final String title,
    @JsonKey(
      fromJson: LayerModel._tilesFromJson,
      toJson: LayerModel._tilesToJson,
    )
    @Default({})
    final Map<CellPointModel, CellTileModel> tiles,

    /// determines is tiles in this layer should be
    /// treated as hitboxes
    @Default(false) final bool isCollidable,
    @Default(CollisionConsequence.none)
    final CollisionConsequence collisionConsequence,
    @Default(true) final bool isVisible,
  }) = _LayerModel;
  const LayerModel._();
  factory LayerModel.fromJson(final Map<String, dynamic> json) =>
      _$LayerModelFromJson(json);
  static const empty = LayerModel(id: LayerModelId.empty);
  static const buildings = LayerModel(id: kDrawerBuildingsLayerId);
  static Map<CellPointModel, CellTileModel> _tilesFromJson(
    final Map<String, dynamic> json,
  ) => json.map(
    (final key, final value) => MapEntry(
      CellPointModel.fromJson(jsonDecode(key)),
      CellTileModel.fromJson(value),
    ),
  );
  static Map<String, dynamic> _tilesToJson(
    final Map<CellPointModel, CellTileModel> json,
  ) => json.map(
    (final key, final value) =>
        MapEntry(jsonEncode(key.toJson()), value.toJson()),
  );
}

/// Class which keeps all information about one tile and its references
@freezed
abstract class CellTileModel with _$CellTileModel {
  const factory CellTileModel({
    /// to remove tile just set [TileId.empty] and recalculate [tileNeighbours]
    @Default(TileId.empty) final TileId tileId,
    @Default([]) final List<TileNeighbourTitle> tileNeighbours,
    @Default([]) final List<Gid> objects,
    @Default([]) final List<Gid> npcs,
  }) = _CellTileModel;
  const CellTileModel._();
  factory CellTileModel.fromJson(final Map<String, dynamic> json) =>
      _$CellTileModelFromJson(json);

  static const empty = CellTileModel();
  bool get isEmpty => tileId.isEmpty && objects.isEmpty && npcs.isEmpty;
  String get tileMergedDirectionsTitle =>
      tileNeighbours.map((final e) => e.value).join();
}

/// Keeps information about how to render canvas object.
/// Used to save and restore canvas object.

@freezed
abstract class RenderObjectModel with _$RenderObjectModel {
  const factory RenderObjectModel({
    /// Since tileId can be used several times
    /// It cannot be used as gid.
    ///
    /// Instead, the new gid should be created
    /// for every new [RenderObjectModel].
    required final Gid id,
    required final TileId tileId,
    @Default(SerializedVector2.zero) final SerializedVector2 position,
    @Default(SerializedVector2.zero) final SerializedVector2 distanceToOrigin,
    @Default(SerializedVector2.zero)
    final SerializedVector2 distanceToTileLeftTopCorner,

    /// To get/set correct animation use this property.
    ///
    /// For example, for flying objects use [TileBehaviourType.flyRight]
    @Default(TileBehaviourType.idle) final TileBehaviourType animationBehaviour,
  }) = _RenderObjectModel;
  factory RenderObjectModel.fromJson(final Map<String, dynamic> json) =>
      _$RenderObjectModelFromJson(json);
  const RenderObjectModel._();
  static const empty = RenderObjectModel(id: Gid.empty, tileId: TileId.empty);
}
