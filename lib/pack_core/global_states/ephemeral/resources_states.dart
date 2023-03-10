// ignore_for_file: invalid_annotation_target

part of 'resources_bloc.dart';

@immutable
abstract class ResourcesBlocState {
  const ResourcesBlocState();
}

@immutable
class EmptyResourcesBlocState extends ResourcesBlocState {
  const EmptyResourcesBlocState();
}

@immutable
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class LiveResourcesBlocState extends ResourcesBlocState
    with _$LiveResourcesBlocState {
  @JsonSerializable(
    explicitToJson: true,
  )
  @Implements<ResourcesBlocState>()
  const factory LiveResourcesBlocState({
    required final String tileMapName,
    required final String tileMapIcon,
  }) = _LiveResourcesBlocState;
  const LiveResourcesBlocState._();
  factory LiveResourcesBlocState.fromJson(final Map<String, dynamic> json) =>
      _$LiveResourcesBlocStateFromJson(json);

  factory LiveResourcesBlocState.fromModel(
    final ResourcesModel resourcesModel,
  ) =>
      LiveResourcesBlocState(
        tileMapName: resourcesModel.tileMapName,
        tileMapIcon: resourcesModel.tileMapIcon,
      );
}
