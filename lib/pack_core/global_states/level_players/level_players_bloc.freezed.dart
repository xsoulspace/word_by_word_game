// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'level_players_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LevelPlayerEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LevelPlayerEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LevelPlayerEvent()';
}


}

/// @nodoc
class $LevelPlayerEventCopyWith<$Res>  {
$LevelPlayerEventCopyWith(LevelPlayerEvent _, $Res Function(LevelPlayerEvent) __);
}


/// Adds pattern-matching-related methods to [LevelPlayerEvent].
extension LevelPlayerEventPatterns on LevelPlayerEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InitLevelPlayersEvent value)?  init,TResult Function( SwitchToNextPlayerEvent value)?  switchToNextPlayer,TResult Function( ChangeCharacterPositionEvent value)?  changeCharacterPosition,TResult Function( RefuelStorageEvent value)?  refuelStorage,TResult Function( ResearchTechnologyEvent value)?  researchTechnology,TResult Function( UpdatePlayerHighscoreEvent value)?  updatePlayerHighscore,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InitLevelPlayersEvent() when init != null:
return init(_that);case SwitchToNextPlayerEvent() when switchToNextPlayer != null:
return switchToNextPlayer(_that);case ChangeCharacterPositionEvent() when changeCharacterPosition != null:
return changeCharacterPosition(_that);case RefuelStorageEvent() when refuelStorage != null:
return refuelStorage(_that);case ResearchTechnologyEvent() when researchTechnology != null:
return researchTechnology(_that);case UpdatePlayerHighscoreEvent() when updatePlayerHighscore != null:
return updatePlayerHighscore(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InitLevelPlayersEvent value)  init,required TResult Function( SwitchToNextPlayerEvent value)  switchToNextPlayer,required TResult Function( ChangeCharacterPositionEvent value)  changeCharacterPosition,required TResult Function( RefuelStorageEvent value)  refuelStorage,required TResult Function( ResearchTechnologyEvent value)  researchTechnology,required TResult Function( UpdatePlayerHighscoreEvent value)  updatePlayerHighscore,}){
final _that = this;
switch (_that) {
case InitLevelPlayersEvent():
return init(_that);case SwitchToNextPlayerEvent():
return switchToNextPlayer(_that);case ChangeCharacterPositionEvent():
return changeCharacterPosition(_that);case RefuelStorageEvent():
return refuelStorage(_that);case ResearchTechnologyEvent():
return researchTechnology(_that);case UpdatePlayerHighscoreEvent():
return updatePlayerHighscore(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InitLevelPlayersEvent value)?  init,TResult? Function( SwitchToNextPlayerEvent value)?  switchToNextPlayer,TResult? Function( ChangeCharacterPositionEvent value)?  changeCharacterPosition,TResult? Function( RefuelStorageEvent value)?  refuelStorage,TResult? Function( ResearchTechnologyEvent value)?  researchTechnology,TResult? Function( UpdatePlayerHighscoreEvent value)?  updatePlayerHighscore,}){
final _that = this;
switch (_that) {
case InitLevelPlayersEvent() when init != null:
return init(_that);case SwitchToNextPlayerEvent() when switchToNextPlayer != null:
return switchToNextPlayer(_that);case ChangeCharacterPositionEvent() when changeCharacterPosition != null:
return changeCharacterPosition(_that);case RefuelStorageEvent() when refuelStorage != null:
return refuelStorage(_that);case ResearchTechnologyEvent() when researchTechnology != null:
return researchTechnology(_that);case UpdatePlayerHighscoreEvent() when updatePlayerHighscore != null:
return updatePlayerHighscore(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( LevelPlayersModel playersModel,  LevelCharactersModel charactersModel)?  init,TResult Function()?  switchToNextPlayer,TResult Function( Vector2 position)?  changeCharacterPosition,TResult Function( ScoreModel score)?  refuelStorage,TResult Function( ScoreModel score)?  researchTechnology,TResult Function( PlayerProfileModelId playerId,  ScoreModel score,  String? word)?  updatePlayerHighscore,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InitLevelPlayersEvent() when init != null:
return init(_that.playersModel,_that.charactersModel);case SwitchToNextPlayerEvent() when switchToNextPlayer != null:
return switchToNextPlayer();case ChangeCharacterPositionEvent() when changeCharacterPosition != null:
return changeCharacterPosition(_that.position);case RefuelStorageEvent() when refuelStorage != null:
return refuelStorage(_that.score);case ResearchTechnologyEvent() when researchTechnology != null:
return researchTechnology(_that.score);case UpdatePlayerHighscoreEvent() when updatePlayerHighscore != null:
return updatePlayerHighscore(_that.playerId,_that.score,_that.word);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( LevelPlayersModel playersModel,  LevelCharactersModel charactersModel)  init,required TResult Function()  switchToNextPlayer,required TResult Function( Vector2 position)  changeCharacterPosition,required TResult Function( ScoreModel score)  refuelStorage,required TResult Function( ScoreModel score)  researchTechnology,required TResult Function( PlayerProfileModelId playerId,  ScoreModel score,  String? word)  updatePlayerHighscore,}) {final _that = this;
switch (_that) {
case InitLevelPlayersEvent():
return init(_that.playersModel,_that.charactersModel);case SwitchToNextPlayerEvent():
return switchToNextPlayer();case ChangeCharacterPositionEvent():
return changeCharacterPosition(_that.position);case RefuelStorageEvent():
return refuelStorage(_that.score);case ResearchTechnologyEvent():
return researchTechnology(_that.score);case UpdatePlayerHighscoreEvent():
return updatePlayerHighscore(_that.playerId,_that.score,_that.word);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( LevelPlayersModel playersModel,  LevelCharactersModel charactersModel)?  init,TResult? Function()?  switchToNextPlayer,TResult? Function( Vector2 position)?  changeCharacterPosition,TResult? Function( ScoreModel score)?  refuelStorage,TResult? Function( ScoreModel score)?  researchTechnology,TResult? Function( PlayerProfileModelId playerId,  ScoreModel score,  String? word)?  updatePlayerHighscore,}) {final _that = this;
switch (_that) {
case InitLevelPlayersEvent() when init != null:
return init(_that.playersModel,_that.charactersModel);case SwitchToNextPlayerEvent() when switchToNextPlayer != null:
return switchToNextPlayer();case ChangeCharacterPositionEvent() when changeCharacterPosition != null:
return changeCharacterPosition(_that.position);case RefuelStorageEvent() when refuelStorage != null:
return refuelStorage(_that.score);case ResearchTechnologyEvent() when researchTechnology != null:
return researchTechnology(_that.score);case UpdatePlayerHighscoreEvent() when updatePlayerHighscore != null:
return updatePlayerHighscore(_that.playerId,_that.score,_that.word);case _:
  return null;

}
}

}

