part of '../models.dart';

@freezed
class CellDataModel with _$CellDataModel {
  const factory CellDataModel() = _CellDataModel;
  factory CellDataModel.fromJson(final Map<String, dynamic> json) =>
      _$CellDataModelFromJson(json);
}

@Freezed(equal: false)
class CellPointModel with _$CellPointModel, EquatableMixin {
  const factory CellPointModel(
    final int x,
    final int y,
  ) = _CellPointModel;
  const CellPointModel._();
  factory CellPointModel.fromJson(final Map<String, dynamic> json) =>
      _$CellPointModelFromJson(json);
  Vector2 toVector2() => Vector2(
        x.toDouble(),
        y.toDouble(),
      );
  CellPointModel operator -(final CellPointModel other) =>
      CellPointModel(x - other.x, y - other.y);
  CellPointModel operator +(final CellPointModel other) =>
      CellPointModel(x + other.x, y + other.y);

  @override
  List<Object?> get props => [x, y];
}

extension PointExtension on math.Point {
  CellPointModel toCellPoint() => CellPointModel(x.toInt(), y.toInt());
}
