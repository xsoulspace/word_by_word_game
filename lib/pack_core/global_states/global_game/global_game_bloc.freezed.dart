// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'global_game_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GameEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameEvent()';
}


}

/// @nodoc
class $GameEventCopyWith<$Res>  {
$GameEventCopyWith(GameEvent _, $Res Function(GameEvent) __);
}


/// Adds pattern-matching-related methods to [GameEvent].
extension GameEventPatterns on GameEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InitGlobalGameLevelEvent value)?  initGlobalGameLevel,TResult Function( StartPlayingLevelEvent value)?  startPlayingLevel,TResult Function( DeletePlayerProfileEvent value)?  deletePlayerProfile,TResult Function( CreatePlayerProfileEvent value)?  createPlayerProfile,TResult Function( SaveGameEvent value)?  saveGame,TResult Function( SaveCurrentLevelEvent value)?  saveCurrentLevel,TResult Function( EndLevelEvent value)?  endLevel,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InitGlobalGameLevelEvent() when initGlobalGameLevel != null:
return initGlobalGameLevel(_that);case StartPlayingLevelEvent() when startPlayingLevel != null:
return startPlayingLevel(_that);case DeletePlayerProfileEvent() when deletePlayerProfile != null:
return deletePlayerProfile(_that);case CreatePlayerProfileEvent() when createPlayerProfile != null:
return createPlayerProfile(_that);case SaveGameEvent() when saveGame != null:
return saveGame(_that);case SaveCurrentLevelEvent() when saveCurrentLevel != null:
return saveCurrentLevel(_that);case EndLevelEvent() when endLevel != null:
return endLevel(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InitGlobalGameLevelEvent value)  initGlobalGameLevel,required TResult Function( StartPlayingLevelEvent value)  startPlayingLevel,required TResult Function( DeletePlayerProfileEvent value)  deletePlayerProfile,required TResult Function( CreatePlayerProfileEvent value)  createPlayerProfile,required TResult Function( SaveGameEvent value)  saveGame,required TResult Function( SaveCurrentLevelEvent value)  saveCurrentLevel,required TResult Function( EndLevelEvent value)  endLevel,}){
final _that = this;
switch (_that) {
case InitGlobalGameLevelEvent():
return initGlobalGameLevel(_that);case StartPlayingLevelEvent():
return startPlayingLevel(_that);case DeletePlayerProfileEvent():
return deletePlayerProfile(_that);case CreatePlayerProfileEvent():
return createPlayerProfile(_that);case SaveGameEvent():
return saveGame(_that);case SaveCurrentLevelEvent():
return saveCurrentLevel(_that);case EndLevelEvent():
return endLevel(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InitGlobalGameLevelEvent value)?  initGlobalGameLevel,TResult? Function( StartPlayingLevelEvent value)?  startPlayingLevel,TResult? Function( DeletePlayerProfileEvent value)?  deletePlayerProfile,TResult? Function( CreatePlayerProfileEvent value)?  createPlayerProfile,TResult? Function( SaveGameEvent value)?  saveGame,TResult? Function( SaveCurrentLevelEvent value)?  saveCurrentLevel,TResult? Function( EndLevelEvent value)?  endLevel,}){
final _that = this;
switch (_that) {
case InitGlobalGameLevelEvent() when initGlobalGameLevel != null:
return initGlobalGameLevel(_that);case StartPlayingLevelEvent() when startPlayingLevel != null:
return startPlayingLevel(_that);case DeletePlayerProfileEvent() when deletePlayerProfile != null:
return deletePlayerProfile(_that);case CreatePlayerProfileEvent() when createPlayerProfile != null:
return createPlayerProfile(_that);case SaveGameEvent() when saveGame != null:
return saveGame(_that);case SaveCurrentLevelEvent() when saveCurrentLevel != null:
return saveCurrentLevel(_that);case EndLevelEvent() when endLevel != null:
return endLevel(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( LevelModel levelModel,  bool isNewStart,  PlayerStartPointType playerStartPoint,  WindDirection windDirection)?  initGlobalGameLevel,TResult Function( bool shouldRestartTutorial)?  startPlayingLevel,TResult Function( PlayerProfileModel profile)?  deletePlayerProfile,TResult Function( PlayerProfileModel profile)?  createPlayerProfile,TResult Function()?  saveGame,TResult Function()?  saveCurrentLevel,TResult Function( bool isPassed,  double maxDistance)?  endLevel,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InitGlobalGameLevelEvent() when initGlobalGameLevel != null:
return initGlobalGameLevel(_that.levelModel,_that.isNewStart,_that.playerStartPoint,_that.windDirection);case StartPlayingLevelEvent() when startPlayingLevel != null:
return startPlayingLevel(_that.shouldRestartTutorial);case DeletePlayerProfileEvent() when deletePlayerProfile != null:
return deletePlayerProfile(_that.profile);case CreatePlayerProfileEvent() when createPlayerProfile != null:
return createPlayerProfile(_that.profile);case SaveGameEvent() when saveGame != null:
return saveGame();case SaveCurrentLevelEvent() when saveCurrentLevel != null:
return saveCurrentLevel();case EndLevelEvent() when endLevel != null:
return endLevel(_that.isPassed,_that.maxDistance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( LevelModel levelModel,  bool isNewStart,  PlayerStartPointType playerStartPoint,  WindDirection windDirection)  initGlobalGameLevel,required TResult Function( bool shouldRestartTutorial)  startPlayingLevel,required TResult Function( PlayerProfileModel profile)  deletePlayerProfile,required TResult Function( PlayerProfileModel profile)  createPlayerProfile,required TResult Function()  saveGame,required TResult Function()  saveCurrentLevel,required TResult Function( bool isPassed,  double maxDistance)  endLevel,}) {final _that = this;
switch (_that) {
case InitGlobalGameLevelEvent():
return initGlobalGameLevel(_that.levelModel,_that.isNewStart,_that.playerStartPoint,_that.windDirection);case StartPlayingLevelEvent():
return startPlayingLevel(_that.shouldRestartTutorial);case DeletePlayerProfileEvent():
return deletePlayerProfile(_that.profile);case CreatePlayerProfileEvent():
return createPlayerProfile(_that.profile);case SaveGameEvent():
return saveGame();case SaveCurrentLevelEvent():
return saveCurrentLevel();case EndLevelEvent():
return endLevel(_that.isPassed,_that.maxDistance);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( LevelModel levelModel,  bool isNewStart,  PlayerStartPointType playerStartPoint,  WindDirection windDirection)?  initGlobalGameLevel,TResult? Function( bool shouldRestartTutorial)?  startPlayingLevel,TResult? Function( PlayerProfileModel profile)?  deletePlayerProfile,TResult? Function( PlayerProfileModel profile)?  createPlayerProfile,TResult? Function()?  saveGame,TResult? Function()?  saveCurrentLevel,TResult? Function( bool isPassed,  double maxDistance)?  endLevel,}) {final _that = this;
switch (_that) {
case InitGlobalGameLevelEvent() when initGlobalGameLevel != null:
return initGlobalGameLevel(_that.levelModel,_that.isNewStart,_that.playerStartPoint,_that.windDirection);case StartPlayingLevelEvent() when startPlayingLevel != null:
return startPlayingLevel(_that.shouldRestartTutorial);case DeletePlayerProfileEvent() when deletePlayerProfile != null:
return deletePlayerProfile(_that.profile);case CreatePlayerProfileEvent() when createPlayerProfile != null:
return createPlayerProfile(_that.profile);case SaveGameEvent() when saveGame != null:
return saveGame();case SaveCurrentLevelEvent() when saveCurrentLevel != null:
return saveCurrentLevel();case EndLevelEvent() when endLevel != null:
return endLevel(_that.isPassed,_that.maxDistance);case _:
  return null;

}
}

}

/// @nodoc


class InitGlobalGameLevelEvent implements GameEvent {
  const InitGlobalGameLevelEvent({required this.levelModel, this.isNewStart = true, this.playerStartPoint = PlayerStartPointType.fromSpawnPoint, this.windDirection = WindDirection.defaultDirection});
  

 final  LevelModel levelModel;
@JsonKey() final  bool isNewStart;
@JsonKey() final  PlayerStartPointType playerStartPoint;
@JsonKey() final  WindDirection windDirection;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InitGlobalGameLevelEventCopyWith<InitGlobalGameLevelEvent> get copyWith => _$InitGlobalGameLevelEventCopyWithImpl<InitGlobalGameLevelEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitGlobalGameLevelEvent&&(identical(other.levelModel, levelModel) || other.levelModel == levelModel)&&(identical(other.isNewStart, isNewStart) || other.isNewStart == isNewStart)&&(identical(other.playerStartPoint, playerStartPoint) || other.playerStartPoint == playerStartPoint)&&(identical(other.windDirection, windDirection) || other.windDirection == windDirection));
}


