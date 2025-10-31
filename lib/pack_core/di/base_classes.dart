import 'package:word_by_word_game/common_imports.dart';

/// {@template semantic_command}
/// Base class for all business logic commands in the application.
///
/// Commands are pure business logic containers that:
/// - Execute a single business action
/// - Access dependencies through mixins
/// - Update Resources as needed
/// - Handle async operations properly
///
/// Usage example:
/// ```dart
/// class StartLevelCommand extends SemanticCommand
///     with HasGameState, HasLevelPlayers {
///   @override
///   Future<void> execute() async {
///     final currentGame = gameState.value;
///     gameState.value = currentGame.copyWith(phase: GamePhase.playing);
///   }
/// }
/// ```
/// {@endtemplate}
abstract class SemanticCommand {
  /// {@macro semantic_command}
  const SemanticCommand();

  /// Executes the command's business logic.
  ///
  /// This method should contain all the business logic for the command.
  /// It can be async and should handle errors appropriately.
  Future<void> execute();
}

/// {@template base_resource}
/// Base interface for all Resources in the application.
///
/// Resources are pure data containers that:
/// - Hold application state
/// - Have no dependencies on other Resources or Services
/// - Provide clear initialization methods
/// - Extend ValueNotifier or OrderedMapNotifier for reactivity
/// {@endtemplate}
abstract class BaseResource {
  /// {@macro base_resource}
  const BaseResource();
}

/// {@template value_resource}
/// Base class for Resources that hold a single value.
///
/// Extends ValueNotifier to provide reactive updates to the UI layer.
/// The generic type T should be an immutable data class.
///
/// Usage example:
/// ```dart
/// class GameStateResource extends ValueResource<GameStateData> {
///   GameStateResource() : super(GameStateData.initial());
/// }
/// ```
/// {@endtemplate}
abstract class ValueResource<T> extends ValueNotifier<T>
    implements BaseResource {
  /// {@macro value_resource}
  ValueResource(super.value);
}

/// {@template resource_data}
/// Base interface for all ResourceData classes.
///
/// ResourceData classes should be:
/// - Immutable (preferably using freezed)
/// - Have a copyWith method for updates
/// - Have an initial() factory constructor
/// - Be serializable if needed for persistence
/// {@endtemplate}
abstract class ResourceData {
  /// {@macro resource_data}
  const ResourceData();
}
