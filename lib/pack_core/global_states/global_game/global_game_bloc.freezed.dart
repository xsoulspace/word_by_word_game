// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'global_game_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool shouldRestartTutorial) startPlayingLevel,
    required TResult Function(LevelModel levelModel, bool isNewStart)
        initGlobalGameLevel,
    required TResult Function(PlayerProfileModel profile) deletePlayerProfile,
    required TResult Function(PlayerProfileModel profile) createPlayerProfile,
    required TResult Function(LevelPartStates loadedState) levelPartLoaded,
    required TResult Function() saveGame,
    required TResult Function() saveCurrentLevel,
    required TResult Function() characterCollision,
    required TResult Function(bool isWon, double maxDistance) endLevel,
    required TResult Function() restartLevel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool shouldRestartTutorial)? startPlayingLevel,
    TResult? Function(LevelModel levelModel, bool isNewStart)?
        initGlobalGameLevel,
    TResult? Function(PlayerProfileModel profile)? deletePlayerProfile,
    TResult? Function(PlayerProfileModel profile)? createPlayerProfile,
    TResult? Function(LevelPartStates loadedState)? levelPartLoaded,
    TResult? Function()? saveGame,
    TResult? Function()? saveCurrentLevel,
    TResult? Function()? characterCollision,
    TResult? Function(bool isWon, double maxDistance)? endLevel,
    TResult? Function()? restartLevel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool shouldRestartTutorial)? startPlayingLevel,
    TResult Function(LevelModel levelModel, bool isNewStart)?
        initGlobalGameLevel,
    TResult Function(PlayerProfileModel profile)? deletePlayerProfile,
    TResult Function(PlayerProfileModel profile)? createPlayerProfile,
    TResult Function(LevelPartStates loadedState)? levelPartLoaded,
    TResult Function()? saveGame,
    TResult Function()? saveCurrentLevel,
    TResult Function()? characterCollision,
    TResult Function(bool isWon, double maxDistance)? endLevel,
    TResult Function()? restartLevel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartPlayingLevelEvent value) startPlayingLevel,
    required TResult Function(InitGlobalGameLevelEvent value)
        initGlobalGameLevel,
    required TResult Function(DeletePlayerProfileEvent value)
        deletePlayerProfile,
    required TResult Function(CreatePlayerProfileEvent value)
        createPlayerProfile,
    required TResult Function(LevelPartLoadedEvent value) levelPartLoaded,
    required TResult Function(SaveGameEvent value) saveGame,
    required TResult Function(SaveCurrentLevelEvent value) saveCurrentLevel,
    required TResult Function(CharacterCollisionEvent value) characterCollision,
    required TResult Function(EndLevelEvent value) endLevel,
    required TResult Function(RestartLevelEvent value) restartLevel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartPlayingLevelEvent value)? startPlayingLevel,
    TResult? Function(InitGlobalGameLevelEvent value)? initGlobalGameLevel,
    TResult? Function(DeletePlayerProfileEvent value)? deletePlayerProfile,
    TResult? Function(CreatePlayerProfileEvent value)? createPlayerProfile,
    TResult? Function(LevelPartLoadedEvent value)? levelPartLoaded,
    TResult? Function(SaveGameEvent value)? saveGame,
    TResult? Function(SaveCurrentLevelEvent value)? saveCurrentLevel,
    TResult? Function(CharacterCollisionEvent value)? characterCollision,
    TResult? Function(EndLevelEvent value)? endLevel,
    TResult? Function(RestartLevelEvent value)? restartLevel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartPlayingLevelEvent value)? startPlayingLevel,
    TResult Function(InitGlobalGameLevelEvent value)? initGlobalGameLevel,
    TResult Function(DeletePlayerProfileEvent value)? deletePlayerProfile,
    TResult Function(CreatePlayerProfileEvent value)? createPlayerProfile,
    TResult Function(LevelPartLoadedEvent value)? levelPartLoaded,
    TResult Function(SaveGameEvent value)? saveGame,
    TResult Function(SaveCurrentLevelEvent value)? saveCurrentLevel,
    TResult Function(CharacterCollisionEvent value)? characterCollision,
    TResult Function(EndLevelEvent value)? endLevel,
    TResult Function(RestartLevelEvent value)? restartLevel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameEventCopyWith<$Res> {
  factory $GameEventCopyWith(GameEvent value, $Res Function(GameEvent) then) =
      _$GameEventCopyWithImpl<$Res, GameEvent>;
}

/// @nodoc
class _$GameEventCopyWithImpl<$Res, $Val extends GameEvent>
    implements $GameEventCopyWith<$Res> {
  _$GameEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartPlayingLevelEventCopyWith<$Res> {
  factory _$$StartPlayingLevelEventCopyWith(_$StartPlayingLevelEvent value,
          $Res Function(_$StartPlayingLevelEvent) then) =
      __$$StartPlayingLevelEventCopyWithImpl<$Res>;
  @useResult
  $Res call({bool shouldRestartTutorial});
}

/// @nodoc
class __$$StartPlayingLevelEventCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$StartPlayingLevelEvent>
    implements _$$StartPlayingLevelEventCopyWith<$Res> {
  __$$StartPlayingLevelEventCopyWithImpl(_$StartPlayingLevelEvent _value,
      $Res Function(_$StartPlayingLevelEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shouldRestartTutorial = null,
  }) {
    return _then(_$StartPlayingLevelEvent(
      shouldRestartTutorial: null == shouldRestartTutorial
          ? _value.shouldRestartTutorial
          : shouldRestartTutorial // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$StartPlayingLevelEvent implements StartPlayingLevelEvent {
  const _$StartPlayingLevelEvent({this.shouldRestartTutorial = true});

  @override
  @JsonKey()
  final bool shouldRestartTutorial;

  @override
  String toString() {
    return 'GameEvent.startPlayingLevel(shouldRestartTutorial: $shouldRestartTutorial)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartPlayingLevelEvent &&
            (identical(other.shouldRestartTutorial, shouldRestartTutorial) ||
                other.shouldRestartTutorial == shouldRestartTutorial));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shouldRestartTutorial);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartPlayingLevelEventCopyWith<_$StartPlayingLevelEvent> get copyWith =>
      __$$StartPlayingLevelEventCopyWithImpl<_$StartPlayingLevelEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool shouldRestartTutorial) startPlayingLevel,
    required TResult Function(LevelModel levelModel, bool isNewStart)
        initGlobalGameLevel,
    required TResult Function(PlayerProfileModel profile) deletePlayerProfile,
    required TResult Function(PlayerProfileModel profile) createPlayerProfile,
    required TResult Function(LevelPartStates loadedState) levelPartLoaded,
    required TResult Function() saveGame,
    required TResult Function() saveCurrentLevel,
    required TResult Function() characterCollision,
    required TResult Function(bool isWon, double maxDistance) endLevel,
    required TResult Function() restartLevel,
  }) {
    return startPlayingLevel(shouldRestartTutorial);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool shouldRestartTutorial)? startPlayingLevel,
    TResult? Function(LevelModel levelModel, bool isNewStart)?
        initGlobalGameLevel,
    TResult? Function(PlayerProfileModel profile)? deletePlayerProfile,
    TResult? Function(PlayerProfileModel profile)? createPlayerProfile,
    TResult? Function(LevelPartStates loadedState)? levelPartLoaded,
    TResult? Function()? saveGame,
    TResult? Function()? saveCurrentLevel,
    TResult? Function()? characterCollision,
    TResult? Function(bool isWon, double maxDistance)? endLevel,
    TResult? Function()? restartLevel,
  }) {
    return startPlayingLevel?.call(shouldRestartTutorial);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool shouldRestartTutorial)? startPlayingLevel,
    TResult Function(LevelModel levelModel, bool isNewStart)?
        initGlobalGameLevel,
    TResult Function(PlayerProfileModel profile)? deletePlayerProfile,
    TResult Function(PlayerProfileModel profile)? createPlayerProfile,
    TResult Function(LevelPartStates loadedState)? levelPartLoaded,
    TResult Function()? saveGame,
    TResult Function()? saveCurrentLevel,
    TResult Function()? characterCollision,
    TResult Function(bool isWon, double maxDistance)? endLevel,
    TResult Function()? restartLevel,
    required TResult orElse(),
  }) {
    if (startPlayingLevel != null) {
      return startPlayingLevel(shouldRestartTutorial);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartPlayingLevelEvent value) startPlayingLevel,
    required TResult Function(InitGlobalGameLevelEvent value)
        initGlobalGameLevel,
    required TResult Function(DeletePlayerProfileEvent value)
        deletePlayerProfile,
    required TResult Function(CreatePlayerProfileEvent value)
        createPlayerProfile,
    required TResult Function(LevelPartLoadedEvent value) levelPartLoaded,
    required TResult Function(SaveGameEvent value) saveGame,
    required TResult Function(SaveCurrentLevelEvent value) saveCurrentLevel,
    required TResult Function(CharacterCollisionEvent value) characterCollision,
    required TResult Function(EndLevelEvent value) endLevel,
    required TResult Function(RestartLevelEvent value) restartLevel,
  }) {
    return startPlayingLevel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartPlayingLevelEvent value)? startPlayingLevel,
    TResult? Function(InitGlobalGameLevelEvent value)? initGlobalGameLevel,
    TResult? Function(DeletePlayerProfileEvent value)? deletePlayerProfile,
    TResult? Function(CreatePlayerProfileEvent value)? createPlayerProfile,
    TResult? Function(LevelPartLoadedEvent value)? levelPartLoaded,
    TResult? Function(SaveGameEvent value)? saveGame,
    TResult? Function(SaveCurrentLevelEvent value)? saveCurrentLevel,
    TResult? Function(CharacterCollisionEvent value)? characterCollision,
    TResult? Function(EndLevelEvent value)? endLevel,
    TResult? Function(RestartLevelEvent value)? restartLevel,
  }) {
    return startPlayingLevel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartPlayingLevelEvent value)? startPlayingLevel,
    TResult Function(InitGlobalGameLevelEvent value)? initGlobalGameLevel,
    TResult Function(DeletePlayerProfileEvent value)? deletePlayerProfile,
    TResult Function(CreatePlayerProfileEvent value)? createPlayerProfile,
    TResult Function(LevelPartLoadedEvent value)? levelPartLoaded,
    TResult Function(SaveGameEvent value)? saveGame,
    TResult Function(SaveCurrentLevelEvent value)? saveCurrentLevel,
    TResult Function(CharacterCollisionEvent value)? characterCollision,
    TResult Function(EndLevelEvent value)? endLevel,
    TResult Function(RestartLevelEvent value)? restartLevel,
    required TResult orElse(),
  }) {
    if (startPlayingLevel != null) {
      return startPlayingLevel(this);
    }
    return orElse();
  }
}

