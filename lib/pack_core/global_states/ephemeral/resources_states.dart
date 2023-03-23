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
@freezed
class LiveResourcesBlocState extends ResourcesBlocState
    with _$LiveResourcesBlocState {
  @Implements<ResourcesBlocState>()
  const factory LiveResourcesBlocState({
    required final String tileMapName,
    required final String tileMapIcon,
  }) = _LiveResourcesBlocState;
  const LiveResourcesBlocState._();

  factory LiveResourcesBlocState.fromModel(
    final ResourcesModel resourcesModel,
  ) =>
      LiveResourcesBlocState(
        tileMapName: resourcesModel.tileMapName,
        tileMapIcon: resourcesModel.tileMapIcon,
      );
}