/// @nodoc


class InitLevelPlayersEvent implements LevelPlayerEvent {
  const InitLevelPlayersEvent({required this.playersModel, required this.charactersModel});
  

 final  LevelPlayersModel playersModel;
 final  LevelCharactersModel charactersModel;

/// Create a copy of LevelPlayerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InitLevelPlayersEventCopyWith<InitLevelPlayersEvent> get copyWith => _$InitLevelPlayersEventCopyWithImpl<InitLevelPlayersEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitLevelPlayersEvent&&(identical(other.playersModel, playersModel) || other.playersModel == playersModel)&&(identical(other.charactersModel, charactersModel) || other.charactersModel == charactersModel));
}


@override
int get hashCode => Object.hash(runtimeType,playersModel,charactersModel);

@override
String toString() {
  return 'LevelPlayerEvent.init(playersModel: $playersModel, charactersModel: $charactersModel)';
}


}

/// @nodoc
abstract mixin class $InitLevelPlayersEventCopyWith<$Res> implements $LevelPlayerEventCopyWith<$Res> {
  factory $InitLevelPlayersEventCopyWith(InitLevelPlayersEvent value, $Res Function(InitLevelPlayersEvent) _then) = _$InitLevelPlayersEventCopyWithImpl;
@useResult
$Res call({
 LevelPlayersModel playersModel, LevelCharactersModel charactersModel
});


$LevelPlayersModelCopyWith<$Res> get playersModel;$LevelCharactersModelCopyWith<$Res> get charactersModel;

}
/// @nodoc
class _$InitLevelPlayersEventCopyWithImpl<$Res>
    implements $InitLevelPlayersEventCopyWith<$Res> {
  _$InitLevelPlayersEventCopyWithImpl(this._self, this._then);

  final InitLevelPlayersEvent _self;
  final $Res Function(InitLevelPlayersEvent) _then;

/// Create a copy of LevelPlayerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? playersModel = null,Object? charactersModel = null,}) {
  return _then(InitLevelPlayersEvent(
playersModel: null == playersModel ? _self.playersModel : playersModel // ignore: cast_nullable_to_non_nullable
as LevelPlayersModel,charactersModel: null == charactersModel ? _self.charactersModel : charactersModel // ignore: cast_nullable_to_non_nullable
as LevelCharactersModel,
  ));
}