@override
int get hashCode => Object.hash(runtimeType,levelModel,isNewStart,playerStartPoint,windDirection);

@override
String toString() {
  return 'GameEvent.initGlobalGameLevel(levelModel: $levelModel, isNewStart: $isNewStart, playerStartPoint: $playerStartPoint, windDirection: $windDirection)';
}


}

/// @nodoc
abstract mixin class $InitGlobalGameLevelEventCopyWith<$Res> implements $GameEventCopyWith<$Res> {
  factory $InitGlobalGameLevelEventCopyWith(InitGlobalGameLevelEvent value, $Res Function(InitGlobalGameLevelEvent) _then) = _$InitGlobalGameLevelEventCopyWithImpl;
@useResult
$Res call({
 LevelModel levelModel, bool isNewStart, PlayerStartPointType playerStartPoint, WindDirection windDirection
});


$LevelModelCopyWith<$Res> get levelModel;

}
/// @nodoc
class _$InitGlobalGameLevelEventCopyWithImpl<$Res>
    implements $InitGlobalGameLevelEventCopyWith<$Res> {
  _$InitGlobalGameLevelEventCopyWithImpl(this._self, this._then);

  final InitGlobalGameLevelEvent _self;
  final $Res Function(InitGlobalGameLevelEvent) _then;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? levelModel = null,Object? isNewStart = null,Object? playerStartPoint = null,Object? windDirection = null,}) {
  return _then(InitGlobalGameLevelEvent(
levelModel: null == levelModel ? _self.levelModel : levelModel // ignore: cast_nullable_to_non_nullable
as LevelModel,isNewStart: null == isNewStart ? _self.isNewStart : isNewStart // ignore: cast_nullable_to_non_nullable
as bool,playerStartPoint: null == playerStartPoint ? _self.playerStartPoint : playerStartPoint // ignore: cast_nullable_to_non_nullable
as PlayerStartPointType,windDirection: null == windDirection ? _self.windDirection : windDirection // ignore: cast_nullable_to_non_nullable
as WindDirection,
  ));
}

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LevelModelCopyWith<$Res> get levelModel {
  
  return $LevelModelCopyWith<$Res>(_self.levelModel, (value) {
    return _then(_self.copyWith(levelModel: value));
  });
}
}

