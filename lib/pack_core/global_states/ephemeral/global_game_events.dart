part of 'global_game_bloc.dart';

@immutable
abstract class GameEvent extends Equatable {
  const GameEvent();
  @override
  List<Object?> get props => [];
}

@immutable
class InitGlobalGameEvent extends GameEvent {
  const InitGlobalGameEvent({
    required this.gameModel,
  });
  final GameModel gameModel;
}

@immutable
class InitGlobalGameLevelEvent extends GameEvent {
  const InitGlobalGameLevelEvent({
    required this.levelModel,
  });
  final LevelModel levelModel;
}
