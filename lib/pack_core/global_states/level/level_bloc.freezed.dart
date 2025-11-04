// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'level_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LevelBlocEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LevelBlocEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LevelBlocEvent()';
}


}

/// @nodoc
class $LevelBlocEventCopyWith<$Res>  {
$LevelBlocEventCopyWith(LevelBlocEvent _, $Res Function(LevelBlocEvent) __);
}


/// Adds pattern-matching-related methods to [LevelBlocEvent].
extension LevelBlocEventPatterns on LevelBlocEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LevelBlocEventInit value)?  init,TResult Function( LevelBlocEventConsumeTick value)?  consumeTick,TResult Function( LevelBlocEventHideWarning value)?  hideWarning,TResult Function( LevelBlocEventChangeCurrentWord value)?  changeCurrentWord,TResult Function( LevelBlocEventSelectActionMultiplier value)?  selectActionMultiplier,TResult Function( LevelBlocEventAddNewWordToDictionary value)?  addNewWordToDictionary,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LevelBlocEventInit() when init != null:
return init(_that);case LevelBlocEventConsumeTick() when consumeTick != null:
return consumeTick(_that);case LevelBlocEventHideWarning() when hideWarning != null:
return hideWarning(_that);case LevelBlocEventChangeCurrentWord() when changeCurrentWord != null:
return changeCurrentWord(_that);case LevelBlocEventSelectActionMultiplier() when selectActionMultiplier != null:
return selectActionMultiplier(_that);case LevelBlocEventAddNewWordToDictionary() when addNewWordToDictionary != null:
return addNewWordToDictionary(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LevelBlocEventInit value)  init,required TResult Function( LevelBlocEventConsumeTick value)  consumeTick,required TResult Function( LevelBlocEventHideWarning value)  hideWarning,required TResult Function( LevelBlocEventChangeCurrentWord value)  changeCurrentWord,required TResult Function( LevelBlocEventSelectActionMultiplier value)  selectActionMultiplier,required TResult Function( LevelBlocEventAddNewWordToDictionary value)  addNewWordToDictionary,}){
final _that = this;
switch (_that) {
case LevelBlocEventInit():
return init(_that);case LevelBlocEventConsumeTick():
return consumeTick(_that);case LevelBlocEventHideWarning():
return hideWarning(_that);case LevelBlocEventChangeCurrentWord():
return changeCurrentWord(_that);case LevelBlocEventSelectActionMultiplier():
return selectActionMultiplier(_that);case LevelBlocEventAddNewWordToDictionary():
return addNewWordToDictionary(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LevelBlocEventInit value)?  init,TResult? Function( LevelBlocEventConsumeTick value)?  consumeTick,TResult? Function( LevelBlocEventHideWarning value)?  hideWarning,TResult? Function( LevelBlocEventChangeCurrentWord value)?  changeCurrentWord,TResult? Function( LevelBlocEventSelectActionMultiplier value)?  selectActionMultiplier,TResult? Function( LevelBlocEventAddNewWordToDictionary value)?  addNewWordToDictionary,}){
final _that = this;
switch (_that) {
case LevelBlocEventInit() when init != null:
return init(_that);case LevelBlocEventConsumeTick() when consumeTick != null:
return consumeTick(_that);case LevelBlocEventHideWarning() when hideWarning != null:
return hideWarning(_that);case LevelBlocEventChangeCurrentWord() when changeCurrentWord != null:
return changeCurrentWord(_that);case LevelBlocEventSelectActionMultiplier() when selectActionMultiplier != null:
return selectActionMultiplier(_that);case LevelBlocEventAddNewWordToDictionary() when addNewWordToDictionary != null:
return addNewWordToDictionary(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( LevelModel levelModel)?  init,TResult Function( int timeDeltaInSeconds)?  consumeTick,TResult Function()?  hideWarning,TResult Function( CurrentWordModel word)?  changeCurrentWord,TResult Function( EnergyMultiplierType multiplier)?  selectActionMultiplier,TResult Function()?  addNewWordToDictionary,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LevelBlocEventInit() when init != null:
return init(_that.levelModel);case LevelBlocEventConsumeTick() when consumeTick != null:
return consumeTick(_that.timeDeltaInSeconds);case LevelBlocEventHideWarning() when hideWarning != null:
return hideWarning();case LevelBlocEventChangeCurrentWord() when changeCurrentWord != null:
return changeCurrentWord(_that.word);case LevelBlocEventSelectActionMultiplier() when selectActionMultiplier != null:
return selectActionMultiplier(_that.multiplier);case LevelBlocEventAddNewWordToDictionary() when addNewWordToDictionary != null:
return addNewWordToDictionary();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( LevelModel levelModel)  init,required TResult Function( int timeDeltaInSeconds)  consumeTick,required TResult Function()  hideWarning,required TResult Function( CurrentWordModel word)  changeCurrentWord,required TResult Function( EnergyMultiplierType multiplier)  selectActionMultiplier,required TResult Function()  addNewWordToDictionary,}) {final _that = this;
switch (_that) {
case LevelBlocEventInit():
return init(_that.levelModel);case LevelBlocEventConsumeTick():
return consumeTick(_that.timeDeltaInSeconds);case LevelBlocEventHideWarning():
return hideWarning();case LevelBlocEventChangeCurrentWord():
return changeCurrentWord(_that.word);case LevelBlocEventSelectActionMultiplier():
return selectActionMultiplier(_that.multiplier);case LevelBlocEventAddNewWordToDictionary():
return addNewWordToDictionary();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( LevelModel levelModel)?  init,TResult? Function( int timeDeltaInSeconds)?  consumeTick,TResult? Function()?  hideWarning,TResult? Function( CurrentWordModel word)?  changeCurrentWord,TResult? Function( EnergyMultiplierType multiplier)?  selectActionMultiplier,TResult? Function()?  addNewWordToDictionary,}) {final _that = this;
switch (_that) {
case LevelBlocEventInit() when init != null:
return init(_that.levelModel);case LevelBlocEventConsumeTick() when consumeTick != null:
return consumeTick(_that.timeDeltaInSeconds);case LevelBlocEventHideWarning() when hideWarning != null:
return hideWarning();case LevelBlocEventChangeCurrentWord() when changeCurrentWord != null:
return changeCurrentWord(_that.word);case LevelBlocEventSelectActionMultiplier() when selectActionMultiplier != null:
return selectActionMultiplier(_that.multiplier);case LevelBlocEventAddNewWordToDictionary() when addNewWordToDictionary != null:
return addNewWordToDictionary();case _:
  return null;

}
}

}

