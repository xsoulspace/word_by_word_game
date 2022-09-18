part of 'resources_bloc.dart';

abstract class ResourcesEvent extends Equatable {
  const ResourcesEvent();
  @override
  List<Object?> get props => [];
}

@immutable
class InitResourcesEvent extends ResourcesEvent {
  const InitResourcesEvent();
}
