import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_game/mechanics/mechanics.dart';

part 'global_game_bloc.freezed.dart';
part 'global_game_bloc.g.dart';
part 'global_game_events.dart';
part 'global_game_states.dart';

class GlobalGameBlocDiDto {
  GlobalGameBlocDiDto.use(final Locator read)
      : mechanics = read(),
        levelBloc = read(),
        levelPlayersBloc = read();
  final MechanicsCollection mechanics;
  final LevelBloc levelBloc;
  final LevelPlayersBloc levelPlayersBloc;
}

class GlobalGameBloc extends Bloc<GameEvent, GlobalGameBlocState> {
  GlobalGameBloc({
    required this.diDto,
  }) : super(const EmptyGlobalGameBlocState()) {
    on<InitGlobalGameEvent>(_onInitGlobalGame);
    on<InitGlobalGameLevelEvent>(_onInitGlobalGameLevel);
    on<WorldTimeTickEvent>(_onWorldTick);
  }
  final GlobalGameBlocDiDto diDto;

  void _onInitGlobalGame(
    final InitGlobalGameEvent event,
    final Emitter<GlobalGameBlocState> emit,
  ) {
    final gameModel = event.gameModel;
    final liveGame = LiveGlobalGameBlocState.fromModel(gameModel);
    emit(liveGame);
    if (liveGame.currentLevelId.isNotEmpty && gameModel.levels.isNotEmpty) {
      final levelModel = gameModel.levels[liveGame.currentLevelId];
      if (levelModel == null) {
        throw ArgumentError.value(
          levelModel,
          'current level ${liveGame.currentLevelId} is not '
          'presented in the game model.',
        );
      }
      add(InitGlobalGameLevelEvent(levelModel: levelModel));
    }
  }

  void _onInitGlobalGameLevel(
    final InitGlobalGameLevelEvent event,
    final Emitter<GlobalGameBlocState> emit,
  ) {
    final levelModel = event.levelModel;
    diDto
      ..levelBloc.add(InitLevelEvent(levelModel: levelModel))
      ..levelPlayersBloc
          .add(InitLevelPlayersEvent(playersModel: levelModel.players));
  }

  void _onWorldTick(
    final WorldTimeTickEvent event,
    final Emitter<GlobalGameBlocState> emit,
  ) {
    final effectiveState = getLiveState();

    final newDateTime = event.worldTimeManager.dateTime;
    final lastDateTime = effectiveState.dateTime;
    final dateTimeDelta = newDateTime.second - lastDateTime.second;
    final newState = effectiveState.copyWith(
      lastDateTime: lastDateTime,
      dateTime: newDateTime,
      dateTimeDelta: dateTimeDelta,
    );
    emit(newState);
    _shareNewDateTime(newState);
  }

  void _shareNewDateTime(final LiveGlobalGameBlocState newState) {
    diDto.levelBloc.add(
      ConsumeTickEvent(timeDeltaInSeconds: newState.dateTimeDelta),
    );
  }

  LiveGlobalGameBlocState getLiveState() {
    final effectiveState = state;
    if (effectiveState is! LiveGlobalGameBlocState) {
      throw ArgumentError.value(effectiveState);
    }
    return effectiveState;
  }

  TemplateLevelModel getTemplateLevelById({required final LevelModelId id}) {
    final liveState = getLiveState();
    // TODO(arenukvern): handle null error
    return liveState.templateLevels.firstWhere((final level) => level.id == id);
  }
}
