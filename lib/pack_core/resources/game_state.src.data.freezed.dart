// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_state.src.data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GameStateData {

/// Current phase of the game
 GamePhase get phase;/// Unique identifier for this game session
 GameId get gameId;/// Difficulty level of the current game
 GameDifficulty get difficulty;/// Current level being played
 LevelModel? get currentLevel;/// When the game session started
 DateTime? get startTime;/// When the game session ended
 DateTime? get endTime;/// Total score for this game session
 int get totalScore;/// Whether the game is currently paused
 bool get isPaused;
/// Create a copy of GameStateData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameStateDataCopyWith<GameStateData> get copyWith => _$GameStateDataCopyWithImpl<GameStateData>(this as GameStateData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameStateData&&(identical(other.phase, phase) || other.phase == phase)&&(identical(other.gameId, gameId) || other.gameId == gameId)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&(identical(other.currentLevel, currentLevel) || other.currentLevel == currentLevel)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.totalScore, totalScore) || other.totalScore == totalScore)&&(identical(other.isPaused, isPaused) || other.isPaused == isPaused));
}


@override
int get hashCode => Object.hash(runtimeType,phase,gameId,difficulty,currentLevel,startTime,endTime,totalScore,isPaused);

@override
String toString() {
  return 'GameStateData(phase: $phase, gameId: $gameId, difficulty: $difficulty, currentLevel: $currentLevel, startTime: $startTime, endTime: $endTime, totalScore: $totalScore, isPaused: $isPaused)';
}


}

/// @nodoc
abstract mixin class $GameStateDataCopyWith<$Res>  {
  factory $GameStateDataCopyWith(GameStateData value, $Res Function(GameStateData) _then) = _$GameStateDataCopyWithImpl;
@useResult
$Res call({
 GamePhase phase, GameId gameId, GameDifficulty difficulty, LevelModel? currentLevel, DateTime? startTime, DateTime? endTime, int totalScore, bool isPaused
});


$LevelModelCopyWith<$Res>? get currentLevel;

}
/// @nodoc
class _$GameStateDataCopyWithImpl<$Res>
    implements $GameStateDataCopyWith<$Res> {
  _$GameStateDataCopyWithImpl(this._self, this._then);

  final GameStateData _self;
  final $Res Function(GameStateData) _then;

/// Create a copy of GameStateData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phase = null,Object? gameId = null,Object? difficulty = null,Object? currentLevel = freezed,Object? startTime = freezed,Object? endTime = freezed,Object? totalScore = null,Object? isPaused = null,}) {
  return _then(_self.copyWith(
phase: null == phase ? _self.phase : phase // ignore: cast_nullable_to_non_nullable
as GamePhase,gameId: null == gameId ? _self.gameId : gameId // ignore: cast_nullable_to_non_nullable
as GameId,difficulty: null == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as GameDifficulty,currentLevel: freezed == currentLevel ? _self.currentLevel : currentLevel // ignore: cast_nullable_to_non_nullable
as LevelModel?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime?,totalScore: null == totalScore ? _self.totalScore : totalScore // ignore: cast_nullable_to_non_nullable
as int,isPaused: null == isPaused ? _self.isPaused : isPaused // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of GameStateData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LevelModelCopyWith<$Res>? get currentLevel {
    if (_self.currentLevel == null) {
    return null;
  }

  return $LevelModelCopyWith<$Res>(_self.currentLevel!, (value) {
    return _then(_self.copyWith(currentLevel: value));
  });
}
}


/// Adds pattern-matching-related methods to [GameStateData].
extension GameStateDataPatterns on GameStateData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameStateData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameStateData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameStateData value)  $default,){
final _that = this;
switch (_that) {
case _GameStateData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameStateData value)?  $default,){
final _that = this;
switch (_that) {
case _GameStateData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GamePhase phase,  GameId gameId,  GameDifficulty difficulty,  LevelModel? currentLevel,  DateTime? startTime,  DateTime? endTime,  int totalScore,  bool isPaused)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameStateData() when $default != null:
return $default(_that.phase,_that.gameId,_that.difficulty,_that.currentLevel,_that.startTime,_that.endTime,_that.totalScore,_that.isPaused);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GamePhase phase,  GameId gameId,  GameDifficulty difficulty,  LevelModel? currentLevel,  DateTime? startTime,  DateTime? endTime,  int totalScore,  bool isPaused)  $default,) {final _that = this;
switch (_that) {
case _GameStateData():
return $default(_that.phase,_that.gameId,_that.difficulty,_that.currentLevel,_that.startTime,_that.endTime,_that.totalScore,_that.isPaused);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GamePhase phase,  GameId gameId,  GameDifficulty difficulty,  LevelModel? currentLevel,  DateTime? startTime,  DateTime? endTime,  int totalScore,  bool isPaused)?  $default,) {final _that = this;
switch (_that) {
case _GameStateData() when $default != null:
return $default(_that.phase,_that.gameId,_that.difficulty,_that.currentLevel,_that.startTime,_that.endTime,_that.totalScore,_that.isPaused);case _:
  return null;

}
}

}