/// @nodoc


class StartPlayingLevelEvent implements GameEvent {
  const StartPlayingLevelEvent({this.shouldRestartTutorial = true});
  

@JsonKey() final  bool shouldRestartTutorial;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StartPlayingLevelEventCopyWith<StartPlayingLevelEvent> get copyWith => _$StartPlayingLevelEventCopyWithImpl<StartPlayingLevelEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StartPlayingLevelEvent&&(identical(other.shouldRestartTutorial, shouldRestartTutorial) || other.shouldRestartTutorial == shouldRestartTutorial));
}


@override
int get hashCode => Object.hash(runtimeType,shouldRestartTutorial);

@override
String toString() {
  return 'GameEvent.startPlayingLevel(shouldRestartTutorial: $shouldRestartTutorial)';
}


}

/// @nodoc
abstract mixin class $StartPlayingLevelEventCopyWith<$Res> implements $GameEventCopyWith<$Res> {
  factory $StartPlayingLevelEventCopyWith(StartPlayingLevelEvent value, $Res Function(StartPlayingLevelEvent) _then) = _$StartPlayingLevelEventCopyWithImpl;
@useResult
$Res call({
 bool shouldRestartTutorial
});




}
/// @nodoc
class _$StartPlayingLevelEventCopyWithImpl<$Res>
    implements $StartPlayingLevelEventCopyWith<$Res> {
  _$StartPlayingLevelEventCopyWithImpl(this._self, this._then);

  final StartPlayingLevelEvent _self;
  final $Res Function(StartPlayingLevelEvent) _then;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? shouldRestartTutorial = null,}) {
  return _then(StartPlayingLevelEvent(
shouldRestartTutorial: null == shouldRestartTutorial ? _self.shouldRestartTutorial : shouldRestartTutorial // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class DeletePlayerProfileEvent implements GameEvent {
  const DeletePlayerProfileEvent({required this.profile});
  

 final  PlayerProfileModel profile;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeletePlayerProfileEventCopyWith<DeletePlayerProfileEvent> get copyWith => _$DeletePlayerProfileEventCopyWithImpl<DeletePlayerProfileEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeletePlayerProfileEvent&&(identical(other.profile, profile) || other.profile == profile));
}


@override
int get hashCode => Object.hash(runtimeType,profile);

@override
String toString() {
  return 'GameEvent.deletePlayerProfile(profile: $profile)';
}


}

