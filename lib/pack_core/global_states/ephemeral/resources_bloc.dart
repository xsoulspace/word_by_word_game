import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/pack_core/global_states/ephemeral/global_game_bloc.dart';
import 'package:word_by_word_game/pack_core/global_states/ephemeral/level_players_bloc.dart';
import 'package:word_by_word_game/pack_game/mechanics/mechanics.dart';

part 'resources_events.dart';
part 'resources_states.dart';

class ResourcesBlocDiDto {
  ResourcesBlocDiDto.use(final Locator read)
      : mechanics = read(),
        levelPlayersBloc = read(),
        globalGameBloc = read();
  final MechanicsCollection mechanics;
  final LevelPlayersBloc levelPlayersBloc;
  final GlobalGameBloc globalGameBloc;
}

class ResourcesBloc extends Bloc<ResourcesEvent, ResourcesState> {
  ResourcesBloc({
    required this.diDto,
  }) : super(const ResourcesState.initial()) {
    on<InitResourcesEvent>(_onInitResources);
  }

  final ResourcesBlocDiDto diDto;

  void _onInitResources(
    final InitResourcesEvent event,
    final Emitter<ResourcesState> emit,
  ) {
    // TODO(arenukvern): add resources load
    diDto.globalGameBloc.add(
      const LevelPartLoadedEvent(loadedState: LevelPartStates.level),
    );
  }
}