abstract class StartPlayingLevelEvent implements GameEvent {
  const factory StartPlayingLevelEvent({final bool shouldRestartTutorial}) =
      _$StartPlayingLevelEvent;

  bool get shouldRestartTutorial;
  @JsonKey(ignore: true)
  _$$StartPlayingLevelEventCopyWith<_$StartPlayingLevelEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitGlobalGameLevelEventCopyWith<$Res> {
  factory _$$InitGlobalGameLevelEventCopyWith(_$InitGlobalGameLevelEvent value,
          $Res Function(_$InitGlobalGameLevelEvent) then) =
      __$$InitGlobalGameLevelEventCopyWithImpl<$Res>;
  @useResult
  $Res call({LevelModel levelModel, bool isNewStart});

  $LevelModelCopyWith<$Res> get levelModel;
}

/// @nodoc
class __$$InitGlobalGameLevelEventCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$InitGlobalGameLevelEvent>
    implements _$$InitGlobalGameLevelEventCopyWith<$Res> {
  __$$InitGlobalGameLevelEventCopyWithImpl(_$InitGlobalGameLevelEvent _value,
      $Res Function(_$InitGlobalGameLevelEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? levelModel = null,
    Object? isNewStart = null,
  }) {
    return _then(_$InitGlobalGameLevelEvent(
      levelModel: null == levelModel
          ? _value.levelModel
          : levelModel // ignore: cast_nullable_to_non_nullable
              as LevelModel,
      isNewStart: null == isNewStart
          ? _value.isNewStart
          : isNewStart // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LevelModelCopyWith<$Res> get levelModel {
    return $LevelModelCopyWith<$Res>(_value.levelModel, (value) {
      return _then(_value.copyWith(levelModel: value));
    });
  }
}

/// @nodoc

class _$InitGlobalGameLevelEvent implements InitGlobalGameLevelEvent {
  const _$InitGlobalGameLevelEvent(
      {required this.levelModel, this.isNewStart = true});

  @override
  final LevelModel levelModel;
  @override
  @JsonKey()
  final bool isNewStart;

  @override
  String toString() {
    return 'GameEvent.initGlobalGameLevel(levelModel: $levelModel, isNewStart: $isNewStart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitGlobalGameLevelEvent &&
            (identical(other.levelModel, levelModel) ||
                other.levelModel == levelModel) &&
            (identical(other.isNewStart, isNewStart) ||
                other.isNewStart == isNewStart));
  }

  @override
  int get hashCode => Object.hash(runtimeType, levelModel, isNewStart);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitGlobalGameLevelEventCopyWith<_$InitGlobalGameLevelEvent>
      get copyWith =>
          __$$InitGlobalGameLevelEventCopyWithImpl<_$InitGlobalGameLevelEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool shouldRestartTutorial) startPlayingLevel,
    required TResult Function(LevelModel levelModel, bool isNewStart)
        initGlobalGameLevel,
    required TResult Function(PlayerProfileModel profile) deletePlayerProfile,
    required TResult Function(PlayerProfileModel profile) createPlayerProfile,
    required TResult Function(LevelPartStates loadedState) levelPartLoaded,
    required TResult Function() saveGame,
    required TResult Function() saveCurrentLevel,
    required TResult Function() characterCollision,
    required TResult Function(bool isWon, double maxDistance) endLevel,
    required TResult Function() restartLevel,
  }) {
    return initGlobalGameLevel(levelModel, isNewStart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool shouldRestartTutorial)? startPlayingLevel,
    TResult? Function(LevelModel levelModel, bool isNewStart)?
        initGlobalGameLevel,
    TResult? Function(PlayerProfileModel profile)? deletePlayerProfile,
    TResult? Function(PlayerProfileModel profile)? createPlayerProfile,
    TResult? Function(LevelPartStates loadedState)? levelPartLoaded,
    TResult? Function()? saveGame,
    TResult? Function()? saveCurrentLevel,
    TResult? Function()? characterCollision,
    TResult? Function(bool isWon, double maxDistance)? endLevel,
    TResult? Function()? restartLevel,
  }) {
    return initGlobalGameLevel?.call(levelModel, isNewStart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool shouldRestartTutorial)? startPlayingLevel,
    TResult Function(LevelModel levelModel, bool isNewStart)?
        initGlobalGameLevel,
    TResult Function(PlayerProfileModel profile)? deletePlayerProfile,
    TResult Function(PlayerProfileModel profile)? createPlayerProfile,
    TResult Function(LevelPartStates loadedState)? levelPartLoaded,
    TResult Function()? saveGame,
    TResult Function()? saveCurrentLevel,
    TResult Function()? characterCollision,
    TResult Function(bool isWon, double maxDistance)? endLevel,
    TResult Function()? restartLevel,
    required TResult orElse(),
  }) {
    if (initGlobalGameLevel != null) {
      return initGlobalGameLevel(levelModel, isNewStart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartPlayingLevelEvent value) startPlayingLevel,
    required TResult Function(InitGlobalGameLevelEvent value)
        initGlobalGameLevel,
    required TResult Function(DeletePlayerProfileEvent value)
        deletePlayerProfile,
    required TResult Function(CreatePlayerProfileEvent value)
        createPlayerProfile,
    required TResult Function(LevelPartLoadedEvent value) levelPartLoaded,
    required TResult Function(SaveGameEvent value) saveGame,
    required TResult Function(SaveCurrentLevelEvent value) saveCurrentLevel,
    required TResult Function(CharacterCollisionEvent value) characterCollision,
    required TResult Function(EndLevelEvent value) endLevel,
    required TResult Function(RestartLevelEvent value) restartLevel,
  }) {
    return initGlobalGameLevel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartPlayingLevelEvent value)? startPlayingLevel,
    TResult? Function(InitGlobalGameLevelEvent value)? initGlobalGameLevel,
    TResult? Function(DeletePlayerProfileEvent value)? deletePlayerProfile,
    TResult? Function(CreatePlayerProfileEvent value)? createPlayerProfile,
    TResult? Function(LevelPartLoadedEvent value)? levelPartLoaded,
    TResult? Function(SaveGameEvent value)? saveGame,
    TResult? Function(SaveCurrentLevelEvent value)? saveCurrentLevel,
    TResult? Function(CharacterCollisionEvent value)? characterCollision,
    TResult? Function(EndLevelEvent value)? endLevel,
    TResult? Function(RestartLevelEvent value)? restartLevel,
  }) {
    return initGlobalGameLevel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartPlayingLevelEvent value)? startPlayingLevel,
    TResult Function(InitGlobalGameLevelEvent value)? initGlobalGameLevel,
    TResult Function(DeletePlayerProfileEvent value)? deletePlayerProfile,
    TResult Function(CreatePlayerProfileEvent value)? createPlayerProfile,
    TResult Function(LevelPartLoadedEvent value)? levelPartLoaded,
    TResult Function(SaveGameEvent value)? saveGame,
    TResult Function(SaveCurrentLevelEvent value)? saveCurrentLevel,
    TResult Function(CharacterCollisionEvent value)? characterCollision,
    TResult Function(EndLevelEvent value)? endLevel,
    TResult Function(RestartLevelEvent value)? restartLevel,
    required TResult orElse(),
  }) {
    if (initGlobalGameLevel != null) {
      return initGlobalGameLevel(this);
    }
    return orElse();
  }
}

abstract class InitGlobalGameLevelEvent implements GameEvent {
  const factory InitGlobalGameLevelEvent(
      {required final LevelModel levelModel,
      final bool isNewStart}) = _$InitGlobalGameLevelEvent;