/// @nodoc
abstract mixin class $DeletePlayerProfileEventCopyWith<$Res> implements $GameEventCopyWith<$Res> {
  factory $DeletePlayerProfileEventCopyWith(DeletePlayerProfileEvent value, $Res Function(DeletePlayerProfileEvent) _then) = _$DeletePlayerProfileEventCopyWithImpl;
@useResult
$Res call({
 PlayerProfileModel profile
});


$PlayerProfileModelCopyWith<$Res> get profile;

}
/// @nodoc
class _$DeletePlayerProfileEventCopyWithImpl<$Res>
    implements $DeletePlayerProfileEventCopyWith<$Res> {
  _$DeletePlayerProfileEventCopyWithImpl(this._self, this._then);

  final DeletePlayerProfileEvent _self;
  final $Res Function(DeletePlayerProfileEvent) _then;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? profile = null,}) {
  return _then(DeletePlayerProfileEvent(
profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as PlayerProfileModel,
  ));
}

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlayerProfileModelCopyWith<$Res> get profile {
  
  return $PlayerProfileModelCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}

/// @nodoc


class CreatePlayerProfileEvent implements GameEvent {
  const CreatePlayerProfileEvent({required this.profile});
  

 final  PlayerProfileModel profile;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePlayerProfileEventCopyWith<CreatePlayerProfileEvent> get copyWith => _$CreatePlayerProfileEventCopyWithImpl<CreatePlayerProfileEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePlayerProfileEvent&&(identical(other.profile, profile) || other.profile == profile));
}


@override
int get hashCode => Object.hash(runtimeType,profile);

@override
String toString() {
  return 'GameEvent.createPlayerProfile(profile: $profile)';
}


}

/// @nodoc
abstract mixin class $CreatePlayerProfileEventCopyWith<$Res> implements $GameEventCopyWith<$Res> {
  factory $CreatePlayerProfileEventCopyWith(CreatePlayerProfileEvent value, $Res Function(CreatePlayerProfileEvent) _then) = _$CreatePlayerProfileEventCopyWithImpl;
@useResult
$Res call({
 PlayerProfileModel profile
});


$PlayerProfileModelCopyWith<$Res> get profile;

}
/// @nodoc
class _$CreatePlayerProfileEventCopyWithImpl<$Res>
    implements $CreatePlayerProfileEventCopyWith<$Res> {
  _$CreatePlayerProfileEventCopyWithImpl(this._self, this._then);

  final CreatePlayerProfileEvent _self;
  final $Res Function(CreatePlayerProfileEvent) _then;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? profile = null,}) {
  return _then(CreatePlayerProfileEvent(
profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as PlayerProfileModel,
  ));
}

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlayerProfileModelCopyWith<$Res> get profile {
  
  return $PlayerProfileModelCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}

/// @nodoc


class SaveGameEvent implements GameEvent {
  const SaveGameEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveGameEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameEvent.saveGame()';
}


}




/// @nodoc


class SaveCurrentLevelEvent implements GameEvent {
  const SaveCurrentLevelEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveCurrentLevelEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameEvent.saveCurrentLevel()';
}


}




/// @nodoc


class EndLevelEvent implements GameEvent {
  const EndLevelEvent({required this.isPassed, required this.maxDistance});
  

 final  bool isPassed;
 final  double maxDistance;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EndLevelEventCopyWith<EndLevelEvent> get copyWith => _$EndLevelEventCopyWithImpl<EndLevelEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EndLevelEvent&&(identical(other.isPassed, isPassed) || other.isPassed == isPassed)&&(identical(other.maxDistance, maxDistance) || other.maxDistance == maxDistance));
}


@override
int get hashCode => Object.hash(runtimeType,isPassed,maxDistance);

@override
String toString() {
  return 'GameEvent.endLevel(isPassed: $isPassed, maxDistance: $maxDistance)';
}


}

