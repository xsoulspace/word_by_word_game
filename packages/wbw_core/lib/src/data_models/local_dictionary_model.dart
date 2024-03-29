// ignore_for_file: invalid_annotation_target

part of 'data_models.dart';

@immutable
@freezed
class LocalDictionaryModel with _$LocalDictionaryModel {
  @JsonSerializable(
    explicitToJson: true,
  )
  const factory LocalDictionaryModel({@Default({}) final Set<String> words}) =
      _LocalDictionaryModel;
  factory LocalDictionaryModel.fromJson(final Map<String, dynamic> json) =>
      _$LocalDictionaryModelFromJson(json);
}