  LevelModel get levelModel;
  bool get isNewStart;
  @JsonKey(ignore: true)
  _$$InitGlobalGameLevelEventCopyWith<_$InitGlobalGameLevelEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletePlayerProfileEventCopyWith<$Res> {
  factory _$$DeletePlayerProfileEventCopyWith(_$DeletePlayerProfileEvent value,
          $Res Function(_$DeletePlayerProfileEvent) then) =
      __$$DeletePlayerProfileEventCopyWithImpl<$Res>;
  @useResult
  $Res call({PlayerProfileModel profile});

  $PlayerProfileModelCopyWith<$Res> get profile;
}

/// @nodoc
class __$$DeletePlayerProfileEventCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$DeletePlayerProfileEvent>
    implements _$$DeletePlayerProfileEventCopyWith<$Res> {
  __$$DeletePlayerProfileEventCopyWithImpl(_$DeletePlayerProfileEvent _value,
      $Res Function(_$DeletePlayerProfileEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$DeletePlayerProfileEvent(
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as PlayerProfileModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PlayerProfileModelCopyWith<$Res> get profile {
    return $PlayerProfileModelCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc

class _$DeletePlayerProfileEvent implements DeletePlayerProfileEvent {
  const _$DeletePlayerProfileEvent({required this.profile});

  @override
  final PlayerProfileModel profile;

  @override
  String toString() {
    return 'GameEvent.deletePlayerProfile(profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletePlayerProfileEvent &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletePlayerProfileEventCopyWith<_$DeletePlayerProfileEvent>
      get copyWith =>
          __$$DeletePlayerProfileEventCopyWithImpl<_$DeletePlayerProfileEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool shouldRestartTutorial) startPlayingLevel,
    required TResult Function(LevelModel levelModel, bool isNewStart)
        initGlobalGameLevel,
    required TResult Function(PlayerProfileModel profile) deletePlayerProfile,
    required TResult Function(PlayerProfileModel profile) createPlayerProfile,
    required TResult Function(LevelPartStates loadedState) levelPartLoaded,
    required TResult Function() saveGame,
    required TResult Function() saveCurrentLevel,
    required TResult Function() characterCollision,
    required TResult Function(bool isWon, double maxDistance) endLevel,
    required TResult Function() restartLevel,
  }) {
    return deletePlayerProfile(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool shouldRestartTutorial)? startPlayingLevel,
    TResult? Function(LevelModel levelModel, bool isNewStart)?
        initGlobalGameLevel,
    TResult? Function(PlayerProfileModel profile)? deletePlayerProfile,
    TResult? Function(PlayerProfileModel profile)? createPlayerProfile,
    TResult? Function(LevelPartStates loadedState)? levelPartLoaded,
    TResult? Function()? saveGame,
    TResult? Function()? saveCurrentLevel,
    TResult? Function()? characterCollision,
    TResult? Function(bool isWon, double maxDistance)? endLevel,
    TResult? Function()? restartLevel,
  }) {
    return deletePlayerProfile?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool shouldRestartTutorial)? startPlayingLevel,
    TResult Function(LevelModel levelModel, bool isNewStart)?
        initGlobalGameLevel,
    TResult Function(PlayerProfileModel profile)? deletePlayerProfile,
    TResult Function(PlayerProfileModel profile)? createPlayerProfile,
    TResult Function(LevelPartStates loadedState)? levelPartLoaded,
    TResult Function()? saveGame,
    TResult Function()? saveCurrentLevel,
    TResult Function()? characterCollision,
    TResult Function(bool isWon, double maxDistance)? endLevel,
    TResult Function()? restartLevel,
    required TResult orElse(),
  }) {
    if (deletePlayerProfile != null) {
      return deletePlayerProfile(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartPlayingLevelEvent value) startPlayingLevel,
    required TResult Function(InitGlobalGameLevelEvent value)
        initGlobalGameLevel,
    required TResult Function(DeletePlayerProfileEvent value)
        deletePlayerProfile,
    required TResult Function(CreatePlayerProfileEvent value)
        createPlayerProfile,
    required TResult Function(LevelPartLoadedEvent value) levelPartLoaded,
    required TResult Function(SaveGameEvent value) saveGame,
    required TResult Function(SaveCurrentLevelEvent value) saveCurrentLevel,
    required TResult Function(CharacterCollisionEvent value) characterCollision,
    required TResult Function(EndLevelEvent value) endLevel,
    required TResult Function(RestartLevelEvent value) restartLevel,
  }) {
    return deletePlayerProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartPlayingLevelEvent value)? startPlayingLevel,
    TResult? Function(InitGlobalGameLevelEvent value)? initGlobalGameLevel,
    TResult? Function(DeletePlayerProfileEvent value)? deletePlayerProfile,
    TResult? Function(CreatePlayerProfileEvent value)? createPlayerProfile,
    TResult? Function(LevelPartLoadedEvent value)? levelPartLoaded,
    TResult? Function(SaveGameEvent value)? saveGame,
    TResult? Function(SaveCurrentLevelEvent value)? saveCurrentLevel,
    TResult? Function(CharacterCollisionEvent value)? characterCollision,
    TResult? Function(EndLevelEvent value)? endLevel,
    TResult? Function(RestartLevelEvent value)? restartLevel,
  }) {
    return deletePlayerProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartPlayingLevelEvent value)? startPlayingLevel,
    TResult Function(InitGlobalGameLevelEvent value)? initGlobalGameLevel,
    TResult Function(DeletePlayerProfileEvent value)? deletePlayerProfile,
    TResult Function(CreatePlayerProfileEvent value)? createPlayerProfile,
    TResult Function(LevelPartLoadedEvent value)? levelPartLoaded,
    TResult Function(SaveGameEvent value)? saveGame,
    TResult Function(SaveCurrentLevelEvent value)? saveCurrentLevel,
    TResult Function(CharacterCollisionEvent value)? characterCollision,
    TResult Function(EndLevelEvent value)? endLevel,
    TResult Function(RestartLevelEvent value)? restartLevel,
    required TResult orElse(),
  }) {
    if (deletePlayerProfile != null) {
      return deletePlayerProfile(this);
    }
    return orElse();
  }
}

abstract class DeletePlayerProfileEvent implements GameEvent {
  const factory DeletePlayerProfileEvent(
      {required final PlayerProfileModel profile}) = _$DeletePlayerProfileEvent;

  PlayerProfileModel get profile;
  @JsonKey(ignore: true)
  _$$DeletePlayerProfileEventCopyWith<_$DeletePlayerProfileEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreatePlayerProfileEventCopyWith<$Res> {
  factory _$$CreatePlayerProfileEventCopyWith(_$CreatePlayerProfileEvent value,
          $Res Function(_$CreatePlayerProfileEvent) then) =
      __$$CreatePlayerProfileEventCopyWithImpl<$Res>;
  @useResult
  $Res call({PlayerProfileModel profile});

  $PlayerProfileModelCopyWith<$Res> get profile;
}

/// @nodoc
class __$$CreatePlayerProfileEventCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$CreatePlayerProfileEvent>
    implements _$$CreatePlayerProfileEventCopyWith<$Res> {
  __$$CreatePlayerProfileEventCopyWithImpl(_$CreatePlayerProfileEvent _value,
      $Res Function(_$CreatePlayerProfileEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$CreatePlayerProfileEvent(
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as PlayerProfileModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PlayerProfileModelCopyWith<$Res> get profile {
    return $PlayerProfileModelCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc

class _$CreatePlayerProfileEvent implements CreatePlayerProfileEvent {
  const _$CreatePlayerProfileEvent({required this.profile});

  @override
  final PlayerProfileModel profile;

  @override
  String toString() {
    return 'GameEvent.createPlayerProfile(profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePlayerProfileEvent &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePlayerProfileEventCopyWith<_$CreatePlayerProfileEvent>
      get copyWith =>
          __$$CreatePlayerProfileEventCopyWithImpl<_$CreatePlayerProfileEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool shouldRestartTutorial) startPlayingLevel,
    required TResult Function(LevelModel levelModel, bool isNewStart)
        initGlobalGameLevel,
    required TResult Function(PlayerProfileModel profile) deletePlayerProfile,
    required TResult Function(PlayerProfileModel profile) createPlayerProfile,
    required TResult Function(LevelPartStates loadedState) levelPartLoaded,
    required TResult Function() saveGame,
    required TResult Function() saveCurrentLevel,
    required TResult Function() characterCollision,
    required TResult Function(bool isWon, double maxDistance) endLevel,
    required TResult Function() restartLevel,
  }) {
    return createPlayerProfile(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool shouldRestartTutorial)? startPlayingLevel,
    TResult? Function(LevelModel levelModel, bool isNewStart)?
        initGlobalGameLevel,
    TResult? Function(PlayerProfileModel profile)? deletePlayerProfile,
    TResult? Function(PlayerProfileModel profile)? createPlayerProfile,
    TResult? Function(LevelPartStates loadedState)? levelPartLoaded,
    TResult? Function()? saveGame,
    TResult? Function()? saveCurrentLevel,
    TResult? Function()? characterCollision,
    TResult? Function(bool isWon, double maxDistance)? endLevel,
    TResult? Function()? restartLevel,
  }) {
    return createPlayerProfile?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool shouldRestartTutorial)? startPlayingLevel,
    TResult Function(LevelModel levelModel, bool isNewStart)?
        initGlobalGameLevel,
    TResult Function(PlayerProfileModel profile)? deletePlayerProfile,
    TResult Function(PlayerProfileModel profile)? createPlayerProfile,
    TResult Function(LevelPartStates loadedState)? levelPartLoaded,
    TResult Function()? saveGame,
    TResult Function()? saveCurrentLevel,
    TResult Function()? characterCollision,
    TResult Function(bool isWon, double maxDistance)? endLevel,
    TResult Function()? restartLevel,
    required TResult orElse(),
  }) {
    if (createPlayerProfile != null) {
      return createPlayerProfile(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartPlayingLevelEvent value) startPlayingLevel,
    required TResult Function(InitGlobalGameLevelEvent value)
        initGlobalGameLevel,
    required TResult Function(DeletePlayerProfileEvent value)
        deletePlayerProfile,
    required TResult Function(CreatePlayerProfileEvent value)
        createPlayerProfile,
    required TResult Function(LevelPartLoadedEvent value) levelPartLoaded,
    required TResult Function(SaveGameEvent value) saveGame,
    required TResult Function(SaveCurrentLevelEvent value) saveCurrentLevel,
    required TResult Function(CharacterCollisionEvent value) characterCollision,
    required TResult Function(EndLevelEvent value) endLevel,
    required TResult Function(RestartLevelEvent value) restartLevel,
  }) {
    return createPlayerProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartPlayingLevelEvent value)? startPlayingLevel,
    TResult? Function(InitGlobalGameLevelEvent value)? initGlobalGameLevel,
    TResult? Function(DeletePlayerProfileEvent value)? deletePlayerProfile,
    TResult? Function(CreatePlayerProfileEvent value)? createPlayerProfile,
    TResult? Function(LevelPartLoadedEvent value)? levelPartLoaded,
    TResult? Function(SaveGameEvent value)? saveGame,
    TResult? Function(SaveCurrentLevelEvent value)? saveCurrentLevel,
    TResult? Function(CharacterCollisionEvent value)? characterCollision,
    TResult? Function(EndLevelEvent value)? endLevel,
    TResult? Function(RestartLevelEvent value)? restartLevel,
  }) {
    return createPlayerProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartPlayingLevelEvent value)? startPlayingLevel,
    TResult Function(InitGlobalGameLevelEvent value)? initGlobalGameLevel,
    TResult Function(DeletePlayerProfileEvent value)? deletePlayerProfile,
    TResult Function(CreatePlayerProfileEvent value)? createPlayerProfile,
    TResult Function(LevelPartLoadedEvent value)? levelPartLoaded,
    TResult Function(SaveGameEvent value)? saveGame,
    TResult Function(SaveCurrentLevelEvent value)? saveCurrentLevel,
    TResult Function(CharacterCollisionEvent value)? characterCollision,
    TResult Function(EndLevelEvent value)? endLevel,
    TResult Function(RestartLevelEvent value)? restartLevel,
    required TResult orElse(),
  }) {
    if (createPlayerProfile != null) {
      return createPlayerProfile(this);
    }
    return orElse();
  }
}