/// @nodoc
abstract mixin class $EndLevelEventCopyWith<$Res> implements $GameEventCopyWith<$Res> {
  factory $EndLevelEventCopyWith(EndLevelEvent value, $Res Function(EndLevelEvent) _then) = _$EndLevelEventCopyWithImpl;
@useResult
$Res call({
 bool isPassed, double maxDistance
});




}
/// @nodoc
class _$EndLevelEventCopyWithImpl<$Res>
    implements $EndLevelEventCopyWith<$Res> {
  _$EndLevelEventCopyWithImpl(this._self, this._then);

  final EndLevelEvent _self;
  final $Res Function(EndLevelEvent) _then;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isPassed = null,Object? maxDistance = null,}) {
  return _then(EndLevelEvent(
isPassed: null == isPassed ? _self.isPassed : isPassed // ignore: cast_nullable_to_non_nullable
as bool,maxDistance: null == maxDistance ? _self.maxDistance : maxDistance // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$GlobalGameBlocState {

/// ********************************************
/// *      RESTORABLE FROM MODEL
/// ********************************************
 GameSaveModelId get id; CanvasDataModelId get currentLevelId;/// Should be loaded independently, should never be updated
/// Immutable
 Map<CanvasDataModelId, CanvasDataModel> get allCanvasData;/// Current Level Model is a model with all level configurations
/// chosen by the user (players, characters, etc).
/// It should not be update or changed during the playing the level.
/// It should be set during the level first initialization
/// (When the player clicks play button).
 LevelModel? get currentLevelModel; WorldDateTimeModel get dateTime; WorldDateTimeModel get lastDateTime;/// The [playersCollection] is the collection of players characters,
/// which will be available for user to playe and progress through the game.
 List<PlayerProfileModel> get playersCollection; List<PlayerCharacterModel> get playersCharacters; Map<CanvasDataModelId, LevelModel> get savedLevels;/// ********************************************
/// *      NON-RESTORABLE
/// ********************************************
 int get dateTimeDelta;
/// Create a copy of GlobalGameBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GlobalGameBlocStateCopyWith<GlobalGameBlocState> get copyWith => _$GlobalGameBlocStateCopyWithImpl<GlobalGameBlocState>(this as GlobalGameBlocState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GlobalGameBlocState&&(identical(other.id, id) || other.id == id)&&(identical(other.currentLevelId, currentLevelId) || other.currentLevelId == currentLevelId)&&const DeepCollectionEquality().equals(other.allCanvasData, allCanvasData)&&(identical(other.currentLevelModel, currentLevelModel) || other.currentLevelModel == currentLevelModel)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.lastDateTime, lastDateTime) || other.lastDateTime == lastDateTime)&&const DeepCollectionEquality().equals(other.playersCollection, playersCollection)&&const DeepCollectionEquality().equals(other.playersCharacters, playersCharacters)&&const DeepCollectionEquality().equals(other.savedLevels, savedLevels)&&(identical(other.dateTimeDelta, dateTimeDelta) || other.dateTimeDelta == dateTimeDelta));
}


@override
int get hashCode => Object.hash(runtimeType,id,currentLevelId,const DeepCollectionEquality().hash(allCanvasData),currentLevelModel,dateTime,lastDateTime,const DeepCollectionEquality().hash(playersCollection),const DeepCollectionEquality().hash(playersCharacters),const DeepCollectionEquality().hash(savedLevels),dateTimeDelta);

@override
String toString() {
  return 'GlobalGameBlocState(id: $id, currentLevelId: $currentLevelId, allCanvasData: $allCanvasData, currentLevelModel: $currentLevelModel, dateTime: $dateTime, lastDateTime: $lastDateTime, playersCollection: $playersCollection, playersCharacters: $playersCharacters, savedLevels: $savedLevels, dateTimeDelta: $dateTimeDelta)';
}


}

/// @nodoc
abstract mixin class $GlobalGameBlocStateCopyWith<$Res>  {
  factory $GlobalGameBlocStateCopyWith(GlobalGameBlocState value, $Res Function(GlobalGameBlocState) _then) = _$GlobalGameBlocStateCopyWithImpl;
@useResult
$Res call({
 GameSaveModelId id, CanvasDataModelId currentLevelId, Map<CanvasDataModelId, CanvasDataModel> allCanvasData, LevelModel? currentLevelModel, WorldDateTimeModel dateTime, WorldDateTimeModel lastDateTime, List<PlayerProfileModel> playersCollection, List<PlayerCharacterModel> playersCharacters, Map<CanvasDataModelId, LevelModel> savedLevels, int dateTimeDelta
});


$LevelModelCopyWith<$Res>? get currentLevelModel;$WorldDateTimeModelCopyWith<$Res> get dateTime;$WorldDateTimeModelCopyWith<$Res> get lastDateTime;

}
/// @nodoc
class _$GlobalGameBlocStateCopyWithImpl<$Res>
    implements $GlobalGameBlocStateCopyWith<$Res> {
  _$GlobalGameBlocStateCopyWithImpl(this._self, this._then);

  final GlobalGameBlocState _self;
  final $Res Function(GlobalGameBlocState) _then;

/// Create a copy of GlobalGameBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? currentLevelId = null,Object? allCanvasData = null,Object? currentLevelModel = freezed,Object? dateTime = null,Object? lastDateTime = null,Object? playersCollection = null,Object? playersCharacters = null,Object? savedLevels = null,Object? dateTimeDelta = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as GameSaveModelId,currentLevelId: null == currentLevelId ? _self.currentLevelId : currentLevelId // ignore: cast_nullable_to_non_nullable
as CanvasDataModelId,allCanvasData: null == allCanvasData ? _self.allCanvasData : allCanvasData // ignore: cast_nullable_to_non_nullable
as Map<CanvasDataModelId, CanvasDataModel>,currentLevelModel: freezed == currentLevelModel ? _self.currentLevelModel : currentLevelModel // ignore: cast_nullable_to_non_nullable
as LevelModel?,dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as WorldDateTimeModel,lastDateTime: null == lastDateTime ? _self.lastDateTime : lastDateTime // ignore: cast_nullable_to_non_nullable
as WorldDateTimeModel,playersCollection: null == playersCollection ? _self.playersCollection : playersCollection // ignore: cast_nullable_to_non_nullable
as List<PlayerProfileModel>,playersCharacters: null == playersCharacters ? _self.playersCharacters : playersCharacters // ignore: cast_nullable_to_non_nullable
as List<PlayerCharacterModel>,savedLevels: null == savedLevels ? _self.savedLevels : savedLevels // ignore: cast_nullable_to_non_nullable
as Map<CanvasDataModelId, LevelModel>,dateTimeDelta: null == dateTimeDelta ? _self.dateTimeDelta : dateTimeDelta // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of GlobalGameBlocState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LevelModelCopyWith<$Res>? get currentLevelModel {
    if (_self.currentLevelModel == null) {
    return null;
  }

  return $LevelModelCopyWith<$Res>(_self.currentLevelModel!, (value) {
    return _then(_self.copyWith(currentLevelModel: value));
  });
}/// Create a copy of GlobalGameBlocState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorldDateTimeModelCopyWith<$Res> get dateTime {
  
  return $WorldDateTimeModelCopyWith<$Res>(_self.dateTime, (value) {
    return _then(_self.copyWith(dateTime: value));
  });
}/// Create a copy of GlobalGameBlocState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorldDateTimeModelCopyWith<$Res> get lastDateTime {
  
  return $WorldDateTimeModelCopyWith<$Res>(_self.lastDateTime, (value) {
    return _then(_self.copyWith(lastDateTime: value));
  });
}
}