/// Create a copy of LevelPlayerEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LevelPlayersModelCopyWith<$Res> get playersModel {
  
  return $LevelPlayersModelCopyWith<$Res>(_self.playersModel, (value) {
    return _then(_self.copyWith(playersModel: value));
  });
}/// Create a copy of LevelPlayerEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LevelCharactersModelCopyWith<$Res> get charactersModel {
  
  return $LevelCharactersModelCopyWith<$Res>(_self.charactersModel, (value) {
    return _then(_self.copyWith(charactersModel: value));
  });
}
}

/// @nodoc


class SwitchToNextPlayerEvent implements LevelPlayerEvent {
  const SwitchToNextPlayerEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SwitchToNextPlayerEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LevelPlayerEvent.switchToNextPlayer()';
}


}




/// @nodoc


class ChangeCharacterPositionEvent implements LevelPlayerEvent {
  const ChangeCharacterPositionEvent({required this.position});
  

 final  Vector2 position;

/// Create a copy of LevelPlayerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeCharacterPositionEventCopyWith<ChangeCharacterPositionEvent> get copyWith => _$ChangeCharacterPositionEventCopyWithImpl<ChangeCharacterPositionEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeCharacterPositionEvent&&(identical(other.position, position) || other.position == position));
}


@override
int get hashCode => Object.hash(runtimeType,position);

@override
String toString() {
  return 'LevelPlayerEvent.changeCharacterPosition(position: $position)';
}


}

/// @nodoc
abstract mixin class $ChangeCharacterPositionEventCopyWith<$Res> implements $LevelPlayerEventCopyWith<$Res> {
  factory $ChangeCharacterPositionEventCopyWith(ChangeCharacterPositionEvent value, $Res Function(ChangeCharacterPositionEvent) _then) = _$ChangeCharacterPositionEventCopyWithImpl;
@useResult
$Res call({
 Vector2 position
});




}
/// @nodoc
class _$ChangeCharacterPositionEventCopyWithImpl<$Res>
    implements $ChangeCharacterPositionEventCopyWith<$Res> {
  _$ChangeCharacterPositionEventCopyWithImpl(this._self, this._then);

  final ChangeCharacterPositionEvent _self;
  final $Res Function(ChangeCharacterPositionEvent) _then;

/// Create a copy of LevelPlayerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? position = null,}) {
  return _then(ChangeCharacterPositionEvent(
position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as Vector2,
  ));
}


}