abstract class CreatePlayerProfileEvent implements GameEvent {
  const factory CreatePlayerProfileEvent(
      {required final PlayerProfileModel profile}) = _$CreatePlayerProfileEvent;

  PlayerProfileModel get profile;
  @JsonKey(ignore: true)
  _$$CreatePlayerProfileEventCopyWith<_$CreatePlayerProfileEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LevelPartLoadedEventCopyWith<$Res> {
  factory _$$LevelPartLoadedEventCopyWith(_$LevelPartLoadedEvent value,
          $Res Function(_$LevelPartLoadedEvent) then) =
      __$$LevelPartLoadedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({LevelPartStates loadedState});
}

/// @nodoc
class __$$LevelPartLoadedEventCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$LevelPartLoadedEvent>
    implements _$$LevelPartLoadedEventCopyWith<$Res> {
  __$$LevelPartLoadedEventCopyWithImpl(_$LevelPartLoadedEvent _value,
      $Res Function(_$LevelPartLoadedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadedState = null,
  }) {
    return _then(_$LevelPartLoadedEvent(
      loadedState: null == loadedState
          ? _value.loadedState
          : loadedState // ignore: cast_nullable_to_non_nullable
              as LevelPartStates,
    ));
  }
}

/// @nodoc

class _$LevelPartLoadedEvent implements LevelPartLoadedEvent {
  const _$LevelPartLoadedEvent({required this.loadedState});

  @override
  final LevelPartStates loadedState;

  @override
  String toString() {
    return 'GameEvent.levelPartLoaded(loadedState: $loadedState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LevelPartLoadedEvent &&
            (identical(other.loadedState, loadedState) ||
                other.loadedState == loadedState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loadedState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LevelPartLoadedEventCopyWith<_$LevelPartLoadedEvent> get copyWith =>
      __$$LevelPartLoadedEventCopyWithImpl<_$LevelPartLoadedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool shouldRestartTutorial) startPlayingLevel,
    required TResult Function(LevelModel levelModel, bool isNewStart)
        initGlobalGameLevel,
    required TResult Function(PlayerProfileModel profile) deletePlayerProfile,
    required TResult Function(PlayerProfileModel profile) createPlayerProfile,
    required TResult Function(LevelPartStates loadedState) levelPartLoaded,
    required TResult Function() saveGame,
    required TResult Function() saveCurrentLevel,
    required TResult Function() characterCollision,
    required TResult Function(bool isWon, double maxDistance) endLevel,
    required TResult Function() restartLevel,
  }) {
    return levelPartLoaded(loadedState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool shouldRestartTutorial)? startPlayingLevel,
    TResult? Function(LevelModel levelModel, bool isNewStart)?
        initGlobalGameLevel,
    TResult? Function(PlayerProfileModel profile)? deletePlayerProfile,
    TResult? Function(PlayerProfileModel profile)? createPlayerProfile,
    TResult? Function(LevelPartStates loadedState)? levelPartLoaded,
    TResult? Function()? saveGame,
    TResult? Function()? saveCurrentLevel,
    TResult? Function()? characterCollision,
    TResult? Function(bool isWon, double maxDistance)? endLevel,
    TResult? Function()? restartLevel,
  }) {
    return levelPartLoaded?.call(loadedState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool shouldRestartTutorial)? startPlayingLevel,
    TResult Function(LevelModel levelModel, bool isNewStart)?
        initGlobalGameLevel,
    TResult Function(PlayerProfileModel profile)? deletePlayerProfile,
    TResult Function(PlayerProfileModel profile)? createPlayerProfile,
    TResult Function(LevelPartStates loadedState)? levelPartLoaded,
    TResult Function()? saveGame,
    TResult Function()? saveCurrentLevel,
    TResult Function()? characterCollision,
    TResult Function(bool isWon, double maxDistance)? endLevel,
    TResult Function()? restartLevel,
    required TResult orElse(),
  }) {
    if (levelPartLoaded != null) {
      return levelPartLoaded(loadedState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartPlayingLevelEvent value) startPlayingLevel,
    required TResult Function(InitGlobalGameLevelEvent value)
        initGlobalGameLevel,
    required TResult Function(DeletePlayerProfileEvent value)
        deletePlayerProfile,
    required TResult Function(CreatePlayerProfileEvent value)
        createPlayerProfile,
    required TResult Function(LevelPartLoadedEvent value) levelPartLoaded,
    required TResult Function(SaveGameEvent value) saveGame,
    required TResult Function(SaveCurrentLevelEvent value) saveCurrentLevel,
    required TResult Function(CharacterCollisionEvent value) characterCollision,
    required TResult Function(EndLevelEvent value) endLevel,
    required TResult Function(RestartLevelEvent value) restartLevel,
  }) {
    return levelPartLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartPlayingLevelEvent value)? startPlayingLevel,
    TResult? Function(InitGlobalGameLevelEvent value)? initGlobalGameLevel,
    TResult? Function(DeletePlayerProfileEvent value)? deletePlayerProfile,
    TResult? Function(CreatePlayerProfileEvent value)? createPlayerProfile,
    TResult? Function(LevelPartLoadedEvent value)? levelPartLoaded,
    TResult? Function(SaveGameEvent value)? saveGame,
    TResult? Function(SaveCurrentLevelEvent value)? saveCurrentLevel,
    TResult? Function(CharacterCollisionEvent value)? characterCollision,
    TResult? Function(EndLevelEvent value)? endLevel,
    TResult? Function(RestartLevelEvent value)? restartLevel,
  }) {
    return levelPartLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartPlayingLevelEvent value)? startPlayingLevel,
    TResult Function(InitGlobalGameLevelEvent value)? initGlobalGameLevel,
    TResult Function(DeletePlayerProfileEvent value)? deletePlayerProfile,
    TResult Function(CreatePlayerProfileEvent value)? createPlayerProfile,
    TResult Function(LevelPartLoadedEvent value)? levelPartLoaded,
    TResult Function(SaveGameEvent value)? saveGame,
    TResult Function(SaveCurrentLevelEvent value)? saveCurrentLevel,
    TResult Function(CharacterCollisionEvent value)? characterCollision,
    TResult Function(EndLevelEvent value)? endLevel,
    TResult Function(RestartLevelEvent value)? restartLevel,
    required TResult orElse(),
  }) {
    if (levelPartLoaded != null) {
      return levelPartLoaded(this);
    }
    return orElse();
  }
}

abstract class LevelPartLoadedEvent implements GameEvent {
  const factory LevelPartLoadedEvent(
      {required final LevelPartStates loadedState}) = _$LevelPartLoadedEvent;

  LevelPartStates get loadedState;
  @JsonKey(ignore: true)
  _$$LevelPartLoadedEventCopyWith<_$LevelPartLoadedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveGameEventCopyWith<$Res> {
  factory _$$SaveGameEventCopyWith(
          _$SaveGameEvent value, $Res Function(_$SaveGameEvent) then) =
      __$$SaveGameEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveGameEventCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$SaveGameEvent>
    implements _$$SaveGameEventCopyWith<$Res> {
  __$$SaveGameEventCopyWithImpl(
      _$SaveGameEvent _value, $Res Function(_$SaveGameEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SaveGameEvent implements SaveGameEvent {
  const _$SaveGameEvent();

  @override
  String toString() {
    return 'GameEvent.saveGame()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SaveGameEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool shouldRestartTutorial) startPlayingLevel,
    required TResult Function(LevelModel levelModel, bool isNewStart)
        initGlobalGameLevel,
    required TResult Function(PlayerProfileModel profile) deletePlayerProfile,
    required TResult Function(PlayerProfileModel profile) createPlayerProfile,
    required TResult Function(LevelPartStates loadedState) levelPartLoaded,
    required TResult Function() saveGame,
    required TResult Function() saveCurrentLevel,
    required TResult Function() characterCollision,
    required TResult Function(bool isWon, double maxDistance) endLevel,
    required TResult Function() restartLevel,
  }) {
    return saveGame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool shouldRestartTutorial)? startPlayingLevel,
    TResult? Function(LevelModel levelModel, bool isNewStart)?
        initGlobalGameLevel,
    TResult? Function(PlayerProfileModel profile)? deletePlayerProfile,
    TResult? Function(PlayerProfileModel profile)? createPlayerProfile,
    TResult? Function(LevelPartStates loadedState)? levelPartLoaded,
    TResult? Function()? saveGame,
    TResult? Function()? saveCurrentLevel,
    TResult? Function()? characterCollision,
    TResult? Function(bool isWon, double maxDistance)? endLevel,
    TResult? Function()? restartLevel,
  }) {
    return saveGame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool shouldRestartTutorial)? startPlayingLevel,
    TResult Function(LevelModel levelModel, bool isNewStart)?
        initGlobalGameLevel,
    TResult Function(PlayerProfileModel profile)? deletePlayerProfile,
    TResult Function(PlayerProfileModel profile)? createPlayerProfile,
    TResult Function(LevelPartStates loadedState)? levelPartLoaded,
    TResult Function()? saveGame,
    TResult Function()? saveCurrentLevel,
    TResult Function()? characterCollision,
    TResult Function(bool isWon, double maxDistance)? endLevel,
    TResult Function()? restartLevel,
    required TResult orElse(),
  }) {
    if (saveGame != null) {
      return saveGame();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartPlayingLevelEvent value) startPlayingLevel,
    required TResult Function(InitGlobalGameLevelEvent value)
        initGlobalGameLevel,
    required TResult Function(DeletePlayerProfileEvent value)
        deletePlayerProfile,
    required TResult Function(CreatePlayerProfileEvent value)
        createPlayerProfile,
    required TResult Function(LevelPartLoadedEvent value) levelPartLoaded,
    required TResult Function(SaveGameEvent value) saveGame,
    required TResult Function(SaveCurrentLevelEvent value) saveCurrentLevel,
    required TResult Function(CharacterCollisionEvent value) characterCollision,
    required TResult Function(EndLevelEvent value) endLevel,
    required TResult Function(RestartLevelEvent value) restartLevel,
  }) {
    return saveGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartPlayingLevelEvent value)? startPlayingLevel,
    TResult? Function(InitGlobalGameLevelEvent value)? initGlobalGameLevel,
    TResult? Function(DeletePlayerProfileEvent value)? deletePlayerProfile,
    TResult? Function(CreatePlayerProfileEvent value)? createPlayerProfile,
    TResult? Function(LevelPartLoadedEvent value)? levelPartLoaded,
    TResult? Function(SaveGameEvent value)? saveGame,
    TResult? Function(SaveCurrentLevelEvent value)? saveCurrentLevel,
    TResult? Function(CharacterCollisionEvent value)? characterCollision,
    TResult? Function(EndLevelEvent value)? endLevel,
    TResult? Function(RestartLevelEvent value)? restartLevel,
  }) {
    return saveGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartPlayingLevelEvent value)? startPlayingLevel,
    TResult Function(InitGlobalGameLevelEvent value)? initGlobalGameLevel,
    TResult Function(DeletePlayerProfileEvent value)? deletePlayerProfile,
    TResult Function(CreatePlayerProfileEvent value)? createPlayerProfile,
    TResult Function(LevelPartLoadedEvent value)? levelPartLoaded,
    TResult Function(SaveGameEvent value)? saveGame,
    TResult Function(SaveCurrentLevelEvent value)? saveCurrentLevel,
    TResult Function(CharacterCollisionEvent value)? characterCollision,
    TResult Function(EndLevelEvent value)? endLevel,
    TResult Function(RestartLevelEvent value)? restartLevel,
    required TResult orElse(),
  }) {
    if (saveGame != null) {
      return saveGame(this);
    }
    return orElse();
  }
}

