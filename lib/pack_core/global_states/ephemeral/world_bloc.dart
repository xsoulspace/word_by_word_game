import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/physical/world_location_bloc.dart';
import 'package:word_by_word_game/pack_game/pack_game.dart';

part 'world_bloc.freezed.dart';
part 'world_events.dart';
part 'world_states.dart';

class WorldBlocDiDto {
  WorldBlocDiDto.use(final Locator read) : worldLocationBloc = read();
  final WorldLocationBloc worldLocationBloc;
}

class WorldBloc extends Bloc<WorldEvent, WorldState> {
  WorldBloc({
    required final Locator read,
  })  : diDto = WorldBlocDiDto.use(read),
        super(WorldState.initial()) {
    on<WorldTimeTickEvent>(_onWorldTick);
    on<LoadWorldEvent>(_onWorldLoad);
  }
  final WorldBlocDiDto diDto;

  void _onWorldLoad(
    final LoadWorldEvent event,
    final Emitter<WorldState> emit,
  ) {
    emit(state.copyWith(worldData: event.worldData));
    _initLoadedWorld(event);
  }

  void _initLoadedWorld(final LoadWorldEvent event) {
    diDto.worldLocationBloc.add(
      LoadLocationEvent(event.worldData.locations.first),
    );
  }

  void _onWorldTick(
    final WorldTimeTickEvent event,
    final Emitter<WorldState> emit,
  ) {
    final newDateTime = event.worldTimeManager.dateTime;
    final lastDateTime = state.dateTime;
    final dateTimeDelta = newDateTime.second - lastDateTime.second;
    final newState = state.copyWith(
      lastDateTime: lastDateTime,
      dateTime: newDateTime,
      dateTimeDelta: dateTimeDelta,
    );
    emit(newState);
    _shareNewDateTime(newState);
  }

  void _shareNewDateTime(final WorldState newState) {
    diDto.worldLocationBloc.add(
      ConsumeTickEvent(timeDeltaInSeconds: newState.dateTimeDelta),
    );
  }
}
