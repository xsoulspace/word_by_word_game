# Service Locator + Command-Resource Pattern Migration Plan

## Overview

Complete replacement of the current Provider-based DI system with a Service Locator pattern combined with Command-Resource separation. This eliminates hierarchical Provider complexity while maintaining clean separation of concerns.

## Architecture Transformation

### Current State → Target State

- **Provider Hierarchies** → **Single Di Service Locator**
- **Cubits/BLoCs** → **Commands (logic) + Resources (data)**
- **context.read()** → **Mixin-based access**
- **Complex Provider trees** → **Single MultiProvider UI bridge**

## Migration Phases

## Phase 1: Core Infrastructure ✅ (IN PROGRESS)

**Goal**: Establish the foundation for the new DI system

### 1.1 Service Locator Setup

- [x] Create `Di` facade class
- [x] Implement registration layers (4 layers)
- [x] Add `get_it` dependency
- [ ] Fix linter errors in dependency_injector.dart
- [ ] Add proper disposal mechanism

### 1.2 Base Classes

- [ ] Create `SemanticCommand` base class
- [ ] Create `Resource` base classes (ValueNotifier, OrderedMapNotifier)
- [ ] Create `ResourceData` pattern classes
- [ ] Implement mixin system for dependency access

### 1.3 Registration Order System

```dart
// Layer 1: Infrastructure
- AnalyticsService, LocalDbI, AppServerpodClient, OnlineStatusService, AdManager

// Layer 2: Data Sources & Repositories
- WbwDictionary, LevelsRepository, GameRepository, WordsRepository, AppSettingsRepository, MechanicsCollection

// Layer 3: Runtime Resources (No Dependencies)
- GameStateResource, LevelPlayersResource, TechnologiesResource, etc.

// Layer 4: Commands & Controllers
- StartLevelCommand, PlayWordCommand, EndLevelCommand, etc.
```

## Phase 2: Repository & Service Layer

**Goal**: Migrate all data access and external services

### 2.1 Infrastructure Services (Layer 1)

- [ ] Migrate `AnalyticsService` → Register in Di
- [ ] Migrate `LocalDbI` (PrefsDb) → Fix constructor and register
- [ ] Migrate `AppServerpodClient` → Register with proper lifecycle
- [ ] Migrate `OnlineStatusService` → Convert to service, register
- [ ] Migrate `AdManager` → Register with disposal

### 2.2 Data Repositories (Layer 2)

- [ ] Migrate `WbwDictionary` → Keep as ChangeNotifier service
- [ ] Migrate `LevelsRepository` → Convert to pure service
- [ ] Migrate `GameRespository` → Convert to pure service
- [ ] Migrate `WordsRespository` → Convert to pure service
- [ ] Migrate `AppSettingsRepository` → Convert to pure service
- [ ] Migrate `MechanicsCollection` → Keep as service
- [ ] Create corresponding mixins: `HasWbwDictionary`, `HasRepositories`, etc.

## Phase 3: Core Game Logic (Resources + Commands)

**Goal**: Convert main game state management from BLoCs to Resources + Commands

### 3.1 Game State Resource

**Current**: `GlobalGameBloc extends Cubit<GlobalGameBlocState>`
**Target**: `GameStateResource extends ValueNotifier<GameStateData>`

```dart
// Resource (data container - no dependencies)
class GameStateResource extends ValueNotifier<GameStateData> {
  GameStateResource() : super(GameStateData.initial());
}

// Data class (immutable)
@freezed
class GameStateData with _$GameStateData {
  const factory GameStateData({
    required GamePhase phase,
    required GameId gameId,
    required GameDifficulty difficulty,
    // ... other game state
  }) = _GameStateData;

  factory GameStateData.initial() => GameStateData(
    phase: GamePhase.loading,
    gameId: GameId.generate(),
    difficulty: GameDifficulty.normal,
  );
}

// Commands (business logic)
class StartLevelCommand extends SemanticCommand
    with HasGameState, HasLevelPlayers, HasMechanics {
  @override
  Future<void> execute() async {
    final currentGame = gameState.value;
    // Business logic here
    gameState.value = currentGame.copyWith(phase: GamePhase.playing);
  }
}
```

### 3.2 Level State Resource

**Current**: `LevelBloc extends Cubit<LevelBlocState>`
**Target**: `LevelStateResource extends ValueNotifier<LevelStateData>`

- [ ] Create `LevelStateResource` + `LevelStateData`
- [ ] Create commands: `PlayWordCommand`, `ValidateWordCommand`, `EndTurnCommand`
- [ ] Create mixin: `HasLevelState`

### 3.3 Level Players Resource

**Current**: `LevelPlayersBloc extends Cubit<LevelPlayersBlocState>`  
**Target**: `LevelPlayersResource extends OrderedMapNotifier<PlayerId, PlayerData>`

- [ ] Create `LevelPlayersResource` + `PlayerData`
- [ ] Create commands: `AddPlayerCommand`, `UpdatePlayerScoreCommand`, `SwitchPlayerCommand`
- [ ] Create mixin: `HasLevelPlayers`

### 3.4 Technologies Resource

**Current**: `TechnologiesCubit extends Cubit<TechnologiesCubitState>`
**Target**: `TechnologiesResource extends OrderedMapNotifier<TechId, TechData>`

- [ ] Create `TechnologiesResource` + `TechData`
- [ ] Create commands: `UnlockTechnologyCommand`, `UpgradeTechnologyCommand`
- [ ] Create mixin: `HasTechnologies`

## Phase 4: System State (Weather, Canvas, etc.)

**Goal**: Convert system-level state management

### 4.1 Weather Resource