abstract class SaveGameEvent implements GameEvent {
  const factory SaveGameEvent() = _$SaveGameEvent;
}

/// @nodoc
abstract class _$$SaveCurrentLevelEventCopyWith<$Res> {
  factory _$$SaveCurrentLevelEventCopyWith(_$SaveCurrentLevelEvent value,
          $Res Function(_$SaveCurrentLevelEvent) then) =
      __$$SaveCurrentLevelEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveCurrentLevelEventCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$SaveCurrentLevelEvent>
    implements _$$SaveCurrentLevelEventCopyWith<$Res> {
  __$$SaveCurrentLevelEventCopyWithImpl(_$SaveCurrentLevelEvent _value,
      $Res Function(_$SaveCurrentLevelEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SaveCurrentLevelEvent implements SaveCurrentLevelEvent {
  const _$SaveCurrentLevelEvent();

  @override
  String toString() {
    return 'GameEvent.saveCurrentLevel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SaveCurrentLevelEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool shouldRestartTutorial) startPlayingLevel,
    required TResult Function(LevelModel levelModel, bool isNewStart)
        initGlobalGameLevel,
    required TResult Function(PlayerProfileModel profile) deletePlayerProfile,
    required TResult Function(PlayerProfileModel profile) createPlayerProfile,
    required TResult Function(LevelPartStates loadedState) levelPartLoaded,
    required TResult Function() saveGame,
    required TResult Function() saveCurrentLevel,
    required TResult Function() characterCollision,
    required TResult Function(bool isWon, double maxDistance) endLevel,
    required TResult Function() restartLevel,
  }) {
    return saveCurrentLevel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool shouldRestartTutorial)? startPlayingLevel,
    TResult? Function(LevelModel levelModel, bool isNewStart)?
        initGlobalGameLevel,
    TResult? Function(PlayerProfileModel profile)? deletePlayerProfile,
    TResult? Function(PlayerProfileModel profile)? createPlayerProfile,
    TResult? Function(LevelPartStates loadedState)? levelPartLoaded,
    TResult? Function()? saveGame,
    TResult? Function()? saveCurrentLevel,
    TResult? Function()? characterCollision,
    TResult? Function(bool isWon, double maxDistance)? endLevel,
    TResult? Function()? restartLevel,
  }) {
    return saveCurrentLevel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool shouldRestartTutorial)? startPlayingLevel,
    TResult Function(LevelModel levelModel, bool isNewStart)?
        initGlobalGameLevel,
    TResult Function(PlayerProfileModel profile)? deletePlayerProfile,
    TResult Function(PlayerProfileModel profile)? createPlayerProfile,
    TResult Function(LevelPartStates loadedState)? levelPartLoaded,
    TResult Function()? saveGame,
    TResult Function()? saveCurrentLevel,
    TResult Function()? characterCollision,
    TResult Function(bool isWon, double maxDistance)? endLevel,
    TResult Function()? restartLevel,
    required TResult orElse(),
  }) {
    if (saveCurrentLevel != null) {
      return saveCurrentLevel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartPlayingLevelEvent value) startPlayingLevel,
    required TResult Function(InitGlobalGameLevelEvent value)
        initGlobalGameLevel,
    required TResult Function(DeletePlayerProfileEvent value)
        deletePlayerProfile,
    required TResult Function(CreatePlayerProfileEvent value)
        createPlayerProfile,
    required TResult Function(LevelPartLoadedEvent value) levelPartLoaded,
    required TResult Function(SaveGameEvent value) saveGame,
    required TResult Function(SaveCurrentLevelEvent value) saveCurrentLevel,
    required TResult Function(CharacterCollisionEvent value) characterCollision,
    required TResult Function(EndLevelEvent value) endLevel,
    required TResult Function(RestartLevelEvent value) restartLevel,
  }) {
    return saveCurrentLevel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartPlayingLevelEvent value)? startPlayingLevel,
    TResult? Function(InitGlobalGameLevelEvent value)? initGlobalGameLevel,
    TResult? Function(DeletePlayerProfileEvent value)? deletePlayerProfile,
    TResult? Function(CreatePlayerProfileEvent value)? createPlayerProfile,
    TResult? Function(LevelPartLoadedEvent value)? levelPartLoaded,
    TResult? Function(SaveGameEvent value)? saveGame,
    TResult? Function(SaveCurrentLevelEvent value)? saveCurrentLevel,
    TResult? Function(CharacterCollisionEvent value)? characterCollision,
    TResult? Function(EndLevelEvent value)? endLevel,
    TResult? Function(RestartLevelEvent value)? restartLevel,
  }) {
    return saveCurrentLevel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartPlayingLevelEvent value)? startPlayingLevel,
    TResult Function(InitGlobalGameLevelEvent value)? initGlobalGameLevel,
    TResult Function(DeletePlayerProfileEvent value)? deletePlayerProfile,
    TResult Function(CreatePlayerProfileEvent value)? createPlayerProfile,
    TResult Function(LevelPartLoadedEvent value)? levelPartLoaded,
    TResult Function(SaveGameEvent value)? saveGame,
    TResult Function(SaveCurrentLevelEvent value)? saveCurrentLevel,
    TResult Function(CharacterCollisionEvent value)? characterCollision,
    TResult Function(EndLevelEvent value)? endLevel,
    TResult Function(RestartLevelEvent value)? restartLevel,
    required TResult orElse(),
  }) {
    if (saveCurrentLevel != null) {
      return saveCurrentLevel(this);
    }
    return orElse();
  }
}

abstract class SaveCurrentLevelEvent implements GameEvent {
  const factory SaveCurrentLevelEvent() = _$SaveCurrentLevelEvent;
}

/// @nodoc
abstract class _$$CharacterCollisionEventCopyWith<$Res> {
  factory _$$CharacterCollisionEventCopyWith(_$CharacterCollisionEvent value,
          $Res Function(_$CharacterCollisionEvent) then) =
      __$$CharacterCollisionEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterCollisionEventCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$CharacterCollisionEvent>
    implements _$$CharacterCollisionEventCopyWith<$Res> {
  __$$CharacterCollisionEventCopyWithImpl(_$CharacterCollisionEvent _value,
      $Res Function(_$CharacterCollisionEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharacterCollisionEvent implements CharacterCollisionEvent {
  const _$CharacterCollisionEvent();

  @override
  String toString() {
    return 'GameEvent.characterCollision()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterCollisionEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool shouldRestartTutorial) startPlayingLevel,
    required TResult Function(LevelModel levelModel, bool isNewStart)
        initGlobalGameLevel,
    required TResult Function(PlayerProfileModel profile) deletePlayerProfile,
    required TResult Function(PlayerProfileModel profile) createPlayerProfile,
    required TResult Function(LevelPartStates loadedState) levelPartLoaded,
    required TResult Function() saveGame,
    required TResult Function() saveCurrentLevel,
    required TResult Function() characterCollision,
    required TResult Function(bool isWon, double maxDistance) endLevel,
    required TResult Function() restartLevel,
  }) {
    return characterCollision();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool shouldRestartTutorial)? startPlayingLevel,
    TResult? Function(LevelModel levelModel, bool isNewStart)?
        initGlobalGameLevel,
    TResult? Function(PlayerProfileModel profile)? deletePlayerProfile,
    TResult? Function(PlayerProfileModel profile)? createPlayerProfile,
    TResult? Function(LevelPartStates loadedState)? levelPartLoaded,
    TResult? Function()? saveGame,
    TResult? Function()? saveCurrentLevel,
    TResult? Function()? characterCollision,
    TResult? Function(bool isWon, double maxDistance)? endLevel,
    TResult? Function()? restartLevel,
  }) {
    return characterCollision?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool shouldRestartTutorial)? startPlayingLevel,
    TResult Function(LevelModel levelModel, bool isNewStart)?
        initGlobalGameLevel,
    TResult Function(PlayerProfileModel profile)? deletePlayerProfile,
    TResult Function(PlayerProfileModel profile)? createPlayerProfile,
    TResult Function(LevelPartStates loadedState)? levelPartLoaded,
    TResult Function()? saveGame,
    TResult Function()? saveCurrentLevel,
    TResult Function()? characterCollision,
    TResult Function(bool isWon, double maxDistance)? endLevel,
    TResult Function()? restartLevel,
    required TResult orElse(),
  }) {
    if (characterCollision != null) {
      return characterCollision();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartPlayingLevelEvent value) startPlayingLevel,
    required TResult Function(InitGlobalGameLevelEvent value)
        initGlobalGameLevel,
    required TResult Function(DeletePlayerProfileEvent value)
        deletePlayerProfile,
    required TResult Function(CreatePlayerProfileEvent value)
        createPlayerProfile,
    required TResult Function(LevelPartLoadedEvent value) levelPartLoaded,
    required TResult Function(SaveGameEvent value) saveGame,
    required TResult Function(SaveCurrentLevelEvent value) saveCurrentLevel,
    required TResult Function(CharacterCollisionEvent value) characterCollision,
    required TResult Function(EndLevelEvent value) endLevel,
    required TResult Function(RestartLevelEvent value) restartLevel,
  }) {
    return characterCollision(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartPlayingLevelEvent value)? startPlayingLevel,
    TResult? Function(InitGlobalGameLevelEvent value)? initGlobalGameLevel,
    TResult? Function(DeletePlayerProfileEvent value)? deletePlayerProfile,
    TResult? Function(CreatePlayerProfileEvent value)? createPlayerProfile,
    TResult? Function(LevelPartLoadedEvent value)? levelPartLoaded,
    TResult? Function(SaveGameEvent value)? saveGame,
    TResult? Function(SaveCurrentLevelEvent value)? saveCurrentLevel,
    TResult? Function(CharacterCollisionEvent value)? characterCollision,
    TResult? Function(EndLevelEvent value)? endLevel,
    TResult? Function(RestartLevelEvent value)? restartLevel,
  }) {
    return characterCollision?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartPlayingLevelEvent value)? startPlayingLevel,
    TResult Function(InitGlobalGameLevelEvent value)? initGlobalGameLevel,
    TResult Function(DeletePlayerProfileEvent value)? deletePlayerProfile,
    TResult Function(CreatePlayerProfileEvent value)? createPlayerProfile,
    TResult Function(LevelPartLoadedEvent value)? levelPartLoaded,
    TResult Function(SaveGameEvent value)? saveGame,
    TResult Function(SaveCurrentLevelEvent value)? saveCurrentLevel,
    TResult Function(CharacterCollisionEvent value)? characterCollision,
    TResult Function(EndLevelEvent value)? endLevel,
    TResult Function(RestartLevelEvent value)? restartLevel,
    required TResult orElse(),
  }) {
    if (characterCollision != null) {
      return characterCollision(this);
    }
    return orElse();
  }
}

