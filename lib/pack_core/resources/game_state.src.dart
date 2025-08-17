import 'package:word_by_word_game/common_imports.dart';
import 'package:word_by_word_game/pack_core/di/base_classes.dart';
import 'package:word_by_word_game/pack_core/resources/game_state.src.data.dart';

/// {@template game_state_resource}
/// Core game state management resource.
///
/// Holds the current game state including:
/// - Game phase (loading, playing, paused, ended)
/// - Game ID and metadata
/// - Game difficulty and settings
/// - Current level information
///
/// This Resource has no dependencies and only manages state.
/// All business logic is handled by Commands that access this Resource.
///
/// Usage:
/// ```dart
/// final gameState = Di.get<GameStateResource>();
/// gameState.value = gameState.value.copyWith(phase: GamePhase.playing);
/// ```
/// {@endtemplate}
class GameStateResource extends ValueResource<GameStateData> {
  /// {@macro game_state_resource}
  GameStateResource() : super(GameStateData.initial());

  /// Updates the game phase
  void updatePhase(final GamePhase phase) {
    value = value.copyWith(phase: phase);
  }

  /// Updates the current level
  void updateLevel(final LevelModel level) {
    value = value.copyWith(currentLevel: level);
  }

  /// Updates game difficulty
  void updateDifficulty(final GameDifficulty difficulty) {
    value = value.copyWith(difficulty: difficulty);
  }

  /// Starts a new game with given settings
  void startNewGame({
    required final GameDifficulty difficulty,
    required final LevelModel level,
  }) {
    value = GameStateData.newGame(difficulty: difficulty, level: level);
  }

  /// Ends the current game
  void endGame() {
    value = value.copyWith(phase: GamePhase.ended);
  }

  /// Pauses the current game
  void pauseGame() {
    value = value.copyWith(phase: GamePhase.paused);
  }

  /// Resumes the paused game
  void resumeGame() {
    value = value.copyWith(phase: GamePhase.playing);
  }

  /// Resets to initial state
  void reset() {
    value = GameStateData.initial();
  }
}
