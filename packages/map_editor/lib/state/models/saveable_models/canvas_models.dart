// ignore_for_file: invalid_annotation_target

part of 'saveable_models.dart';

@freezed
class CanvasDataModel with _$CanvasDataModel {
  const factory CanvasDataModel({
    @Default([]) final List<LayerModel> layers,

    /// Moving or idle obstacle, decoration - objects,
    /// like the birds, trees etc.
    ///
    /// The main idea, that any objet should be accessed from top to bottom
    /// This way there will be easy way to loop all objects or change just
    /// one object.
    @JsonKey(
      fromJson: CanvasDataModel._objectsFromJson,
      toJson: CanvasDataModel._objectsToJson,
    )
    @Default({})
    final Map<Gid, RenderObjectModel> objects,

    /// As player is unique - it should be used separately from [objects].
    @Default(RenderObjectModel.empty) final RenderObjectModel playerObject,
  }) = _CanvasDataModel;
  const CanvasDataModel._();
  factory CanvasDataModel.fromJson(
    final Map<String, dynamic> json,
  ) =>
      _$CanvasDataModelFromJson(json);
  static const empty = CanvasDataModel();

  static Map<Gid, RenderObjectModel> _objectsFromJson(
    final Map<String, dynamic> json,
  ) =>
      json.map(
        (final key, final value) => MapEntry(
          Gid.fromJson(key),
          RenderObjectModel.fromJson(value),
        ),
      );
  static Map<String, dynamic> _objectsToJson(
    final Map<Gid, RenderObjectModel> json,
  ) =>
      json.map(
        (final key, final value) => MapEntry(
          key.value,
          value.toJson(),
        ),
      );
}

@immutable
@Freezed(fromJson: false, toJson: false, equal: false)
class LayerModelId with _$LayerModelId, EquatableMixin {
  const factory LayerModelId({
    required final String value,
  }) = _LayerModelId;
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

@freezed
class LayerModel with _$LayerModel {
  const factory LayerModel({
    @JsonKey(
      fromJson: LayerModelId.fromJson,
      toJson: LayerModelId.toJsonString,
    )
    required final LayerModelId id,
    @Default('') final String title,
    @JsonKey(
      fromJson: LayerModel._tilesFromJson,
      toJson: LayerModel._tilesToJson,
    )
    @Default({})
    final Map<CellPointModel, CellTileModel> tiles,
  }) = _LayerModel;
  const LayerModel._();
  factory LayerModel.fromJson(final Map<String, dynamic> json) =>
      _$LayerModelFromJson(json);
  static const empty = LayerModel(id: LayerModelId.empty);
  static Map<CellPointModel, CellTileModel> _tilesFromJson(
    final Map<String, dynamic> json,
  ) =>
      json.map(
        (final key, final value) => MapEntry(
          CellPointModel.fromJson(jsonDecode(key)),
          CellTileModel.fromJson(value),
        ),
      );
  static Map<String, dynamic> _tilesToJson(
    final Map<CellPointModel, CellTileModel> json,
  ) =>
      json.map(
        (final key, final value) => MapEntry(
          jsonEncode(key.toJson()),
          value.toJson(),
        ),
      );
}

/// Class which keeps all information about one tile and its references
@freezed
class CellTileModel with _$CellTileModel {
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
  bool get isEmpty =>
      tileId.isEmpty &&
      tileNeighbours.isEmpty &&
      objects.isEmpty &&
      npcs.isEmpty;
  String get tileMergedDirectionsTitle =>
      tileNeighbours.map((final e) => e.value).join();
}

/// Keeps information about how to render canvas object.
/// Used to save and restore canvas object.

@freezed
class RenderObjectModel with _$RenderObjectModel {
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
  static const empty = RenderObjectModel(
    id: Gid.empty,
    tileId: TileId.empty,
  );
}