abstract class CharacterCollisionEvent implements GameEvent {
  const factory CharacterCollisionEvent() = _$CharacterCollisionEvent;
}

/// @nodoc
abstract class _$$EndLevelEventCopyWith<$Res> {
  factory _$$EndLevelEventCopyWith(
          _$EndLevelEvent value, $Res Function(_$EndLevelEvent) then) =
      __$$EndLevelEventCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isWon, double maxDistance});
}

/// @nodoc
class __$$EndLevelEventCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$EndLevelEvent>
    implements _$$EndLevelEventCopyWith<$Res> {
  __$$EndLevelEventCopyWithImpl(
      _$EndLevelEvent _value, $Res Function(_$EndLevelEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isWon = null,
    Object? maxDistance = null,
  }) {
    return _then(_$EndLevelEvent(
      isWon: null == isWon
          ? _value.isWon
          : isWon // ignore: cast_nullable_to_non_nullable
              as bool,
      maxDistance: null == maxDistance
          ? _value.maxDistance
          : maxDistance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$EndLevelEvent implements EndLevelEvent {
  const _$EndLevelEvent({required this.isWon, required this.maxDistance});

  @override
  final bool isWon;
  @override
  final double maxDistance;

  @override
  String toString() {
    return 'GameEvent.endLevel(isWon: $isWon, maxDistance: $maxDistance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EndLevelEvent &&
            (identical(other.isWon, isWon) || other.isWon == isWon) &&
            (identical(other.maxDistance, maxDistance) ||
                other.maxDistance == maxDistance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isWon, maxDistance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EndLevelEventCopyWith<_$EndLevelEvent> get copyWith =>
      __$$EndLevelEventCopyWithImpl<_$EndLevelEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool shouldRestartTutorial) startPlayingLevel,
    required TResult Function(LevelModel levelModel, bool isNewStart)
        initGlobalGameLevel,
    required TResult Function(PlayerProfileModel profile) deletePlayerProfile,
    required TResult Function(PlayerProfileModel profile) createPlayerProfile,
    required TResult Function(LevelPartStates loadedState) levelPartLoaded,
    required TResult Function() saveGame,
    required TResult Function() saveCurrentLevel,
    required TResult Function() characterCollision,
    required TResult Function(bool isWon, double maxDistance) endLevel,
    required TResult Function() restartLevel,
  }) {
    return endLevel(isWon, maxDistance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool shouldRestartTutorial)? startPlayingLevel,
    TResult? Function(LevelModel levelModel, bool isNewStart)?
        initGlobalGameLevel,
    TResult? Function(PlayerProfileModel profile)? deletePlayerProfile,
    TResult? Function(PlayerProfileModel profile)? createPlayerProfile,
    TResult? Function(LevelPartStates loadedState)? levelPartLoaded,
    TResult? Function()? saveGame,
    TResult? Function()? saveCurrentLevel,
    TResult? Function()? characterCollision,
    TResult? Function(bool isWon, double maxDistance)? endLevel,
    TResult? Function()? restartLevel,
  }) {
    return endLevel?.call(isWon, maxDistance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool shouldRestartTutorial)? startPlayingLevel,
    TResult Function(LevelModel levelModel, bool isNewStart)?
        initGlobalGameLevel,
    TResult Function(PlayerProfileModel profile)? deletePlayerProfile,
    TResult Function(PlayerProfileModel profile)? createPlayerProfile,
    TResult Function(LevelPartStates loadedState)? levelPartLoaded,
    TResult Function()? saveGame,
    TResult Function()? saveCurrentLevel,
    TResult Function()? characterCollision,
    TResult Function(bool isWon, double maxDistance)? endLevel,
    TResult Function()? restartLevel,
    required TResult orElse(),
  }) {
    if (endLevel != null) {
      return endLevel(isWon, maxDistance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartPlayingLevelEvent value) startPlayingLevel,
    required TResult Function(InitGlobalGameLevelEvent value)
        initGlobalGameLevel,
    required TResult Function(DeletePlayerProfileEvent value)
        deletePlayerProfile,
    required TResult Function(CreatePlayerProfileEvent value)
        createPlayerProfile,
    required TResult Function(LevelPartLoadedEvent value) levelPartLoaded,
    required TResult Function(SaveGameEvent value) saveGame,
    required TResult Function(SaveCurrentLevelEvent value) saveCurrentLevel,
    required TResult Function(CharacterCollisionEvent value) characterCollision,
    required TResult Function(EndLevelEvent value) endLevel,
    required TResult Function(RestartLevelEvent value) restartLevel,
  }) {
    return endLevel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartPlayingLevelEvent value)? startPlayingLevel,
    TResult? Function(InitGlobalGameLevelEvent value)? initGlobalGameLevel,
    TResult? Function(DeletePlayerProfileEvent value)? deletePlayerProfile,
    TResult? Function(CreatePlayerProfileEvent value)? createPlayerProfile,
    TResult? Function(LevelPartLoadedEvent value)? levelPartLoaded,
    TResult? Function(SaveGameEvent value)? saveGame,
    TResult? Function(SaveCurrentLevelEvent value)? saveCurrentLevel,
    TResult? Function(CharacterCollisionEvent value)? characterCollision,
    TResult? Function(EndLevelEvent value)? endLevel,
    TResult? Function(RestartLevelEvent value)? restartLevel,
  }) {
    return endLevel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartPlayingLevelEvent value)? startPlayingLevel,
    TResult Function(InitGlobalGameLevelEvent value)? initGlobalGameLevel,
    TResult Function(DeletePlayerProfileEvent value)? deletePlayerProfile,
    TResult Function(CreatePlayerProfileEvent value)? createPlayerProfile,
    TResult Function(LevelPartLoadedEvent value)? levelPartLoaded,
    TResult Function(SaveGameEvent value)? saveGame,
    TResult Function(SaveCurrentLevelEvent value)? saveCurrentLevel,
    TResult Function(CharacterCollisionEvent value)? characterCollision,
    TResult Function(EndLevelEvent value)? endLevel,
    TResult Function(RestartLevelEvent value)? restartLevel,
    required TResult orElse(),
  }) {
    if (endLevel != null) {
      return endLevel(this);
    }
    return orElse();
  }
}

abstract class EndLevelEvent implements GameEvent {
  const factory EndLevelEvent(
      {required final bool isWon,
      required final double maxDistance}) = _$EndLevelEvent;