/// @nodoc


class LevelBlocEventInit implements LevelBlocEvent {
  const LevelBlocEventInit({required this.levelModel});
  

 final  LevelModel levelModel;

/// Create a copy of LevelBlocEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LevelBlocEventInitCopyWith<LevelBlocEventInit> get copyWith => _$LevelBlocEventInitCopyWithImpl<LevelBlocEventInit>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LevelBlocEventInit&&(identical(other.levelModel, levelModel) || other.levelModel == levelModel));
}


@override
int get hashCode => Object.hash(runtimeType,levelModel);

@override
String toString() {
  return 'LevelBlocEvent.init(levelModel: $levelModel)';
}


}

/// @nodoc
abstract mixin class $LevelBlocEventInitCopyWith<$Res> implements $LevelBlocEventCopyWith<$Res> {
  factory $LevelBlocEventInitCopyWith(LevelBlocEventInit value, $Res Function(LevelBlocEventInit) _then) = _$LevelBlocEventInitCopyWithImpl;
@useResult
$Res call({
 LevelModel levelModel
});


$LevelModelCopyWith<$Res> get levelModel;

}
/// @nodoc
class _$LevelBlocEventInitCopyWithImpl<$Res>
    implements $LevelBlocEventInitCopyWith<$Res> {
  _$LevelBlocEventInitCopyWithImpl(this._self, this._then);

  final LevelBlocEventInit _self;
  final $Res Function(LevelBlocEventInit) _then;

/// Create a copy of LevelBlocEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? levelModel = null,}) {
  return _then(LevelBlocEventInit(
levelModel: null == levelModel ? _self.levelModel : levelModel // ignore: cast_nullable_to_non_nullable
as LevelModel,
  ));
}