/// @nodoc


class RefuelStorageEvent implements LevelPlayerEvent {
  const RefuelStorageEvent({required this.score});
  

 final  ScoreModel score;

/// Create a copy of LevelPlayerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefuelStorageEventCopyWith<RefuelStorageEvent> get copyWith => _$RefuelStorageEventCopyWithImpl<RefuelStorageEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefuelStorageEvent&&(identical(other.score, score) || other.score == score));
}


@override
int get hashCode => Object.hash(runtimeType,score);

@override
String toString() {
  return 'LevelPlayerEvent.refuelStorage(score: $score)';
}


}

/// @nodoc
abstract mixin class $RefuelStorageEventCopyWith<$Res> implements $LevelPlayerEventCopyWith<$Res> {
  factory $RefuelStorageEventCopyWith(RefuelStorageEvent value, $Res Function(RefuelStorageEvent) _then) = _$RefuelStorageEventCopyWithImpl;
@useResult
$Res call({
 ScoreModel score
});


$ScoreModelCopyWith<$Res> get score;

}
/// @nodoc
class _$RefuelStorageEventCopyWithImpl<$Res>
    implements $RefuelStorageEventCopyWith<$Res> {
  _$RefuelStorageEventCopyWithImpl(this._self, this._then);

  final RefuelStorageEvent _self;
  final $Res Function(RefuelStorageEvent) _then;

/// Create a copy of LevelPlayerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? score = null,}) {
  return _then(RefuelStorageEvent(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as ScoreModel,
  ));
}

/// Create a copy of LevelPlayerEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScoreModelCopyWith<$Res> get score {
  
  return $ScoreModelCopyWith<$Res>(_self.score, (value) {
    return _then(_self.copyWith(score: value));
  });
}
}

/// @nodoc


class ResearchTechnologyEvent implements LevelPlayerEvent {
  const ResearchTechnologyEvent({required this.score});
  

 final  ScoreModel score;

/// Create a copy of LevelPlayerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResearchTechnologyEventCopyWith<ResearchTechnologyEvent> get copyWith => _$ResearchTechnologyEventCopyWithImpl<ResearchTechnologyEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResearchTechnologyEvent&&(identical(other.score, score) || other.score == score));
}


@override
int get hashCode => Object.hash(runtimeType,score);

@override
String toString() {
  return 'LevelPlayerEvent.researchTechnology(score: $score)';
}


}

/// @nodoc
abstract mixin class $ResearchTechnologyEventCopyWith<$Res> implements $LevelPlayerEventCopyWith<$Res> {
  factory $ResearchTechnologyEventCopyWith(ResearchTechnologyEvent value, $Res Function(ResearchTechnologyEvent) _then) = _$ResearchTechnologyEventCopyWithImpl;
@useResult
$Res call({
 ScoreModel score
});


$ScoreModelCopyWith<$Res> get score;

}
/// @nodoc
class _$ResearchTechnologyEventCopyWithImpl<$Res>
    implements $ResearchTechnologyEventCopyWith<$Res> {
  _$ResearchTechnologyEventCopyWithImpl(this._self, this._then);

  final ResearchTechnologyEvent _self;
  final $Res Function(ResearchTechnologyEvent) _then;

/// Create a copy of LevelPlayerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? score = null,}) {
  return _then(ResearchTechnologyEvent(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as ScoreModel,
  ));
}

/// Create a copy of LevelPlayerEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScoreModelCopyWith<$Res> get score {
  
  return $ScoreModelCopyWith<$Res>(_self.score, (value) {
    return _then(_self.copyWith(score: value));
  });
}
}

/// @nodoc


class UpdatePlayerHighscoreEvent implements LevelPlayerEvent {
  const UpdatePlayerHighscoreEvent({required this.playerId, required this.score, this.word});
  