  bool get isWon;
  double get maxDistance;
  @JsonKey(ignore: true)
  _$$EndLevelEventCopyWith<_$EndLevelEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RestartLevelEventCopyWith<$Res> {
  factory _$$RestartLevelEventCopyWith(
          _$RestartLevelEvent value, $Res Function(_$RestartLevelEvent) then) =
      __$$RestartLevelEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RestartLevelEventCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$RestartLevelEvent>
    implements _$$RestartLevelEventCopyWith<$Res> {
  __$$RestartLevelEventCopyWithImpl(
      _$RestartLevelEvent _value, $Res Function(_$RestartLevelEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RestartLevelEvent implements RestartLevelEvent {
  const _$RestartLevelEvent();

  @override
  String toString() {
    return 'GameEvent.restartLevel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RestartLevelEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool shouldRestartTutorial) startPlayingLevel,
    required TResult Function(LevelModel levelModel, bool isNewStart)
        initGlobalGameLevel,
    required TResult Function(PlayerProfileModel profile) deletePlayerProfile,
    required TResult Function(PlayerProfileModel profile) createPlayerProfile,
    required TResult Function(LevelPartStates loadedState) levelPartLoaded,
    required TResult Function() saveGame,
    required TResult Function() saveCurrentLevel,
    required TResult Function() characterCollision,
    required TResult Function(bool isWon, double maxDistance) endLevel,
    required TResult Function() restartLevel,
  }) {
    return restartLevel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool shouldRestartTutorial)? startPlayingLevel,
    TResult? Function(LevelModel levelModel, bool isNewStart)?
        initGlobalGameLevel,
    TResult? Function(PlayerProfileModel profile)? deletePlayerProfile,
    TResult? Function(PlayerProfileModel profile)? createPlayerProfile,
    TResult? Function(LevelPartStates loadedState)? levelPartLoaded,
    TResult? Function()? saveGame,
    TResult? Function()? saveCurrentLevel,
    TResult? Function()? characterCollision,
    TResult? Function(bool isWon, double maxDistance)? endLevel,
    TResult? Function()? restartLevel,
  }) {
    return restartLevel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool shouldRestartTutorial)? startPlayingLevel,
    TResult Function(LevelModel levelModel, bool isNewStart)?
        initGlobalGameLevel,
    TResult Function(PlayerProfileModel profile)? deletePlayerProfile,
    TResult Function(PlayerProfileModel profile)? createPlayerProfile,
    TResult Function(LevelPartStates loadedState)? levelPartLoaded,
    TResult Function()? saveGame,
    TResult Function()? saveCurrentLevel,
    TResult Function()? characterCollision,
    TResult Function(bool isWon, double maxDistance)? endLevel,
    TResult Function()? restartLevel,
    required TResult orElse(),
  }) {
    if (restartLevel != null) {
      return restartLevel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartPlayingLevelEvent value) startPlayingLevel,
    required TResult Function(InitGlobalGameLevelEvent value)
        initGlobalGameLevel,
    required TResult Function(DeletePlayerProfileEvent value)
        deletePlayerProfile,
    required TResult Function(CreatePlayerProfileEvent value)
        createPlayerProfile,
    required TResult Function(LevelPartLoadedEvent value) levelPartLoaded,
    required TResult Function(SaveGameEvent value) saveGame,
    required TResult Function(SaveCurrentLevelEvent value) saveCurrentLevel,
    required TResult Function(CharacterCollisionEvent value) characterCollision,
    required TResult Function(EndLevelEvent value) endLevel,
    required TResult Function(RestartLevelEvent value) restartLevel,
  }) {
    return restartLevel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartPlayingLevelEvent value)? startPlayingLevel,
    TResult? Function(InitGlobalGameLevelEvent value)? initGlobalGameLevel,
    TResult? Function(DeletePlayerProfileEvent value)? deletePlayerProfile,
    TResult? Function(CreatePlayerProfileEvent value)? createPlayerProfile,
    TResult? Function(LevelPartLoadedEvent value)? levelPartLoaded,
    TResult? Function(SaveGameEvent value)? saveGame,
    TResult? Function(SaveCurrentLevelEvent value)? saveCurrentLevel,
    TResult? Function(CharacterCollisionEvent value)? characterCollision,
    TResult? Function(EndLevelEvent value)? endLevel,
    TResult? Function(RestartLevelEvent value)? restartLevel,
  }) {
    return restartLevel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartPlayingLevelEvent value)? startPlayingLevel,
    TResult Function(InitGlobalGameLevelEvent value)? initGlobalGameLevel,
    TResult Function(DeletePlayerProfileEvent value)? deletePlayerProfile,
    TResult Function(CreatePlayerProfileEvent value)? createPlayerProfile,
    TResult Function(LevelPartLoadedEvent value)? levelPartLoaded,
    TResult Function(SaveGameEvent value)? saveGame,
    TResult Function(SaveCurrentLevelEvent value)? saveCurrentLevel,
    TResult Function(CharacterCollisionEvent value)? characterCollision,
    TResult Function(EndLevelEvent value)? endLevel,
    TResult Function(RestartLevelEvent value)? restartLevel,
    required TResult orElse(),
  }) {
    if (restartLevel != null) {
      return restartLevel(this);
    }
    return orElse();
  }
}

abstract class RestartLevelEvent implements GameEvent {
  const factory RestartLevelEvent() = _$RestartLevelEvent;
}