/// Create a copy of LevelBlocEvent
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


class LevelBlocEventConsumeTick implements LevelBlocEvent {
  const LevelBlocEventConsumeTick({required this.timeDeltaInSeconds});
  

/// How many seconds was from the last tick
 final  int timeDeltaInSeconds;

/// Create a copy of LevelBlocEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LevelBlocEventConsumeTickCopyWith<LevelBlocEventConsumeTick> get copyWith => _$LevelBlocEventConsumeTickCopyWithImpl<LevelBlocEventConsumeTick>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LevelBlocEventConsumeTick&&(identical(other.timeDeltaInSeconds, timeDeltaInSeconds) || other.timeDeltaInSeconds == timeDeltaInSeconds));
}


@override
int get hashCode => Object.hash(runtimeType,timeDeltaInSeconds);

@override
String toString() {
  return 'LevelBlocEvent.consumeTick(timeDeltaInSeconds: $timeDeltaInSeconds)';
}


}

/// @nodoc
abstract mixin class $LevelBlocEventConsumeTickCopyWith<$Res> implements $LevelBlocEventCopyWith<$Res> {
  factory $LevelBlocEventConsumeTickCopyWith(LevelBlocEventConsumeTick value, $Res Function(LevelBlocEventConsumeTick) _then) = _$LevelBlocEventConsumeTickCopyWithImpl;
@useResult
$Res call({
 int timeDeltaInSeconds
});




}
/// @nodoc
class _$LevelBlocEventConsumeTickCopyWithImpl<$Res>
    implements $LevelBlocEventConsumeTickCopyWith<$Res> {
  _$LevelBlocEventConsumeTickCopyWithImpl(this._self, this._then);

  final LevelBlocEventConsumeTick _self;
  final $Res Function(LevelBlocEventConsumeTick) _then;

/// Create a copy of LevelBlocEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? timeDeltaInSeconds = null,}) {
  return _then(LevelBlocEventConsumeTick(
timeDeltaInSeconds: null == timeDeltaInSeconds ? _self.timeDeltaInSeconds : timeDeltaInSeconds // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class LevelBlocEventHideWarning implements LevelBlocEvent {
  const LevelBlocEventHideWarning();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LevelBlocEventHideWarning);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LevelBlocEvent.hideWarning()';
}


}




/// @nodoc


class LevelBlocEventChangeCurrentWord implements LevelBlocEvent {
  const LevelBlocEventChangeCurrentWord({required this.word});
  

 final  CurrentWordModel word;

/// Create a copy of LevelBlocEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LevelBlocEventChangeCurrentWordCopyWith<LevelBlocEventChangeCurrentWord> get copyWith => _$LevelBlocEventChangeCurrentWordCopyWithImpl<LevelBlocEventChangeCurrentWord>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LevelBlocEventChangeCurrentWord&&(identical(other.word, word) || other.word == word));
}


@override
int get hashCode => Object.hash(runtimeType,word);

@override
String toString() {
  return 'LevelBlocEvent.changeCurrentWord(word: $word)';
}


}

