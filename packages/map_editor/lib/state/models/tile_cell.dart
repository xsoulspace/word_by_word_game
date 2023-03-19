part of 'models.dart';

@freezed
class CellDataModel with _$CellDataModel {
  const factory CellDataModel() = _CellDataModel;
  factory CellDataModel.fromJson(final Map<String, dynamic> json) =>
      _$CellDataModelFromJson(json);
}

@freezed
class CellPointModel with _$CellPointModel {
  const factory CellPointModel(
    final int row,
    final int column,
  ) = _CellPointModel;
  factory CellPointModel.fromJson(final Map<String, dynamic> json) =>
      _$CellPointModelFromJson(json);
}

extension PointExtension on math.Point {
  CellPointModel toCellPoint() => CellPointModel(x.toInt(), y.toInt());
}
