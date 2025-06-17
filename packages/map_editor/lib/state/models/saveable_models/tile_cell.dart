part of 'saveable_models.dart';

enum TileNeighbourDirection { a, b, c, d, e, f, g, h }

@Freezed(equal: false)
class TileNeighbourTitle with _$TileNeighbourTitle, EquatableMixin {
  /// please use [TileNeighbourTitle.fromDirection] instead
  const factory TileNeighbourTitle.secured({required final String value}) =
      _TileNeighbourTitle;
  const TileNeighbourTitle._();
  factory TileNeighbourTitle.fromDirection(
    final TileNeighbourDirection direction,
  ) => TileNeighbourTitle.secured(value: direction.name.toUpperCase());
  factory TileNeighbourTitle.fromJson(final Map<String, dynamic> json) =>
      _$TileNeighbourTitleFromJson(json);
  @override
  List<Object?> get props => [value];
}

const tilesNeighbourDirections = <TileNeighbourDirection, CellPointModel>{
  TileNeighbourDirection.a: CellPointModel(0, -1),
  TileNeighbourDirection.b: CellPointModel(1, -1),
  TileNeighbourDirection.c: CellPointModel(1, 0),
  TileNeighbourDirection.d: CellPointModel(1, 1),
  TileNeighbourDirection.e: CellPointModel(0, 1),
  TileNeighbourDirection.f: CellPointModel(-1, 1),
  TileNeighbourDirection.g: CellPointModel(-1, 0),
  TileNeighbourDirection.h: CellPointModel(-1, -1),
};

@freezed
class CellDataModel with _$CellDataModel {
  const factory CellDataModel() = _CellDataModel;
  factory CellDataModel.fromJson(final Map<String, dynamic> json) =>
      _$CellDataModelFromJson(json);
}

@Freezed(equal: false)
class CellPointModel with _$CellPointModel, EquatableMixin {
  const factory CellPointModel(final int x, final int y) = _CellPointModel;
  const CellPointModel._();
  factory CellPointModel.fromJson(final Map<String, dynamic> json) =>
      _$CellPointModelFromJson(json);
  factory CellPointModel.fromPoint(final math.Point<int> point) =>
      CellPointModel(point.x, point.y);
  Vector2 toVector2() => Vector2(x.toDouble(), y.toDouble());
  static const zero = CellPointModel(0, 0);
  CellPointModel operator -(final CellPointModel other) =>
      CellPointModel(x - other.x, y - other.y);
  CellPointModel operator +(final CellPointModel other) =>
      CellPointModel(x + other.x, y + other.y);

  @override
  List<Object?> get props => [x, y];
}

extension PointExtension on math.Point {
  CellPointModel toCellPoint() => CellPointModel(x.toInt(), y.toInt());
  Vector2 toVector2() => Vector2(x.toDouble(), y.toDouble());
}