/// Adds pattern-matching-related methods to [GlobalGameBlocState].
extension GlobalGameBlocStatePatterns on GlobalGameBlocState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GlobalGameBlocState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GlobalGameBlocState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GlobalGameBlocState value)  $default,){
final _that = this;
switch (_that) {
case _GlobalGameBlocState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GlobalGameBlocState value)?  $default,){
final _that = this;
switch (_that) {
case _GlobalGameBlocState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GameSaveModelId id,  CanvasDataModelId currentLevelId,  Map<CanvasDataModelId, CanvasDataModel> allCanvasData,  LevelModel? currentLevelModel,  WorldDateTimeModel dateTime,  WorldDateTimeModel lastDateTime,  List<PlayerProfileModel> playersCollection,  List<PlayerCharacterModel> playersCharacters,  Map<CanvasDataModelId, LevelModel> savedLevels,  int dateTimeDelta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GlobalGameBlocState() when $default != null:
return $default(_that.id,_that.currentLevelId,_that.allCanvasData,_that.currentLevelModel,_that.dateTime,_that.lastDateTime,_that.playersCollection,_that.playersCharacters,_that.savedLevels,_that.dateTimeDelta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GameSaveModelId id,  CanvasDataModelId currentLevelId,  Map<CanvasDataModelId, CanvasDataModel> allCanvasData,  LevelModel? currentLevelModel,  WorldDateTimeModel dateTime,  WorldDateTimeModel lastDateTime,  List<PlayerProfileModel> playersCollection,  List<PlayerCharacterModel> playersCharacters,  Map<CanvasDataModelId, LevelModel> savedLevels,  int dateTimeDelta)  $default,) {final _that = this;
switch (_that) {
case _GlobalGameBlocState():
return $default(_that.id,_that.currentLevelId,_that.allCanvasData,_that.currentLevelModel,_that.dateTime,_that.lastDateTime,_that.playersCollection,_that.playersCharacters,_that.savedLevels,_that.dateTimeDelta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GameSaveModelId id,  CanvasDataModelId currentLevelId,  Map<CanvasDataModelId, CanvasDataModel> allCanvasData,  LevelModel? currentLevelModel,  WorldDateTimeModel dateTime,  WorldDateTimeModel lastDateTime,  List<PlayerProfileModel> playersCollection,  List<PlayerCharacterModel> playersCharacters,  Map<CanvasDataModelId, LevelModel> savedLevels,  int dateTimeDelta)?  $default,) {final _that = this;
switch (_that) {
case _GlobalGameBlocState() when $default != null:
return $default(_that.id,_that.currentLevelId,_that.allCanvasData,_that.currentLevelModel,_that.dateTime,_that.lastDateTime,_that.playersCollection,_that.playersCharacters,_that.savedLevels,_that.dateTimeDelta);case _:
  return null;

}
}

}

/// @nodoc


class _GlobalGameBlocState extends GlobalGameBlocState {
  const _GlobalGameBlocState({this.id = '', this.currentLevelId = CanvasDataModelId.empty, final  Map<CanvasDataModelId, CanvasDataModel> allCanvasData = const {}, this.currentLevelModel, this.dateTime = WorldDateTimeModel.zero, this.lastDateTime = WorldDateTimeModel.zero, final  List<PlayerProfileModel> playersCollection = const [], final  List<PlayerCharacterModel> playersCharacters = const [], final  Map<CanvasDataModelId, LevelModel> savedLevels = const {}, this.dateTimeDelta = 0}): _allCanvasData = allCanvasData,_playersCollection = playersCollection,_playersCharacters = playersCharacters,_savedLevels = savedLevels,super._();
  

/// ********************************************
/// *      RESTORABLE FROM MODEL
/// ********************************************
@override@JsonKey() final  GameSaveModelId id;
@override@JsonKey() final  CanvasDataModelId currentLevelId;
/// Should be loaded independently, should never be updated
/// Immutable
 final  Map<CanvasDataModelId, CanvasDataModel> _allCanvasData;
/// Should be loaded independently, should never be updated
/// Immutable
@override@JsonKey() Map<CanvasDataModelId, CanvasDataModel> get allCanvasData {
  if (_allCanvasData is EqualUnmodifiableMapView) return _allCanvasData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_allCanvasData);
}

/// Current Level Model is a model with all level configurations
/// chosen by the user (players, characters, etc).
/// It should not be update or changed during the playing the level.
/// It should be set during the level first initialization
/// (When the player clicks play button).
@override final  LevelModel? currentLevelModel;
@override@JsonKey() final  WorldDateTimeModel dateTime;
@override@JsonKey() final  WorldDateTimeModel lastDateTime;
/// The [playersCollection] is the collection of players characters,
/// which will be available for user to playe and progress through the game.
 final  List<PlayerProfileModel> _playersCollection;
/// The [playersCollection] is the collection of players characters,
/// which will be available for user to playe and progress through the game.
@override@JsonKey() List<PlayerProfileModel> get playersCollection {
  if (_playersCollection is EqualUnmodifiableListView) return _playersCollection;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_playersCollection);
}

 final  List<PlayerCharacterModel> _playersCharacters;