 final  PlayerProfileModelId playerId;
 final  ScoreModel score;
 final  String? word;

/// Create a copy of LevelPlayerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatePlayerHighscoreEventCopyWith<UpdatePlayerHighscoreEvent> get copyWith => _$UpdatePlayerHighscoreEventCopyWithImpl<UpdatePlayerHighscoreEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatePlayerHighscoreEvent&&(identical(other.playerId, playerId) || other.playerId == playerId)&&(identical(other.score, score) || other.score == score)&&(identical(other.word, word) || other.word == word));
}


@override
int get hashCode => Object.hash(runtimeType,playerId,score,word);

@override
String toString() {
  return 'LevelPlayerEvent.updatePlayerHighscore(playerId: $playerId, score: $score, word: $word)';
}


}

/// @nodoc
abstract mixin class $UpdatePlayerHighscoreEventCopyWith<$Res> implements $LevelPlayerEventCopyWith<$Res> {
  factory $UpdatePlayerHighscoreEventCopyWith(UpdatePlayerHighscoreEvent value, $Res Function(UpdatePlayerHighscoreEvent) _then) = _$UpdatePlayerHighscoreEventCopyWithImpl;
@useResult
$Res call({
 PlayerProfileModelId playerId, ScoreModel score, String? word
});


$ScoreModelCopyWith<$Res> get score;

}
/// @nodoc
class _$UpdatePlayerHighscoreEventCopyWithImpl<$Res>
    implements $UpdatePlayerHighscoreEventCopyWith<$Res> {
  _$UpdatePlayerHighscoreEventCopyWithImpl(this._self, this._then);

  final UpdatePlayerHighscoreEvent _self;
  final $Res Function(UpdatePlayerHighscoreEvent) _then;

/// Create a copy of LevelPlayerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? playerId = null,Object? score = null,Object? word = freezed,}) {
  return _then(UpdatePlayerHighscoreEvent(
playerId: null == playerId ? _self.playerId : playerId // ignore: cast_nullable_to_non_nullable
as PlayerProfileModelId,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as ScoreModel,word: freezed == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of LevelPlayerEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScoreModelCopyWith<$Res> get score {
  
  return $ScoreModelCopyWith<$Res>(_self.score, (value) {
    return _then(_self.copyWith(score: value));
  });
}
}

/// @nodoc
mixin _$LevelPlayersBlocState {

 List<PlayerProfileModel> get players; PlayerProfileModelId get currentPlayerId; PlayerCharacterModel get playerCharacter;/// {@macro focusedObjectId}
 Gid get focusedObjectGid;
/// Create a copy of LevelPlayersBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LevelPlayersBlocStateCopyWith<LevelPlayersBlocState> get copyWith => _$LevelPlayersBlocStateCopyWithImpl<LevelPlayersBlocState>(this as LevelPlayersBlocState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LevelPlayersBlocState&&const DeepCollectionEquality().equals(other.players, players)&&(identical(other.currentPlayerId, currentPlayerId) || other.currentPlayerId == currentPlayerId)&&(identical(other.playerCharacter, playerCharacter) || other.playerCharacter == playerCharacter)&&(identical(other.focusedObjectGid, focusedObjectGid) || other.focusedObjectGid == focusedObjectGid));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(players),currentPlayerId,playerCharacter,focusedObjectGid);

@override
String toString() {
  return 'LevelPlayersBlocState(players: $players, currentPlayerId: $currentPlayerId, playerCharacter: $playerCharacter, focusedObjectGid: $focusedObjectGid)';
}


}

/// @nodoc
abstract mixin class $LevelPlayersBlocStateCopyWith<$Res>  {
  factory $LevelPlayersBlocStateCopyWith(LevelPlayersBlocState value, $Res Function(LevelPlayersBlocState) _then) = _$LevelPlayersBlocStateCopyWithImpl;
@useResult
$Res call({
 List<PlayerProfileModel> players, PlayerProfileModelId currentPlayerId, PlayerCharacterModel playerCharacter, Gid focusedObjectGid
});


$PlayerCharacterModelCopyWith<$Res> get playerCharacter;$GidCopyWith<$Res> get focusedObjectGid;

}
/// @nodoc
class _$LevelPlayersBlocStateCopyWithImpl<$Res>
    implements $LevelPlayersBlocStateCopyWith<$Res> {
  _$LevelPlayersBlocStateCopyWithImpl(this._self, this._then);

  final LevelPlayersBlocState _self;
  final $Res Function(LevelPlayersBlocState) _then;

/// Create a copy of LevelPlayersBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? players = null,Object? currentPlayerId = null,Object? playerCharacter = null,Object? focusedObjectGid = null,}) {
  return _then(_self.copyWith(
players: null == players ? _self.players : players // ignore: cast_nullable_to_non_nullable
as List<PlayerProfileModel>,currentPlayerId: null == currentPlayerId ? _self.currentPlayerId : currentPlayerId // ignore: cast_nullable_to_non_nullable
as PlayerProfileModelId,playerCharacter: null == playerCharacter ? _self.playerCharacter : playerCharacter // ignore: cast_nullable_to_non_nullable
as PlayerCharacterModel,focusedObjectGid: null == focusedObjectGid ? _self.focusedObjectGid : focusedObjectGid // ignore: cast_nullable_to_non_nullable
as Gid,
  ));
}
/// Create a copy of LevelPlayersBlocState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlayerCharacterModelCopyWith<$Res> get playerCharacter {
  
  return $PlayerCharacterModelCopyWith<$Res>(_self.playerCharacter, (value) {
    return _then(_self.copyWith(playerCharacter: value));
  });
}/// Create a copy of LevelPlayersBlocState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GidCopyWith<$Res> get focusedObjectGid {
  
  return $GidCopyWith<$Res>(_self.focusedObjectGid, (value) {
    return _then(_self.copyWith(focusedObjectGid: value));
  });
}
}


