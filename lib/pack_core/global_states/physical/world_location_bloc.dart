import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_game/mechanics/location_demands_mechanics.dart';

part 'world_location_events.dart';
part 'world_location_states.dart';

class WorldLocationBloc extends Bloc<WorldLocationEvent, WorldLocationState> {
  WorldLocationBloc() : super(const WorldLocationState.initial()) {
    on<LoadLocationEvent>(_onLoadLocation);
    on<ConsumeTickEvent>(_consumeTick);
  }
  final locationDemandsMechanics = LocationDemandsMechanics();
  void _onLoadLocation(
    final LoadLocationEvent event,
    final Emitter<WorldLocationState> emit,
  ) {
    emit(LiveWorldLocationState(location: event.location));
  }

  void _consumeTick(
    final ConsumeTickEvent event,
    final Emitter<WorldLocationState> emit,
  ) {
    final effectiveState = state;
    if (effectiveState is LiveWorldLocationState) {
      final newState = LiveWorldLocationState(
        location: locationDemandsMechanics.applyDemandsForLocation(
          worldLocation: effectiveState.location,
          timeDeltaInSeconds: event.timeDeltaInSeconds,
        ),
      );
      emit(newState);
    }
  }
}
