import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:word_by_word_game/common_imports.dart';
import 'package:word_by_word_game/pack_core/di/base_classes.dart';

part 'game_state.src.data.freezed.dart';

/// {@template game_phase}
/// Represents the current phase of the game.
/// {@endtemplate}
enum GamePhase {
  /// Game is not started or loading
  loading,

  /// Game is actively being played
  playing,

  /// Game is paused by user
  paused,

  /// Game has ended (win/lose)
  ended,

  /// Game is in menu/setup state
  menu,
}

/// {@template game_difficulty}
/// Represents the difficulty level of the game.
/// {@endtemplate}
enum GameDifficulty {
  /// Easy difficulty
  easy,

  /// Normal difficulty
  normal,

  /// Hard difficulty
  hard,

  /// Expert difficulty
  expert,
}

extension type const GameId(String value) {
  factory GameId.generate() => GameId(const Uuid().v4());
}

/// {@template game_state_data}
/// Immutable data class holding the core game state.
///
/// This class contains all the essential information about
/// the current game session including phase, difficulty,
/// current level, and game metadata.
///
/// Following the BLoC style pattern, this data class is
/// managed by [GameStateResource] which extends ValueNotifier.
/// {@endtemplate}
@freezed
abstract class GameStateData with _$GameStateData implements ResourceData {
  /// {@macro game_state_data}
  const factory GameStateData({
    /// Current phase of the game
    required final GamePhase phase,

    /// Unique identifier for this game session
    required final GameId gameId,

    /// Difficulty level of the current game
    required final GameDifficulty difficulty,

    /// Current level being played
    final LevelModel? currentLevel,

    /// When the game session started
    final DateTime? startTime,

    /// When the game session ended
    final DateTime? endTime,

    /// Total score for this game session
    @Default(0) final int totalScore,

    /// Whether the game is currently paused
    @Default(false) final bool isPaused,
  }) = _GameStateData;

  /// Creates initial game state
  factory GameStateData.initial() => GameStateData(
    phase: GamePhase.loading,
    gameId: GameId.generate(),
    difficulty: GameDifficulty.normal,
  );

  /// Creates a new game state for starting a fresh game
  factory GameStateData.newGame({
    required final GameDifficulty difficulty,
    required final LevelModel level,
  }) => GameStateData(
    phase: GamePhase.playing,
    gameId: GameId.generate(),
    difficulty: difficulty,
    currentLevel: level,
    startTime: DateTime.now(),
  );
}

extension GameStateDataX on GameStateData {
  /// Whether the game is currently active (playing or paused)
  bool get isActive => phase == GamePhase.playing || phase == GamePhase.paused;

  /// Whether the game has started
  bool get hasStarted => startTime != null;

  /// Whether the game has ended
  bool get hasEnded => phase == GamePhase.ended;

  /// Duration of the current game session
  Duration? get gameDuration {
    if (startTime == null) return null;
    final endTimeOrNow = endTime ?? DateTime.now();
    return endTimeOrNow.difference(startTime!);
  }
}
