import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'resources_events.dart';
part 'resources_states.dart';

class ResourcesBloc extends Bloc<ResourcesEvent, ResourcesState> {
  ResourcesBloc() : super(const ResourcesState.initial());
}