/// @nodoc
abstract mixin class $LevelBlocEventChangeCurrentWordCopyWith<$Res> implements $LevelBlocEventCopyWith<$Res> {
  factory $LevelBlocEventChangeCurrentWordCopyWith(LevelBlocEventChangeCurrentWord value, $Res Function(LevelBlocEventChangeCurrentWord) _then) = _$LevelBlocEventChangeCurrentWordCopyWithImpl;
@useResult
$Res call({
 CurrentWordModel word
});


$CurrentWordModelCopyWith<$Res> get word;

}
/// @nodoc
class _$LevelBlocEventChangeCurrentWordCopyWithImpl<$Res>
    implements $LevelBlocEventChangeCurrentWordCopyWith<$Res> {
  _$LevelBlocEventChangeCurrentWordCopyWithImpl(this._self, this._then);

  final LevelBlocEventChangeCurrentWord _self;
  final $Res Function(LevelBlocEventChangeCurrentWord) _then;

/// Create a copy of LevelBlocEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? word = null,}) {
  return _then(LevelBlocEventChangeCurrentWord(
word: null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as CurrentWordModel,
  ));
}

/// Create a copy of LevelBlocEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrentWordModelCopyWith<$Res> get word {
  
  return $CurrentWordModelCopyWith<$Res>(_self.word, (value) {
    return _then(_self.copyWith(word: value));
  });
}
}

/// @nodoc


class LevelBlocEventSelectActionMultiplier implements LevelBlocEvent {
  const LevelBlocEventSelectActionMultiplier({required this.multiplier});
  

 final  EnergyMultiplierType multiplier;

/// Create a copy of LevelBlocEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LevelBlocEventSelectActionMultiplierCopyWith<LevelBlocEventSelectActionMultiplier> get copyWith => _$LevelBlocEventSelectActionMultiplierCopyWithImpl<LevelBlocEventSelectActionMultiplier>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LevelBlocEventSelectActionMultiplier&&(identical(other.multiplier, multiplier) || other.multiplier == multiplier));
}


@override
int get hashCode => Object.hash(runtimeType,multiplier);

@override
String toString() {
  return 'LevelBlocEvent.selectActionMultiplier(multiplier: $multiplier)';
}


}

/// @nodoc
abstract mixin class $LevelBlocEventSelectActionMultiplierCopyWith<$Res> implements $LevelBlocEventCopyWith<$Res> {
  factory $LevelBlocEventSelectActionMultiplierCopyWith(LevelBlocEventSelectActionMultiplier value, $Res Function(LevelBlocEventSelectActionMultiplier) _then) = _$LevelBlocEventSelectActionMultiplierCopyWithImpl;
@useResult
$Res call({
 EnergyMultiplierType multiplier
});




}
/// @nodoc
class _$LevelBlocEventSelectActionMultiplierCopyWithImpl<$Res>
    implements $LevelBlocEventSelectActionMultiplierCopyWith<$Res> {
  _$LevelBlocEventSelectActionMultiplierCopyWithImpl(this._self, this._then);

  final LevelBlocEventSelectActionMultiplier _self;
  final $Res Function(LevelBlocEventSelectActionMultiplier) _then;

/// Create a copy of LevelBlocEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? multiplier = null,}) {
  return _then(LevelBlocEventSelectActionMultiplier(
multiplier: null == multiplier ? _self.multiplier : multiplier // ignore: cast_nullable_to_non_nullable
as EnergyMultiplierType,
  ));
}


}

/// @nodoc


class LevelBlocEventAddNewWordToDictionary implements LevelBlocEvent {
  const LevelBlocEventAddNewWordToDictionary();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LevelBlocEventAddNewWordToDictionary);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LevelBlocEvent.addNewWordToDictionary()';
}


}




/// @nodoc
mixin _$LevelBlocState {

 CanvasDataModelId get id; CurrentWordModel get currentWord; Map<FullWordString, PlayerProfileModelId> get words; String get latestWord; GamePhaseType get phaseType; EnergyMultiplierType get energyMultiplier;/// ********************************************
/// *      NON PERSISTENT
/// ********************************************
 WordWarning get wordWarning; LevelFeaturesSettingsModel get featuresSettings; UiLanguage get wordsLanguage;
/// Create a copy of LevelBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LevelBlocStateCopyWith<LevelBlocState> get copyWith => _$LevelBlocStateCopyWithImpl<LevelBlocState>(this as LevelBlocState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LevelBlocState&&(identical(other.id, id) || other.id == id)&&(identical(other.currentWord, currentWord) || other.currentWord == currentWord)&&const DeepCollectionEquality().equals(other.words, words)&&(identical(other.latestWord, latestWord) || other.latestWord == latestWord)&&(identical(other.phaseType, phaseType) || other.phaseType == phaseType)&&(identical(other.energyMultiplier, energyMultiplier) || other.energyMultiplier == energyMultiplier)&&(identical(other.wordWarning, wordWarning) || other.wordWarning == wordWarning)&&(identical(other.featuresSettings, featuresSettings) || other.featuresSettings == featuresSettings)&&(identical(other.wordsLanguage, wordsLanguage) || other.wordsLanguage == wordsLanguage));
}