@override@JsonKey() List<PlayerCharacterModel> get playersCharacters {
  if (_playersCharacters is EqualUnmodifiableListView) return _playersCharacters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_playersCharacters);
}

 final  Map<CanvasDataModelId, LevelModel> _savedLevels;
@override@JsonKey() Map<CanvasDataModelId, LevelModel> get savedLevels {
  if (_savedLevels is EqualUnmodifiableMapView) return _savedLevels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_savedLevels);
}

/// ********************************************
/// *      NON-RESTORABLE
/// ********************************************
@override@JsonKey() final  int dateTimeDelta;

/// Create a copy of GlobalGameBlocState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GlobalGameBlocStateCopyWith<_GlobalGameBlocState> get copyWith => __$GlobalGameBlocStateCopyWithImpl<_GlobalGameBlocState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GlobalGameBlocState&&(identical(other.id, id) || other.id == id)&&(identical(other.currentLevelId, currentLevelId) || other.currentLevelId == currentLevelId)&&const DeepCollectionEquality().equals(other._allCanvasData, _allCanvasData)&&(identical(other.currentLevelModel, currentLevelModel) || other.currentLevelModel == currentLevelModel)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.lastDateTime, lastDateTime) || other.lastDateTime == lastDateTime)&&const DeepCollectionEquality().equals(other._playersCollection, _playersCollection)&&const DeepCollectionEquality().equals(other._playersCharacters, _playersCharacters)&&const DeepCollectionEquality().equals(other._savedLevels, _savedLevels)&&(identical(other.dateTimeDelta, dateTimeDelta) || other.dateTimeDelta == dateTimeDelta));
}


@override
int get hashCode => Object.hash(runtimeType,id,currentLevelId,const DeepCollectionEquality().hash(_allCanvasData),currentLevelModel,dateTime,lastDateTime,const DeepCollectionEquality().hash(_playersCollection),const DeepCollectionEquality().hash(_playersCharacters),const DeepCollectionEquality().hash(_savedLevels),dateTimeDelta);

