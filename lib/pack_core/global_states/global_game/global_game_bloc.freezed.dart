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
    required TResult Function() saveGame,
    required TResult Function() saveCurrentLevel,
    required TResult Function(bool isWon, double maxDistance) endLevel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool shouldRestartTutorial)? startPlayingLevel,
    TResult? Function(LevelModel levelModel, bool isNewStart)?
        initGlobalGameLevel,
    TResult? Function(PlayerProfileModel profile)? deletePlayerProfile,
    TResult? Function(PlayerProfileModel profile)? createPlayerProfile,
    TResult? Function()? saveGame,
    TResult? Function()? saveCurrentLevel,
    TResult? Function(bool isWon, double maxDistance)? endLevel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool shouldRestartTutorial)? startPlayingLevel,
    TResult Function(LevelModel levelModel, bool isNewStart)?
        initGlobalGameLevel,
    TResult Function(PlayerProfileModel profile)? deletePlayerProfile,
    TResult Function(PlayerProfileModel profile)? createPlayerProfile,
    TResult Function()? saveGame,
    TResult Function()? saveCurrentLevel,
    TResult Function(bool isWon, double maxDistance)? endLevel,
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
    required TResult Function(SaveGameEvent value) saveGame,
    required TResult Function(SaveCurrentLevelEvent value) saveCurrentLevel,
    required TResult Function(EndLevelEvent value) endLevel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartPlayingLevelEvent value)? startPlayingLevel,
    TResult? Function(InitGlobalGameLevelEvent value)? initGlobalGameLevel,
    TResult? Function(DeletePlayerProfileEvent value)? deletePlayerProfile,
    TResult? Function(CreatePlayerProfileEvent value)? createPlayerProfile,
    TResult? Function(SaveGameEvent value)? saveGame,
    TResult? Function(SaveCurrentLevelEvent value)? saveCurrentLevel,
    TResult? Function(EndLevelEvent value)? endLevel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartPlayingLevelEvent value)? startPlayingLevel,
    TResult Function(InitGlobalGameLevelEvent value)? initGlobalGameLevel,
    TResult Function(DeletePlayerProfileEvent value)? deletePlayerProfile,
    TResult Function(CreatePlayerProfileEvent value)? createPlayerProfile,
    TResult Function(SaveGameEvent value)? saveGame,
    TResult Function(SaveCurrentLevelEvent value)? saveCurrentLevel,
    TResult Function(EndLevelEvent value)? endLevel,
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
abstract class _$$StartPlayingLevelEventImplCopyWith<$Res> {
  factory _$$StartPlayingLevelEventImplCopyWith(
          _$StartPlayingLevelEventImpl value,
          $Res Function(_$StartPlayingLevelEventImpl) then) =
      __$$StartPlayingLevelEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool shouldRestartTutorial});
}