@override
int get hashCode => Object.hash(runtimeType,id,currentWord,const DeepCollectionEquality().hash(words),latestWord,phaseType,energyMultiplier,wordWarning,featuresSettings,wordsLanguage);

@override
String toString() {
  return 'LevelBlocState(id: $id, currentWord: $currentWord, words: $words, latestWord: $latestWord, phaseType: $phaseType, energyMultiplier: $energyMultiplier, wordWarning: $wordWarning, featuresSettings: $featuresSettings, wordsLanguage: $wordsLanguage)';
}


}

/// @nodoc
abstract mixin class $LevelBlocStateCopyWith<$Res>  {
  factory $LevelBlocStateCopyWith(LevelBlocState value, $Res Function(LevelBlocState) _then) = _$LevelBlocStateCopyWithImpl;
@useResult
$Res call({
 CanvasDataModelId id, CurrentWordModel currentWord, Map<FullWordString, PlayerProfileModelId> words, String latestWord, GamePhaseType phaseType, EnergyMultiplierType energyMultiplier, WordWarning wordWarning, LevelFeaturesSettingsModel featuresSettings, UiLanguage wordsLanguage
});


$CurrentWordModelCopyWith<$Res> get currentWord;

}
/// @nodoc
class _$LevelBlocStateCopyWithImpl<$Res>
    implements $LevelBlocStateCopyWith<$Res> {
  _$LevelBlocStateCopyWithImpl(this._self, this._then);

  final LevelBlocState _self;
  final $Res Function(LevelBlocState) _then;

/// Create a copy of LevelBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? currentWord = null,Object? words = null,Object? latestWord = null,Object? phaseType = null,Object? energyMultiplier = null,Object? wordWarning = null,Object? featuresSettings = null,Object? wordsLanguage = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as CanvasDataModelId,currentWord: null == currentWord ? _self.currentWord : currentWord // ignore: cast_nullable_to_non_nullable
as CurrentWordModel,words: null == words ? _self.words : words // ignore: cast_nullable_to_non_nullable
as Map<FullWordString, PlayerProfileModelId>,latestWord: null == latestWord ? _self.latestWord : latestWord // ignore: cast_nullable_to_non_nullable
as String,phaseType: null == phaseType ? _self.phaseType : phaseType // ignore: cast_nullable_to_non_nullable
as GamePhaseType,energyMultiplier: null == energyMultiplier ? _self.energyMultiplier : energyMultiplier // ignore: cast_nullable_to_non_nullable
as EnergyMultiplierType,wordWarning: null == wordWarning ? _self.wordWarning : wordWarning // ignore: cast_nullable_to_non_nullable
as WordWarning,featuresSettings: null == featuresSettings ? _self.featuresSettings : featuresSettings // ignore: cast_nullable_to_non_nullable
as LevelFeaturesSettingsModel,wordsLanguage: null == wordsLanguage ? _self.wordsLanguage : wordsLanguage // ignore: cast_nullable_to_non_nullable
as UiLanguage,
  ));
}
/// Create a copy of LevelBlocState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrentWordModelCopyWith<$Res> get currentWord {
  
  return $CurrentWordModelCopyWith<$Res>(_self.currentWord, (value) {
    return _then(_self.copyWith(currentWord: value));
  });
}
}