/// @nodoc


class _GameStateData implements GameStateData {
  const _GameStateData({required this.phase, required this.gameId, required this.difficulty, this.currentLevel, this.startTime, this.endTime, this.totalScore = 0, this.isPaused = false});
  

/// Current phase of the game
@override final  GamePhase phase;
/// Unique identifier for this game session
@override final  GameId gameId;
/// Difficulty level of the current game
@override final  GameDifficulty difficulty;
/// Current level being played
@override final  LevelModel? currentLevel;
/// When the game session started
@override final  DateTime? startTime;
/// When the game session ended
@override final  DateTime? endTime;
/// Total score for this game session
@override@JsonKey() final  int totalScore;
/// Whether the game is currently paused
@override@JsonKey() final  bool isPaused;

/// Create a copy of GameStateData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameStateDataCopyWith<_GameStateData> get copyWith => __$GameStateDataCopyWithImpl<_GameStateData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameStateData&&(identical(other.phase, phase) || other.phase == phase)&&(identical(other.gameId, gameId) || other.gameId == gameId)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&(identical(other.currentLevel, currentLevel) || other.currentLevel == currentLevel)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.totalScore, totalScore) || other.totalScore == totalScore)&&(identical(other.isPaused, isPaused) || other.isPaused == isPaused));
}


@override
int get hashCode => Object.hash(runtimeType,phase,gameId,difficulty,currentLevel,startTime,endTime,totalScore,isPaused);

@override
String toString() {
  return 'GameStateData(phase: $phase, gameId: $gameId, difficulty: $difficulty, currentLevel: $currentLevel, startTime: $startTime, endTime: $endTime, totalScore: $totalScore, isPaused: $isPaused)';
}


}

/// @nodoc
abstract mixin class _$GameStateDataCopyWith<$Res> implements $GameStateDataCopyWith<$Res> {
  factory _$GameStateDataCopyWith(_GameStateData value, $Res Function(_GameStateData) _then) = __$GameStateDataCopyWithImpl;
@override @useResult
$Res call({
 GamePhase phase, GameId gameId, GameDifficulty difficulty, LevelModel? currentLevel, DateTime? startTime, DateTime? endTime, int totalScore, bool isPaused
});


@override $LevelModelCopyWith<$Res>? get currentLevel;

}
/// @nodoc
class __$GameStateDataCopyWithImpl<$Res>
    implements _$GameStateDataCopyWith<$Res> {
  __$GameStateDataCopyWithImpl(this._self, this._then);

  final _GameStateData _self;
  final $Res Function(_GameStateData) _then;

/// Create a copy of GameStateData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phase = null,Object? gameId = null,Object? difficulty = null,Object? currentLevel = freezed,Object? startTime = freezed,Object? endTime = freezed,Object? totalScore = null,Object? isPaused = null,}) {
  return _then(_GameStateData(
phase: null == phase ? _self.phase : phase // ignore: cast_nullable_to_non_nullable
as GamePhase,gameId: null == gameId ? _self.gameId : gameId // ignore: cast_nullable_to_non_nullable
as GameId,difficulty: null == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as GameDifficulty,currentLevel: freezed == currentLevel ? _self.currentLevel : currentLevel // ignore: cast_nullable_to_non_nullable
as LevelModel?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime?,totalScore: null == totalScore ? _self.totalScore : totalScore // ignore: cast_nullable_to_non_nullable
as int,isPaused: null == isPaused ? _self.isPaused : isPaused // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of GameStateData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LevelModelCopyWith<$Res>? get currentLevel {
    if (_self.currentLevel == null) {
    return null;
  }

  return $LevelModelCopyWith<$Res>(_self.currentLevel!, (value) {
    return _then(_self.copyWith(currentLevel: value));
  });
}
}

// dart format on
