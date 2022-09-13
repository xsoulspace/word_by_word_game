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
  }
  final GlobalGameBlocDiDto diDto;

  void _onInitGlobalGame(
    final InitGlobalGameEvent event,
    final Emitter<GlobalGameBlocState> emit,
  ) {
    final gameModel = event.gameModel;
    final liveGame = LiveGlobalGameBlocState.fromModel(gameModel);
    emit(liveGame);

    final index = gameModel.levels
        .indexWhere((final level) => level.id == liveGame.currentLevelId);
    if (index < 0) {
      throw ArgumentError.value(
        index,
        '_onInitGlobalGame -> find index of the current level',
        'current level is not presented in the game model.',
      );
    }
    final levelModel = gameModel.levels[index];
    add(InitGlobalGameLevelEvent(levelModel: levelModel));
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
}