/// Adds pattern-matching-related methods to [LevelBlocState].
extension LevelBlocStatePatterns on LevelBlocState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LevelBlocState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LevelBlocState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LevelBlocState value)  $default,){
final _that = this;
switch (_that) {
case _LevelBlocState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LevelBlocState value)?  $default,){
final _that = this;
switch (_that) {
case _LevelBlocState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CanvasDataModelId id,  CurrentWordModel currentWord,  Map<FullWordString, PlayerProfileModelId> words,  String latestWord,  GamePhaseType phaseType,  EnergyMultiplierType energyMultiplier,  WordWarning wordWarning,  LevelFeaturesSettingsModel featuresSettings,  UiLanguage wordsLanguage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LevelBlocState() when $default != null:
return $default(_that.id,_that.currentWord,_that.words,_that.latestWord,_that.phaseType,_that.energyMultiplier,_that.wordWarning,_that.featuresSettings,_that.wordsLanguage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CanvasDataModelId id,  CurrentWordModel currentWord,  Map<FullWordString, PlayerProfileModelId> words,  String latestWord,  GamePhaseType phaseType,  EnergyMultiplierType energyMultiplier,  WordWarning wordWarning,  LevelFeaturesSettingsModel featuresSettings,  UiLanguage wordsLanguage)  $default,) {final _that = this;
switch (_that) {
case _LevelBlocState():
return $default(_that.id,_that.currentWord,_that.words,_that.latestWord,_that.phaseType,_that.energyMultiplier,_that.wordWarning,_that.featuresSettings,_that.wordsLanguage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CanvasDataModelId id,  CurrentWordModel currentWord,  Map<FullWordString, PlayerProfileModelId> words,  String latestWord,  GamePhaseType phaseType,  EnergyMultiplierType energyMultiplier,  WordWarning wordWarning,  LevelFeaturesSettingsModel featuresSettings,  UiLanguage wordsLanguage)?  $default,) {final _that = this;
switch (_that) {
case _LevelBlocState() when $default != null:
return $default(_that.id,_that.currentWord,_that.words,_that.latestWord,_that.phaseType,_that.energyMultiplier,_that.wordWarning,_that.featuresSettings,_that.wordsLanguage);case _:
  return null;

}
}

}

/// @nodoc


class _LevelBlocState implements LevelBlocState {
  const _LevelBlocState({this.id = CanvasDataModelId.empty, this.currentWord = const CurrentWordModel(), final  Map<FullWordString, PlayerProfileModelId> words = const {}, this.latestWord = '', this.phaseType = GamePhaseType.entryWord, this.energyMultiplier = EnergyMultiplierType.m1, this.wordWarning = WordWarning.none, this.featuresSettings = LevelFeaturesSettingsModel.allDisabled, this.wordsLanguage = defaultLanguage}): _words = words;
  

@override@JsonKey() final  CanvasDataModelId id;
@override@JsonKey() final  CurrentWordModel currentWord;
 final  Map<FullWordString, PlayerProfileModelId> _words;
@override@JsonKey() Map<FullWordString, PlayerProfileModelId> get words {
  if (_words is EqualUnmodifiableMapView) return _words;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_words);
}

@override@JsonKey() final  String latestWord;
@override@JsonKey() final  GamePhaseType phaseType;
@override@JsonKey() final  EnergyMultiplierType energyMultiplier;
/// ********************************************
/// *      NON PERSISTENT
/// ********************************************
@override@JsonKey() final  WordWarning wordWarning;
@override@JsonKey() final  LevelFeaturesSettingsModel featuresSettings;
@override@JsonKey() final  UiLanguage wordsLanguage;

/// Create a copy of LevelBlocState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LevelBlocStateCopyWith<_LevelBlocState> get copyWith => __$LevelBlocStateCopyWithImpl<_LevelBlocState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LevelBlocState&&(identical(other.id, id) || other.id == id)&&(identical(other.currentWord, currentWord) || other.currentWord == currentWord)&&const DeepCollectionEquality().equals(other._words, _words)&&(identical(other.latestWord, latestWord) || other.latestWord == latestWord)&&(identical(other.phaseType, phaseType) || other.phaseType == phaseType)&&(identical(other.energyMultiplier, energyMultiplier) || other.energyMultiplier == energyMultiplier)&&(identical(other.wordWarning, wordWarning) || other.wordWarning == wordWarning)&&(identical(other.featuresSettings, featuresSettings) || other.featuresSettings == featuresSettings)&&(identical(other.wordsLanguage, wordsLanguage) || other.wordsLanguage == wordsLanguage));
}