/// Adds pattern-matching-related methods to [LevelPlayersBlocState].
extension LevelPlayersBlocStatePatterns on LevelPlayersBlocState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LevelPlayersBlocState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LevelPlayersBlocState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LevelPlayersBlocState value)  $default,){
final _that = this;
switch (_that) {
case _LevelPlayersBlocState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LevelPlayersBlocState value)?  $default,){
final _that = this;
switch (_that) {
case _LevelPlayersBlocState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PlayerProfileModel> players,  PlayerProfileModelId currentPlayerId,  PlayerCharacterModel playerCharacter,  Gid focusedObjectGid)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LevelPlayersBlocState() when $default != null:
return $default(_that.players,_that.currentPlayerId,_that.playerCharacter,_that.focusedObjectGid);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PlayerProfileModel> players,  PlayerProfileModelId currentPlayerId,  PlayerCharacterModel playerCharacter,  Gid focusedObjectGid)  $default,) {final _that = this;
switch (_that) {
case _LevelPlayersBlocState():
return $default(_that.players,_that.currentPlayerId,_that.playerCharacter,_that.focusedObjectGid);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PlayerProfileModel> players,  PlayerProfileModelId currentPlayerId,  PlayerCharacterModel playerCharacter,  Gid focusedObjectGid)?  $default,) {final _that = this;
switch (_that) {
case _LevelPlayersBlocState() when $default != null:
return $default(_that.players,_that.currentPlayerId,_that.playerCharacter,_that.focusedObjectGid);case _:
  return null;

}
}

}

/// @nodoc


class _LevelPlayersBlocState extends LevelPlayersBlocState {
  const _LevelPlayersBlocState({final  List<PlayerProfileModel> players = const [], this.currentPlayerId = '', this.playerCharacter = PlayerCharacterModel.empty, this.focusedObjectGid = Gid.empty}): _players = players,super._();
  