@override
String toString() {
  return 'GlobalGameBlocState(id: $id, currentLevelId: $currentLevelId, allCanvasData: $allCanvasData, currentLevelModel: $currentLevelModel, dateTime: $dateTime, lastDateTime: $lastDateTime, playersCollection: $playersCollection, playersCharacters: $playersCharacters, savedLevels: $savedLevels, dateTimeDelta: $dateTimeDelta)';
}


}

/// @nodoc
abstract mixin class _$GlobalGameBlocStateCopyWith<$Res> implements $GlobalGameBlocStateCopyWith<$Res> {
  factory _$GlobalGameBlocStateCopyWith(_GlobalGameBlocState value, $Res Function(_GlobalGameBlocState) _then) = __$GlobalGameBlocStateCopyWithImpl;
@override @useResult
$Res call({
 GameSaveModelId id, CanvasDataModelId currentLevelId, Map<CanvasDataModelId, CanvasDataModel> allCanvasData, LevelModel? currentLevelModel, WorldDateTimeModel dateTime, WorldDateTimeModel lastDateTime, List<PlayerProfileModel> playersCollection, List<PlayerCharacterModel> playersCharacters, Map<CanvasDataModelId, LevelModel> savedLevels, int dateTimeDelta
});


@override $LevelModelCopyWith<$Res>? get currentLevelModel;@override $WorldDateTimeModelCopyWith<$Res> get dateTime;@override $WorldDateTimeModelCopyWith<$Res> get lastDateTime;

}
/// @nodoc
class __$GlobalGameBlocStateCopyWithImpl<$Res>
    implements _$GlobalGameBlocStateCopyWith<$Res> {
  __$GlobalGameBlocStateCopyWithImpl(this._self, this._then);

  final _GlobalGameBlocState _self;
  final $Res Function(_GlobalGameBlocState) _then;

/// Create a copy of GlobalGameBlocState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? currentLevelId = null,Object? allCanvasData = null,Object? currentLevelModel = freezed,Object? dateTime = null,Object? lastDateTime = null,Object? playersCollection = null,Object? playersCharacters = null,Object? savedLevels = null,Object? dateTimeDelta = null,}) {
  return _then(_GlobalGameBlocState(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as GameSaveModelId,currentLevelId: null == currentLevelId ? _self.currentLevelId : currentLevelId // ignore: cast_nullable_to_non_nullable
as CanvasDataModelId,allCanvasData: null == allCanvasData ? _self._allCanvasData : allCanvasData // ignore: cast_nullable_to_non_nullable
as Map<CanvasDataModelId, CanvasDataModel>,currentLevelModel: freezed == currentLevelModel ? _self.currentLevelModel : currentLevelModel // ignore: cast_nullable_to_non_nullable
as LevelModel?,dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as WorldDateTimeModel,lastDateTime: null == lastDateTime ? _self.lastDateTime : lastDateTime // ignore: cast_nullable_to_non_nullable
as WorldDateTimeModel,playersCollection: null == playersCollection ? _self._playersCollection : playersCollection // ignore: cast_nullable_to_non_nullable
as List<PlayerProfileModel>,playersCharacters: null == playersCharacters ? _self._playersCharacters : playersCharacters // ignore: cast_nullable_to_non_nullable
as List<PlayerCharacterModel>,savedLevels: null == savedLevels ? _self._savedLevels : savedLevels // ignore: cast_nullable_to_non_nullable
as Map<CanvasDataModelId, LevelModel>,dateTimeDelta: null == dateTimeDelta ? _self.dateTimeDelta : dateTimeDelta // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of GlobalGameBlocState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LevelModelCopyWith<$Res>? get currentLevelModel {
    if (_self.currentLevelModel == null) {
    return null;
  }

  return $LevelModelCopyWith<$Res>(_self.currentLevelModel!, (value) {
    return _then(_self.copyWith(currentLevelModel: value));
  });
}/// Create a copy of GlobalGameBlocState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorldDateTimeModelCopyWith<$Res> get dateTime {
  
  return $WorldDateTimeModelCopyWith<$Res>(_self.dateTime, (value) {
    return _then(_self.copyWith(dateTime: value));
  });
}/// Create a copy of GlobalGameBlocState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorldDateTimeModelCopyWith<$Res> get lastDateTime {
  
  return $WorldDateTimeModelCopyWith<$Res>(_self.lastDateTime, (value) {
    return _then(_self.copyWith(lastDateTime: value));
  });
}
}

// dart format on