/// @nodoc
class __$$StartPlayingLevelEventImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$StartPlayingLevelEventImpl>
    implements _$$StartPlayingLevelEventImplCopyWith<$Res> {
  __$$StartPlayingLevelEventImplCopyWithImpl(
      _$StartPlayingLevelEventImpl _value,
      $Res Function(_$StartPlayingLevelEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shouldRestartTutorial = null,
  }) {
    return _then(_$StartPlayingLevelEventImpl(
      shouldRestartTutorial: null == shouldRestartTutorial
          ? _value.shouldRestartTutorial
          : shouldRestartTutorial // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$StartPlayingLevelEventImpl implements StartPlayingLevelEvent {
  const _$StartPlayingLevelEventImpl({this.shouldRestartTutorial = true});

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
            other is _$StartPlayingLevelEventImpl &&
            (identical(other.shouldRestartTutorial, shouldRestartTutorial) ||
                other.shouldRestartTutorial == shouldRestartTutorial));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shouldRestartTutorial);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartPlayingLevelEventImplCopyWith<_$StartPlayingLevelEventImpl>
      get copyWith => __$$StartPlayingLevelEventImplCopyWithImpl<
          _$StartPlayingLevelEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool shouldRestartTutorial) startPlayingLevel,
    required TResult Function(LevelModel levelModel, bool isNewStart)
        initGlobalGameLevel,
    required TResult Function(PlayerProfileModel profile) deletePlayerProfile,
    required TResult Function(PlayerProfileModel profile) createPlayerProfile,
    required TResult Function() saveGame,
    required TResult Function() saveCurrentLevel,
    required TResult Function(bool isWon, double maxDistance) endLevel,
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
    TResult? Function()? saveGame,
    TResult? Function()? saveCurrentLevel,
    TResult? Function(bool isWon, double maxDistance)? endLevel,
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
    TResult Function()? saveGame,
    TResult Function()? saveCurrentLevel,
    TResult Function(bool isWon, double maxDistance)? endLevel,
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
    required TResult Function(SaveGameEvent value) saveGame,
    required TResult Function(SaveCurrentLevelEvent value) saveCurrentLevel,
    required TResult Function(EndLevelEvent value) endLevel,
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
    TResult? Function(SaveGameEvent value)? saveGame,
    TResult? Function(SaveCurrentLevelEvent value)? saveCurrentLevel,
    TResult? Function(EndLevelEvent value)? endLevel,
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
    TResult Function(SaveGameEvent value)? saveGame,
    TResult Function(SaveCurrentLevelEvent value)? saveCurrentLevel,
    TResult Function(EndLevelEvent value)? endLevel,
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
      _$StartPlayingLevelEventImpl;

  bool get shouldRestartTutorial;
  @JsonKey(ignore: true)
  _$$StartPlayingLevelEventImplCopyWith<_$StartPlayingLevelEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitGlobalGameLevelEventImplCopyWith<$Res> {
  factory _$$InitGlobalGameLevelEventImplCopyWith(
          _$InitGlobalGameLevelEventImpl value,
          $Res Function(_$InitGlobalGameLevelEventImpl) then) =
      __$$InitGlobalGameLevelEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LevelModel levelModel, bool isNewStart});

  $LevelModelCopyWith<$Res> get levelModel;
}