 final  List<PlayerProfileModel> _players;
@override@JsonKey() List<PlayerProfileModel> get players {
  if (_players is EqualUnmodifiableListView) return _players;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_players);
}

@override@JsonKey() final  PlayerProfileModelId currentPlayerId;
@override@JsonKey() final  PlayerCharacterModel playerCharacter;
/// {@macro focusedObjectId}
@override@JsonKey() final  Gid focusedObjectGid;

/// Create a copy of LevelPlayersBlocState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LevelPlayersBlocStateCopyWith<_LevelPlayersBlocState> get copyWith => __$LevelPlayersBlocStateCopyWithImpl<_LevelPlayersBlocState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LevelPlayersBlocState&&const DeepCollectionEquality().equals(other._players, _players)&&(identical(other.currentPlayerId, currentPlayerId) || other.currentPlayerId == currentPlayerId)&&(identical(other.playerCharacter, playerCharacter) || other.playerCharacter == playerCharacter)&&(identical(other.focusedObjectGid, focusedObjectGid) || other.focusedObjectGid == focusedObjectGid));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_players),currentPlayerId,playerCharacter,focusedObjectGid);

@override
String toString() {
  return 'LevelPlayersBlocState(players: $players, currentPlayerId: $currentPlayerId, playerCharacter: $playerCharacter, focusedObjectGid: $focusedObjectGid)';
}


}

/// @nodoc
abstract mixin class _$LevelPlayersBlocStateCopyWith<$Res> implements $LevelPlayersBlocStateCopyWith<$Res> {
  factory _$LevelPlayersBlocStateCopyWith(_LevelPlayersBlocState value, $Res Function(_LevelPlayersBlocState) _then) = __$LevelPlayersBlocStateCopyWithImpl;
@override @useResult
$Res call({
 List<PlayerProfileModel> players, PlayerProfileModelId currentPlayerId, PlayerCharacterModel playerCharacter, Gid focusedObjectGid
});


@override $PlayerCharacterModelCopyWith<$Res> get playerCharacter;@override $GidCopyWith<$Res> get focusedObjectGid;

}
/// @nodoc
class __$LevelPlayersBlocStateCopyWithImpl<$Res>
    implements _$LevelPlayersBlocStateCopyWith<$Res> {
  __$LevelPlayersBlocStateCopyWithImpl(this._self, this._then);

  final _LevelPlayersBlocState _self;
  final $Res Function(_LevelPlayersBlocState) _then;

/// Create a copy of LevelPlayersBlocState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? players = null,Object? currentPlayerId = null,Object? playerCharacter = null,Object? focusedObjectGid = null,}) {
  return _then(_LevelPlayersBlocState(
players: null == players ? _self._players : players // ignore: cast_nullable_to_non_nullable
as List<PlayerProfileModel>,currentPlayerId: null == currentPlayerId ? _self.currentPlayerId : currentPlayerId // ignore: cast_nullable_to_non_nullable
as PlayerProfileModelId,playerCharacter: null == playerCharacter ? _self.playerCharacter : playerCharacter // ignore: cast_nullable_to_non_nullable
as PlayerCharacterModel,focusedObjectGid: null == focusedObjectGid ? _self.focusedObjectGid : focusedObjectGid // ignore: cast_nullable_to_non_nullable
as Gid,
  ));
}

/// Create a copy of LevelPlayersBlocState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlayerCharacterModelCopyWith<$Res> get playerCharacter {
  
  return $PlayerCharacterModelCopyWith<$Res>(_self.playerCharacter, (value) {
    return _then(_self.copyWith(playerCharacter: value));
  });
}/// Create a copy of LevelPlayersBlocState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GidCopyWith<$Res> get focusedObjectGid {
  
  return $GidCopyWith<$Res>(_self.focusedObjectGid, (value) {
    return _then(_self.copyWith(focusedObjectGid: value));
  });
}
}

// dart format on