/// @nodoc
mixin _$GlobalGameBlocState {
  /// ********************************************
  /// *      RESTORABLE FROM MODEL
  /// ********************************************
  String get id => throw _privateConstructorUsedError;
  CanvasDataModelId get currentLevelId => throw _privateConstructorUsedError;

  /// Current Level Model is a model with all level configurations
  /// chosen by the user (players, characters, etc).
  /// It should not be update or changed during the playing the level.
  /// It should be set during the level first initialization
  /// (When the player clicks play button).
  LevelModel? get currentLevelModel => throw _privateConstructorUsedError;
  WorldDateTimeModel get dateTime => throw _privateConstructorUsedError;
  WorldDateTimeModel get lastDateTime => throw _privateConstructorUsedError;
  Map<CanvasDataModelId, LevelModel> get levels =>
      throw _privateConstructorUsedError;
  List<TemplateLevelModel> get templateLevels =>
      throw _privateConstructorUsedError;

  /// The [playersCollection] is the collection of players characters,
  /// which will be available for user to playe and progress through the game.
  List<PlayerProfileModel> get playersCollection =>
      throw _privateConstructorUsedError;
  List<PlayerCharacterModel> get playersCharacters =>
      throw _privateConstructorUsedError;

  /// ********************************************
  /// *      NON-RESTORABLE
  /// ********************************************
  int get dateTimeDelta => throw _privateConstructorUsedError;
  Set<LevelPartStates> get loadedLevelParts =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GlobalGameBlocStateCopyWith<GlobalGameBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalGameBlocStateCopyWith<$Res> {
  factory $GlobalGameBlocStateCopyWith(
          GlobalGameBlocState value, $Res Function(GlobalGameBlocState) then) =
      _$GlobalGameBlocStateCopyWithImpl<$Res, GlobalGameBlocState>;
  @useResult
  $Res call(
      {String id,
      CanvasDataModelId currentLevelId,
      LevelModel? currentLevelModel,
      WorldDateTimeModel dateTime,
      WorldDateTimeModel lastDateTime,
      Map<CanvasDataModelId, LevelModel> levels,
      List<TemplateLevelModel> templateLevels,
      List<PlayerProfileModel> playersCollection,
      List<PlayerCharacterModel> playersCharacters,
      int dateTimeDelta,
      Set<LevelPartStates> loadedLevelParts});

  $CanvasDataModelIdCopyWith<$Res> get currentLevelId;
  $LevelModelCopyWith<$Res>? get currentLevelModel;
  $WorldDateTimeModelCopyWith<$Res> get dateTime;
  $WorldDateTimeModelCopyWith<$Res> get lastDateTime;
}

/// @nodoc
class _$GlobalGameBlocStateCopyWithImpl<$Res, $Val extends GlobalGameBlocState>
    implements $GlobalGameBlocStateCopyWith<$Res> {
  _$GlobalGameBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? currentLevelId = null,
    Object? currentLevelModel = freezed,
    Object? dateTime = null,
    Object? lastDateTime = null,
    Object? levels = null,
    Object? templateLevels = null,
    Object? playersCollection = null,
    Object? playersCharacters = null,
    Object? dateTimeDelta = null,
    Object? loadedLevelParts = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      currentLevelId: null == currentLevelId
          ? _value.currentLevelId
          : currentLevelId // ignore: cast_nullable_to_non_nullable
              as CanvasDataModelId,
      currentLevelModel: freezed == currentLevelModel
          ? _value.currentLevelModel
          : currentLevelModel // ignore: cast_nullable_to_non_nullable
              as LevelModel?,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as WorldDateTimeModel,
      lastDateTime: null == lastDateTime
          ? _value.lastDateTime
          : lastDateTime // ignore: cast_nullable_to_non_nullable
              as WorldDateTimeModel,
      levels: null == levels
          ? _value.levels
          : levels // ignore: cast_nullable_to_non_nullable
              as Map<CanvasDataModelId, LevelModel>,
      templateLevels: null == templateLevels
          ? _value.templateLevels
          : templateLevels // ignore: cast_nullable_to_non_nullable
              as List<TemplateLevelModel>,
      playersCollection: null == playersCollection
          ? _value.playersCollection
          : playersCollection // ignore: cast_nullable_to_non_nullable
              as List<PlayerProfileModel>,
      playersCharacters: null == playersCharacters
          ? _value.playersCharacters
          : playersCharacters // ignore: cast_nullable_to_non_nullable
              as List<PlayerCharacterModel>,
      dateTimeDelta: null == dateTimeDelta
          ? _value.dateTimeDelta
          : dateTimeDelta // ignore: cast_nullable_to_non_nullable
              as int,
      loadedLevelParts: null == loadedLevelParts
          ? _value.loadedLevelParts
          : loadedLevelParts // ignore: cast_nullable_to_non_nullable
              as Set<LevelPartStates>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CanvasDataModelIdCopyWith<$Res> get currentLevelId {
    return $CanvasDataModelIdCopyWith<$Res>(_value.currentLevelId, (value) {
      return _then(_value.copyWith(currentLevelId: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LevelModelCopyWith<$Res>? get currentLevelModel {
    if (_value.currentLevelModel == null) {
      return null;
    }

    return $LevelModelCopyWith<$Res>(_value.currentLevelModel!, (value) {
      return _then(_value.copyWith(currentLevelModel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WorldDateTimeModelCopyWith<$Res> get dateTime {
    return $WorldDateTimeModelCopyWith<$Res>(_value.dateTime, (value) {
      return _then(_value.copyWith(dateTime: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WorldDateTimeModelCopyWith<$Res> get lastDateTime {
    return $WorldDateTimeModelCopyWith<$Res>(_value.lastDateTime, (value) {
      return _then(_value.copyWith(lastDateTime: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GlobalGameBlocStateCopyWith<$Res>
    implements $GlobalGameBlocStateCopyWith<$Res> {
  factory _$$_GlobalGameBlocStateCopyWith(_$_GlobalGameBlocState value,
          $Res Function(_$_GlobalGameBlocState) then) =
      __$$_GlobalGameBlocStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      CanvasDataModelId currentLevelId,
      LevelModel? currentLevelModel,
      WorldDateTimeModel dateTime,
      WorldDateTimeModel lastDateTime,
      Map<CanvasDataModelId, LevelModel> levels,
      List<TemplateLevelModel> templateLevels,
      List<PlayerProfileModel> playersCollection,
      List<PlayerCharacterModel> playersCharacters,
      int dateTimeDelta,
      Set<LevelPartStates> loadedLevelParts});

  @override
  $CanvasDataModelIdCopyWith<$Res> get currentLevelId;
  @override
  $LevelModelCopyWith<$Res>? get currentLevelModel;
  @override
  $WorldDateTimeModelCopyWith<$Res> get dateTime;
  @override
  $WorldDateTimeModelCopyWith<$Res> get lastDateTime;
}

/// @nodoc
class __$$_GlobalGameBlocStateCopyWithImpl<$Res>
    extends _$GlobalGameBlocStateCopyWithImpl<$Res, _$_GlobalGameBlocState>
    implements _$$_GlobalGameBlocStateCopyWith<$Res> {
  __$$_GlobalGameBlocStateCopyWithImpl(_$_GlobalGameBlocState _value,
      $Res Function(_$_GlobalGameBlocState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? currentLevelId = null,
    Object? currentLevelModel = freezed,
    Object? dateTime = null,
    Object? lastDateTime = null,
    Object? levels = null,
    Object? templateLevels = null,
    Object? playersCollection = null,
    Object? playersCharacters = null,
    Object? dateTimeDelta = null,
    Object? loadedLevelParts = null,
  }) {
    return _then(_$_GlobalGameBlocState(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      currentLevelId: null == currentLevelId
          ? _value.currentLevelId
          : currentLevelId // ignore: cast_nullable_to_non_nullable
              as CanvasDataModelId,
      currentLevelModel: freezed == currentLevelModel
          ? _value.currentLevelModel
          : currentLevelModel // ignore: cast_nullable_to_non_nullable
              as LevelModel?,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as WorldDateTimeModel,
      lastDateTime: null == lastDateTime
          ? _value.lastDateTime
          : lastDateTime // ignore: cast_nullable_to_non_nullable
              as WorldDateTimeModel,
      levels: null == levels
          ? _value._levels
          : levels // ignore: cast_nullable_to_non_nullable
              as Map<CanvasDataModelId, LevelModel>,
      templateLevels: null == templateLevels
          ? _value._templateLevels
          : templateLevels // ignore: cast_nullable_to_non_nullable
              as List<TemplateLevelModel>,
      playersCollection: null == playersCollection
          ? _value._playersCollection
          : playersCollection // ignore: cast_nullable_to_non_nullable
              as List<PlayerProfileModel>,
      playersCharacters: null == playersCharacters
          ? _value._playersCharacters
          : playersCharacters // ignore: cast_nullable_to_non_nullable
              as List<PlayerCharacterModel>,
      dateTimeDelta: null == dateTimeDelta
          ? _value.dateTimeDelta
          : dateTimeDelta // ignore: cast_nullable_to_non_nullable
              as int,
      loadedLevelParts: null == loadedLevelParts
          ? _value._loadedLevelParts
          : loadedLevelParts // ignore: cast_nullable_to_non_nullable
              as Set<LevelPartStates>,
    ));
  }
}

/// @nodoc

class _$_GlobalGameBlocState extends _GlobalGameBlocState {
  const _$_GlobalGameBlocState(
      {this.id = '',
      this.currentLevelId = CanvasDataModelId.empty,
      this.currentLevelModel,
      this.dateTime = const WorldDateTimeModel(),
      this.lastDateTime = const WorldDateTimeModel(),
      final Map<CanvasDataModelId, LevelModel> levels = const {},
      final List<TemplateLevelModel> templateLevels = const [],
      final List<PlayerProfileModel> playersCollection = const [],
      final List<PlayerCharacterModel> playersCharacters = const [],
      this.dateTimeDelta = 0,
      final Set<LevelPartStates> loadedLevelParts = const {}})
      : _levels = levels,
        _templateLevels = templateLevels,
        _playersCollection = playersCollection,
        _playersCharacters = playersCharacters,
        _loadedLevelParts = loadedLevelParts,
        super._();

  /// ********************************************
  /// *      RESTORABLE FROM MODEL
  /// ********************************************
  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final CanvasDataModelId currentLevelId;

  /// Current Level Model is a model with all level configurations
  /// chosen by the user (players, characters, etc).
  /// It should not be update or changed during the playing the level.
  /// It should be set during the level first initialization
  /// (When the player clicks play button).
  @override
  final LevelModel? currentLevelModel;
  @override
  @JsonKey()
  final WorldDateTimeModel dateTime;
  @override
  @JsonKey()
  final WorldDateTimeModel lastDateTime;
  final Map<CanvasDataModelId, LevelModel> _levels;
  @override
  @JsonKey()
  Map<CanvasDataModelId, LevelModel> get levels {
    if (_levels is EqualUnmodifiableMapView) return _levels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_levels);
  }

  final List<TemplateLevelModel> _templateLevels;
  @override
  @JsonKey()
  List<TemplateLevelModel> get templateLevels {
    if (_templateLevels is EqualUnmodifiableListView) return _templateLevels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_templateLevels);
  }

  /// The [playersCollection] is the collection of players characters,
  /// which will be available for user to playe and progress through the game.
  final List<PlayerProfileModel> _playersCollection;

  /// The [playersCollection] is the collection of players characters,
  /// which will be available for user to playe and progress through the game.
  @override
  @JsonKey()
  List<PlayerProfileModel> get playersCollection {
    if (_playersCollection is EqualUnmodifiableListView)
      return _playersCollection;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playersCollection);
  }

  final List<PlayerCharacterModel> _playersCharacters;
  @override
  @JsonKey()
  List<PlayerCharacterModel> get playersCharacters {
    if (_playersCharacters is EqualUnmodifiableListView)
      return _playersCharacters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playersCharacters);
  }

  /// ********************************************
  /// *      NON-RESTORABLE
  /// ********************************************
  @override
  @JsonKey()
  final int dateTimeDelta;
  final Set<LevelPartStates> _loadedLevelParts;
  @override
  @JsonKey()
  Set<LevelPartStates> get loadedLevelParts {
    if (_loadedLevelParts is EqualUnmodifiableSetView) return _loadedLevelParts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_loadedLevelParts);
  }

  @override
  String toString() {
    return 'GlobalGameBlocState(id: $id, currentLevelId: $currentLevelId, currentLevelModel: $currentLevelModel, dateTime: $dateTime, lastDateTime: $lastDateTime, levels: $levels, templateLevels: $templateLevels, playersCollection: $playersCollection, playersCharacters: $playersCharacters, dateTimeDelta: $dateTimeDelta, loadedLevelParts: $loadedLevelParts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GlobalGameBlocState &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.currentLevelId, currentLevelId) ||
                other.currentLevelId == currentLevelId) &&
            (identical(other.currentLevelModel, currentLevelModel) ||
                other.currentLevelModel == currentLevelModel) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.lastDateTime, lastDateTime) ||
                other.lastDateTime == lastDateTime) &&
            const DeepCollectionEquality().equals(other._levels, _levels) &&
            const DeepCollectionEquality()
                .equals(other._templateLevels, _templateLevels) &&
            const DeepCollectionEquality()
                .equals(other._playersCollection, _playersCollection) &&
            const DeepCollectionEquality()
                .equals(other._playersCharacters, _playersCharacters) &&
            (identical(other.dateTimeDelta, dateTimeDelta) ||
                other.dateTimeDelta == dateTimeDelta) &&
            const DeepCollectionEquality()
                .equals(other._loadedLevelParts, _loadedLevelParts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      currentLevelId,
      currentLevelModel,
      dateTime,
      lastDateTime,
      const DeepCollectionEquality().hash(_levels),
      const DeepCollectionEquality().hash(_templateLevels),
      const DeepCollectionEquality().hash(_playersCollection),
      const DeepCollectionEquality().hash(_playersCharacters),
      dateTimeDelta,
      const DeepCollectionEquality().hash(_loadedLevelParts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GlobalGameBlocStateCopyWith<_$_GlobalGameBlocState> get copyWith =>
      __$$_GlobalGameBlocStateCopyWithImpl<_$_GlobalGameBlocState>(
          this, _$identity);
}

abstract class _GlobalGameBlocState extends GlobalGameBlocState {
  const factory _GlobalGameBlocState(
      {final String id,
      final CanvasDataModelId currentLevelId,
      final LevelModel? currentLevelModel,
      final WorldDateTimeModel dateTime,
      final WorldDateTimeModel lastDateTime,
      final Map<CanvasDataModelId, LevelModel> levels,
      final List<TemplateLevelModel> templateLevels,
      final List<PlayerProfileModel> playersCollection,
      final List<PlayerCharacterModel> playersCharacters,
      final int dateTimeDelta,
      final Set<LevelPartStates> loadedLevelParts}) = _$_GlobalGameBlocState;
  const _GlobalGameBlocState._() : super._();

  @override

  /// ********************************************
  /// *      RESTORABLE FROM MODEL
  /// ********************************************
  String get id;
  @override
  CanvasDataModelId get currentLevelId;
  @override

  /// Current Level Model is a model with all level configurations
  /// chosen by the user (players, characters, etc).
  /// It should not be update or changed during the playing the level.
  /// It should be set during the level first initialization
  /// (When the player clicks play button).
  LevelModel? get currentLevelModel;
  @override
  WorldDateTimeModel get dateTime;
  @override
  WorldDateTimeModel get lastDateTime;
  @override
  Map<CanvasDataModelId, LevelModel> get levels;
  @override
  List<TemplateLevelModel> get templateLevels;
  @override

  /// The [playersCollection] is the collection of players characters,
  /// which will be available for user to playe and progress through the game.
  List<PlayerProfileModel> get playersCollection;
  @override
  List<PlayerCharacterModel> get playersCharacters;
  @override

  /// ********************************************
  /// *      NON-RESTORABLE
  /// ********************************************
  int get dateTimeDelta;
  @override
  Set<LevelPartStates> get loadedLevelParts;
  @override
  @JsonKey(ignore: true)
  _$$_GlobalGameBlocStateCopyWith<_$_GlobalGameBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}