@override
int get hashCode => Object.hash(runtimeType,id,currentWord,const DeepCollectionEquality().hash(_words),latestWord,phaseType,energyMultiplier,wordWarning,featuresSettings,wordsLanguage);

@override
String toString() {
  return 'LevelBlocState(id: $id, currentWord: $currentWord, words: $words, latestWord: $latestWord, phaseType: $phaseType, energyMultiplier: $energyMultiplier, wordWarning: $wordWarning, featuresSettings: $featuresSettings, wordsLanguage: $wordsLanguage)';
}


}

/// @nodoc
abstract mixin class _$LevelBlocStateCopyWith<$Res> implements $LevelBlocStateCopyWith<$Res> {
  factory _$LevelBlocStateCopyWith(_LevelBlocState value, $Res Function(_LevelBlocState) _then) = __$LevelBlocStateCopyWithImpl;
@override @useResult
$Res call({
 CanvasDataModelId id, CurrentWordModel currentWord, Map<FullWordString, PlayerProfileModelId> words, String latestWord, GamePhaseType phaseType, EnergyMultiplierType energyMultiplier, WordWarning wordWarning, LevelFeaturesSettingsModel featuresSettings, UiLanguage wordsLanguage
});


@override $CurrentWordModelCopyWith<$Res> get currentWord;

}
/// @nodoc
class __$LevelBlocStateCopyWithImpl<$Res>
    implements _$LevelBlocStateCopyWith<$Res> {
  __$LevelBlocStateCopyWithImpl(this._self, this._then);

  final _LevelBlocState _self;
  final $Res Function(_LevelBlocState) _then;

/// Create a copy of LevelBlocState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? currentWord = null,Object? words = null,Object? latestWord = null,Object? phaseType = null,Object? energyMultiplier = null,Object? wordWarning = null,Object? featuresSettings = null,Object? wordsLanguage = null,}) {
  return _then(_LevelBlocState(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as CanvasDataModelId,currentWord: null == currentWord ? _self.currentWord : currentWord // ignore: cast_nullable_to_non_nullable
as CurrentWordModel,words: null == words ? _self._words : words // ignore: cast_nullable_to_non_nullable
as Map<FullWordString, PlayerProfileModelId>,latestWord: null == latestWord ? _self.latestWord : latestWord // ignore: cast_nullable_to_non_nullable
as String,phaseType: null == phaseType ? _self.phaseType : phaseType // ignore: cast_nullable_to_non_nullable
as GamePhaseType,energyMultiplier: null == energyMultiplier ? _self.energyMultiplier : energyMultiplier // ignore: cast_nullable_to_non_nullable
as EnergyMultiplierType,wordWarning: null == wordWarning ? _self.wordWarning : wordWarning // ignore: cast_nullable_to_non_nullable
as WordWarning,featuresSettings: null == featuresSettings ? _self.featuresSettings : featuresSettings // ignore: cast_nullable_to_non_nullable
as LevelFeaturesSettingsModel,wordsLanguage: null == wordsLanguage ? _self.wordsLanguage : wordsLanguage // ignore: cast_nullable_to_non_nullable
as UiLanguage,
  ));
}

/// Create a copy of LevelBlocState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrentWordModelCopyWith<$Res> get currentWord {
  
  return $CurrentWordModelCopyWith<$Res>(_self.currentWord, (value) {
    return _then(_self.copyWith(currentWord: value));
  });
}
}

// dart format on
