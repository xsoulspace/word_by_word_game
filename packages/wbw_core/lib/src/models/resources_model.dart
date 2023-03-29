// ignore_for_file: invalid_annotation_target

part of 'models.dart';

@immutable
@freezed
class ResourcesModel with _$ResourcesModel {
  const factory ResourcesModel({
    required final String tileMapName,
    @Default('') final String tileMapIcon,
  }) = _ResourcesModel;

  const ResourcesModel._();

  factory ResourcesModel.fromJson(final Map<String, dynamic> json) =>
      _$ResourcesModelFromJson(json);
}