**Current**: `WeatherCubit extends Cubit<WeatherCubitState>`
**Target**: `WeatherResource extends ValueNotifier<WeatherData>`

### 4.2 Canvas Resource

**Current**: `CanvasCubit extends Cubit<DrawerCubitState>`
**Target**: `CanvasResource extends ValueNotifier<CanvasData>`

### 4.3 Debug Resource

**Current**: `DebugCubit extends Cubit<DebugCubitState>`  
**Target**: `DebugResource extends ValueNotifier<DebugData>`

## Phase 5: UI-Specific State

**Goal**: Convert UI-specific notifiers and controllers

### 5.1 Dialog Management

**Current**: `DialogController extends ChangeNotifier`
**Target**: `DialogResource extends ValueNotifier<DialogData>` + `ShowDialogCommand`

### 5.2 Animation Resources

**Current**: `UiTechPointsAnimationNotifier`, `UiPowerPointsAnimationNotifier`
**Target**: `UiAnimationResource extends ValueNotifier<UiAnimationData>`

### 5.3 Keyboard Resources

**Current**: `UiKeyboardController extends ChangeNotifier`
**Target**: `KeyboardResource extends ValueNotifier<KeyboardData>`

## Phase 6: UI Bridge Consolidation

**Goal**: Replace complex Provider hierarchies with single bridge

### 6.1 Single MultiProvider Bridge

- [ ] Remove `GlobalStatesProvider` complexity
- [ ] Create single `GlobalStateProviders` with only Resources
- [ ] Remove all nested Provider hierarchies

### 6.2 Widget Migration

- [ ] Replace `context.read<LevelBloc>()` → `context.read<LevelStateResource>()`
- [ ] Replace `context.select<LevelBloc, T>()` → `context.select<LevelStateResource, T>()`
- [ ] Update all BlocListener → Listen to Resources directly

## Phase 7: Command Integration

**Goal**: Connect UI actions to Commands

### 7.1 UI Action Mapping

- [ ] Button presses → Command execution
- [ ] Form submissions → Command execution
- [ ] Game events → Command execution

### 7.2 Error Handling

- [ ] Implement command error handling
- [ ] Add command validation
- [ ] Add command logging/analytics

## Phase 8: Cleanup & Optimization

**Goal**: Remove old code and optimize new system

### 8.1 Remove Old Code

- [ ] Delete all BLoC files
- [ ] Delete complex Provider setups
- [ ] Remove unused dependencies

### 8.2 Testing

- [ ] Add unit tests for Resources
- [ ] Add unit tests for Commands
- [ ] Add integration tests for DI system

### 8.3 Documentation

- [ ] Document new patterns
- [ ] Create usage examples
- [ ] Update team guidelines

## Implementation Rules

### Resource Rules

1. **No Dependencies**: Resources cannot access other Resources or Services
2. **Immutable Data**: All ResourceData classes must be immutable with copyWith()
3. **Simple State**: Resources only hold state, no business logic
4. **Clear Initialization**: Use factory constructors like `initial()`

### Command Rules

1. **Pure Logic**: Commands contain only business logic
2. **Mixin Access**: Use mixins to access dependencies (Resources, Services)
3. **Single Responsibility**: One command per business action
4. **Async Ready**: All commands should handle async operations properly

### DI Registration Rules

1. **Layer Order**: Must register in exact order (Infrastructure → Data → Resources → Commands)
2. **Disposal**: All ChangeNotifiers must have disposal callbacks
3. **Lazy Loading**: Use registerLazySingleton for heavy objects
4. **Testing**: Provide easy mock injection points

## File Structure

```
lib/
├── pack_core/
│   ├── di/
│   │   ├── dependency_injector.dart     # Central DI setup
│   │   ├── global_initializer.dart      # Async warmup
│   │   ├── global_state_providers.dart  # UI bridge
│   │   └── MIGRATION_PLAN.md           # This file
│   ├── resources/                       # All Resources
│   │   ├── game_state.src.dart
│   │   ├── game_state.src.data.dart
│   │   ├── level_players.src.dart
│   │   └── ...
│   ├── commands/                        # All Commands
│   │   ├── start_level.cmd.dart
│   │   ├── play_word.cmd.dart
│   │   └── ...
│   └── services/                        # Pure services
│       ├── repositories/
│       └── infrastructure/
```

## Success Criteria

- [ ] Zero Provider hierarchies (except single UI bridge)
- [ ] All state in Resources (no BLoCs/Cubits)
- [ ] All business logic in Commands
- [ ] Clean mixin-based dependency access
- [ ] Full test coverage for new patterns
- [ ] Performance equal or better than current system
- [ ] Team onboarded on new patterns

## Risk Mitigation

1. **Breaking Changes**: Complete replacement means full team coordination needed
2. **Testing**: Extensive testing required due to architectural change
3. **Learning Curve**: Team needs training on new patterns
4. **Rollback Plan**: Keep current system in separate branch until migration complete

## Timeline Estimate

- **Phase 1**: 2-3 days (Infrastructure)
- **Phase 2**: 3-4 days (Repository/Service migration)
- **Phase 3**: 5-7 days (Core game logic)
- **Phase 4**: 3-4 days (System state)
- **Phase 5**: 4-5 days (UI state)
- **Phase 6**: 2-3 days (UI bridge)
- **Phase 7**: 3-4 days (Command integration)
- **Phase 8**: 2-3 days (Cleanup)

**Total**: ~25-35 days for complete migration

---

## Current Status: Phase 1 - Core Infrastructure ✅ (IN PROGRESS)

- [x] Basic DI files created
- [ ] Fix linter errors
- [ ] Complete base classes
- [ ] Implement registration system
