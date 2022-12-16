import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/ephemeral/global_game_bloc.dart';
import 'package:word_by_word_game/pack_core/global_states/ephemeral/level_players_bloc.dart';
import 'package:word_by_word_game/pack_game/mechanics/mechanics.dart';

part 'resources_bloc.freezed.dart';
part 'resources_bloc.g.dart';
part 'resources_events.dart';
part 'resources_states.dart';

class ResourcesBlocDiDto {
  ResourcesBlocDiDto.use(final Locator read)
      : mechanics = read(),
        levelPlayersBloc = read(),
        _read = read;
  final Locator _read;
  GlobalGameBloc get globalGameBloc => _read();
  final MechanicsCollection mechanics;
  final LevelPlayersBloc levelPlayersBloc;
}

class ResourcesBloc extends Bloc<ResourcesEvent, ResourcesBlocState> {
  ResourcesBloc({
    required this.diDto,
  }) : super(const EmptyResourcesBlocState()) {
    on<InitResourcesEvent>(_onInitResources);
  }

  final ResourcesBlocDiDto diDto;

  void _onInitResources(
    final InitResourcesEvent event,
    final Emitter<ResourcesBlocState> emit,
  ) {
    final updatedState = LiveResourcesBlocState.fromModel(event.resources);
    emit(updatedState);

    diDto.globalGameBloc.add(
      const LevelPartLoadedEvent(loadedState: LevelPartStates.resources),
    );
  }

  LiveResourcesBlocState getLiveState() {
    final effectiveState = state;
    if (effectiveState is! LiveResourcesBlocState) {
      throw ArgumentError.value(effectiveState);
    }
    return effectiveState;
  }
}