/// @nodoc
class __$$InitGlobalGameLevelEventImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$InitGlobalGameLevelEventImpl>
    implements _$$InitGlobalGameLevelEventImplCopyWith<$Res> {
  __$$InitGlobalGameLevelEventImplCopyWithImpl(
      _$InitGlobalGameLevelEventImpl _value,
      $Res Function(_$InitGlobalGameLevelEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? levelModel = null,
    Object? isNewStart = null,
  }) {
    return _then(_$InitGlobalGameLevelEventImpl(
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

class _$InitGlobalGameLevelEventImpl implements InitGlobalGameLevelEvent {
  const _$InitGlobalGameLevelEventImpl(
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
            other is _$InitGlobalGameLevelEventImpl &&
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
  _$$InitGlobalGameLevelEventImplCopyWith<_$InitGlobalGameLevelEventImpl>
      get copyWith => __$$InitGlobalGameLevelEventImplCopyWithImpl<
          _$InitGlobalGameLevelEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool shouldRestartTutorial) startPlayingLevel,
    required TResult Function(LevelModel levelModel, bool isNewStart)
        initGlobalGameLevel,
    required TResult Function(PlayerProfileModel profile) deletePlayerProfile,
    required TResult Function(PlayerProfileModel profile) createPlayerProfile,
    required TResult Function() saveGame,
    required TResult Function() saveCurrentLevel,
    required TResult Function(bool isWon, double maxDistance) endLevel,
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
    TResult? Function()? saveGame,
    TResult? Function()? saveCurrentLevel,
    TResult? Function(bool isWon, double maxDistance)? endLevel,
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
    TResult Function()? saveGame,
    TResult Function()? saveCurrentLevel,
    TResult Function(bool isWon, double maxDistance)? endLevel,
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
    required TResult Function(SaveGameEvent value) saveGame,
    required TResult Function(SaveCurrentLevelEvent value) saveCurrentLevel,
    required TResult Function(EndLevelEvent value) endLevel,
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
    TResult? Function(SaveGameEvent value)? saveGame,
    TResult? Function(SaveCurrentLevelEvent value)? saveCurrentLevel,
    TResult? Function(EndLevelEvent value)? endLevel,
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
    TResult Function(SaveGameEvent value)? saveGame,
    TResult Function(SaveCurrentLevelEvent value)? saveCurrentLevel,
    TResult Function(EndLevelEvent value)? endLevel,
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
      final bool isNewStart}) = _$InitGlobalGameLevelEventImpl;

  LevelModel get levelModel;
  bool get isNewStart;
  @JsonKey(ignore: true)
  _$$InitGlobalGameLevelEventImplCopyWith<_$InitGlobalGameLevelEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletePlayerProfileEventImplCopyWith<$Res> {
  factory _$$DeletePlayerProfileEventImplCopyWith(
          _$DeletePlayerProfileEventImpl value,
          $Res Function(_$DeletePlayerProfileEventImpl) then) =
      __$$DeletePlayerProfileEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PlayerProfileModel profile});

  $PlayerProfileModelCopyWith<$Res> get profile;
}

/// @nodoc
class __$$DeletePlayerProfileEventImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$DeletePlayerProfileEventImpl>
    implements _$$DeletePlayerProfileEventImplCopyWith<$Res> {
  __$$DeletePlayerProfileEventImplCopyWithImpl(
      _$DeletePlayerProfileEventImpl _value,
      $Res Function(_$DeletePlayerProfileEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$DeletePlayerProfileEventImpl(
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

class _$DeletePlayerProfileEventImpl implements DeletePlayerProfileEvent {
  const _$DeletePlayerProfileEventImpl({required this.profile});

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
            other is _$DeletePlayerProfileEventImpl &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletePlayerProfileEventImplCopyWith<_$DeletePlayerProfileEventImpl>
      get copyWith => __$$DeletePlayerProfileEventImplCopyWithImpl<
          _$DeletePlayerProfileEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool shouldRestartTutorial) startPlayingLevel,
    required TResult Function(LevelModel levelModel, bool isNewStart)
        initGlobalGameLevel,
    required TResult Function(PlayerProfileModel profile) deletePlayerProfile,
    required TResult Function(PlayerProfileModel profile) createPlayerProfile,
    required TResult Function() saveGame,
    required TResult Function() saveCurrentLevel,
    required TResult Function(bool isWon, double maxDistance) endLevel,
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
    TResult? Function()? saveGame,
    TResult? Function()? saveCurrentLevel,
    TResult? Function(bool isWon, double maxDistance)? endLevel,
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
    TResult Function()? saveGame,
    TResult Function()? saveCurrentLevel,
    TResult Function(bool isWon, double maxDistance)? endLevel,
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
    required TResult Function(SaveGameEvent value) saveGame,
    required TResult Function(SaveCurrentLevelEvent value) saveCurrentLevel,
    required TResult Function(EndLevelEvent value) endLevel,
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
    TResult? Function(SaveGameEvent value)? saveGame,
    TResult? Function(SaveCurrentLevelEvent value)? saveCurrentLevel,
    TResult? Function(EndLevelEvent value)? endLevel,
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
    TResult Function(SaveGameEvent value)? saveGame,
    TResult Function(SaveCurrentLevelEvent value)? saveCurrentLevel,
    TResult Function(EndLevelEvent value)? endLevel,
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
          {required final PlayerProfileModel profile}) =
      _$DeletePlayerProfileEventImpl;

  PlayerProfileModel get profile;
  @JsonKey(ignore: true)
  _$$DeletePlayerProfileEventImplCopyWith<_$DeletePlayerProfileEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreatePlayerProfileEventImplCopyWith<$Res> {
  factory _$$CreatePlayerProfileEventImplCopyWith(
          _$CreatePlayerProfileEventImpl value,
          $Res Function(_$CreatePlayerProfileEventImpl) then) =
      __$$CreatePlayerProfileEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PlayerProfileModel profile});

  $PlayerProfileModelCopyWith<$Res> get profile;
}

/// @nodoc
class __$$CreatePlayerProfileEventImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$CreatePlayerProfileEventImpl>
    implements _$$CreatePlayerProfileEventImplCopyWith<$Res> {
  __$$CreatePlayerProfileEventImplCopyWithImpl(
      _$CreatePlayerProfileEventImpl _value,
      $Res Function(_$CreatePlayerProfileEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$CreatePlayerProfileEventImpl(
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

class _$CreatePlayerProfileEventImpl implements CreatePlayerProfileEvent {
  const _$CreatePlayerProfileEventImpl({required this.profile});

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
            other is _$CreatePlayerProfileEventImpl &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePlayerProfileEventImplCopyWith<_$CreatePlayerProfileEventImpl>
      get copyWith => __$$CreatePlayerProfileEventImplCopyWithImpl<
          _$CreatePlayerProfileEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool shouldRestartTutorial) startPlayingLevel,
    required TResult Function(LevelModel levelModel, bool isNewStart)
        initGlobalGameLevel,
    required TResult Function(PlayerProfileModel profile) deletePlayerProfile,
    required TResult Function(PlayerProfileModel profile) createPlayerProfile,
    required TResult Function() saveGame,
    required TResult Function() saveCurrentLevel,
    required TResult Function(bool isWon, double maxDistance) endLevel,
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
    TResult? Function()? saveGame,
    TResult? Function()? saveCurrentLevel,
    TResult? Function(bool isWon, double maxDistance)? endLevel,
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
    TResult Function()? saveGame,
    TResult Function()? saveCurrentLevel,
    TResult Function(bool isWon, double maxDistance)? endLevel,
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
    required TResult Function(SaveGameEvent value) saveGame,
    required TResult Function(SaveCurrentLevelEvent value) saveCurrentLevel,
    required TResult Function(EndLevelEvent value) endLevel,
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
    TResult? Function(SaveGameEvent value)? saveGame,
    TResult? Function(SaveCurrentLevelEvent value)? saveCurrentLevel,
    TResult? Function(EndLevelEvent value)? endLevel,
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
    TResult Function(SaveGameEvent value)? saveGame,
    TResult Function(SaveCurrentLevelEvent value)? saveCurrentLevel,
    TResult Function(EndLevelEvent value)? endLevel,
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
          {required final PlayerProfileModel profile}) =
      _$CreatePlayerProfileEventImpl;

  PlayerProfileModel get profile;
  @JsonKey(ignore: true)
  _$$CreatePlayerProfileEventImplCopyWith<_$CreatePlayerProfileEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveGameEventImplCopyWith<$Res> {
  factory _$$SaveGameEventImplCopyWith(
          _$SaveGameEventImpl value, $Res Function(_$SaveGameEventImpl) then) =
      __$$SaveGameEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveGameEventImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$SaveGameEventImpl>
    implements _$$SaveGameEventImplCopyWith<$Res> {
  __$$SaveGameEventImplCopyWithImpl(
      _$SaveGameEventImpl _value, $Res Function(_$SaveGameEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SaveGameEventImpl implements SaveGameEvent {
  const _$SaveGameEventImpl();

  @override
  String toString() {
    return 'GameEvent.saveGame()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SaveGameEventImpl);
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
    required TResult Function() saveGame,
    required TResult Function() saveCurrentLevel,
    required TResult Function(bool isWon, double maxDistance) endLevel,
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
    TResult? Function()? saveGame,
    TResult? Function()? saveCurrentLevel,
    TResult? Function(bool isWon, double maxDistance)? endLevel,
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
    TResult Function()? saveGame,
    TResult Function()? saveCurrentLevel,
    TResult Function(bool isWon, double maxDistance)? endLevel,
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
    required TResult Function(SaveGameEvent value) saveGame,
    required TResult Function(SaveCurrentLevelEvent value) saveCurrentLevel,
    required TResult Function(EndLevelEvent value) endLevel,
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
    TResult? Function(SaveGameEvent value)? saveGame,
    TResult? Function(SaveCurrentLevelEvent value)? saveCurrentLevel,
    TResult? Function(EndLevelEvent value)? endLevel,
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
    TResult Function(SaveGameEvent value)? saveGame,
    TResult Function(SaveCurrentLevelEvent value)? saveCurrentLevel,
    TResult Function(EndLevelEvent value)? endLevel,
    required TResult orElse(),
  }) {
    if (saveGame != null) {
      return saveGame(this);
    }
    return orElse();
  }
}

abstract class SaveGameEvent implements GameEvent {
  const factory SaveGameEvent() = _$SaveGameEventImpl;
}

/// @nodoc
abstract class _$$SaveCurrentLevelEventImplCopyWith<$Res> {
  factory _$$SaveCurrentLevelEventImplCopyWith(
          _$SaveCurrentLevelEventImpl value,
          $Res Function(_$SaveCurrentLevelEventImpl) then) =
      __$$SaveCurrentLevelEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveCurrentLevelEventImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$SaveCurrentLevelEventImpl>
    implements _$$SaveCurrentLevelEventImplCopyWith<$Res> {
  __$$SaveCurrentLevelEventImplCopyWithImpl(_$SaveCurrentLevelEventImpl _value,
      $Res Function(_$SaveCurrentLevelEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SaveCurrentLevelEventImpl implements SaveCurrentLevelEvent {
  const _$SaveCurrentLevelEventImpl();

  @override
  String toString() {
    return 'GameEvent.saveCurrentLevel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveCurrentLevelEventImpl);
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
    required TResult Function() saveGame,
    required TResult Function() saveCurrentLevel,
    required TResult Function(bool isWon, double maxDistance) endLevel,
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
    TResult? Function()? saveGame,
    TResult? Function()? saveCurrentLevel,
    TResult? Function(bool isWon, double maxDistance)? endLevel,
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
    TResult Function()? saveGame,
    TResult Function()? saveCurrentLevel,
    TResult Function(bool isWon, double maxDistance)? endLevel,
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
    required TResult Function(SaveGameEvent value) saveGame,
    required TResult Function(SaveCurrentLevelEvent value) saveCurrentLevel,
    required TResult Function(EndLevelEvent value) endLevel,
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
    TResult? Function(SaveGameEvent value)? saveGame,
    TResult? Function(SaveCurrentLevelEvent value)? saveCurrentLevel,
    TResult? Function(EndLevelEvent value)? endLevel,
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
    TResult Function(SaveGameEvent value)? saveGame,
    TResult Function(SaveCurrentLevelEvent value)? saveCurrentLevel,
    TResult Function(EndLevelEvent value)? endLevel,
    required TResult orElse(),
  }) {
    if (saveCurrentLevel != null) {
      return saveCurrentLevel(this);
    }
    return orElse();
  }
}

abstract class SaveCurrentLevelEvent implements GameEvent {
  const factory SaveCurrentLevelEvent() = _$SaveCurrentLevelEventImpl;
}

/// @nodoc
abstract class _$$EndLevelEventImplCopyWith<$Res> {
  factory _$$EndLevelEventImplCopyWith(
          _$EndLevelEventImpl value, $Res Function(_$EndLevelEventImpl) then) =
      __$$EndLevelEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isWon, double maxDistance});
}

/// @nodoc
class __$$EndLevelEventImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$EndLevelEventImpl>
    implements _$$EndLevelEventImplCopyWith<$Res> {
  __$$EndLevelEventImplCopyWithImpl(
      _$EndLevelEventImpl _value, $Res Function(_$EndLevelEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isWon = null,
    Object? maxDistance = null,
  }) {
    return _then(_$EndLevelEventImpl(
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

class _$EndLevelEventImpl implements EndLevelEvent {
  const _$EndLevelEventImpl({required this.isWon, required this.maxDistance});

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
            other is _$EndLevelEventImpl &&
            (identical(other.isWon, isWon) || other.isWon == isWon) &&
            (identical(other.maxDistance, maxDistance) ||
                other.maxDistance == maxDistance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isWon, maxDistance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EndLevelEventImplCopyWith<_$EndLevelEventImpl> get copyWith =>
      __$$EndLevelEventImplCopyWithImpl<_$EndLevelEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool shouldRestartTutorial) startPlayingLevel,
    required TResult Function(LevelModel levelModel, bool isNewStart)
        initGlobalGameLevel,
    required TResult Function(PlayerProfileModel profile) deletePlayerProfile,
    required TResult Function(PlayerProfileModel profile) createPlayerProfile,
    required TResult Function() saveGame,
    required TResult Function() saveCurrentLevel,
    required TResult Function(bool isWon, double maxDistance) endLevel,
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
    TResult? Function()? saveGame,
    TResult? Function()? saveCurrentLevel,
    TResult? Function(bool isWon, double maxDistance)? endLevel,
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
    TResult Function()? saveGame,
    TResult Function()? saveCurrentLevel,
    TResult Function(bool isWon, double maxDistance)? endLevel,
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
    required TResult Function(SaveGameEvent value) saveGame,
    required TResult Function(SaveCurrentLevelEvent value) saveCurrentLevel,
    required TResult Function(EndLevelEvent value) endLevel,
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
    TResult? Function(SaveGameEvent value)? saveGame,
    TResult? Function(SaveCurrentLevelEvent value)? saveCurrentLevel,
    TResult? Function(EndLevelEvent value)? endLevel,
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
    TResult Function(SaveGameEvent value)? saveGame,
    TResult Function(SaveCurrentLevelEvent value)? saveCurrentLevel,
    TResult Function(EndLevelEvent value)? endLevel,
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
      required final double maxDistance}) = _$EndLevelEventImpl;

  bool get isWon;
  double get maxDistance;
  @JsonKey(ignore: true)
  _$$EndLevelEventImplCopyWith<_$EndLevelEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GlobalGameBlocState {
  /// ********************************************
  /// *      RESTORABLE FROM MODEL
  /// ********************************************
  String get id => throw _privateConstructorUsedError;
  CanvasDataModelId get currentLevelId => throw _privateConstructorUsedError;

  /// Should be loaded independently
  Map<CanvasDataModelId, CanvasDataModel> get allCanvasData =>
      throw _privateConstructorUsedError;

  /// Current Level Model is a model with all level configurations
  /// chosen by the user (players, characters, etc).
  /// It should not be update or changed during the playing the level.
  /// It should be set during the level first initialization
  /// (When the player clicks play button).
  LevelModel? get currentLevelModel => throw _privateConstructorUsedError;
  WorldDateTimeModel get dateTime => throw _privateConstructorUsedError;
  WorldDateTimeModel get lastDateTime => throw _privateConstructorUsedError;

  /// The [playersCollection] is the collection of players characters,
  /// which will be available for user to playe and progress through the game.
  List<PlayerProfileModel> get playersCollection =>
      throw _privateConstructorUsedError;
  List<PlayerCharacterModel> get playersCharacters =>
      throw _privateConstructorUsedError;
  Map<CanvasDataModelId, LevelModel> get savedLevels =>
      throw _privateConstructorUsedError;

  /// ********************************************
  /// *      NON-RESTORABLE
  /// ********************************************
  int get dateTimeDelta => throw _privateConstructorUsedError;

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
      Map<CanvasDataModelId, CanvasDataModel> allCanvasData,
      LevelModel? currentLevelModel,
      WorldDateTimeModel dateTime,
      WorldDateTimeModel lastDateTime,
      List<PlayerProfileModel> playersCollection,
      List<PlayerCharacterModel> playersCharacters,
      Map<CanvasDataModelId, LevelModel> savedLevels,
      int dateTimeDelta});

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
    Object? allCanvasData = null,
    Object? currentLevelModel = freezed,
    Object? dateTime = null,
    Object? lastDateTime = null,
    Object? playersCollection = null,
    Object? playersCharacters = null,
    Object? savedLevels = null,
    Object? dateTimeDelta = null,
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
      allCanvasData: null == allCanvasData
          ? _value.allCanvasData
          : allCanvasData // ignore: cast_nullable_to_non_nullable
              as Map<CanvasDataModelId, CanvasDataModel>,
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
      playersCollection: null == playersCollection
          ? _value.playersCollection
          : playersCollection // ignore: cast_nullable_to_non_nullable
              as List<PlayerProfileModel>,
      playersCharacters: null == playersCharacters
          ? _value.playersCharacters
          : playersCharacters // ignore: cast_nullable_to_non_nullable
              as List<PlayerCharacterModel>,
      savedLevels: null == savedLevels
          ? _value.savedLevels
          : savedLevels // ignore: cast_nullable_to_non_nullable
              as Map<CanvasDataModelId, LevelModel>,
      dateTimeDelta: null == dateTimeDelta
          ? _value.dateTimeDelta
          : dateTimeDelta // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$GlobalGameBlocStateImplCopyWith<$Res>
    implements $GlobalGameBlocStateCopyWith<$Res> {
  factory _$$GlobalGameBlocStateImplCopyWith(_$GlobalGameBlocStateImpl value,
          $Res Function(_$GlobalGameBlocStateImpl) then) =
      __$$GlobalGameBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      CanvasDataModelId currentLevelId,
      Map<CanvasDataModelId, CanvasDataModel> allCanvasData,
      LevelModel? currentLevelModel,
      WorldDateTimeModel dateTime,
      WorldDateTimeModel lastDateTime,
      List<PlayerProfileModel> playersCollection,
      List<PlayerCharacterModel> playersCharacters,
      Map<CanvasDataModelId, LevelModel> savedLevels,
      int dateTimeDelta});

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
class __$$GlobalGameBlocStateImplCopyWithImpl<$Res>
    extends _$GlobalGameBlocStateCopyWithImpl<$Res, _$GlobalGameBlocStateImpl>
    implements _$$GlobalGameBlocStateImplCopyWith<$Res> {
  __$$GlobalGameBlocStateImplCopyWithImpl(_$GlobalGameBlocStateImpl _value,
      $Res Function(_$GlobalGameBlocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? currentLevelId = null,
    Object? allCanvasData = null,
    Object? currentLevelModel = freezed,
    Object? dateTime = null,
    Object? lastDateTime = null,
    Object? playersCollection = null,
    Object? playersCharacters = null,
    Object? savedLevels = null,
    Object? dateTimeDelta = null,
  }) {
    return _then(_$GlobalGameBlocStateImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      currentLevelId: null == currentLevelId
          ? _value.currentLevelId
          : currentLevelId // ignore: cast_nullable_to_non_nullable
              as CanvasDataModelId,
      allCanvasData: null == allCanvasData
          ? _value._allCanvasData
          : allCanvasData // ignore: cast_nullable_to_non_nullable
              as Map<CanvasDataModelId, CanvasDataModel>,
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
      playersCollection: null == playersCollection
          ? _value._playersCollection
          : playersCollection // ignore: cast_nullable_to_non_nullable
              as List<PlayerProfileModel>,
      playersCharacters: null == playersCharacters
          ? _value._playersCharacters
          : playersCharacters // ignore: cast_nullable_to_non_nullable
              as List<PlayerCharacterModel>,
      savedLevels: null == savedLevels
          ? _value._savedLevels
          : savedLevels // ignore: cast_nullable_to_non_nullable
              as Map<CanvasDataModelId, LevelModel>,
      dateTimeDelta: null == dateTimeDelta
          ? _value.dateTimeDelta
          : dateTimeDelta // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GlobalGameBlocStateImpl extends _GlobalGameBlocState {
  const _$GlobalGameBlocStateImpl(
      {this.id = '',
      this.currentLevelId = CanvasDataModelId.empty,
      final Map<CanvasDataModelId, CanvasDataModel> allCanvasData = const {},
      this.currentLevelModel,
      this.dateTime = WorldDateTimeModel.zero,
      this.lastDateTime = WorldDateTimeModel.zero,
      final List<PlayerProfileModel> playersCollection = const [],
      final List<PlayerCharacterModel> playersCharacters = const [],
      final Map<CanvasDataModelId, LevelModel> savedLevels = const {},
      this.dateTimeDelta = 0})
      : _allCanvasData = allCanvasData,
        _playersCollection = playersCollection,
        _playersCharacters = playersCharacters,
        _savedLevels = savedLevels,
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

  /// Should be loaded independently
  final Map<CanvasDataModelId, CanvasDataModel> _allCanvasData;

  /// Should be loaded independently
  @override
  @JsonKey()
  Map<CanvasDataModelId, CanvasDataModel> get allCanvasData {
    if (_allCanvasData is EqualUnmodifiableMapView) return _allCanvasData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_allCanvasData);
  }

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

  final Map<CanvasDataModelId, LevelModel> _savedLevels;
  @override
  @JsonKey()
  Map<CanvasDataModelId, LevelModel> get savedLevels {
    if (_savedLevels is EqualUnmodifiableMapView) return _savedLevels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_savedLevels);
  }

  /// ********************************************
  /// *      NON-RESTORABLE
  /// ********************************************
  @override
  @JsonKey()
  final int dateTimeDelta;

  @override
  String toString() {
    return 'GlobalGameBlocState(id: $id, currentLevelId: $currentLevelId, allCanvasData: $allCanvasData, currentLevelModel: $currentLevelModel, dateTime: $dateTime, lastDateTime: $lastDateTime, playersCollection: $playersCollection, playersCharacters: $playersCharacters, savedLevels: $savedLevels, dateTimeDelta: $dateTimeDelta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GlobalGameBlocStateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.currentLevelId, currentLevelId) ||
                other.currentLevelId == currentLevelId) &&
            const DeepCollectionEquality()
                .equals(other._allCanvasData, _allCanvasData) &&
            (identical(other.currentLevelModel, currentLevelModel) ||
                other.currentLevelModel == currentLevelModel) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.lastDateTime, lastDateTime) ||
                other.lastDateTime == lastDateTime) &&
            const DeepCollectionEquality()
                .equals(other._playersCollection, _playersCollection) &&
            const DeepCollectionEquality()
                .equals(other._playersCharacters, _playersCharacters) &&
            const DeepCollectionEquality()
                .equals(other._savedLevels, _savedLevels) &&
            (identical(other.dateTimeDelta, dateTimeDelta) ||
                other.dateTimeDelta == dateTimeDelta));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      currentLevelId,
      const DeepCollectionEquality().hash(_allCanvasData),
      currentLevelModel,
      dateTime,
      lastDateTime,
      const DeepCollectionEquality().hash(_playersCollection),
      const DeepCollectionEquality().hash(_playersCharacters),
      const DeepCollectionEquality().hash(_savedLevels),
      dateTimeDelta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GlobalGameBlocStateImplCopyWith<_$GlobalGameBlocStateImpl> get copyWith =>
      __$$GlobalGameBlocStateImplCopyWithImpl<_$GlobalGameBlocStateImpl>(
          this, _$identity);
}

abstract class _GlobalGameBlocState extends GlobalGameBlocState {
  const factory _GlobalGameBlocState(
      {final String id,
      final CanvasDataModelId currentLevelId,
      final Map<CanvasDataModelId, CanvasDataModel> allCanvasData,
      final LevelModel? currentLevelModel,
      final WorldDateTimeModel dateTime,
      final WorldDateTimeModel lastDateTime,
      final List<PlayerProfileModel> playersCollection,
      final List<PlayerCharacterModel> playersCharacters,
      final Map<CanvasDataModelId, LevelModel> savedLevels,
      final int dateTimeDelta}) = _$GlobalGameBlocStateImpl;
  const _GlobalGameBlocState._() : super._();

  @override

  /// ********************************************
  /// *      RESTORABLE FROM MODEL
  /// ********************************************
  String get id;
  @override
  CanvasDataModelId get currentLevelId;
  @override

  /// Should be loaded independently
  Map<CanvasDataModelId, CanvasDataModel> get allCanvasData;
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

  /// The [playersCollection] is the collection of players characters,
  /// which will be available for user to playe and progress through the game.
  List<PlayerProfileModel> get playersCollection;
  @override
  List<PlayerCharacterModel> get playersCharacters;
  @override
  Map<CanvasDataModelId, LevelModel> get savedLevels;
  @override

  /// ********************************************
  /// *      NON-RESTORABLE
  /// ********************************************
  int get dateTimeDelta;
  @override
  @JsonKey(ignore: true)
  _$$GlobalGameBlocStateImplCopyWith<_$GlobalGameBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
