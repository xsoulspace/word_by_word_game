// ignore_for_file: invalid_annotation_target

part of 'models.dart';

@immutable
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class ResourcesModel with _$ResourcesModel {
  const factory ResourcesModel({
    required final String tileMapName,
  }) = _ResourcesModel;

  const ResourcesModel._();

  factory ResourcesModel.fromJson(final Map<String, dynamic> json) =>
      _$ResourcesModelFromJson(json);
}
