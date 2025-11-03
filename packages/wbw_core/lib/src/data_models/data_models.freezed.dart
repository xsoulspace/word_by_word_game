// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppSettingsModel {

@JsonKey(fromJson: localeFromString, toJson: localeToString) Locale? get locale; BrightnessMode get brightnessMode; WindowSizePreset get windowSizePreset;
/// Create a copy of AppSettingsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppSettingsModelCopyWith<AppSettingsModel> get copyWith => _$AppSettingsModelCopyWithImpl<AppSettingsModel>(this as AppSettingsModel, _$identity);

  /// Serializes this AppSettingsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppSettingsModel&&(identical(other.locale, locale) || other.locale == locale)&&(identical(other.brightnessMode, brightnessMode) || other.brightnessMode == brightnessMode)&&(identical(other.windowSizePreset, windowSizePreset) || other.windowSizePreset == windowSizePreset));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,locale,brightnessMode,windowSizePreset);

@override
String toString() {
  return 'AppSettingsModel(locale: $locale, brightnessMode: $brightnessMode, windowSizePreset: $windowSizePreset)';
}


}

/// @nodoc
abstract mixin class $AppSettingsModelCopyWith<$Res>  {
  factory $AppSettingsModelCopyWith(AppSettingsModel value, $Res Function(AppSettingsModel) _then) = _$AppSettingsModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(fromJson: localeFromString, toJson: localeToString) Locale? locale, BrightnessMode brightnessMode, WindowSizePreset windowSizePreset
});




}
/// @nodoc
class _$AppSettingsModelCopyWithImpl<$Res>
    implements $AppSettingsModelCopyWith<$Res> {
  _$AppSettingsModelCopyWithImpl(this._self, this._then);

  final AppSettingsModel _self;
  final $Res Function(AppSettingsModel) _then;

/// Create a copy of AppSettingsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? locale = freezed,Object? brightnessMode = null,Object? windowSizePreset = null,}) {
  return _then(_self.copyWith(
locale: freezed == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as Locale?,brightnessMode: null == brightnessMode ? _self.brightnessMode : brightnessMode // ignore: cast_nullable_to_non_nullable
as BrightnessMode,windowSizePreset: null == windowSizePreset ? _self.windowSizePreset : windowSizePreset // ignore: cast_nullable_to_non_nullable
as WindowSizePreset,
  ));
}

}


/// Adds pattern-matching-related methods to [AppSettingsModel].
extension AppSettingsModelPatterns on AppSettingsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppSettingsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppSettingsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppSettingsModel value)  $default,){
final _that = this;
switch (_that) {
case _AppSettingsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppSettingsModel value)?  $default,){
final _that = this;
switch (_that) {
case _AppSettingsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(fromJson: localeFromString, toJson: localeToString)  Locale? locale,  BrightnessMode brightnessMode,  WindowSizePreset windowSizePreset)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppSettingsModel() when $default != null:
return $default(_that.locale,_that.brightnessMode,_that.windowSizePreset);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(fromJson: localeFromString, toJson: localeToString)  Locale? locale,  BrightnessMode brightnessMode,  WindowSizePreset windowSizePreset)  $default,) {final _that = this;
switch (_that) {
case _AppSettingsModel():
return $default(_that.locale,_that.brightnessMode,_that.windowSizePreset);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(fromJson: localeFromString, toJson: localeToString)  Locale? locale,  BrightnessMode brightnessMode,  WindowSizePreset windowSizePreset)?  $default,) {final _that = this;
switch (_that) {
case _AppSettingsModel() when $default != null:
return $default(_that.locale,_that.brightnessMode,_that.windowSizePreset);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _AppSettingsModel extends AppSettingsModel {
  const _AppSettingsModel({@JsonKey(fromJson: localeFromString, toJson: localeToString) this.locale, this.brightnessMode = BrightnessMode.system, this.windowSizePreset = WindowSizePreset.auto}): super._();
  factory _AppSettingsModel.fromJson(Map<String, dynamic> json) => _$AppSettingsModelFromJson(json);

@override@JsonKey(fromJson: localeFromString, toJson: localeToString) final  Locale? locale;
@override@JsonKey() final  BrightnessMode brightnessMode;
@override@JsonKey() final  WindowSizePreset windowSizePreset;

/// Create a copy of AppSettingsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppSettingsModelCopyWith<_AppSettingsModel> get copyWith => __$AppSettingsModelCopyWithImpl<_AppSettingsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppSettingsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppSettingsModel&&(identical(other.locale, locale) || other.locale == locale)&&(identical(other.brightnessMode, brightnessMode) || other.brightnessMode == brightnessMode)&&(identical(other.windowSizePreset, windowSizePreset) || other.windowSizePreset == windowSizePreset));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,locale,brightnessMode,windowSizePreset);

@override
String toString() {
  return 'AppSettingsModel(locale: $locale, brightnessMode: $brightnessMode, windowSizePreset: $windowSizePreset)';
}


}

/// @nodoc
abstract mixin class _$AppSettingsModelCopyWith<$Res> implements $AppSettingsModelCopyWith<$Res> {
  factory _$AppSettingsModelCopyWith(_AppSettingsModel value, $Res Function(_AppSettingsModel) _then) = __$AppSettingsModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(fromJson: localeFromString, toJson: localeToString) Locale? locale, BrightnessMode brightnessMode, WindowSizePreset windowSizePreset
});




}
/// @nodoc
class __$AppSettingsModelCopyWithImpl<$Res>
    implements _$AppSettingsModelCopyWith<$Res> {
  __$AppSettingsModelCopyWithImpl(this._self, this._then);

  final _AppSettingsModel _self;
  final $Res Function(_AppSettingsModel) _then;

/// Create a copy of AppSettingsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? locale = freezed,Object? brightnessMode = null,Object? windowSizePreset = null,}) {
  return _then(_AppSettingsModel(
locale: freezed == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as Locale?,brightnessMode: null == brightnessMode ? _self.brightnessMode : brightnessMode // ignore: cast_nullable_to_non_nullable
as BrightnessMode,windowSizePreset: null == windowSizePreset ? _self.windowSizePreset : windowSizePreset // ignore: cast_nullable_to_non_nullable
as WindowSizePreset,
  ));
}


}


/// @nodoc
mixin _$CurrentWordModel {

 List<int> get inactiveIndexes; FullWordString get fullWord;
/// Create a copy of CurrentWordModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrentWordModelCopyWith<CurrentWordModel> get copyWith => _$CurrentWordModelCopyWithImpl<CurrentWordModel>(this as CurrentWordModel, _$identity);

  /// Serializes this CurrentWordModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrentWordModel&&const DeepCollectionEquality().equals(other.inactiveIndexes, inactiveIndexes)&&(identical(other.fullWord, fullWord) || other.fullWord == fullWord));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(inactiveIndexes),fullWord);

@override
String toString() {
  return 'CurrentWordModel(inactiveIndexes: $inactiveIndexes, fullWord: $fullWord)';
}


}

/// @nodoc
abstract mixin class $CurrentWordModelCopyWith<$Res>  {
  factory $CurrentWordModelCopyWith(CurrentWordModel value, $Res Function(CurrentWordModel) _then) = _$CurrentWordModelCopyWithImpl;
@useResult
$Res call({
 List<int> inactiveIndexes, FullWordString fullWord
});




}
/// @nodoc
class _$CurrentWordModelCopyWithImpl<$Res>
    implements $CurrentWordModelCopyWith<$Res> {
  _$CurrentWordModelCopyWithImpl(this._self, this._then);

  final CurrentWordModel _self;
  final $Res Function(CurrentWordModel) _then;

/// Create a copy of CurrentWordModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? inactiveIndexes = null,Object? fullWord = null,}) {
  return _then(_self.copyWith(
inactiveIndexes: null == inactiveIndexes ? _self.inactiveIndexes : inactiveIndexes // ignore: cast_nullable_to_non_nullable
as List<int>,fullWord: null == fullWord ? _self.fullWord : fullWord // ignore: cast_nullable_to_non_nullable
as FullWordString,
  ));
}

}


/// Adds pattern-matching-related methods to [CurrentWordModel].
extension CurrentWordModelPatterns on CurrentWordModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CurrentWordModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CurrentWordModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CurrentWordModel value)  $default,){
final _that = this;
switch (_that) {
case _CurrentWordModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CurrentWordModel value)?  $default,){
final _that = this;
switch (_that) {
case _CurrentWordModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<int> inactiveIndexes,  FullWordString fullWord)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CurrentWordModel() when $default != null:
return $default(_that.inactiveIndexes,_that.fullWord);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<int> inactiveIndexes,  FullWordString fullWord)  $default,) {final _that = this;
switch (_that) {
case _CurrentWordModel():
return $default(_that.inactiveIndexes,_that.fullWord);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<int> inactiveIndexes,  FullWordString fullWord)?  $default,) {final _that = this;
switch (_that) {
case _CurrentWordModel() when $default != null:
return $default(_that.inactiveIndexes,_that.fullWord);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _CurrentWordModel extends CurrentWordModel {
  const _CurrentWordModel({final  List<int> inactiveIndexes = const [], this.fullWord = ''}): _inactiveIndexes = inactiveIndexes,super._();
  factory _CurrentWordModel.fromJson(Map<String, dynamic> json) => _$CurrentWordModelFromJson(json);

 final  List<int> _inactiveIndexes;
@override@JsonKey() List<int> get inactiveIndexes {
  if (_inactiveIndexes is EqualUnmodifiableListView) return _inactiveIndexes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_inactiveIndexes);
}

@override@JsonKey() final  FullWordString fullWord;

/// Create a copy of CurrentWordModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrentWordModelCopyWith<_CurrentWordModel> get copyWith => __$CurrentWordModelCopyWithImpl<_CurrentWordModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CurrentWordModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurrentWordModel&&const DeepCollectionEquality().equals(other._inactiveIndexes, _inactiveIndexes)&&(identical(other.fullWord, fullWord) || other.fullWord == fullWord));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_inactiveIndexes),fullWord);

@override
String toString() {
  return 'CurrentWordModel(inactiveIndexes: $inactiveIndexes, fullWord: $fullWord)';
}


}

/// @nodoc
abstract mixin class _$CurrentWordModelCopyWith<$Res> implements $CurrentWordModelCopyWith<$Res> {
  factory _$CurrentWordModelCopyWith(_CurrentWordModel value, $Res Function(_CurrentWordModel) _then) = __$CurrentWordModelCopyWithImpl;
@override @useResult
$Res call({
 List<int> inactiveIndexes, FullWordString fullWord
});




}
/// @nodoc
class __$CurrentWordModelCopyWithImpl<$Res>
    implements _$CurrentWordModelCopyWith<$Res> {
  __$CurrentWordModelCopyWithImpl(this._self, this._then);

  final _CurrentWordModel _self;
  final $Res Function(_CurrentWordModel) _then;

/// Create a copy of CurrentWordModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? inactiveIndexes = null,Object? fullWord = null,}) {
  return _then(_CurrentWordModel(
inactiveIndexes: null == inactiveIndexes ? _self._inactiveIndexes : inactiveIndexes // ignore: cast_nullable_to_non_nullable
as List<int>,fullWord: null == fullWord ? _self.fullWord : fullWord // ignore: cast_nullable_to_non_nullable
as FullWordString,
  ));
}


}

GameSaveModel _$GameSaveModelFromJson(
  Map<String, dynamic> json
) {
    return _GameModel.fromJson(
      json
    );
}

/// @nodoc
mixin _$GameSaveModel {

 GameSaveModelId get id;/// Id of current level
 CanvasDataModelId get currentLevelId;/// Saved level configuration to get player an option to restart a level
 LevelModel? get currentLevel; GameVersion get version;/// Global players statistics and data.
 List<PlayerProfileModel> get playersCollection; List<PlayerCharacterModel> get playersCharacters; TutorialCollectionsProgressModel get tutorialProgress;@JsonKey(fromJson: GameSaveModel._savedLevelsFromJson, toJson: GameSaveModel._savedLevelsToJson) Map<CanvasDataModelId, LevelModel> get savedLevels;
/// Create a copy of GameSaveModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameSaveModelCopyWith<GameSaveModel> get copyWith => _$GameSaveModelCopyWithImpl<GameSaveModel>(this as GameSaveModel, _$identity);

  /// Serializes this GameSaveModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameSaveModel&&(identical(other.id, id) || other.id == id)&&(identical(other.currentLevelId, currentLevelId) || other.currentLevelId == currentLevelId)&&(identical(other.currentLevel, currentLevel) || other.currentLevel == currentLevel)&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other.playersCollection, playersCollection)&&const DeepCollectionEquality().equals(other.playersCharacters, playersCharacters)&&(identical(other.tutorialProgress, tutorialProgress) || other.tutorialProgress == tutorialProgress)&&const DeepCollectionEquality().equals(other.savedLevels, savedLevels));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,currentLevelId,currentLevel,version,const DeepCollectionEquality().hash(playersCollection),const DeepCollectionEquality().hash(playersCharacters),tutorialProgress,const DeepCollectionEquality().hash(savedLevels));

@override
String toString() {
  return 'GameSaveModel(id: $id, currentLevelId: $currentLevelId, currentLevel: $currentLevel, version: $version, playersCollection: $playersCollection, playersCharacters: $playersCharacters, tutorialProgress: $tutorialProgress, savedLevels: $savedLevels)';
}


}

/// @nodoc
abstract mixin class $GameSaveModelCopyWith<$Res>  {
  factory $GameSaveModelCopyWith(GameSaveModel value, $Res Function(GameSaveModel) _then) = _$GameSaveModelCopyWithImpl;
@useResult
$Res call({
 GameSaveModelId id, CanvasDataModelId currentLevelId, LevelModel? currentLevel, GameVersion version, List<PlayerProfileModel> playersCollection, List<PlayerCharacterModel> playersCharacters, TutorialCollectionsProgressModel tutorialProgress,@JsonKey(fromJson: GameSaveModel._savedLevelsFromJson, toJson: GameSaveModel._savedLevelsToJson) Map<CanvasDataModelId, LevelModel> savedLevels
});


$LevelModelCopyWith<$Res>? get currentLevel;$TutorialCollectionsProgressModelCopyWith<$Res> get tutorialProgress;

}
/// @nodoc
class _$GameSaveModelCopyWithImpl<$Res>
    implements $GameSaveModelCopyWith<$Res> {
  _$GameSaveModelCopyWithImpl(this._self, this._then);

  final GameSaveModel _self;
  final $Res Function(GameSaveModel) _then;

/// Create a copy of GameSaveModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? currentLevelId = null,Object? currentLevel = freezed,Object? version = null,Object? playersCollection = null,Object? playersCharacters = null,Object? tutorialProgress = null,Object? savedLevels = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as GameSaveModelId,currentLevelId: null == currentLevelId ? _self.currentLevelId : currentLevelId // ignore: cast_nullable_to_non_nullable
as CanvasDataModelId,currentLevel: freezed == currentLevel ? _self.currentLevel : currentLevel // ignore: cast_nullable_to_non_nullable
as LevelModel?,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as GameVersion,playersCollection: null == playersCollection ? _self.playersCollection : playersCollection // ignore: cast_nullable_to_non_nullable
as List<PlayerProfileModel>,playersCharacters: null == playersCharacters ? _self.playersCharacters : playersCharacters // ignore: cast_nullable_to_non_nullable
as List<PlayerCharacterModel>,tutorialProgress: null == tutorialProgress ? _self.tutorialProgress : tutorialProgress // ignore: cast_nullable_to_non_nullable
as TutorialCollectionsProgressModel,savedLevels: null == savedLevels ? _self.savedLevels : savedLevels // ignore: cast_nullable_to_non_nullable
as Map<CanvasDataModelId, LevelModel>,
  ));
}
/// Create a copy of GameSaveModel
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
}/// Create a copy of GameSaveModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TutorialCollectionsProgressModelCopyWith<$Res> get tutorialProgress {
  
  return $TutorialCollectionsProgressModelCopyWith<$Res>(_self.tutorialProgress, (value) {
    return _then(_self.copyWith(tutorialProgress: value));
  });
}
}


/// Adds pattern-matching-related methods to [GameSaveModel].
extension GameSaveModelPatterns on GameSaveModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameModel value)  $default,){
final _that = this;
switch (_that) {
case _GameModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameModel value)?  $default,){
final _that = this;
switch (_that) {
case _GameModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GameSaveModelId id,  CanvasDataModelId currentLevelId,  LevelModel? currentLevel,  GameVersion version,  List<PlayerProfileModel> playersCollection,  List<PlayerCharacterModel> playersCharacters,  TutorialCollectionsProgressModel tutorialProgress, @JsonKey(fromJson: GameSaveModel._savedLevelsFromJson, toJson: GameSaveModel._savedLevelsToJson)  Map<CanvasDataModelId, LevelModel> savedLevels)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameModel() when $default != null:
return $default(_that.id,_that.currentLevelId,_that.currentLevel,_that.version,_that.playersCollection,_that.playersCharacters,_that.tutorialProgress,_that.savedLevels);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GameSaveModelId id,  CanvasDataModelId currentLevelId,  LevelModel? currentLevel,  GameVersion version,  List<PlayerProfileModel> playersCollection,  List<PlayerCharacterModel> playersCharacters,  TutorialCollectionsProgressModel tutorialProgress, @JsonKey(fromJson: GameSaveModel._savedLevelsFromJson, toJson: GameSaveModel._savedLevelsToJson)  Map<CanvasDataModelId, LevelModel> savedLevels)  $default,) {final _that = this;
switch (_that) {
case _GameModel():
return $default(_that.id,_that.currentLevelId,_that.currentLevel,_that.version,_that.playersCollection,_that.playersCharacters,_that.tutorialProgress,_that.savedLevels);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GameSaveModelId id,  CanvasDataModelId currentLevelId,  LevelModel? currentLevel,  GameVersion version,  List<PlayerProfileModel> playersCollection,  List<PlayerCharacterModel> playersCharacters,  TutorialCollectionsProgressModel tutorialProgress, @JsonKey(fromJson: GameSaveModel._savedLevelsFromJson, toJson: GameSaveModel._savedLevelsToJson)  Map<CanvasDataModelId, LevelModel> savedLevels)?  $default,) {final _that = this;
switch (_that) {
case _GameModel() when $default != null:
return $default(_that.id,_that.currentLevelId,_that.currentLevel,_that.version,_that.playersCollection,_that.playersCharacters,_that.tutorialProgress,_that.savedLevels);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _GameModel extends GameSaveModel {
  const _GameModel({required this.id, required this.currentLevelId, this.currentLevel, this.version = kLatestGameVersion, final  List<PlayerProfileModel> playersCollection = const [], final  List<PlayerCharacterModel> playersCharacters = const [], this.tutorialProgress = TutorialCollectionsProgressModel.empty, @JsonKey(fromJson: GameSaveModel._savedLevelsFromJson, toJson: GameSaveModel._savedLevelsToJson) final  Map<CanvasDataModelId, LevelModel> savedLevels = const {}}): _playersCollection = playersCollection,_playersCharacters = playersCharacters,_savedLevels = savedLevels,super._();
  factory _GameModel.fromJson(Map<String, dynamic> json) => _$GameModelFromJson(json);

@override final  GameSaveModelId id;
/// Id of current level
@override final  CanvasDataModelId currentLevelId;
/// Saved level configuration to get player an option to restart a level
@override final  LevelModel? currentLevel;
@override@JsonKey() final  GameVersion version;
/// Global players statistics and data.
 final  List<PlayerProfileModel> _playersCollection;
/// Global players statistics and data.
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

@override@JsonKey() final  TutorialCollectionsProgressModel tutorialProgress;
 final  Map<CanvasDataModelId, LevelModel> _savedLevels;
@override@JsonKey(fromJson: GameSaveModel._savedLevelsFromJson, toJson: GameSaveModel._savedLevelsToJson) Map<CanvasDataModelId, LevelModel> get savedLevels {
  if (_savedLevels is EqualUnmodifiableMapView) return _savedLevels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_savedLevels);
}


/// Create a copy of GameSaveModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameModelCopyWith<_GameModel> get copyWith => __$GameModelCopyWithImpl<_GameModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameModel&&(identical(other.id, id) || other.id == id)&&(identical(other.currentLevelId, currentLevelId) || other.currentLevelId == currentLevelId)&&(identical(other.currentLevel, currentLevel) || other.currentLevel == currentLevel)&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other._playersCollection, _playersCollection)&&const DeepCollectionEquality().equals(other._playersCharacters, _playersCharacters)&&(identical(other.tutorialProgress, tutorialProgress) || other.tutorialProgress == tutorialProgress)&&const DeepCollectionEquality().equals(other._savedLevels, _savedLevels));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,currentLevelId,currentLevel,version,const DeepCollectionEquality().hash(_playersCollection),const DeepCollectionEquality().hash(_playersCharacters),tutorialProgress,const DeepCollectionEquality().hash(_savedLevels));

@override
String toString() {
  return 'GameSaveModel(id: $id, currentLevelId: $currentLevelId, currentLevel: $currentLevel, version: $version, playersCollection: $playersCollection, playersCharacters: $playersCharacters, tutorialProgress: $tutorialProgress, savedLevels: $savedLevels)';
}


}

/// @nodoc
abstract mixin class _$GameModelCopyWith<$Res> implements $GameSaveModelCopyWith<$Res> {
  factory _$GameModelCopyWith(_GameModel value, $Res Function(_GameModel) _then) = __$GameModelCopyWithImpl;
@override @useResult
$Res call({
 GameSaveModelId id, CanvasDataModelId currentLevelId, LevelModel? currentLevel, GameVersion version, List<PlayerProfileModel> playersCollection, List<PlayerCharacterModel> playersCharacters, TutorialCollectionsProgressModel tutorialProgress,@JsonKey(fromJson: GameSaveModel._savedLevelsFromJson, toJson: GameSaveModel._savedLevelsToJson) Map<CanvasDataModelId, LevelModel> savedLevels
});


@override $LevelModelCopyWith<$Res>? get currentLevel;@override $TutorialCollectionsProgressModelCopyWith<$Res> get tutorialProgress;

}
/// @nodoc
class __$GameModelCopyWithImpl<$Res>
    implements _$GameModelCopyWith<$Res> {
  __$GameModelCopyWithImpl(this._self, this._then);

  final _GameModel _self;
  final $Res Function(_GameModel) _then;

/// Create a copy of GameSaveModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? currentLevelId = null,Object? currentLevel = freezed,Object? version = null,Object? playersCollection = null,Object? playersCharacters = null,Object? tutorialProgress = null,Object? savedLevels = null,}) {
  return _then(_GameModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as GameSaveModelId,currentLevelId: null == currentLevelId ? _self.currentLevelId : currentLevelId // ignore: cast_nullable_to_non_nullable
as CanvasDataModelId,currentLevel: freezed == currentLevel ? _self.currentLevel : currentLevel // ignore: cast_nullable_to_non_nullable
as LevelModel?,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as GameVersion,playersCollection: null == playersCollection ? _self._playersCollection : playersCollection // ignore: cast_nullable_to_non_nullable
as List<PlayerProfileModel>,playersCharacters: null == playersCharacters ? _self._playersCharacters : playersCharacters // ignore: cast_nullable_to_non_nullable
as List<PlayerCharacterModel>,tutorialProgress: null == tutorialProgress ? _self.tutorialProgress : tutorialProgress // ignore: cast_nullable_to_non_nullable
as TutorialCollectionsProgressModel,savedLevels: null == savedLevels ? _self._savedLevels : savedLevels // ignore: cast_nullable_to_non_nullable
as Map<CanvasDataModelId, LevelModel>,
  ));
}

/// Create a copy of GameSaveModel
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
}/// Create a copy of GameSaveModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TutorialCollectionsProgressModelCopyWith<$Res> get tutorialProgress {
  
  return $TutorialCollectionsProgressModelCopyWith<$Res>(_self.tutorialProgress, (value) {
    return _then(_self.copyWith(tutorialProgress: value));
  });
}
}


/// @nodoc
mixin _$LevelCharactersModel {

 PlayerCharacterModel get playerCharacter;/// {@template focusedObjectId}
/// The difference of having focused object id is that it is not tied
/// to a player and can be used to focus on any object in the level.
/// In that case the current player is not focused and camera is not
/// following the player. Instead, the camera is focused on the object
/// with the given id and moves to it.
/// {@endtemplate}
 Gid get focusedObjectGid;
/// Create a copy of LevelCharactersModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LevelCharactersModelCopyWith<LevelCharactersModel> get copyWith => _$LevelCharactersModelCopyWithImpl<LevelCharactersModel>(this as LevelCharactersModel, _$identity);

  /// Serializes this LevelCharactersModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LevelCharactersModel&&(identical(other.playerCharacter, playerCharacter) || other.playerCharacter == playerCharacter)&&(identical(other.focusedObjectGid, focusedObjectGid) || other.focusedObjectGid == focusedObjectGid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,playerCharacter,focusedObjectGid);

@override
String toString() {
  return 'LevelCharactersModel(playerCharacter: $playerCharacter, focusedObjectGid: $focusedObjectGid)';
}


}

/// @nodoc
abstract mixin class $LevelCharactersModelCopyWith<$Res>  {
  factory $LevelCharactersModelCopyWith(LevelCharactersModel value, $Res Function(LevelCharactersModel) _then) = _$LevelCharactersModelCopyWithImpl;
@useResult
$Res call({
 PlayerCharacterModel playerCharacter, Gid focusedObjectGid
});


$PlayerCharacterModelCopyWith<$Res> get playerCharacter;$GidCopyWith<$Res> get focusedObjectGid;

}
/// @nodoc
class _$LevelCharactersModelCopyWithImpl<$Res>
    implements $LevelCharactersModelCopyWith<$Res> {
  _$LevelCharactersModelCopyWithImpl(this._self, this._then);

  final LevelCharactersModel _self;
  final $Res Function(LevelCharactersModel) _then;

/// Create a copy of LevelCharactersModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? playerCharacter = null,Object? focusedObjectGid = null,}) {
  return _then(_self.copyWith(
playerCharacter: null == playerCharacter ? _self.playerCharacter : playerCharacter // ignore: cast_nullable_to_non_nullable
as PlayerCharacterModel,focusedObjectGid: null == focusedObjectGid ? _self.focusedObjectGid : focusedObjectGid // ignore: cast_nullable_to_non_nullable
as Gid,
  ));
}
/// Create a copy of LevelCharactersModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlayerCharacterModelCopyWith<$Res> get playerCharacter {
  
  return $PlayerCharacterModelCopyWith<$Res>(_self.playerCharacter, (value) {
    return _then(_self.copyWith(playerCharacter: value));
  });
}/// Create a copy of LevelCharactersModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GidCopyWith<$Res> get focusedObjectGid {
  
  return $GidCopyWith<$Res>(_self.focusedObjectGid, (value) {
    return _then(_self.copyWith(focusedObjectGid: value));
  });
}
}


/// Adds pattern-matching-related methods to [LevelCharactersModel].
extension LevelCharactersModelPatterns on LevelCharactersModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LevelCharactersModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LevelCharactersModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LevelCharactersModel value)  $default,){
final _that = this;
switch (_that) {
case _LevelCharactersModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LevelCharactersModel value)?  $default,){
final _that = this;
switch (_that) {
case _LevelCharactersModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PlayerCharacterModel playerCharacter,  Gid focusedObjectGid)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LevelCharactersModel() when $default != null:
return $default(_that.playerCharacter,_that.focusedObjectGid);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PlayerCharacterModel playerCharacter,  Gid focusedObjectGid)  $default,) {final _that = this;
switch (_that) {
case _LevelCharactersModel():
return $default(_that.playerCharacter,_that.focusedObjectGid);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PlayerCharacterModel playerCharacter,  Gid focusedObjectGid)?  $default,) {final _that = this;
switch (_that) {
case _LevelCharactersModel() when $default != null:
return $default(_that.playerCharacter,_that.focusedObjectGid);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _LevelCharactersModel extends LevelCharactersModel {
  const _LevelCharactersModel({required this.playerCharacter, this.focusedObjectGid = Gid.empty}): super._();
  factory _LevelCharactersModel.fromJson(Map<String, dynamic> json) => _$LevelCharactersModelFromJson(json);

@override final  PlayerCharacterModel playerCharacter;
/// {@template focusedObjectId}
/// The difference of having focused object id is that it is not tied
/// to a player and can be used to focus on any object in the level.
/// In that case the current player is not focused and camera is not
/// following the player. Instead, the camera is focused on the object
/// with the given id and moves to it.
/// {@endtemplate}
@override@JsonKey() final  Gid focusedObjectGid;

/// Create a copy of LevelCharactersModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LevelCharactersModelCopyWith<_LevelCharactersModel> get copyWith => __$LevelCharactersModelCopyWithImpl<_LevelCharactersModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LevelCharactersModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LevelCharactersModel&&(identical(other.playerCharacter, playerCharacter) || other.playerCharacter == playerCharacter)&&(identical(other.focusedObjectGid, focusedObjectGid) || other.focusedObjectGid == focusedObjectGid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,playerCharacter,focusedObjectGid);

@override
String toString() {
  return 'LevelCharactersModel(playerCharacter: $playerCharacter, focusedObjectGid: $focusedObjectGid)';
}


}

/// @nodoc
abstract mixin class _$LevelCharactersModelCopyWith<$Res> implements $LevelCharactersModelCopyWith<$Res> {
  factory _$LevelCharactersModelCopyWith(_LevelCharactersModel value, $Res Function(_LevelCharactersModel) _then) = __$LevelCharactersModelCopyWithImpl;
@override @useResult
$Res call({
 PlayerCharacterModel playerCharacter, Gid focusedObjectGid
});


@override $PlayerCharacterModelCopyWith<$Res> get playerCharacter;@override $GidCopyWith<$Res> get focusedObjectGid;

}
/// @nodoc
class __$LevelCharactersModelCopyWithImpl<$Res>
    implements _$LevelCharactersModelCopyWith<$Res> {
  __$LevelCharactersModelCopyWithImpl(this._self, this._then);

  final _LevelCharactersModel _self;
  final $Res Function(_LevelCharactersModel) _then;

/// Create a copy of LevelCharactersModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? playerCharacter = null,Object? focusedObjectGid = null,}) {
  return _then(_LevelCharactersModel(
playerCharacter: null == playerCharacter ? _self.playerCharacter : playerCharacter // ignore: cast_nullable_to_non_nullable
as PlayerCharacterModel,focusedObjectGid: null == focusedObjectGid ? _self.focusedObjectGid : focusedObjectGid // ignore: cast_nullable_to_non_nullable
as Gid,
  ));
}

/// Create a copy of LevelCharactersModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlayerCharacterModelCopyWith<$Res> get playerCharacter {
  
  return $PlayerCharacterModelCopyWith<$Res>(_self.playerCharacter, (value) {
    return _then(_self.copyWith(playerCharacter: value));
  });
}/// Create a copy of LevelCharactersModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GidCopyWith<$Res> get focusedObjectGid {
  
  return $GidCopyWith<$Res>(_self.focusedObjectGid, (value) {
    return _then(_self.copyWith(focusedObjectGid: value));
  });
}
}


/// @nodoc
mixin _$LevelModel {

 LevelPlayersModel get players; LevelCharactersModel get characters;/// update this field on every save to get recent save and sort by it
 DateTime? get updatedAt; TilesetType get tilesetType; List<WeatherModel> get weathers; WindModel get wind;/// To get [CanvasDataModel] use [TemplateLevelModel.canvasData]
/// comparing [LevelModel.canvasDataId] with [TemplateLevelModel.id]
 CanvasDataModelId get canvasDataId; CurrentWordModel get currentWord; Map<FullWordString, PlayerProfileModelId> get words; String get latestWord; GamePhaseType get phaseType; EnergyMultiplierType get actionMultiplier; WorldDateTimeModel get dateTime; WorldDateTimeModel get lastDateTime; TechnologyTreeProgressModel get technologyTreeProgress; LevelFeaturesSettingsModel get featuresSettings;@JsonKey(fromJson: uiLanguageFromJson, toJson: uiLanguageToJson) UiLanguage get wordsLanguage; PlayerStartPointType get playerStartPoint;/// use these objects to save any objectss from any layer
@JsonKey(fromJson: CanvasDataModel.objectsFromJson, toJson: CanvasDataModel.objectsToJson) Map<Gid, RenderObjectModel> get canvasObjects;/// savable layers
 List<LayerModel> get canvasLayers;
/// Create a copy of LevelModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LevelModelCopyWith<LevelModel> get copyWith => _$LevelModelCopyWithImpl<LevelModel>(this as LevelModel, _$identity);

  /// Serializes this LevelModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LevelModel&&(identical(other.players, players) || other.players == players)&&(identical(other.characters, characters) || other.characters == characters)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.tilesetType, tilesetType) || other.tilesetType == tilesetType)&&const DeepCollectionEquality().equals(other.weathers, weathers)&&(identical(other.wind, wind) || other.wind == wind)&&(identical(other.canvasDataId, canvasDataId) || other.canvasDataId == canvasDataId)&&(identical(other.currentWord, currentWord) || other.currentWord == currentWord)&&const DeepCollectionEquality().equals(other.words, words)&&(identical(other.latestWord, latestWord) || other.latestWord == latestWord)&&(identical(other.phaseType, phaseType) || other.phaseType == phaseType)&&(identical(other.actionMultiplier, actionMultiplier) || other.actionMultiplier == actionMultiplier)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.lastDateTime, lastDateTime) || other.lastDateTime == lastDateTime)&&(identical(other.technologyTreeProgress, technologyTreeProgress) || other.technologyTreeProgress == technologyTreeProgress)&&(identical(other.featuresSettings, featuresSettings) || other.featuresSettings == featuresSettings)&&(identical(other.wordsLanguage, wordsLanguage) || other.wordsLanguage == wordsLanguage)&&(identical(other.playerStartPoint, playerStartPoint) || other.playerStartPoint == playerStartPoint)&&const DeepCollectionEquality().equals(other.canvasObjects, canvasObjects)&&const DeepCollectionEquality().equals(other.canvasLayers, canvasLayers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,players,characters,updatedAt,tilesetType,const DeepCollectionEquality().hash(weathers),wind,canvasDataId,currentWord,const DeepCollectionEquality().hash(words),latestWord,phaseType,actionMultiplier,dateTime,lastDateTime,technologyTreeProgress,featuresSettings,wordsLanguage,playerStartPoint,const DeepCollectionEquality().hash(canvasObjects),const DeepCollectionEquality().hash(canvasLayers)]);

@override
String toString() {
  return 'LevelModel(players: $players, characters: $characters, updatedAt: $updatedAt, tilesetType: $tilesetType, weathers: $weathers, wind: $wind, canvasDataId: $canvasDataId, currentWord: $currentWord, words: $words, latestWord: $latestWord, phaseType: $phaseType, actionMultiplier: $actionMultiplier, dateTime: $dateTime, lastDateTime: $lastDateTime, technologyTreeProgress: $technologyTreeProgress, featuresSettings: $featuresSettings, wordsLanguage: $wordsLanguage, playerStartPoint: $playerStartPoint, canvasObjects: $canvasObjects, canvasLayers: $canvasLayers)';
}


}

/// @nodoc
abstract mixin class $LevelModelCopyWith<$Res>  {
  factory $LevelModelCopyWith(LevelModel value, $Res Function(LevelModel) _then) = _$LevelModelCopyWithImpl;
@useResult
$Res call({
 LevelPlayersModel players, LevelCharactersModel characters, DateTime? updatedAt, TilesetType tilesetType, List<WeatherModel> weathers, WindModel wind, CanvasDataModelId canvasDataId, CurrentWordModel currentWord, Map<FullWordString, PlayerProfileModelId> words, String latestWord, GamePhaseType phaseType, EnergyMultiplierType actionMultiplier, WorldDateTimeModel dateTime, WorldDateTimeModel lastDateTime, TechnologyTreeProgressModel technologyTreeProgress, LevelFeaturesSettingsModel featuresSettings,@JsonKey(fromJson: uiLanguageFromJson, toJson: uiLanguageToJson) UiLanguage wordsLanguage, PlayerStartPointType playerStartPoint,@JsonKey(fromJson: CanvasDataModel.objectsFromJson, toJson: CanvasDataModel.objectsToJson) Map<Gid, RenderObjectModel> canvasObjects, List<LayerModel> canvasLayers
});


$LevelPlayersModelCopyWith<$Res> get players;$LevelCharactersModelCopyWith<$Res> get characters;$WindModelCopyWith<$Res> get wind;$CurrentWordModelCopyWith<$Res> get currentWord;$WorldDateTimeModelCopyWith<$Res> get dateTime;$WorldDateTimeModelCopyWith<$Res> get lastDateTime;$TechnologyTreeProgressModelCopyWith<$Res> get technologyTreeProgress;

}
/// @nodoc
class _$LevelModelCopyWithImpl<$Res>
    implements $LevelModelCopyWith<$Res> {
  _$LevelModelCopyWithImpl(this._self, this._then);

  final LevelModel _self;
  final $Res Function(LevelModel) _then;

/// Create a copy of LevelModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? players = null,Object? characters = null,Object? updatedAt = freezed,Object? tilesetType = null,Object? weathers = null,Object? wind = null,Object? canvasDataId = null,Object? currentWord = null,Object? words = null,Object? latestWord = null,Object? phaseType = null,Object? actionMultiplier = null,Object? dateTime = null,Object? lastDateTime = null,Object? technologyTreeProgress = null,Object? featuresSettings = null,Object? wordsLanguage = null,Object? playerStartPoint = null,Object? canvasObjects = null,Object? canvasLayers = null,}) {
  return _then(_self.copyWith(
players: null == players ? _self.players : players // ignore: cast_nullable_to_non_nullable
as LevelPlayersModel,characters: null == characters ? _self.characters : characters // ignore: cast_nullable_to_non_nullable
as LevelCharactersModel,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,tilesetType: null == tilesetType ? _self.tilesetType : tilesetType // ignore: cast_nullable_to_non_nullable
as TilesetType,weathers: null == weathers ? _self.weathers : weathers // ignore: cast_nullable_to_non_nullable
as List<WeatherModel>,wind: null == wind ? _self.wind : wind // ignore: cast_nullable_to_non_nullable
as WindModel,canvasDataId: null == canvasDataId ? _self.canvasDataId : canvasDataId // ignore: cast_nullable_to_non_nullable
as CanvasDataModelId,currentWord: null == currentWord ? _self.currentWord : currentWord // ignore: cast_nullable_to_non_nullable
as CurrentWordModel,words: null == words ? _self.words : words // ignore: cast_nullable_to_non_nullable
as Map<FullWordString, PlayerProfileModelId>,latestWord: null == latestWord ? _self.latestWord : latestWord // ignore: cast_nullable_to_non_nullable
as String,phaseType: null == phaseType ? _self.phaseType : phaseType // ignore: cast_nullable_to_non_nullable
as GamePhaseType,actionMultiplier: null == actionMultiplier ? _self.actionMultiplier : actionMultiplier // ignore: cast_nullable_to_non_nullable
as EnergyMultiplierType,dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as WorldDateTimeModel,lastDateTime: null == lastDateTime ? _self.lastDateTime : lastDateTime // ignore: cast_nullable_to_non_nullable
as WorldDateTimeModel,technologyTreeProgress: null == technologyTreeProgress ? _self.technologyTreeProgress : technologyTreeProgress // ignore: cast_nullable_to_non_nullable
as TechnologyTreeProgressModel,featuresSettings: null == featuresSettings ? _self.featuresSettings : featuresSettings // ignore: cast_nullable_to_non_nullable
as LevelFeaturesSettingsModel,wordsLanguage: null == wordsLanguage ? _self.wordsLanguage : wordsLanguage // ignore: cast_nullable_to_non_nullable
as UiLanguage,playerStartPoint: null == playerStartPoint ? _self.playerStartPoint : playerStartPoint // ignore: cast_nullable_to_non_nullable
as PlayerStartPointType,canvasObjects: null == canvasObjects ? _self.canvasObjects : canvasObjects // ignore: cast_nullable_to_non_nullable
as Map<Gid, RenderObjectModel>,canvasLayers: null == canvasLayers ? _self.canvasLayers : canvasLayers // ignore: cast_nullable_to_non_nullable
as List<LayerModel>,
  ));
}
/// Create a copy of LevelModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LevelPlayersModelCopyWith<$Res> get players {
  
  return $LevelPlayersModelCopyWith<$Res>(_self.players, (value) {
    return _then(_self.copyWith(players: value));
  });
}/// Create a copy of LevelModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LevelCharactersModelCopyWith<$Res> get characters {
  
  return $LevelCharactersModelCopyWith<$Res>(_self.characters, (value) {
    return _then(_self.copyWith(characters: value));
  });
}/// Create a copy of LevelModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WindModelCopyWith<$Res> get wind {
  
  return $WindModelCopyWith<$Res>(_self.wind, (value) {
    return _then(_self.copyWith(wind: value));
  });
}/// Create a copy of LevelModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrentWordModelCopyWith<$Res> get currentWord {
  
  return $CurrentWordModelCopyWith<$Res>(_self.currentWord, (value) {
    return _then(_self.copyWith(currentWord: value));
  });
}/// Create a copy of LevelModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorldDateTimeModelCopyWith<$Res> get dateTime {
  
  return $WorldDateTimeModelCopyWith<$Res>(_self.dateTime, (value) {
    return _then(_self.copyWith(dateTime: value));
  });
}/// Create a copy of LevelModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorldDateTimeModelCopyWith<$Res> get lastDateTime {
  
  return $WorldDateTimeModelCopyWith<$Res>(_self.lastDateTime, (value) {
    return _then(_self.copyWith(lastDateTime: value));
  });
}/// Create a copy of LevelModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TechnologyTreeProgressModelCopyWith<$Res> get technologyTreeProgress {
  
  return $TechnologyTreeProgressModelCopyWith<$Res>(_self.technologyTreeProgress, (value) {
    return _then(_self.copyWith(technologyTreeProgress: value));
  });
}
}


/// Adds pattern-matching-related methods to [LevelModel].
extension LevelModelPatterns on LevelModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LevelModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LevelModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LevelModel value)  $default,){
final _that = this;
switch (_that) {
case _LevelModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LevelModel value)?  $default,){
final _that = this;
switch (_that) {
case _LevelModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LevelPlayersModel players,  LevelCharactersModel characters,  DateTime? updatedAt,  TilesetType tilesetType,  List<WeatherModel> weathers,  WindModel wind,  CanvasDataModelId canvasDataId,  CurrentWordModel currentWord,  Map<FullWordString, PlayerProfileModelId> words,  String latestWord,  GamePhaseType phaseType,  EnergyMultiplierType actionMultiplier,  WorldDateTimeModel dateTime,  WorldDateTimeModel lastDateTime,  TechnologyTreeProgressModel technologyTreeProgress,  LevelFeaturesSettingsModel featuresSettings, @JsonKey(fromJson: uiLanguageFromJson, toJson: uiLanguageToJson)  UiLanguage wordsLanguage,  PlayerStartPointType playerStartPoint, @JsonKey(fromJson: CanvasDataModel.objectsFromJson, toJson: CanvasDataModel.objectsToJson)  Map<Gid, RenderObjectModel> canvasObjects,  List<LayerModel> canvasLayers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LevelModel() when $default != null:
return $default(_that.players,_that.characters,_that.updatedAt,_that.tilesetType,_that.weathers,_that.wind,_that.canvasDataId,_that.currentWord,_that.words,_that.latestWord,_that.phaseType,_that.actionMultiplier,_that.dateTime,_that.lastDateTime,_that.technologyTreeProgress,_that.featuresSettings,_that.wordsLanguage,_that.playerStartPoint,_that.canvasObjects,_that.canvasLayers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LevelPlayersModel players,  LevelCharactersModel characters,  DateTime? updatedAt,  TilesetType tilesetType,  List<WeatherModel> weathers,  WindModel wind,  CanvasDataModelId canvasDataId,  CurrentWordModel currentWord,  Map<FullWordString, PlayerProfileModelId> words,  String latestWord,  GamePhaseType phaseType,  EnergyMultiplierType actionMultiplier,  WorldDateTimeModel dateTime,  WorldDateTimeModel lastDateTime,  TechnologyTreeProgressModel technologyTreeProgress,  LevelFeaturesSettingsModel featuresSettings, @JsonKey(fromJson: uiLanguageFromJson, toJson: uiLanguageToJson)  UiLanguage wordsLanguage,  PlayerStartPointType playerStartPoint, @JsonKey(fromJson: CanvasDataModel.objectsFromJson, toJson: CanvasDataModel.objectsToJson)  Map<Gid, RenderObjectModel> canvasObjects,  List<LayerModel> canvasLayers)  $default,) {final _that = this;
switch (_that) {
case _LevelModel():
return $default(_that.players,_that.characters,_that.updatedAt,_that.tilesetType,_that.weathers,_that.wind,_that.canvasDataId,_that.currentWord,_that.words,_that.latestWord,_that.phaseType,_that.actionMultiplier,_that.dateTime,_that.lastDateTime,_that.technologyTreeProgress,_that.featuresSettings,_that.wordsLanguage,_that.playerStartPoint,_that.canvasObjects,_that.canvasLayers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LevelPlayersModel players,  LevelCharactersModel characters,  DateTime? updatedAt,  TilesetType tilesetType,  List<WeatherModel> weathers,  WindModel wind,  CanvasDataModelId canvasDataId,  CurrentWordModel currentWord,  Map<FullWordString, PlayerProfileModelId> words,  String latestWord,  GamePhaseType phaseType,  EnergyMultiplierType actionMultiplier,  WorldDateTimeModel dateTime,  WorldDateTimeModel lastDateTime,  TechnologyTreeProgressModel technologyTreeProgress,  LevelFeaturesSettingsModel featuresSettings, @JsonKey(fromJson: uiLanguageFromJson, toJson: uiLanguageToJson)  UiLanguage wordsLanguage,  PlayerStartPointType playerStartPoint, @JsonKey(fromJson: CanvasDataModel.objectsFromJson, toJson: CanvasDataModel.objectsToJson)  Map<Gid, RenderObjectModel> canvasObjects,  List<LayerModel> canvasLayers)?  $default,) {final _that = this;
switch (_that) {
case _LevelModel() when $default != null:
return $default(_that.players,_that.characters,_that.updatedAt,_that.tilesetType,_that.weathers,_that.wind,_that.canvasDataId,_that.currentWord,_that.words,_that.latestWord,_that.phaseType,_that.actionMultiplier,_that.dateTime,_that.lastDateTime,_that.technologyTreeProgress,_that.featuresSettings,_that.wordsLanguage,_that.playerStartPoint,_that.canvasObjects,_that.canvasLayers);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _LevelModel extends LevelModel {
  const _LevelModel({required this.players, required this.characters, this.updatedAt, this.tilesetType = TilesetType.whiteBlack, final  List<WeatherModel> weathers = const [], this.wind = WindModel.zero, this.canvasDataId = CanvasDataModelId.empty, this.currentWord = const CurrentWordModel(), final  Map<FullWordString, PlayerProfileModelId> words = const {}, this.latestWord = '', this.phaseType = GamePhaseType.entryWord, this.actionMultiplier = EnergyMultiplierType.m1, this.dateTime = WorldDateTimeModel.zero, this.lastDateTime = WorldDateTimeModel.zero, this.technologyTreeProgress = TechnologyTreeProgressModel.empty, this.featuresSettings = LevelFeaturesSettingsModel.allDisabled, @JsonKey(fromJson: uiLanguageFromJson, toJson: uiLanguageToJson) this.wordsLanguage = defaultLanguage, this.playerStartPoint = PlayerStartPointType.fromSpawnPoint, @JsonKey(fromJson: CanvasDataModel.objectsFromJson, toJson: CanvasDataModel.objectsToJson) final  Map<Gid, RenderObjectModel> canvasObjects = const {}, final  List<LayerModel> canvasLayers = const []}): _weathers = weathers,_words = words,_canvasObjects = canvasObjects,_canvasLayers = canvasLayers,super._();
  factory _LevelModel.fromJson(Map<String, dynamic> json) => _$LevelModelFromJson(json);

@override final  LevelPlayersModel players;
@override final  LevelCharactersModel characters;
/// update this field on every save to get recent save and sort by it
@override final  DateTime? updatedAt;
@override@JsonKey() final  TilesetType tilesetType;
 final  List<WeatherModel> _weathers;
@override@JsonKey() List<WeatherModel> get weathers {
  if (_weathers is EqualUnmodifiableListView) return _weathers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_weathers);
}

@override@JsonKey() final  WindModel wind;
/// To get [CanvasDataModel] use [TemplateLevelModel.canvasData]
/// comparing [LevelModel.canvasDataId] with [TemplateLevelModel.id]
@override@JsonKey() final  CanvasDataModelId canvasDataId;
@override@JsonKey() final  CurrentWordModel currentWord;
 final  Map<FullWordString, PlayerProfileModelId> _words;
@override@JsonKey() Map<FullWordString, PlayerProfileModelId> get words {
  if (_words is EqualUnmodifiableMapView) return _words;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_words);
}

@override@JsonKey() final  String latestWord;
@override@JsonKey() final  GamePhaseType phaseType;
@override@JsonKey() final  EnergyMultiplierType actionMultiplier;
@override@JsonKey() final  WorldDateTimeModel dateTime;
@override@JsonKey() final  WorldDateTimeModel lastDateTime;
@override@JsonKey() final  TechnologyTreeProgressModel technologyTreeProgress;
@override@JsonKey() final  LevelFeaturesSettingsModel featuresSettings;
@override@JsonKey(fromJson: uiLanguageFromJson, toJson: uiLanguageToJson) final  UiLanguage wordsLanguage;
@override@JsonKey() final  PlayerStartPointType playerStartPoint;
/// use these objects to save any objectss from any layer
 final  Map<Gid, RenderObjectModel> _canvasObjects;
/// use these objects to save any objectss from any layer
@override@JsonKey(fromJson: CanvasDataModel.objectsFromJson, toJson: CanvasDataModel.objectsToJson) Map<Gid, RenderObjectModel> get canvasObjects {
  if (_canvasObjects is EqualUnmodifiableMapView) return _canvasObjects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_canvasObjects);
}

/// savable layers
 final  List<LayerModel> _canvasLayers;
/// savable layers
@override@JsonKey() List<LayerModel> get canvasLayers {
  if (_canvasLayers is EqualUnmodifiableListView) return _canvasLayers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_canvasLayers);
}


/// Create a copy of LevelModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LevelModelCopyWith<_LevelModel> get copyWith => __$LevelModelCopyWithImpl<_LevelModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LevelModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LevelModel&&(identical(other.players, players) || other.players == players)&&(identical(other.characters, characters) || other.characters == characters)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.tilesetType, tilesetType) || other.tilesetType == tilesetType)&&const DeepCollectionEquality().equals(other._weathers, _weathers)&&(identical(other.wind, wind) || other.wind == wind)&&(identical(other.canvasDataId, canvasDataId) || other.canvasDataId == canvasDataId)&&(identical(other.currentWord, currentWord) || other.currentWord == currentWord)&&const DeepCollectionEquality().equals(other._words, _words)&&(identical(other.latestWord, latestWord) || other.latestWord == latestWord)&&(identical(other.phaseType, phaseType) || other.phaseType == phaseType)&&(identical(other.actionMultiplier, actionMultiplier) || other.actionMultiplier == actionMultiplier)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.lastDateTime, lastDateTime) || other.lastDateTime == lastDateTime)&&(identical(other.technologyTreeProgress, technologyTreeProgress) || other.technologyTreeProgress == technologyTreeProgress)&&(identical(other.featuresSettings, featuresSettings) || other.featuresSettings == featuresSettings)&&(identical(other.wordsLanguage, wordsLanguage) || other.wordsLanguage == wordsLanguage)&&(identical(other.playerStartPoint, playerStartPoint) || other.playerStartPoint == playerStartPoint)&&const DeepCollectionEquality().equals(other._canvasObjects, _canvasObjects)&&const DeepCollectionEquality().equals(other._canvasLayers, _canvasLayers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,players,characters,updatedAt,tilesetType,const DeepCollectionEquality().hash(_weathers),wind,canvasDataId,currentWord,const DeepCollectionEquality().hash(_words),latestWord,phaseType,actionMultiplier,dateTime,lastDateTime,technologyTreeProgress,featuresSettings,wordsLanguage,playerStartPoint,const DeepCollectionEquality().hash(_canvasObjects),const DeepCollectionEquality().hash(_canvasLayers)]);

@override
String toString() {
  return 'LevelModel(players: $players, characters: $characters, updatedAt: $updatedAt, tilesetType: $tilesetType, weathers: $weathers, wind: $wind, canvasDataId: $canvasDataId, currentWord: $currentWord, words: $words, latestWord: $latestWord, phaseType: $phaseType, actionMultiplier: $actionMultiplier, dateTime: $dateTime, lastDateTime: $lastDateTime, technologyTreeProgress: $technologyTreeProgress, featuresSettings: $featuresSettings, wordsLanguage: $wordsLanguage, playerStartPoint: $playerStartPoint, canvasObjects: $canvasObjects, canvasLayers: $canvasLayers)';
}


}

/// @nodoc
abstract mixin class _$LevelModelCopyWith<$Res> implements $LevelModelCopyWith<$Res> {
  factory _$LevelModelCopyWith(_LevelModel value, $Res Function(_LevelModel) _then) = __$LevelModelCopyWithImpl;
@override @useResult
$Res call({
 LevelPlayersModel players, LevelCharactersModel characters, DateTime? updatedAt, TilesetType tilesetType, List<WeatherModel> weathers, WindModel wind, CanvasDataModelId canvasDataId, CurrentWordModel currentWord, Map<FullWordString, PlayerProfileModelId> words, String latestWord, GamePhaseType phaseType, EnergyMultiplierType actionMultiplier, WorldDateTimeModel dateTime, WorldDateTimeModel lastDateTime, TechnologyTreeProgressModel technologyTreeProgress, LevelFeaturesSettingsModel featuresSettings,@JsonKey(fromJson: uiLanguageFromJson, toJson: uiLanguageToJson) UiLanguage wordsLanguage, PlayerStartPointType playerStartPoint,@JsonKey(fromJson: CanvasDataModel.objectsFromJson, toJson: CanvasDataModel.objectsToJson) Map<Gid, RenderObjectModel> canvasObjects, List<LayerModel> canvasLayers
});


@override $LevelPlayersModelCopyWith<$Res> get players;@override $LevelCharactersModelCopyWith<$Res> get characters;@override $WindModelCopyWith<$Res> get wind;@override $CurrentWordModelCopyWith<$Res> get currentWord;@override $WorldDateTimeModelCopyWith<$Res> get dateTime;@override $WorldDateTimeModelCopyWith<$Res> get lastDateTime;@override $TechnologyTreeProgressModelCopyWith<$Res> get technologyTreeProgress;

}
/// @nodoc
class __$LevelModelCopyWithImpl<$Res>
    implements _$LevelModelCopyWith<$Res> {
  __$LevelModelCopyWithImpl(this._self, this._then);

  final _LevelModel _self;
  final $Res Function(_LevelModel) _then;

/// Create a copy of LevelModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? players = null,Object? characters = null,Object? updatedAt = freezed,Object? tilesetType = null,Object? weathers = null,Object? wind = null,Object? canvasDataId = null,Object? currentWord = null,Object? words = null,Object? latestWord = null,Object? phaseType = null,Object? actionMultiplier = null,Object? dateTime = null,Object? lastDateTime = null,Object? technologyTreeProgress = null,Object? featuresSettings = null,Object? wordsLanguage = null,Object? playerStartPoint = null,Object? canvasObjects = null,Object? canvasLayers = null,}) {
  return _then(_LevelModel(
players: null == players ? _self.players : players // ignore: cast_nullable_to_non_nullable
as LevelPlayersModel,characters: null == characters ? _self.characters : characters // ignore: cast_nullable_to_non_nullable
as LevelCharactersModel,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,tilesetType: null == tilesetType ? _self.tilesetType : tilesetType // ignore: cast_nullable_to_non_nullable
as TilesetType,weathers: null == weathers ? _self._weathers : weathers // ignore: cast_nullable_to_non_nullable
as List<WeatherModel>,wind: null == wind ? _self.wind : wind // ignore: cast_nullable_to_non_nullable
as WindModel,canvasDataId: null == canvasDataId ? _self.canvasDataId : canvasDataId // ignore: cast_nullable_to_non_nullable
as CanvasDataModelId,currentWord: null == currentWord ? _self.currentWord : currentWord // ignore: cast_nullable_to_non_nullable
as CurrentWordModel,words: null == words ? _self._words : words // ignore: cast_nullable_to_non_nullable
as Map<FullWordString, PlayerProfileModelId>,latestWord: null == latestWord ? _self.latestWord : latestWord // ignore: cast_nullable_to_non_nullable
as String,phaseType: null == phaseType ? _self.phaseType : phaseType // ignore: cast_nullable_to_non_nullable
as GamePhaseType,actionMultiplier: null == actionMultiplier ? _self.actionMultiplier : actionMultiplier // ignore: cast_nullable_to_non_nullable
as EnergyMultiplierType,dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as WorldDateTimeModel,lastDateTime: null == lastDateTime ? _self.lastDateTime : lastDateTime // ignore: cast_nullable_to_non_nullable
as WorldDateTimeModel,technologyTreeProgress: null == technologyTreeProgress ? _self.technologyTreeProgress : technologyTreeProgress // ignore: cast_nullable_to_non_nullable
as TechnologyTreeProgressModel,featuresSettings: null == featuresSettings ? _self.featuresSettings : featuresSettings // ignore: cast_nullable_to_non_nullable
as LevelFeaturesSettingsModel,wordsLanguage: null == wordsLanguage ? _self.wordsLanguage : wordsLanguage // ignore: cast_nullable_to_non_nullable
as UiLanguage,playerStartPoint: null == playerStartPoint ? _self.playerStartPoint : playerStartPoint // ignore: cast_nullable_to_non_nullable
as PlayerStartPointType,canvasObjects: null == canvasObjects ? _self._canvasObjects : canvasObjects // ignore: cast_nullable_to_non_nullable
as Map<Gid, RenderObjectModel>,canvasLayers: null == canvasLayers ? _self._canvasLayers : canvasLayers // ignore: cast_nullable_to_non_nullable
as List<LayerModel>,
  ));
}

/// Create a copy of LevelModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LevelPlayersModelCopyWith<$Res> get players {
  
  return $LevelPlayersModelCopyWith<$Res>(_self.players, (value) {
    return _then(_self.copyWith(players: value));
  });
}/// Create a copy of LevelModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LevelCharactersModelCopyWith<$Res> get characters {
  
  return $LevelCharactersModelCopyWith<$Res>(_self.characters, (value) {
    return _then(_self.copyWith(characters: value));
  });
}/// Create a copy of LevelModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WindModelCopyWith<$Res> get wind {
  
  return $WindModelCopyWith<$Res>(_self.wind, (value) {
    return _then(_self.copyWith(wind: value));
  });
}/// Create a copy of LevelModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrentWordModelCopyWith<$Res> get currentWord {
  
  return $CurrentWordModelCopyWith<$Res>(_self.currentWord, (value) {
    return _then(_self.copyWith(currentWord: value));
  });
}/// Create a copy of LevelModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorldDateTimeModelCopyWith<$Res> get dateTime {
  
  return $WorldDateTimeModelCopyWith<$Res>(_self.dateTime, (value) {
    return _then(_self.copyWith(dateTime: value));
  });
}/// Create a copy of LevelModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorldDateTimeModelCopyWith<$Res> get lastDateTime {
  
  return $WorldDateTimeModelCopyWith<$Res>(_self.lastDateTime, (value) {
    return _then(_self.copyWith(lastDateTime: value));
  });
}/// Create a copy of LevelModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TechnologyTreeProgressModelCopyWith<$Res> get technologyTreeProgress {
  
  return $TechnologyTreeProgressModelCopyWith<$Res>(_self.technologyTreeProgress, (value) {
    return _then(_self.copyWith(technologyTreeProgress: value));
  });
}
}


/// @nodoc
mixin _$LevelPlayersModel {

 List<PlayerProfileModel> get players; PlayerProfileModelId get currentPlayerId;
/// Create a copy of LevelPlayersModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LevelPlayersModelCopyWith<LevelPlayersModel> get copyWith => _$LevelPlayersModelCopyWithImpl<LevelPlayersModel>(this as LevelPlayersModel, _$identity);

  /// Serializes this LevelPlayersModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LevelPlayersModel&&const DeepCollectionEquality().equals(other.players, players)&&(identical(other.currentPlayerId, currentPlayerId) || other.currentPlayerId == currentPlayerId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(players),currentPlayerId);

@override
String toString() {
  return 'LevelPlayersModel(players: $players, currentPlayerId: $currentPlayerId)';
}


}

/// @nodoc
abstract mixin class $LevelPlayersModelCopyWith<$Res>  {
  factory $LevelPlayersModelCopyWith(LevelPlayersModel value, $Res Function(LevelPlayersModel) _then) = _$LevelPlayersModelCopyWithImpl;
@useResult
$Res call({
 List<PlayerProfileModel> players, PlayerProfileModelId currentPlayerId
});




}
/// @nodoc
class _$LevelPlayersModelCopyWithImpl<$Res>
    implements $LevelPlayersModelCopyWith<$Res> {
  _$LevelPlayersModelCopyWithImpl(this._self, this._then);

  final LevelPlayersModel _self;
  final $Res Function(LevelPlayersModel) _then;

/// Create a copy of LevelPlayersModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? players = null,Object? currentPlayerId = null,}) {
  return _then(_self.copyWith(
players: null == players ? _self.players : players // ignore: cast_nullable_to_non_nullable
as List<PlayerProfileModel>,currentPlayerId: null == currentPlayerId ? _self.currentPlayerId : currentPlayerId // ignore: cast_nullable_to_non_nullable
as PlayerProfileModelId,
  ));
}

}


/// Adds pattern-matching-related methods to [LevelPlayersModel].
extension LevelPlayersModelPatterns on LevelPlayersModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LevelPlayersModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LevelPlayersModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LevelPlayersModel value)  $default,){
final _that = this;
switch (_that) {
case _LevelPlayersModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LevelPlayersModel value)?  $default,){
final _that = this;
switch (_that) {
case _LevelPlayersModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PlayerProfileModel> players,  PlayerProfileModelId currentPlayerId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LevelPlayersModel() when $default != null:
return $default(_that.players,_that.currentPlayerId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PlayerProfileModel> players,  PlayerProfileModelId currentPlayerId)  $default,) {final _that = this;
switch (_that) {
case _LevelPlayersModel():
return $default(_that.players,_that.currentPlayerId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PlayerProfileModel> players,  PlayerProfileModelId currentPlayerId)?  $default,) {final _that = this;
switch (_that) {
case _LevelPlayersModel() when $default != null:
return $default(_that.players,_that.currentPlayerId);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _LevelPlayersModel extends LevelPlayersModel {
  const _LevelPlayersModel({required final  List<PlayerProfileModel> players, required this.currentPlayerId}): _players = players,super._();
  factory _LevelPlayersModel.fromJson(Map<String, dynamic> json) => _$LevelPlayersModelFromJson(json);

 final  List<PlayerProfileModel> _players;
@override List<PlayerProfileModel> get players {
  if (_players is EqualUnmodifiableListView) return _players;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_players);
}

@override final  PlayerProfileModelId currentPlayerId;

/// Create a copy of LevelPlayersModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LevelPlayersModelCopyWith<_LevelPlayersModel> get copyWith => __$LevelPlayersModelCopyWithImpl<_LevelPlayersModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LevelPlayersModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LevelPlayersModel&&const DeepCollectionEquality().equals(other._players, _players)&&(identical(other.currentPlayerId, currentPlayerId) || other.currentPlayerId == currentPlayerId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_players),currentPlayerId);

@override
String toString() {
  return 'LevelPlayersModel(players: $players, currentPlayerId: $currentPlayerId)';
}


}

/// @nodoc
abstract mixin class _$LevelPlayersModelCopyWith<$Res> implements $LevelPlayersModelCopyWith<$Res> {
  factory _$LevelPlayersModelCopyWith(_LevelPlayersModel value, $Res Function(_LevelPlayersModel) _then) = __$LevelPlayersModelCopyWithImpl;
@override @useResult
$Res call({
 List<PlayerProfileModel> players, PlayerProfileModelId currentPlayerId
});




}
/// @nodoc
class __$LevelPlayersModelCopyWithImpl<$Res>
    implements _$LevelPlayersModelCopyWith<$Res> {
  __$LevelPlayersModelCopyWithImpl(this._self, this._then);

  final _LevelPlayersModel _self;
  final $Res Function(_LevelPlayersModel) _then;

/// Create a copy of LevelPlayersModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? players = null,Object? currentPlayerId = null,}) {
  return _then(_LevelPlayersModel(
players: null == players ? _self._players : players // ignore: cast_nullable_to_non_nullable
as List<PlayerProfileModel>,currentPlayerId: null == currentPlayerId ? _self.currentPlayerId : currentPlayerId // ignore: cast_nullable_to_non_nullable
as PlayerProfileModelId,
  ));
}


}


/// @nodoc
mixin _$PlayerCharacterModel {

/// unique id which used to identify unqiue set of following params:
/// [balloonPowers] [balloonParams] [color] [localizedName] etc
 Gid get id;/// is assigning during game start to pick required tileId's
/// reference from the canvasCubit
 Gid get gid; String get description; int get color;@JsonKey(fromJson: LocalizedMap.fromJson, toJson: LocalizedMap.toJsonValueMap) LocalizedMap get localizedName; String get characterIcon; SerializedVector2 get distanceToOrigin;/// use this vector, to restore object position
/// after object was deleted. For example, if player had
/// crashed, then we need to restore
/// his position to the last checkpoint if it is exists.
 SerializedVector2 get checkpointDistanceToOrigin; BalloonLiftPowersModel get balloonPowers; BalloonLiftParamsModel get balloonParams;/// If is true, then it means that the balloon is on the ground and
/// cannot be moved.
 bool get isAnchored;
/// Create a copy of PlayerCharacterModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlayerCharacterModelCopyWith<PlayerCharacterModel> get copyWith => _$PlayerCharacterModelCopyWithImpl<PlayerCharacterModel>(this as PlayerCharacterModel, _$identity);

  /// Serializes this PlayerCharacterModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayerCharacterModel&&(identical(other.id, id) || other.id == id)&&(identical(other.gid, gid) || other.gid == gid)&&(identical(other.description, description) || other.description == description)&&(identical(other.color, color) || other.color == color)&&(identical(other.localizedName, localizedName) || other.localizedName == localizedName)&&(identical(other.characterIcon, characterIcon) || other.characterIcon == characterIcon)&&(identical(other.distanceToOrigin, distanceToOrigin) || other.distanceToOrigin == distanceToOrigin)&&(identical(other.checkpointDistanceToOrigin, checkpointDistanceToOrigin) || other.checkpointDistanceToOrigin == checkpointDistanceToOrigin)&&(identical(other.balloonPowers, balloonPowers) || other.balloonPowers == balloonPowers)&&(identical(other.balloonParams, balloonParams) || other.balloonParams == balloonParams)&&(identical(other.isAnchored, isAnchored) || other.isAnchored == isAnchored));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,gid,description,color,localizedName,characterIcon,distanceToOrigin,checkpointDistanceToOrigin,balloonPowers,balloonParams,isAnchored);

@override
String toString() {
  return 'PlayerCharacterModel(id: $id, gid: $gid, description: $description, color: $color, localizedName: $localizedName, characterIcon: $characterIcon, distanceToOrigin: $distanceToOrigin, checkpointDistanceToOrigin: $checkpointDistanceToOrigin, balloonPowers: $balloonPowers, balloonParams: $balloonParams, isAnchored: $isAnchored)';
}


}

/// @nodoc
abstract mixin class $PlayerCharacterModelCopyWith<$Res>  {
  factory $PlayerCharacterModelCopyWith(PlayerCharacterModel value, $Res Function(PlayerCharacterModel) _then) = _$PlayerCharacterModelCopyWithImpl;
@useResult
$Res call({
 Gid id, Gid gid, String description, int color,@JsonKey(fromJson: LocalizedMap.fromJson, toJson: LocalizedMap.toJsonValueMap) LocalizedMap localizedName, String characterIcon, SerializedVector2 distanceToOrigin, SerializedVector2 checkpointDistanceToOrigin, BalloonLiftPowersModel balloonPowers, BalloonLiftParamsModel balloonParams, bool isAnchored
});


$GidCopyWith<$Res> get id;$GidCopyWith<$Res> get gid;$SerializedVector2CopyWith<$Res> get distanceToOrigin;$SerializedVector2CopyWith<$Res> get checkpointDistanceToOrigin;$BalloonLiftPowersModelCopyWith<$Res> get balloonPowers;$BalloonLiftParamsModelCopyWith<$Res> get balloonParams;

}
/// @nodoc
class _$PlayerCharacterModelCopyWithImpl<$Res>
    implements $PlayerCharacterModelCopyWith<$Res> {
  _$PlayerCharacterModelCopyWithImpl(this._self, this._then);

  final PlayerCharacterModel _self;
  final $Res Function(PlayerCharacterModel) _then;

/// Create a copy of PlayerCharacterModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? gid = null,Object? description = null,Object? color = null,Object? localizedName = null,Object? characterIcon = null,Object? distanceToOrigin = null,Object? checkpointDistanceToOrigin = null,Object? balloonPowers = null,Object? balloonParams = null,Object? isAnchored = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Gid,gid: null == gid ? _self.gid : gid // ignore: cast_nullable_to_non_nullable
as Gid,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as int,localizedName: null == localizedName ? _self.localizedName : localizedName // ignore: cast_nullable_to_non_nullable
as LocalizedMap,characterIcon: null == characterIcon ? _self.characterIcon : characterIcon // ignore: cast_nullable_to_non_nullable
as String,distanceToOrigin: null == distanceToOrigin ? _self.distanceToOrigin : distanceToOrigin // ignore: cast_nullable_to_non_nullable
as SerializedVector2,checkpointDistanceToOrigin: null == checkpointDistanceToOrigin ? _self.checkpointDistanceToOrigin : checkpointDistanceToOrigin // ignore: cast_nullable_to_non_nullable
as SerializedVector2,balloonPowers: null == balloonPowers ? _self.balloonPowers : balloonPowers // ignore: cast_nullable_to_non_nullable
as BalloonLiftPowersModel,balloonParams: null == balloonParams ? _self.balloonParams : balloonParams // ignore: cast_nullable_to_non_nullable
as BalloonLiftParamsModel,isAnchored: null == isAnchored ? _self.isAnchored : isAnchored // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of PlayerCharacterModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GidCopyWith<$Res> get id {
  
  return $GidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of PlayerCharacterModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GidCopyWith<$Res> get gid {
  
  return $GidCopyWith<$Res>(_self.gid, (value) {
    return _then(_self.copyWith(gid: value));
  });
}/// Create a copy of PlayerCharacterModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SerializedVector2CopyWith<$Res> get distanceToOrigin {
  
  return $SerializedVector2CopyWith<$Res>(_self.distanceToOrigin, (value) {
    return _then(_self.copyWith(distanceToOrigin: value));
  });
}/// Create a copy of PlayerCharacterModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SerializedVector2CopyWith<$Res> get checkpointDistanceToOrigin {
  
  return $SerializedVector2CopyWith<$Res>(_self.checkpointDistanceToOrigin, (value) {
    return _then(_self.copyWith(checkpointDistanceToOrigin: value));
  });
}/// Create a copy of PlayerCharacterModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BalloonLiftPowersModelCopyWith<$Res> get balloonPowers {
  
  return $BalloonLiftPowersModelCopyWith<$Res>(_self.balloonPowers, (value) {
    return _then(_self.copyWith(balloonPowers: value));
  });
}/// Create a copy of PlayerCharacterModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BalloonLiftParamsModelCopyWith<$Res> get balloonParams {
  
  return $BalloonLiftParamsModelCopyWith<$Res>(_self.balloonParams, (value) {
    return _then(_self.copyWith(balloonParams: value));
  });
}
}


/// Adds pattern-matching-related methods to [PlayerCharacterModel].
extension PlayerCharacterModelPatterns on PlayerCharacterModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlayerCharacterModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlayerCharacterModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlayerCharacterModel value)  $default,){
final _that = this;
switch (_that) {
case _PlayerCharacterModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlayerCharacterModel value)?  $default,){
final _that = this;
switch (_that) {
case _PlayerCharacterModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Gid id,  Gid gid,  String description,  int color, @JsonKey(fromJson: LocalizedMap.fromJson, toJson: LocalizedMap.toJsonValueMap)  LocalizedMap localizedName,  String characterIcon,  SerializedVector2 distanceToOrigin,  SerializedVector2 checkpointDistanceToOrigin,  BalloonLiftPowersModel balloonPowers,  BalloonLiftParamsModel balloonParams,  bool isAnchored)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlayerCharacterModel() when $default != null:
return $default(_that.id,_that.gid,_that.description,_that.color,_that.localizedName,_that.characterIcon,_that.distanceToOrigin,_that.checkpointDistanceToOrigin,_that.balloonPowers,_that.balloonParams,_that.isAnchored);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Gid id,  Gid gid,  String description,  int color, @JsonKey(fromJson: LocalizedMap.fromJson, toJson: LocalizedMap.toJsonValueMap)  LocalizedMap localizedName,  String characterIcon,  SerializedVector2 distanceToOrigin,  SerializedVector2 checkpointDistanceToOrigin,  BalloonLiftPowersModel balloonPowers,  BalloonLiftParamsModel balloonParams,  bool isAnchored)  $default,) {final _that = this;
switch (_that) {
case _PlayerCharacterModel():
return $default(_that.id,_that.gid,_that.description,_that.color,_that.localizedName,_that.characterIcon,_that.distanceToOrigin,_that.checkpointDistanceToOrigin,_that.balloonPowers,_that.balloonParams,_that.isAnchored);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Gid id,  Gid gid,  String description,  int color, @JsonKey(fromJson: LocalizedMap.fromJson, toJson: LocalizedMap.toJsonValueMap)  LocalizedMap localizedName,  String characterIcon,  SerializedVector2 distanceToOrigin,  SerializedVector2 checkpointDistanceToOrigin,  BalloonLiftPowersModel balloonPowers,  BalloonLiftParamsModel balloonParams,  bool isAnchored)?  $default,) {final _that = this;
switch (_that) {
case _PlayerCharacterModel() when $default != null:
return $default(_that.id,_that.gid,_that.description,_that.color,_that.localizedName,_that.characterIcon,_that.distanceToOrigin,_that.checkpointDistanceToOrigin,_that.balloonPowers,_that.balloonParams,_that.isAnchored);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _PlayerCharacterModel extends PlayerCharacterModel {
  const _PlayerCharacterModel({this.id = Gid.empty, this.gid = Gid.empty, this.description = '', this.color = 0, @JsonKey(fromJson: LocalizedMap.fromJson, toJson: LocalizedMap.toJsonValueMap) this.localizedName = LocalizedMap.empty, this.characterIcon = '', this.distanceToOrigin = SerializedVector2.zero, this.checkpointDistanceToOrigin = SerializedVector2.zero, this.balloonPowers = BalloonLiftPowersModel.initial, this.balloonParams = BalloonLiftParamsModel.initial, this.isAnchored = true}): super._();
  factory _PlayerCharacterModel.fromJson(Map<String, dynamic> json) => _$PlayerCharacterModelFromJson(json);

/// unique id which used to identify unqiue set of following params:
/// [balloonPowers] [balloonParams] [color] [localizedName] etc
@override@JsonKey() final  Gid id;
/// is assigning during game start to pick required tileId's
/// reference from the canvasCubit
@override@JsonKey() final  Gid gid;
@override@JsonKey() final  String description;
@override@JsonKey() final  int color;
@override@JsonKey(fromJson: LocalizedMap.fromJson, toJson: LocalizedMap.toJsonValueMap) final  LocalizedMap localizedName;
@override@JsonKey() final  String characterIcon;
@override@JsonKey() final  SerializedVector2 distanceToOrigin;
/// use this vector, to restore object position
/// after object was deleted. For example, if player had
/// crashed, then we need to restore
/// his position to the last checkpoint if it is exists.
@override@JsonKey() final  SerializedVector2 checkpointDistanceToOrigin;
@override@JsonKey() final  BalloonLiftPowersModel balloonPowers;
@override@JsonKey() final  BalloonLiftParamsModel balloonParams;
/// If is true, then it means that the balloon is on the ground and
/// cannot be moved.
@override@JsonKey() final  bool isAnchored;

/// Create a copy of PlayerCharacterModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlayerCharacterModelCopyWith<_PlayerCharacterModel> get copyWith => __$PlayerCharacterModelCopyWithImpl<_PlayerCharacterModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlayerCharacterModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlayerCharacterModel&&(identical(other.id, id) || other.id == id)&&(identical(other.gid, gid) || other.gid == gid)&&(identical(other.description, description) || other.description == description)&&(identical(other.color, color) || other.color == color)&&(identical(other.localizedName, localizedName) || other.localizedName == localizedName)&&(identical(other.characterIcon, characterIcon) || other.characterIcon == characterIcon)&&(identical(other.distanceToOrigin, distanceToOrigin) || other.distanceToOrigin == distanceToOrigin)&&(identical(other.checkpointDistanceToOrigin, checkpointDistanceToOrigin) || other.checkpointDistanceToOrigin == checkpointDistanceToOrigin)&&(identical(other.balloonPowers, balloonPowers) || other.balloonPowers == balloonPowers)&&(identical(other.balloonParams, balloonParams) || other.balloonParams == balloonParams)&&(identical(other.isAnchored, isAnchored) || other.isAnchored == isAnchored));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,gid,description,color,localizedName,characterIcon,distanceToOrigin,checkpointDistanceToOrigin,balloonPowers,balloonParams,isAnchored);

@override
String toString() {
  return 'PlayerCharacterModel(id: $id, gid: $gid, description: $description, color: $color, localizedName: $localizedName, characterIcon: $characterIcon, distanceToOrigin: $distanceToOrigin, checkpointDistanceToOrigin: $checkpointDistanceToOrigin, balloonPowers: $balloonPowers, balloonParams: $balloonParams, isAnchored: $isAnchored)';
}


}

/// @nodoc
abstract mixin class _$PlayerCharacterModelCopyWith<$Res> implements $PlayerCharacterModelCopyWith<$Res> {
  factory _$PlayerCharacterModelCopyWith(_PlayerCharacterModel value, $Res Function(_PlayerCharacterModel) _then) = __$PlayerCharacterModelCopyWithImpl;
@override @useResult
$Res call({
 Gid id, Gid gid, String description, int color,@JsonKey(fromJson: LocalizedMap.fromJson, toJson: LocalizedMap.toJsonValueMap) LocalizedMap localizedName, String characterIcon, SerializedVector2 distanceToOrigin, SerializedVector2 checkpointDistanceToOrigin, BalloonLiftPowersModel balloonPowers, BalloonLiftParamsModel balloonParams, bool isAnchored
});


@override $GidCopyWith<$Res> get id;@override $GidCopyWith<$Res> get gid;@override $SerializedVector2CopyWith<$Res> get distanceToOrigin;@override $SerializedVector2CopyWith<$Res> get checkpointDistanceToOrigin;@override $BalloonLiftPowersModelCopyWith<$Res> get balloonPowers;@override $BalloonLiftParamsModelCopyWith<$Res> get balloonParams;

}
/// @nodoc
class __$PlayerCharacterModelCopyWithImpl<$Res>
    implements _$PlayerCharacterModelCopyWith<$Res> {
  __$PlayerCharacterModelCopyWithImpl(this._self, this._then);

  final _PlayerCharacterModel _self;
  final $Res Function(_PlayerCharacterModel) _then;

/// Create a copy of PlayerCharacterModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? gid = null,Object? description = null,Object? color = null,Object? localizedName = null,Object? characterIcon = null,Object? distanceToOrigin = null,Object? checkpointDistanceToOrigin = null,Object? balloonPowers = null,Object? balloonParams = null,Object? isAnchored = null,}) {
  return _then(_PlayerCharacterModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Gid,gid: null == gid ? _self.gid : gid // ignore: cast_nullable_to_non_nullable
as Gid,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as int,localizedName: null == localizedName ? _self.localizedName : localizedName // ignore: cast_nullable_to_non_nullable
as LocalizedMap,characterIcon: null == characterIcon ? _self.characterIcon : characterIcon // ignore: cast_nullable_to_non_nullable
as String,distanceToOrigin: null == distanceToOrigin ? _self.distanceToOrigin : distanceToOrigin // ignore: cast_nullable_to_non_nullable
as SerializedVector2,checkpointDistanceToOrigin: null == checkpointDistanceToOrigin ? _self.checkpointDistanceToOrigin : checkpointDistanceToOrigin // ignore: cast_nullable_to_non_nullable
as SerializedVector2,balloonPowers: null == balloonPowers ? _self.balloonPowers : balloonPowers // ignore: cast_nullable_to_non_nullable
as BalloonLiftPowersModel,balloonParams: null == balloonParams ? _self.balloonParams : balloonParams // ignore: cast_nullable_to_non_nullable
as BalloonLiftParamsModel,isAnchored: null == isAnchored ? _self.isAnchored : isAnchored // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of PlayerCharacterModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GidCopyWith<$Res> get id {
  
  return $GidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of PlayerCharacterModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GidCopyWith<$Res> get gid {
  
  return $GidCopyWith<$Res>(_self.gid, (value) {
    return _then(_self.copyWith(gid: value));
  });
}/// Create a copy of PlayerCharacterModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SerializedVector2CopyWith<$Res> get distanceToOrigin {
  
  return $SerializedVector2CopyWith<$Res>(_self.distanceToOrigin, (value) {
    return _then(_self.copyWith(distanceToOrigin: value));
  });
}/// Create a copy of PlayerCharacterModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SerializedVector2CopyWith<$Res> get checkpointDistanceToOrigin {
  
  return $SerializedVector2CopyWith<$Res>(_self.checkpointDistanceToOrigin, (value) {
    return _then(_self.copyWith(checkpointDistanceToOrigin: value));
  });
}/// Create a copy of PlayerCharacterModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BalloonLiftPowersModelCopyWith<$Res> get balloonPowers {
  
  return $BalloonLiftPowersModelCopyWith<$Res>(_self.balloonPowers, (value) {
    return _then(_self.copyWith(balloonPowers: value));
  });
}/// Create a copy of PlayerCharacterModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BalloonLiftParamsModelCopyWith<$Res> get balloonParams {
  
  return $BalloonLiftParamsModelCopyWith<$Res>(_self.balloonParams, (value) {
    return _then(_self.copyWith(balloonParams: value));
  });
}
}


/// @nodoc
mixin _$SerializedVector2 {

 double get x; double get y;
/// Create a copy of SerializedVector2
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SerializedVector2CopyWith<SerializedVector2> get copyWith => _$SerializedVector2CopyWithImpl<SerializedVector2>(this as SerializedVector2, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SerializedVector2&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,x,y);

@override
String toString() {
  return 'SerializedVector2(x: $x, y: $y)';
}


}

/// @nodoc
abstract mixin class $SerializedVector2CopyWith<$Res>  {
  factory $SerializedVector2CopyWith(SerializedVector2 value, $Res Function(SerializedVector2) _then) = _$SerializedVector2CopyWithImpl;
@useResult
$Res call({
 double x, double y
});




}
/// @nodoc
class _$SerializedVector2CopyWithImpl<$Res>
    implements $SerializedVector2CopyWith<$Res> {
  _$SerializedVector2CopyWithImpl(this._self, this._then);

  final SerializedVector2 _self;
  final $Res Function(SerializedVector2) _then;

/// Create a copy of SerializedVector2
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? x = null,Object? y = null,}) {
  return _then(_self.copyWith(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as double,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [SerializedVector2].
extension SerializedVector2Patterns on SerializedVector2 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SerializedVector2 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SerializedVector2() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SerializedVector2 value)  $default,){
final _that = this;
switch (_that) {
case _SerializedVector2():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SerializedVector2 value)?  $default,){
final _that = this;
switch (_that) {
case _SerializedVector2() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double x,  double y)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SerializedVector2() when $default != null:
return $default(_that.x,_that.y);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double x,  double y)  $default,) {final _that = this;
switch (_that) {
case _SerializedVector2():
return $default(_that.x,_that.y);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double x,  double y)?  $default,) {final _that = this;
switch (_that) {
case _SerializedVector2() when $default != null:
return $default(_that.x,_that.y);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _SerializedVector2 extends SerializedVector2 {
  const _SerializedVector2({this.x = 0, this.y = 0}): super._();
  factory _SerializedVector2.fromJson(Map<String, dynamic> json) => _$SerializedVector2FromJson(json);

@override@JsonKey() final  double x;
@override@JsonKey() final  double y;

/// Create a copy of SerializedVector2
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SerializedVector2CopyWith<_SerializedVector2> get copyWith => __$SerializedVector2CopyWithImpl<_SerializedVector2>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SerializedVector2&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,x,y);

@override
String toString() {
  return 'SerializedVector2(x: $x, y: $y)';
}


}

/// @nodoc
abstract mixin class _$SerializedVector2CopyWith<$Res> implements $SerializedVector2CopyWith<$Res> {
  factory _$SerializedVector2CopyWith(_SerializedVector2 value, $Res Function(_SerializedVector2) _then) = __$SerializedVector2CopyWithImpl;
@override @useResult
$Res call({
 double x, double y
});




}
/// @nodoc
class __$SerializedVector2CopyWithImpl<$Res>
    implements _$SerializedVector2CopyWith<$Res> {
  __$SerializedVector2CopyWithImpl(this._self, this._then);

  final _SerializedVector2 _self;
  final $Res Function(_SerializedVector2) _then;

/// Create a copy of SerializedVector2
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? x = null,Object? y = null,}) {
  return _then(_SerializedVector2(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as double,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$PlayerProfileModel {

 PlayerProfileModelId get id; int get colorValue; String get name;@JsonKey(fromJson: PlayerProfileModel._highscoreFromJson, toJson: PlayerProfileModel._highscoreToJson) Map<CanvasDataModelId, PlayerLevelHighscoreModel> get levelsHighscores; PlayerHighscoreModel get highscore;
/// Create a copy of PlayerProfileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlayerProfileModelCopyWith<PlayerProfileModel> get copyWith => _$PlayerProfileModelCopyWithImpl<PlayerProfileModel>(this as PlayerProfileModel, _$identity);

  /// Serializes this PlayerProfileModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayerProfileModel&&(identical(other.id, id) || other.id == id)&&(identical(other.colorValue, colorValue) || other.colorValue == colorValue)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.levelsHighscores, levelsHighscores)&&(identical(other.highscore, highscore) || other.highscore == highscore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,colorValue,name,const DeepCollectionEquality().hash(levelsHighscores),highscore);

@override
String toString() {
  return 'PlayerProfileModel(id: $id, colorValue: $colorValue, name: $name, levelsHighscores: $levelsHighscores, highscore: $highscore)';
}


}

/// @nodoc
abstract mixin class $PlayerProfileModelCopyWith<$Res>  {
  factory $PlayerProfileModelCopyWith(PlayerProfileModel value, $Res Function(PlayerProfileModel) _then) = _$PlayerProfileModelCopyWithImpl;
@useResult
$Res call({
 PlayerProfileModelId id, int colorValue, String name,@JsonKey(fromJson: PlayerProfileModel._highscoreFromJson, toJson: PlayerProfileModel._highscoreToJson) Map<CanvasDataModelId, PlayerLevelHighscoreModel> levelsHighscores, PlayerHighscoreModel highscore
});


$PlayerHighscoreModelCopyWith<$Res> get highscore;

}
/// @nodoc
class _$PlayerProfileModelCopyWithImpl<$Res>
    implements $PlayerProfileModelCopyWith<$Res> {
  _$PlayerProfileModelCopyWithImpl(this._self, this._then);

  final PlayerProfileModel _self;
  final $Res Function(PlayerProfileModel) _then;

/// Create a copy of PlayerProfileModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? colorValue = null,Object? name = null,Object? levelsHighscores = null,Object? highscore = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as PlayerProfileModelId,colorValue: null == colorValue ? _self.colorValue : colorValue // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,levelsHighscores: null == levelsHighscores ? _self.levelsHighscores : levelsHighscores // ignore: cast_nullable_to_non_nullable
as Map<CanvasDataModelId, PlayerLevelHighscoreModel>,highscore: null == highscore ? _self.highscore : highscore // ignore: cast_nullable_to_non_nullable
as PlayerHighscoreModel,
  ));
}
/// Create a copy of PlayerProfileModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlayerHighscoreModelCopyWith<$Res> get highscore {
  
  return $PlayerHighscoreModelCopyWith<$Res>(_self.highscore, (value) {
    return _then(_self.copyWith(highscore: value));
  });
}
}


/// Adds pattern-matching-related methods to [PlayerProfileModel].
extension PlayerProfileModelPatterns on PlayerProfileModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlayerProfileModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlayerProfileModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlayerProfileModel value)  $default,){
final _that = this;
switch (_that) {
case _PlayerProfileModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlayerProfileModel value)?  $default,){
final _that = this;
switch (_that) {
case _PlayerProfileModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PlayerProfileModelId id,  int colorValue,  String name, @JsonKey(fromJson: PlayerProfileModel._highscoreFromJson, toJson: PlayerProfileModel._highscoreToJson)  Map<CanvasDataModelId, PlayerLevelHighscoreModel> levelsHighscores,  PlayerHighscoreModel highscore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlayerProfileModel() when $default != null:
return $default(_that.id,_that.colorValue,_that.name,_that.levelsHighscores,_that.highscore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PlayerProfileModelId id,  int colorValue,  String name, @JsonKey(fromJson: PlayerProfileModel._highscoreFromJson, toJson: PlayerProfileModel._highscoreToJson)  Map<CanvasDataModelId, PlayerLevelHighscoreModel> levelsHighscores,  PlayerHighscoreModel highscore)  $default,) {final _that = this;
switch (_that) {
case _PlayerProfileModel():
return $default(_that.id,_that.colorValue,_that.name,_that.levelsHighscores,_that.highscore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PlayerProfileModelId id,  int colorValue,  String name, @JsonKey(fromJson: PlayerProfileModel._highscoreFromJson, toJson: PlayerProfileModel._highscoreToJson)  Map<CanvasDataModelId, PlayerLevelHighscoreModel> levelsHighscores,  PlayerHighscoreModel highscore)?  $default,) {final _that = this;
switch (_that) {
case _PlayerProfileModel() when $default != null:
return $default(_that.id,_that.colorValue,_that.name,_that.levelsHighscores,_that.highscore);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _PlayerProfileModel extends PlayerProfileModel {
  const _PlayerProfileModel({required this.id, required this.colorValue, required this.name, @JsonKey(fromJson: PlayerProfileModel._highscoreFromJson, toJson: PlayerProfileModel._highscoreToJson) final  Map<CanvasDataModelId, PlayerLevelHighscoreModel> levelsHighscores = const {}, this.highscore = PlayerHighscoreModel.empty}): _levelsHighscores = levelsHighscores,super._();
  factory _PlayerProfileModel.fromJson(Map<String, dynamic> json) => _$PlayerProfileModelFromJson(json);

@override final  PlayerProfileModelId id;
@override final  int colorValue;
@override final  String name;
 final  Map<CanvasDataModelId, PlayerLevelHighscoreModel> _levelsHighscores;
@override@JsonKey(fromJson: PlayerProfileModel._highscoreFromJson, toJson: PlayerProfileModel._highscoreToJson) Map<CanvasDataModelId, PlayerLevelHighscoreModel> get levelsHighscores {
  if (_levelsHighscores is EqualUnmodifiableMapView) return _levelsHighscores;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_levelsHighscores);
}

@override@JsonKey() final  PlayerHighscoreModel highscore;

/// Create a copy of PlayerProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlayerProfileModelCopyWith<_PlayerProfileModel> get copyWith => __$PlayerProfileModelCopyWithImpl<_PlayerProfileModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlayerProfileModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlayerProfileModel&&(identical(other.id, id) || other.id == id)&&(identical(other.colorValue, colorValue) || other.colorValue == colorValue)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._levelsHighscores, _levelsHighscores)&&(identical(other.highscore, highscore) || other.highscore == highscore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,colorValue,name,const DeepCollectionEquality().hash(_levelsHighscores),highscore);

@override
String toString() {
  return 'PlayerProfileModel(id: $id, colorValue: $colorValue, name: $name, levelsHighscores: $levelsHighscores, highscore: $highscore)';
}


}

/// @nodoc
abstract mixin class _$PlayerProfileModelCopyWith<$Res> implements $PlayerProfileModelCopyWith<$Res> {
  factory _$PlayerProfileModelCopyWith(_PlayerProfileModel value, $Res Function(_PlayerProfileModel) _then) = __$PlayerProfileModelCopyWithImpl;
@override @useResult
$Res call({
 PlayerProfileModelId id, int colorValue, String name,@JsonKey(fromJson: PlayerProfileModel._highscoreFromJson, toJson: PlayerProfileModel._highscoreToJson) Map<CanvasDataModelId, PlayerLevelHighscoreModel> levelsHighscores, PlayerHighscoreModel highscore
});


@override $PlayerHighscoreModelCopyWith<$Res> get highscore;

}
/// @nodoc
class __$PlayerProfileModelCopyWithImpl<$Res>
    implements _$PlayerProfileModelCopyWith<$Res> {
  __$PlayerProfileModelCopyWithImpl(this._self, this._then);

  final _PlayerProfileModel _self;
  final $Res Function(_PlayerProfileModel) _then;

/// Create a copy of PlayerProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? colorValue = null,Object? name = null,Object? levelsHighscores = null,Object? highscore = null,}) {
  return _then(_PlayerProfileModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as PlayerProfileModelId,colorValue: null == colorValue ? _self.colorValue : colorValue // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,levelsHighscores: null == levelsHighscores ? _self._levelsHighscores : levelsHighscores // ignore: cast_nullable_to_non_nullable
as Map<CanvasDataModelId, PlayerLevelHighscoreModel>,highscore: null == highscore ? _self.highscore : highscore // ignore: cast_nullable_to_non_nullable
as PlayerHighscoreModel,
  ));
}

/// Create a copy of PlayerProfileModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlayerHighscoreModelCopyWith<$Res> get highscore {
  
  return $PlayerHighscoreModelCopyWith<$Res>(_self.highscore, (value) {
    return _then(_self.copyWith(highscore: value));
  });
}
}


/// @nodoc
mixin _$PlayerHighscoreModel {

 int get maxWordsCount; int get maxLettersCount; int get totalWordsCount; int get totalLettersCount; ScoreModel get score;
/// Create a copy of PlayerHighscoreModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlayerHighscoreModelCopyWith<PlayerHighscoreModel> get copyWith => _$PlayerHighscoreModelCopyWithImpl<PlayerHighscoreModel>(this as PlayerHighscoreModel, _$identity);

  /// Serializes this PlayerHighscoreModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayerHighscoreModel&&(identical(other.maxWordsCount, maxWordsCount) || other.maxWordsCount == maxWordsCount)&&(identical(other.maxLettersCount, maxLettersCount) || other.maxLettersCount == maxLettersCount)&&(identical(other.totalWordsCount, totalWordsCount) || other.totalWordsCount == totalWordsCount)&&(identical(other.totalLettersCount, totalLettersCount) || other.totalLettersCount == totalLettersCount)&&(identical(other.score, score) || other.score == score));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,maxWordsCount,maxLettersCount,totalWordsCount,totalLettersCount,score);

@override
String toString() {
  return 'PlayerHighscoreModel(maxWordsCount: $maxWordsCount, maxLettersCount: $maxLettersCount, totalWordsCount: $totalWordsCount, totalLettersCount: $totalLettersCount, score: $score)';
}


}

/// @nodoc
abstract mixin class $PlayerHighscoreModelCopyWith<$Res>  {
  factory $PlayerHighscoreModelCopyWith(PlayerHighscoreModel value, $Res Function(PlayerHighscoreModel) _then) = _$PlayerHighscoreModelCopyWithImpl;
@useResult
$Res call({
 int maxWordsCount, int maxLettersCount, int totalWordsCount, int totalLettersCount, ScoreModel score
});


$ScoreModelCopyWith<$Res> get score;

}
/// @nodoc
class _$PlayerHighscoreModelCopyWithImpl<$Res>
    implements $PlayerHighscoreModelCopyWith<$Res> {
  _$PlayerHighscoreModelCopyWithImpl(this._self, this._then);

  final PlayerHighscoreModel _self;
  final $Res Function(PlayerHighscoreModel) _then;

/// Create a copy of PlayerHighscoreModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? maxWordsCount = null,Object? maxLettersCount = null,Object? totalWordsCount = null,Object? totalLettersCount = null,Object? score = null,}) {
  return _then(_self.copyWith(
maxWordsCount: null == maxWordsCount ? _self.maxWordsCount : maxWordsCount // ignore: cast_nullable_to_non_nullable
as int,maxLettersCount: null == maxLettersCount ? _self.maxLettersCount : maxLettersCount // ignore: cast_nullable_to_non_nullable
as int,totalWordsCount: null == totalWordsCount ? _self.totalWordsCount : totalWordsCount // ignore: cast_nullable_to_non_nullable
as int,totalLettersCount: null == totalLettersCount ? _self.totalLettersCount : totalLettersCount // ignore: cast_nullable_to_non_nullable
as int,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as ScoreModel,
  ));
}
/// Create a copy of PlayerHighscoreModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScoreModelCopyWith<$Res> get score {
  
  return $ScoreModelCopyWith<$Res>(_self.score, (value) {
    return _then(_self.copyWith(score: value));
  });
}
}


/// Adds pattern-matching-related methods to [PlayerHighscoreModel].
extension PlayerHighscoreModelPatterns on PlayerHighscoreModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlayerHighscoreModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlayerHighscoreModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlayerHighscoreModel value)  $default,){
final _that = this;
switch (_that) {
case _PlayerHighscoreModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlayerHighscoreModel value)?  $default,){
final _that = this;
switch (_that) {
case _PlayerHighscoreModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int maxWordsCount,  int maxLettersCount,  int totalWordsCount,  int totalLettersCount,  ScoreModel score)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlayerHighscoreModel() when $default != null:
return $default(_that.maxWordsCount,_that.maxLettersCount,_that.totalWordsCount,_that.totalLettersCount,_that.score);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int maxWordsCount,  int maxLettersCount,  int totalWordsCount,  int totalLettersCount,  ScoreModel score)  $default,) {final _that = this;
switch (_that) {
case _PlayerHighscoreModel():
return $default(_that.maxWordsCount,_that.maxLettersCount,_that.totalWordsCount,_that.totalLettersCount,_that.score);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int maxWordsCount,  int maxLettersCount,  int totalWordsCount,  int totalLettersCount,  ScoreModel score)?  $default,) {final _that = this;
switch (_that) {
case _PlayerHighscoreModel() when $default != null:
return $default(_that.maxWordsCount,_that.maxLettersCount,_that.totalWordsCount,_that.totalLettersCount,_that.score);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _PlayerHighscoreModel extends PlayerHighscoreModel {
  const _PlayerHighscoreModel({this.maxWordsCount = 0, this.maxLettersCount = 0, this.totalWordsCount = 0, this.totalLettersCount = 0, this.score = ScoreModel.zero}): super._();
  factory _PlayerHighscoreModel.fromJson(Map<String, dynamic> json) => _$PlayerHighscoreModelFromJson(json);

@override@JsonKey() final  int maxWordsCount;
@override@JsonKey() final  int maxLettersCount;
@override@JsonKey() final  int totalWordsCount;
@override@JsonKey() final  int totalLettersCount;
@override@JsonKey() final  ScoreModel score;

/// Create a copy of PlayerHighscoreModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlayerHighscoreModelCopyWith<_PlayerHighscoreModel> get copyWith => __$PlayerHighscoreModelCopyWithImpl<_PlayerHighscoreModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlayerHighscoreModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlayerHighscoreModel&&(identical(other.maxWordsCount, maxWordsCount) || other.maxWordsCount == maxWordsCount)&&(identical(other.maxLettersCount, maxLettersCount) || other.maxLettersCount == maxLettersCount)&&(identical(other.totalWordsCount, totalWordsCount) || other.totalWordsCount == totalWordsCount)&&(identical(other.totalLettersCount, totalLettersCount) || other.totalLettersCount == totalLettersCount)&&(identical(other.score, score) || other.score == score));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,maxWordsCount,maxLettersCount,totalWordsCount,totalLettersCount,score);

@override
String toString() {
  return 'PlayerHighscoreModel(maxWordsCount: $maxWordsCount, maxLettersCount: $maxLettersCount, totalWordsCount: $totalWordsCount, totalLettersCount: $totalLettersCount, score: $score)';
}


}

/// @nodoc
abstract mixin class _$PlayerHighscoreModelCopyWith<$Res> implements $PlayerHighscoreModelCopyWith<$Res> {
  factory _$PlayerHighscoreModelCopyWith(_PlayerHighscoreModel value, $Res Function(_PlayerHighscoreModel) _then) = __$PlayerHighscoreModelCopyWithImpl;
@override @useResult
$Res call({
 int maxWordsCount, int maxLettersCount, int totalWordsCount, int totalLettersCount, ScoreModel score
});


@override $ScoreModelCopyWith<$Res> get score;

}
/// @nodoc
class __$PlayerHighscoreModelCopyWithImpl<$Res>
    implements _$PlayerHighscoreModelCopyWith<$Res> {
  __$PlayerHighscoreModelCopyWithImpl(this._self, this._then);

  final _PlayerHighscoreModel _self;
  final $Res Function(_PlayerHighscoreModel) _then;

/// Create a copy of PlayerHighscoreModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? maxWordsCount = null,Object? maxLettersCount = null,Object? totalWordsCount = null,Object? totalLettersCount = null,Object? score = null,}) {
  return _then(_PlayerHighscoreModel(
maxWordsCount: null == maxWordsCount ? _self.maxWordsCount : maxWordsCount // ignore: cast_nullable_to_non_nullable
as int,maxLettersCount: null == maxLettersCount ? _self.maxLettersCount : maxLettersCount // ignore: cast_nullable_to_non_nullable
as int,totalWordsCount: null == totalWordsCount ? _self.totalWordsCount : totalWordsCount // ignore: cast_nullable_to_non_nullable
as int,totalLettersCount: null == totalLettersCount ? _self.totalLettersCount : totalLettersCount // ignore: cast_nullable_to_non_nullable
as int,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as ScoreModel,
  ));
}

/// Create a copy of PlayerHighscoreModel
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
mixin _$PlayerLevelHighscoreModel {

 CanvasDataModelId get levelId; double get maxDistance; double get totalDistance; double get landingsCount; double get flightTime;
/// Create a copy of PlayerLevelHighscoreModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlayerLevelHighscoreModelCopyWith<PlayerLevelHighscoreModel> get copyWith => _$PlayerLevelHighscoreModelCopyWithImpl<PlayerLevelHighscoreModel>(this as PlayerLevelHighscoreModel, _$identity);

  /// Serializes this PlayerLevelHighscoreModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayerLevelHighscoreModel&&(identical(other.levelId, levelId) || other.levelId == levelId)&&(identical(other.maxDistance, maxDistance) || other.maxDistance == maxDistance)&&(identical(other.totalDistance, totalDistance) || other.totalDistance == totalDistance)&&(identical(other.landingsCount, landingsCount) || other.landingsCount == landingsCount)&&(identical(other.flightTime, flightTime) || other.flightTime == flightTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,levelId,maxDistance,totalDistance,landingsCount,flightTime);

@override
String toString() {
  return 'PlayerLevelHighscoreModel(levelId: $levelId, maxDistance: $maxDistance, totalDistance: $totalDistance, landingsCount: $landingsCount, flightTime: $flightTime)';
}


}

/// @nodoc
abstract mixin class $PlayerLevelHighscoreModelCopyWith<$Res>  {
  factory $PlayerLevelHighscoreModelCopyWith(PlayerLevelHighscoreModel value, $Res Function(PlayerLevelHighscoreModel) _then) = _$PlayerLevelHighscoreModelCopyWithImpl;
@useResult
$Res call({
 CanvasDataModelId levelId, double maxDistance, double totalDistance, double landingsCount, double flightTime
});




}
/// @nodoc
class _$PlayerLevelHighscoreModelCopyWithImpl<$Res>
    implements $PlayerLevelHighscoreModelCopyWith<$Res> {
  _$PlayerLevelHighscoreModelCopyWithImpl(this._self, this._then);

  final PlayerLevelHighscoreModel _self;
  final $Res Function(PlayerLevelHighscoreModel) _then;

/// Create a copy of PlayerLevelHighscoreModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? levelId = null,Object? maxDistance = null,Object? totalDistance = null,Object? landingsCount = null,Object? flightTime = null,}) {
  return _then(_self.copyWith(
levelId: null == levelId ? _self.levelId : levelId // ignore: cast_nullable_to_non_nullable
as CanvasDataModelId,maxDistance: null == maxDistance ? _self.maxDistance : maxDistance // ignore: cast_nullable_to_non_nullable
as double,totalDistance: null == totalDistance ? _self.totalDistance : totalDistance // ignore: cast_nullable_to_non_nullable
as double,landingsCount: null == landingsCount ? _self.landingsCount : landingsCount // ignore: cast_nullable_to_non_nullable
as double,flightTime: null == flightTime ? _self.flightTime : flightTime // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [PlayerLevelHighscoreModel].
extension PlayerLevelHighscoreModelPatterns on PlayerLevelHighscoreModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlayerLevelHighscoreModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlayerLevelHighscoreModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlayerLevelHighscoreModel value)  $default,){
final _that = this;
switch (_that) {
case _PlayerLevelHighscoreModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlayerLevelHighscoreModel value)?  $default,){
final _that = this;
switch (_that) {
case _PlayerLevelHighscoreModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CanvasDataModelId levelId,  double maxDistance,  double totalDistance,  double landingsCount,  double flightTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlayerLevelHighscoreModel() when $default != null:
return $default(_that.levelId,_that.maxDistance,_that.totalDistance,_that.landingsCount,_that.flightTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CanvasDataModelId levelId,  double maxDistance,  double totalDistance,  double landingsCount,  double flightTime)  $default,) {final _that = this;
switch (_that) {
case _PlayerLevelHighscoreModel():
return $default(_that.levelId,_that.maxDistance,_that.totalDistance,_that.landingsCount,_that.flightTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CanvasDataModelId levelId,  double maxDistance,  double totalDistance,  double landingsCount,  double flightTime)?  $default,) {final _that = this;
switch (_that) {
case _PlayerLevelHighscoreModel() when $default != null:
return $default(_that.levelId,_that.maxDistance,_that.totalDistance,_that.landingsCount,_that.flightTime);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _PlayerLevelHighscoreModel extends PlayerLevelHighscoreModel {
  const _PlayerLevelHighscoreModel({required this.levelId, this.maxDistance = 0, this.totalDistance = 0, this.landingsCount = 0, this.flightTime = 0}): super._();
  factory _PlayerLevelHighscoreModel.fromJson(Map<String, dynamic> json) => _$PlayerLevelHighscoreModelFromJson(json);

@override final  CanvasDataModelId levelId;
@override@JsonKey() final  double maxDistance;
@override@JsonKey() final  double totalDistance;
@override@JsonKey() final  double landingsCount;
@override@JsonKey() final  double flightTime;

/// Create a copy of PlayerLevelHighscoreModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlayerLevelHighscoreModelCopyWith<_PlayerLevelHighscoreModel> get copyWith => __$PlayerLevelHighscoreModelCopyWithImpl<_PlayerLevelHighscoreModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlayerLevelHighscoreModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlayerLevelHighscoreModel&&(identical(other.levelId, levelId) || other.levelId == levelId)&&(identical(other.maxDistance, maxDistance) || other.maxDistance == maxDistance)&&(identical(other.totalDistance, totalDistance) || other.totalDistance == totalDistance)&&(identical(other.landingsCount, landingsCount) || other.landingsCount == landingsCount)&&(identical(other.flightTime, flightTime) || other.flightTime == flightTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,levelId,maxDistance,totalDistance,landingsCount,flightTime);

@override
String toString() {
  return 'PlayerLevelHighscoreModel(levelId: $levelId, maxDistance: $maxDistance, totalDistance: $totalDistance, landingsCount: $landingsCount, flightTime: $flightTime)';
}


}

/// @nodoc
abstract mixin class _$PlayerLevelHighscoreModelCopyWith<$Res> implements $PlayerLevelHighscoreModelCopyWith<$Res> {
  factory _$PlayerLevelHighscoreModelCopyWith(_PlayerLevelHighscoreModel value, $Res Function(_PlayerLevelHighscoreModel) _then) = __$PlayerLevelHighscoreModelCopyWithImpl;
@override @useResult
$Res call({
 CanvasDataModelId levelId, double maxDistance, double totalDistance, double landingsCount, double flightTime
});




}
/// @nodoc
class __$PlayerLevelHighscoreModelCopyWithImpl<$Res>
    implements _$PlayerLevelHighscoreModelCopyWith<$Res> {
  __$PlayerLevelHighscoreModelCopyWithImpl(this._self, this._then);

  final _PlayerLevelHighscoreModel _self;
  final $Res Function(_PlayerLevelHighscoreModel) _then;

/// Create a copy of PlayerLevelHighscoreModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? levelId = null,Object? maxDistance = null,Object? totalDistance = null,Object? landingsCount = null,Object? flightTime = null,}) {
  return _then(_PlayerLevelHighscoreModel(
levelId: null == levelId ? _self.levelId : levelId // ignore: cast_nullable_to_non_nullable
as CanvasDataModelId,maxDistance: null == maxDistance ? _self.maxDistance : maxDistance // ignore: cast_nullable_to_non_nullable
as double,totalDistance: null == totalDistance ? _self.totalDistance : totalDistance // ignore: cast_nullable_to_non_nullable
as double,landingsCount: null == landingsCount ? _self.landingsCount : landingsCount // ignore: cast_nullable_to_non_nullable
as double,flightTime: null == flightTime ? _self.flightTime : flightTime // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$ScoreModel {

 double get value;
/// Create a copy of ScoreModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScoreModelCopyWith<ScoreModel> get copyWith => _$ScoreModelCopyWithImpl<ScoreModel>(this as ScoreModel, _$identity);

  /// Serializes this ScoreModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScoreModel&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'ScoreModel(value: $value)';
}


}

/// @nodoc
abstract mixin class $ScoreModelCopyWith<$Res>  {
  factory $ScoreModelCopyWith(ScoreModel value, $Res Function(ScoreModel) _then) = _$ScoreModelCopyWithImpl;
@useResult
$Res call({
 double value
});




}
/// @nodoc
class _$ScoreModelCopyWithImpl<$Res>
    implements $ScoreModelCopyWith<$Res> {
  _$ScoreModelCopyWithImpl(this._self, this._then);

  final ScoreModel _self;
  final $Res Function(ScoreModel) _then;

/// Create a copy of ScoreModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [ScoreModel].
extension ScoreModelPatterns on ScoreModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScoreModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScoreModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScoreModel value)  $default,){
final _that = this;
switch (_that) {
case _ScoreModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScoreModel value)?  $default,){
final _that = this;
switch (_that) {
case _ScoreModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScoreModel() when $default != null:
return $default(_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double value)  $default,) {final _that = this;
switch (_that) {
case _ScoreModel():
return $default(_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double value)?  $default,) {final _that = this;
switch (_that) {
case _ScoreModel() when $default != null:
return $default(_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScoreModel extends ScoreModel {
  const _ScoreModel({required this.value}): super._();
  factory _ScoreModel.fromJson(Map<String, dynamic> json) => _$ScoreModelFromJson(json);

@override final  double value;

/// Create a copy of ScoreModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScoreModelCopyWith<_ScoreModel> get copyWith => __$ScoreModelCopyWithImpl<_ScoreModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScoreModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScoreModel&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'ScoreModel(value: $value)';
}


}

/// @nodoc
abstract mixin class _$ScoreModelCopyWith<$Res> implements $ScoreModelCopyWith<$Res> {
  factory _$ScoreModelCopyWith(_ScoreModel value, $Res Function(_ScoreModel) _then) = __$ScoreModelCopyWithImpl;
@override @useResult
$Res call({
 double value
});




}
/// @nodoc
class __$ScoreModelCopyWithImpl<$Res>
    implements _$ScoreModelCopyWith<$Res> {
  __$ScoreModelCopyWithImpl(this._self, this._then);

  final _ScoreModel _self;
  final $Res Function(_ScoreModel) _then;

/// Create a copy of ScoreModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_ScoreModel(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$TechnologyTreeProgressModel {

@JsonKey(fromJson: TechnologyTreeProgressModel._technologiesFromJson, toJson: TechnologyTreeProgressModel._technologiesToJson) Map<TechnologyModelId, TechnologyProgressModel> get technologies; ScoreModel get investedResearchScore;
/// Create a copy of TechnologyTreeProgressModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TechnologyTreeProgressModelCopyWith<TechnologyTreeProgressModel> get copyWith => _$TechnologyTreeProgressModelCopyWithImpl<TechnologyTreeProgressModel>(this as TechnologyTreeProgressModel, _$identity);

  /// Serializes this TechnologyTreeProgressModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TechnologyTreeProgressModel&&const DeepCollectionEquality().equals(other.technologies, technologies)&&(identical(other.investedResearchScore, investedResearchScore) || other.investedResearchScore == investedResearchScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(technologies),investedResearchScore);

@override
String toString() {
  return 'TechnologyTreeProgressModel(technologies: $technologies, investedResearchScore: $investedResearchScore)';
}


}

/// @nodoc
abstract mixin class $TechnologyTreeProgressModelCopyWith<$Res>  {
  factory $TechnologyTreeProgressModelCopyWith(TechnologyTreeProgressModel value, $Res Function(TechnologyTreeProgressModel) _then) = _$TechnologyTreeProgressModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(fromJson: TechnologyTreeProgressModel._technologiesFromJson, toJson: TechnologyTreeProgressModel._technologiesToJson) Map<TechnologyModelId, TechnologyProgressModel> technologies, ScoreModel investedResearchScore
});


$ScoreModelCopyWith<$Res> get investedResearchScore;

}
/// @nodoc
class _$TechnologyTreeProgressModelCopyWithImpl<$Res>
    implements $TechnologyTreeProgressModelCopyWith<$Res> {
  _$TechnologyTreeProgressModelCopyWithImpl(this._self, this._then);

  final TechnologyTreeProgressModel _self;
  final $Res Function(TechnologyTreeProgressModel) _then;

/// Create a copy of TechnologyTreeProgressModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? technologies = null,Object? investedResearchScore = null,}) {
  return _then(_self.copyWith(
technologies: null == technologies ? _self.technologies : technologies // ignore: cast_nullable_to_non_nullable
as Map<TechnologyModelId, TechnologyProgressModel>,investedResearchScore: null == investedResearchScore ? _self.investedResearchScore : investedResearchScore // ignore: cast_nullable_to_non_nullable
as ScoreModel,
  ));
}
/// Create a copy of TechnologyTreeProgressModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScoreModelCopyWith<$Res> get investedResearchScore {
  
  return $ScoreModelCopyWith<$Res>(_self.investedResearchScore, (value) {
    return _then(_self.copyWith(investedResearchScore: value));
  });
}
}


/// Adds pattern-matching-related methods to [TechnologyTreeProgressModel].
extension TechnologyTreeProgressModelPatterns on TechnologyTreeProgressModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TechnologyTreeProgressModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TechnologyTreeProgressModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TechnologyTreeProgressModel value)  $default,){
final _that = this;
switch (_that) {
case _TechnologyTreeProgressModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TechnologyTreeProgressModel value)?  $default,){
final _that = this;
switch (_that) {
case _TechnologyTreeProgressModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(fromJson: TechnologyTreeProgressModel._technologiesFromJson, toJson: TechnologyTreeProgressModel._technologiesToJson)  Map<TechnologyModelId, TechnologyProgressModel> technologies,  ScoreModel investedResearchScore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TechnologyTreeProgressModel() when $default != null:
return $default(_that.technologies,_that.investedResearchScore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(fromJson: TechnologyTreeProgressModel._technologiesFromJson, toJson: TechnologyTreeProgressModel._technologiesToJson)  Map<TechnologyModelId, TechnologyProgressModel> technologies,  ScoreModel investedResearchScore)  $default,) {final _that = this;
switch (_that) {
case _TechnologyTreeProgressModel():
return $default(_that.technologies,_that.investedResearchScore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(fromJson: TechnologyTreeProgressModel._technologiesFromJson, toJson: TechnologyTreeProgressModel._technologiesToJson)  Map<TechnologyModelId, TechnologyProgressModel> technologies,  ScoreModel investedResearchScore)?  $default,) {final _that = this;
switch (_that) {
case _TechnologyTreeProgressModel() when $default != null:
return $default(_that.technologies,_that.investedResearchScore);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _TechnologyTreeProgressModel extends TechnologyTreeProgressModel {
  const _TechnologyTreeProgressModel({@JsonKey(fromJson: TechnologyTreeProgressModel._technologiesFromJson, toJson: TechnologyTreeProgressModel._technologiesToJson) final  Map<TechnologyModelId, TechnologyProgressModel> technologies = const {}, this.investedResearchScore = ScoreModel.zero}): _technologies = technologies,super._();
  factory _TechnologyTreeProgressModel.fromJson(Map<String, dynamic> json) => _$TechnologyTreeProgressModelFromJson(json);

 final  Map<TechnologyModelId, TechnologyProgressModel> _technologies;
@override@JsonKey(fromJson: TechnologyTreeProgressModel._technologiesFromJson, toJson: TechnologyTreeProgressModel._technologiesToJson) Map<TechnologyModelId, TechnologyProgressModel> get technologies {
  if (_technologies is EqualUnmodifiableMapView) return _technologies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_technologies);
}

@override@JsonKey() final  ScoreModel investedResearchScore;

/// Create a copy of TechnologyTreeProgressModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TechnologyTreeProgressModelCopyWith<_TechnologyTreeProgressModel> get copyWith => __$TechnologyTreeProgressModelCopyWithImpl<_TechnologyTreeProgressModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TechnologyTreeProgressModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TechnologyTreeProgressModel&&const DeepCollectionEquality().equals(other._technologies, _technologies)&&(identical(other.investedResearchScore, investedResearchScore) || other.investedResearchScore == investedResearchScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_technologies),investedResearchScore);

@override
String toString() {
  return 'TechnologyTreeProgressModel(technologies: $technologies, investedResearchScore: $investedResearchScore)';
}


}

/// @nodoc
abstract mixin class _$TechnologyTreeProgressModelCopyWith<$Res> implements $TechnologyTreeProgressModelCopyWith<$Res> {
  factory _$TechnologyTreeProgressModelCopyWith(_TechnologyTreeProgressModel value, $Res Function(_TechnologyTreeProgressModel) _then) = __$TechnologyTreeProgressModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(fromJson: TechnologyTreeProgressModel._technologiesFromJson, toJson: TechnologyTreeProgressModel._technologiesToJson) Map<TechnologyModelId, TechnologyProgressModel> technologies, ScoreModel investedResearchScore
});


@override $ScoreModelCopyWith<$Res> get investedResearchScore;

}
/// @nodoc
class __$TechnologyTreeProgressModelCopyWithImpl<$Res>
    implements _$TechnologyTreeProgressModelCopyWith<$Res> {
  __$TechnologyTreeProgressModelCopyWithImpl(this._self, this._then);

  final _TechnologyTreeProgressModel _self;
  final $Res Function(_TechnologyTreeProgressModel) _then;

/// Create a copy of TechnologyTreeProgressModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? technologies = null,Object? investedResearchScore = null,}) {
  return _then(_TechnologyTreeProgressModel(
technologies: null == technologies ? _self._technologies : technologies // ignore: cast_nullable_to_non_nullable
as Map<TechnologyModelId, TechnologyProgressModel>,investedResearchScore: null == investedResearchScore ? _self.investedResearchScore : investedResearchScore // ignore: cast_nullable_to_non_nullable
as ScoreModel,
  ));
}

/// Create a copy of TechnologyTreeProgressModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScoreModelCopyWith<$Res> get investedResearchScore {
  
  return $ScoreModelCopyWith<$Res>(_self.investedResearchScore, (value) {
    return _then(_self.copyWith(investedResearchScore: value));
  });
}
}


/// @nodoc
mixin _$TechnologyProgressModel {

 TechnologyModelId get id; TechnologyUnlockConditionModel get unlockCondition;
/// Create a copy of TechnologyProgressModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TechnologyProgressModelCopyWith<TechnologyProgressModel> get copyWith => _$TechnologyProgressModelCopyWithImpl<TechnologyProgressModel>(this as TechnologyProgressModel, _$identity);

  /// Serializes this TechnologyProgressModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TechnologyProgressModel&&(identical(other.id, id) || other.id == id)&&(identical(other.unlockCondition, unlockCondition) || other.unlockCondition == unlockCondition));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,unlockCondition);

@override
String toString() {
  return 'TechnologyProgressModel(id: $id, unlockCondition: $unlockCondition)';
}


}

/// @nodoc
abstract mixin class $TechnologyProgressModelCopyWith<$Res>  {
  factory $TechnologyProgressModelCopyWith(TechnologyProgressModel value, $Res Function(TechnologyProgressModel) _then) = _$TechnologyProgressModelCopyWithImpl;
@useResult
$Res call({
 TechnologyModelId id, TechnologyUnlockConditionModel unlockCondition
});


$TechnologyUnlockConditionModelCopyWith<$Res> get unlockCondition;

}
/// @nodoc
class _$TechnologyProgressModelCopyWithImpl<$Res>
    implements $TechnologyProgressModelCopyWith<$Res> {
  _$TechnologyProgressModelCopyWithImpl(this._self, this._then);

  final TechnologyProgressModel _self;
  final $Res Function(TechnologyProgressModel) _then;

/// Create a copy of TechnologyProgressModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? unlockCondition = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as TechnologyModelId,unlockCondition: null == unlockCondition ? _self.unlockCondition : unlockCondition // ignore: cast_nullable_to_non_nullable
as TechnologyUnlockConditionModel,
  ));
}
/// Create a copy of TechnologyProgressModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TechnologyUnlockConditionModelCopyWith<$Res> get unlockCondition {
  
  return $TechnologyUnlockConditionModelCopyWith<$Res>(_self.unlockCondition, (value) {
    return _then(_self.copyWith(unlockCondition: value));
  });
}
}


/// Adds pattern-matching-related methods to [TechnologyProgressModel].
extension TechnologyProgressModelPatterns on TechnologyProgressModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TechnologyProgressModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TechnologyProgressModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TechnologyProgressModel value)  $default,){
final _that = this;
switch (_that) {
case _TechnologyProgressModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TechnologyProgressModel value)?  $default,){
final _that = this;
switch (_that) {
case _TechnologyProgressModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TechnologyModelId id,  TechnologyUnlockConditionModel unlockCondition)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TechnologyProgressModel() when $default != null:
return $default(_that.id,_that.unlockCondition);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TechnologyModelId id,  TechnologyUnlockConditionModel unlockCondition)  $default,) {final _that = this;
switch (_that) {
case _TechnologyProgressModel():
return $default(_that.id,_that.unlockCondition);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TechnologyModelId id,  TechnologyUnlockConditionModel unlockCondition)?  $default,) {final _that = this;
switch (_that) {
case _TechnologyProgressModel() when $default != null:
return $default(_that.id,_that.unlockCondition);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _TechnologyProgressModel extends TechnologyProgressModel {
  const _TechnologyProgressModel({required this.id, required this.unlockCondition}): super._();
  factory _TechnologyProgressModel.fromJson(Map<String, dynamic> json) => _$TechnologyProgressModelFromJson(json);

@override final  TechnologyModelId id;
@override final  TechnologyUnlockConditionModel unlockCondition;

/// Create a copy of TechnologyProgressModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TechnologyProgressModelCopyWith<_TechnologyProgressModel> get copyWith => __$TechnologyProgressModelCopyWithImpl<_TechnologyProgressModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TechnologyProgressModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TechnologyProgressModel&&(identical(other.id, id) || other.id == id)&&(identical(other.unlockCondition, unlockCondition) || other.unlockCondition == unlockCondition));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,unlockCondition);

@override
String toString() {
  return 'TechnologyProgressModel(id: $id, unlockCondition: $unlockCondition)';
}


}

/// @nodoc
abstract mixin class _$TechnologyProgressModelCopyWith<$Res> implements $TechnologyProgressModelCopyWith<$Res> {
  factory _$TechnologyProgressModelCopyWith(_TechnologyProgressModel value, $Res Function(_TechnologyProgressModel) _then) = __$TechnologyProgressModelCopyWithImpl;
@override @useResult
$Res call({
 TechnologyModelId id, TechnologyUnlockConditionModel unlockCondition
});


@override $TechnologyUnlockConditionModelCopyWith<$Res> get unlockCondition;

}
/// @nodoc
class __$TechnologyProgressModelCopyWithImpl<$Res>
    implements _$TechnologyProgressModelCopyWith<$Res> {
  __$TechnologyProgressModelCopyWithImpl(this._self, this._then);

  final _TechnologyProgressModel _self;
  final $Res Function(_TechnologyProgressModel) _then;

/// Create a copy of TechnologyProgressModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? unlockCondition = null,}) {
  return _then(_TechnologyProgressModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as TechnologyModelId,unlockCondition: null == unlockCondition ? _self.unlockCondition : unlockCondition // ignore: cast_nullable_to_non_nullable
as TechnologyUnlockConditionModel,
  ));
}

/// Create a copy of TechnologyProgressModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TechnologyUnlockConditionModelCopyWith<$Res> get unlockCondition {
  
  return $TechnologyUnlockConditionModelCopyWith<$Res>(_self.unlockCondition, (value) {
    return _then(_self.copyWith(unlockCondition: value));
  });
}
}


/// @nodoc
mixin _$TechnologyModel {

 TechnologyModelId get id;@JsonKey(fromJson: LocalizedMap.fromJson) LocalizedMap get title;// TODO(antmalofeev): add icon?
/// use [TechnologyProgressModel] to store/retrieve actual progress
 TechnologyUnlockConditionModel get unlockCondition; int get index;
/// Create a copy of TechnologyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TechnologyModelCopyWith<TechnologyModel> get copyWith => _$TechnologyModelCopyWithImpl<TechnologyModel>(this as TechnologyModel, _$identity);

  /// Serializes this TechnologyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TechnologyModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.unlockCondition, unlockCondition) || other.unlockCondition == unlockCondition)&&(identical(other.index, index) || other.index == index));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,unlockCondition,index);

@override
String toString() {
  return 'TechnologyModel(id: $id, title: $title, unlockCondition: $unlockCondition, index: $index)';
}


}

/// @nodoc
abstract mixin class $TechnologyModelCopyWith<$Res>  {
  factory $TechnologyModelCopyWith(TechnologyModel value, $Res Function(TechnologyModel) _then) = _$TechnologyModelCopyWithImpl;
@useResult
$Res call({
 TechnologyModelId id,@JsonKey(fromJson: LocalizedMap.fromJson) LocalizedMap title, TechnologyUnlockConditionModel unlockCondition, int index
});


$TechnologyUnlockConditionModelCopyWith<$Res> get unlockCondition;

}
/// @nodoc
class _$TechnologyModelCopyWithImpl<$Res>
    implements $TechnologyModelCopyWith<$Res> {
  _$TechnologyModelCopyWithImpl(this._self, this._then);

  final TechnologyModel _self;
  final $Res Function(TechnologyModel) _then;

/// Create a copy of TechnologyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? unlockCondition = null,Object? index = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as TechnologyModelId,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as LocalizedMap,unlockCondition: null == unlockCondition ? _self.unlockCondition : unlockCondition // ignore: cast_nullable_to_non_nullable
as TechnologyUnlockConditionModel,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of TechnologyModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TechnologyUnlockConditionModelCopyWith<$Res> get unlockCondition {
  
  return $TechnologyUnlockConditionModelCopyWith<$Res>(_self.unlockCondition, (value) {
    return _then(_self.copyWith(unlockCondition: value));
  });
}
}


/// Adds pattern-matching-related methods to [TechnologyModel].
extension TechnologyModelPatterns on TechnologyModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TechnologyModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TechnologyModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TechnologyModel value)  $default,){
final _that = this;
switch (_that) {
case _TechnologyModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TechnologyModel value)?  $default,){
final _that = this;
switch (_that) {
case _TechnologyModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TechnologyModelId id, @JsonKey(fromJson: LocalizedMap.fromJson)  LocalizedMap title,  TechnologyUnlockConditionModel unlockCondition,  int index)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TechnologyModel() when $default != null:
return $default(_that.id,_that.title,_that.unlockCondition,_that.index);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TechnologyModelId id, @JsonKey(fromJson: LocalizedMap.fromJson)  LocalizedMap title,  TechnologyUnlockConditionModel unlockCondition,  int index)  $default,) {final _that = this;
switch (_that) {
case _TechnologyModel():
return $default(_that.id,_that.title,_that.unlockCondition,_that.index);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TechnologyModelId id, @JsonKey(fromJson: LocalizedMap.fromJson)  LocalizedMap title,  TechnologyUnlockConditionModel unlockCondition,  int index)?  $default,) {final _that = this;
switch (_that) {
case _TechnologyModel() when $default != null:
return $default(_that.id,_that.title,_that.unlockCondition,_that.index);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _TechnologyModel extends TechnologyModel {
  const _TechnologyModel({required this.id, @JsonKey(fromJson: LocalizedMap.fromJson) required this.title, required this.unlockCondition, this.index = 0}): super._();
  factory _TechnologyModel.fromJson(Map<String, dynamic> json) => _$TechnologyModelFromJson(json);

@override final  TechnologyModelId id;
@override@JsonKey(fromJson: LocalizedMap.fromJson) final  LocalizedMap title;
// TODO(antmalofeev): add icon?
/// use [TechnologyProgressModel] to store/retrieve actual progress
@override final  TechnologyUnlockConditionModel unlockCondition;
@override@JsonKey() final  int index;

/// Create a copy of TechnologyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TechnologyModelCopyWith<_TechnologyModel> get copyWith => __$TechnologyModelCopyWithImpl<_TechnologyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TechnologyModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TechnologyModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.unlockCondition, unlockCondition) || other.unlockCondition == unlockCondition)&&(identical(other.index, index) || other.index == index));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,unlockCondition,index);

@override
String toString() {
  return 'TechnologyModel(id: $id, title: $title, unlockCondition: $unlockCondition, index: $index)';
}


}

/// @nodoc
abstract mixin class _$TechnologyModelCopyWith<$Res> implements $TechnologyModelCopyWith<$Res> {
  factory _$TechnologyModelCopyWith(_TechnologyModel value, $Res Function(_TechnologyModel) _then) = __$TechnologyModelCopyWithImpl;
@override @useResult
$Res call({
 TechnologyModelId id,@JsonKey(fromJson: LocalizedMap.fromJson) LocalizedMap title, TechnologyUnlockConditionModel unlockCondition, int index
});


@override $TechnologyUnlockConditionModelCopyWith<$Res> get unlockCondition;

}
/// @nodoc
class __$TechnologyModelCopyWithImpl<$Res>
    implements _$TechnologyModelCopyWith<$Res> {
  __$TechnologyModelCopyWithImpl(this._self, this._then);

  final _TechnologyModel _self;
  final $Res Function(_TechnologyModel) _then;

/// Create a copy of TechnologyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? unlockCondition = null,Object? index = null,}) {
  return _then(_TechnologyModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as TechnologyModelId,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as LocalizedMap,unlockCondition: null == unlockCondition ? _self.unlockCondition : unlockCondition // ignore: cast_nullable_to_non_nullable
as TechnologyUnlockConditionModel,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of TechnologyModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TechnologyUnlockConditionModelCopyWith<$Res> get unlockCondition {
  
  return $TechnologyUnlockConditionModelCopyWith<$Res>(_self.unlockCondition, (value) {
    return _then(_self.copyWith(unlockCondition: value));
  });
}
}


/// @nodoc
mixin _$TechnologyUnlockConditionModel {

/// Principle: if several words for one language in [languageWords] are used
/// then [TechnologyModel] is unlocked
/// for that certain language.
@JsonKey(fromJson: languageWordsMapFromJson, toJson: languageWordsMapToJson) Map<UiLanguage, List<UsefulWordModel>> get languageWords;/// one idea is to have minimum words to unlock the technology
 int get wordsUnlockThreshold;/// total amount of research points invested by user
/// when he decided to research this technology
 double get investedResearchPoints;
/// Create a copy of TechnologyUnlockConditionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TechnologyUnlockConditionModelCopyWith<TechnologyUnlockConditionModel> get copyWith => _$TechnologyUnlockConditionModelCopyWithImpl<TechnologyUnlockConditionModel>(this as TechnologyUnlockConditionModel, _$identity);

  /// Serializes this TechnologyUnlockConditionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TechnologyUnlockConditionModel&&const DeepCollectionEquality().equals(other.languageWords, languageWords)&&(identical(other.wordsUnlockThreshold, wordsUnlockThreshold) || other.wordsUnlockThreshold == wordsUnlockThreshold)&&(identical(other.investedResearchPoints, investedResearchPoints) || other.investedResearchPoints == investedResearchPoints));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(languageWords),wordsUnlockThreshold,investedResearchPoints);

@override
String toString() {
  return 'TechnologyUnlockConditionModel(languageWords: $languageWords, wordsUnlockThreshold: $wordsUnlockThreshold, investedResearchPoints: $investedResearchPoints)';
}


}

/// @nodoc
abstract mixin class $TechnologyUnlockConditionModelCopyWith<$Res>  {
  factory $TechnologyUnlockConditionModelCopyWith(TechnologyUnlockConditionModel value, $Res Function(TechnologyUnlockConditionModel) _then) = _$TechnologyUnlockConditionModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(fromJson: languageWordsMapFromJson, toJson: languageWordsMapToJson) Map<UiLanguage, List<UsefulWordModel>> languageWords, int wordsUnlockThreshold, double investedResearchPoints
});




}
/// @nodoc
class _$TechnologyUnlockConditionModelCopyWithImpl<$Res>
    implements $TechnologyUnlockConditionModelCopyWith<$Res> {
  _$TechnologyUnlockConditionModelCopyWithImpl(this._self, this._then);

  final TechnologyUnlockConditionModel _self;
  final $Res Function(TechnologyUnlockConditionModel) _then;

/// Create a copy of TechnologyUnlockConditionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? languageWords = null,Object? wordsUnlockThreshold = null,Object? investedResearchPoints = null,}) {
  return _then(_self.copyWith(
languageWords: null == languageWords ? _self.languageWords : languageWords // ignore: cast_nullable_to_non_nullable
as Map<UiLanguage, List<UsefulWordModel>>,wordsUnlockThreshold: null == wordsUnlockThreshold ? _self.wordsUnlockThreshold : wordsUnlockThreshold // ignore: cast_nullable_to_non_nullable
as int,investedResearchPoints: null == investedResearchPoints ? _self.investedResearchPoints : investedResearchPoints // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [TechnologyUnlockConditionModel].
extension TechnologyUnlockConditionModelPatterns on TechnologyUnlockConditionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TechnologyUnlockConditionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TechnologyUnlockConditionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TechnologyUnlockConditionModel value)  $default,){
final _that = this;
switch (_that) {
case _TechnologyUnlockConditionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TechnologyUnlockConditionModel value)?  $default,){
final _that = this;
switch (_that) {
case _TechnologyUnlockConditionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(fromJson: languageWordsMapFromJson, toJson: languageWordsMapToJson)  Map<UiLanguage, List<UsefulWordModel>> languageWords,  int wordsUnlockThreshold,  double investedResearchPoints)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TechnologyUnlockConditionModel() when $default != null:
return $default(_that.languageWords,_that.wordsUnlockThreshold,_that.investedResearchPoints);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(fromJson: languageWordsMapFromJson, toJson: languageWordsMapToJson)  Map<UiLanguage, List<UsefulWordModel>> languageWords,  int wordsUnlockThreshold,  double investedResearchPoints)  $default,) {final _that = this;
switch (_that) {
case _TechnologyUnlockConditionModel():
return $default(_that.languageWords,_that.wordsUnlockThreshold,_that.investedResearchPoints);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(fromJson: languageWordsMapFromJson, toJson: languageWordsMapToJson)  Map<UiLanguage, List<UsefulWordModel>> languageWords,  int wordsUnlockThreshold,  double investedResearchPoints)?  $default,) {final _that = this;
switch (_that) {
case _TechnologyUnlockConditionModel() when $default != null:
return $default(_that.languageWords,_that.wordsUnlockThreshold,_that.investedResearchPoints);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _TechnologyUnlockConditionModel extends TechnologyUnlockConditionModel {
  const _TechnologyUnlockConditionModel({@JsonKey(fromJson: languageWordsMapFromJson, toJson: languageWordsMapToJson) required final  Map<UiLanguage, List<UsefulWordModel>> languageWords, this.wordsUnlockThreshold = 0, this.investedResearchPoints = 0.0}): _languageWords = languageWords,super._();
  factory _TechnologyUnlockConditionModel.fromJson(Map<String, dynamic> json) => _$TechnologyUnlockConditionModelFromJson(json);

/// Principle: if several words for one language in [languageWords] are used
/// then [TechnologyModel] is unlocked
/// for that certain language.
 final  Map<UiLanguage, List<UsefulWordModel>> _languageWords;
/// Principle: if several words for one language in [languageWords] are used
/// then [TechnologyModel] is unlocked
/// for that certain language.
@override@JsonKey(fromJson: languageWordsMapFromJson, toJson: languageWordsMapToJson) Map<UiLanguage, List<UsefulWordModel>> get languageWords {
  if (_languageWords is EqualUnmodifiableMapView) return _languageWords;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_languageWords);
}

/// one idea is to have minimum words to unlock the technology
@override@JsonKey() final  int wordsUnlockThreshold;
/// total amount of research points invested by user
/// when he decided to research this technology
@override@JsonKey() final  double investedResearchPoints;

/// Create a copy of TechnologyUnlockConditionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TechnologyUnlockConditionModelCopyWith<_TechnologyUnlockConditionModel> get copyWith => __$TechnologyUnlockConditionModelCopyWithImpl<_TechnologyUnlockConditionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TechnologyUnlockConditionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TechnologyUnlockConditionModel&&const DeepCollectionEquality().equals(other._languageWords, _languageWords)&&(identical(other.wordsUnlockThreshold, wordsUnlockThreshold) || other.wordsUnlockThreshold == wordsUnlockThreshold)&&(identical(other.investedResearchPoints, investedResearchPoints) || other.investedResearchPoints == investedResearchPoints));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_languageWords),wordsUnlockThreshold,investedResearchPoints);

@override
String toString() {
  return 'TechnologyUnlockConditionModel(languageWords: $languageWords, wordsUnlockThreshold: $wordsUnlockThreshold, investedResearchPoints: $investedResearchPoints)';
}


}

/// @nodoc
abstract mixin class _$TechnologyUnlockConditionModelCopyWith<$Res> implements $TechnologyUnlockConditionModelCopyWith<$Res> {
  factory _$TechnologyUnlockConditionModelCopyWith(_TechnologyUnlockConditionModel value, $Res Function(_TechnologyUnlockConditionModel) _then) = __$TechnologyUnlockConditionModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(fromJson: languageWordsMapFromJson, toJson: languageWordsMapToJson) Map<UiLanguage, List<UsefulWordModel>> languageWords, int wordsUnlockThreshold, double investedResearchPoints
});




}
/// @nodoc
class __$TechnologyUnlockConditionModelCopyWithImpl<$Res>
    implements _$TechnologyUnlockConditionModelCopyWith<$Res> {
  __$TechnologyUnlockConditionModelCopyWithImpl(this._self, this._then);

  final _TechnologyUnlockConditionModel _self;
  final $Res Function(_TechnologyUnlockConditionModel) _then;

/// Create a copy of TechnologyUnlockConditionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? languageWords = null,Object? wordsUnlockThreshold = null,Object? investedResearchPoints = null,}) {
  return _then(_TechnologyUnlockConditionModel(
languageWords: null == languageWords ? _self._languageWords : languageWords // ignore: cast_nullable_to_non_nullable
as Map<UiLanguage, List<UsefulWordModel>>,wordsUnlockThreshold: null == wordsUnlockThreshold ? _self.wordsUnlockThreshold : wordsUnlockThreshold // ignore: cast_nullable_to_non_nullable
as int,investedResearchPoints: null == investedResearchPoints ? _self.investedResearchPoints : investedResearchPoints // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$UsefulWordModel {

 FullWordString get word; bool get isUsed;
/// Create a copy of UsefulWordModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsefulWordModelCopyWith<UsefulWordModel> get copyWith => _$UsefulWordModelCopyWithImpl<UsefulWordModel>(this as UsefulWordModel, _$identity);

  /// Serializes this UsefulWordModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsefulWordModel&&(identical(other.word, word) || other.word == word)&&(identical(other.isUsed, isUsed) || other.isUsed == isUsed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,word,isUsed);

@override
String toString() {
  return 'UsefulWordModel(word: $word, isUsed: $isUsed)';
}


}

/// @nodoc
abstract mixin class $UsefulWordModelCopyWith<$Res>  {
  factory $UsefulWordModelCopyWith(UsefulWordModel value, $Res Function(UsefulWordModel) _then) = _$UsefulWordModelCopyWithImpl;
@useResult
$Res call({
 FullWordString word, bool isUsed
});




}
/// @nodoc
class _$UsefulWordModelCopyWithImpl<$Res>
    implements $UsefulWordModelCopyWith<$Res> {
  _$UsefulWordModelCopyWithImpl(this._self, this._then);

  final UsefulWordModel _self;
  final $Res Function(UsefulWordModel) _then;

/// Create a copy of UsefulWordModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? word = null,Object? isUsed = null,}) {
  return _then(_self.copyWith(
word: null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as FullWordString,isUsed: null == isUsed ? _self.isUsed : isUsed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [UsefulWordModel].
extension UsefulWordModelPatterns on UsefulWordModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UsefulWordModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UsefulWordModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UsefulWordModel value)  $default,){
final _that = this;
switch (_that) {
case _UsefulWordModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UsefulWordModel value)?  $default,){
final _that = this;
switch (_that) {
case _UsefulWordModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FullWordString word,  bool isUsed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UsefulWordModel() when $default != null:
return $default(_that.word,_that.isUsed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FullWordString word,  bool isUsed)  $default,) {final _that = this;
switch (_that) {
case _UsefulWordModel():
return $default(_that.word,_that.isUsed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FullWordString word,  bool isUsed)?  $default,) {final _that = this;
switch (_that) {
case _UsefulWordModel() when $default != null:
return $default(_that.word,_that.isUsed);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _UsefulWordModel extends UsefulWordModel {
  const _UsefulWordModel({required this.word, this.isUsed = false}): super._();
  factory _UsefulWordModel.fromJson(Map<String, dynamic> json) => _$UsefulWordModelFromJson(json);

@override final  FullWordString word;
@override@JsonKey() final  bool isUsed;

/// Create a copy of UsefulWordModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsefulWordModelCopyWith<_UsefulWordModel> get copyWith => __$UsefulWordModelCopyWithImpl<_UsefulWordModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UsefulWordModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UsefulWordModel&&(identical(other.word, word) || other.word == word)&&(identical(other.isUsed, isUsed) || other.isUsed == isUsed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,word,isUsed);

@override
String toString() {
  return 'UsefulWordModel(word: $word, isUsed: $isUsed)';
}


}

/// @nodoc
abstract mixin class _$UsefulWordModelCopyWith<$Res> implements $UsefulWordModelCopyWith<$Res> {
  factory _$UsefulWordModelCopyWith(_UsefulWordModel value, $Res Function(_UsefulWordModel) _then) = __$UsefulWordModelCopyWithImpl;
@override @useResult
$Res call({
 FullWordString word, bool isUsed
});




}
/// @nodoc
class __$UsefulWordModelCopyWithImpl<$Res>
    implements _$UsefulWordModelCopyWith<$Res> {
  __$UsefulWordModelCopyWithImpl(this._self, this._then);

  final _UsefulWordModel _self;
  final $Res Function(_UsefulWordModel) _then;

/// Create a copy of UsefulWordModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? word = null,Object? isUsed = null,}) {
  return _then(_UsefulWordModel(
word: null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as FullWordString,isUsed: null == isUsed ? _self.isUsed : isUsed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$TutorialEventModel {

@JsonKey(fromJson: LocalizedMap.fromJson) LocalizedMap get localizedMap;/// what will switch this event to the next
 List<TutorialUiActionEventModel> get completeActions;/// Effects for the game which applied when this event fired
 List<TutorialGameEffectModel> get gamePreEffects;/// Effects for the game which applied after this event
/// [completeActions] resolved.
 List<TutorialGameEffectModel> get gamePostEffects;/// The ui item for which the event should be attached and
/// highlight is shown
 TutorialUiItem? get anchorUiItem;
/// Create a copy of TutorialEventModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TutorialEventModelCopyWith<TutorialEventModel> get copyWith => _$TutorialEventModelCopyWithImpl<TutorialEventModel>(this as TutorialEventModel, _$identity);

  /// Serializes this TutorialEventModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TutorialEventModel&&(identical(other.localizedMap, localizedMap) || other.localizedMap == localizedMap)&&const DeepCollectionEquality().equals(other.completeActions, completeActions)&&const DeepCollectionEquality().equals(other.gamePreEffects, gamePreEffects)&&const DeepCollectionEquality().equals(other.gamePostEffects, gamePostEffects)&&(identical(other.anchorUiItem, anchorUiItem) || other.anchorUiItem == anchorUiItem));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,localizedMap,const DeepCollectionEquality().hash(completeActions),const DeepCollectionEquality().hash(gamePreEffects),const DeepCollectionEquality().hash(gamePostEffects),anchorUiItem);

@override
String toString() {
  return 'TutorialEventModel(localizedMap: $localizedMap, completeActions: $completeActions, gamePreEffects: $gamePreEffects, gamePostEffects: $gamePostEffects, anchorUiItem: $anchorUiItem)';
}


}

/// @nodoc
abstract mixin class $TutorialEventModelCopyWith<$Res>  {
  factory $TutorialEventModelCopyWith(TutorialEventModel value, $Res Function(TutorialEventModel) _then) = _$TutorialEventModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(fromJson: LocalizedMap.fromJson) LocalizedMap localizedMap, List<TutorialUiActionEventModel> completeActions, List<TutorialGameEffectModel> gamePreEffects, List<TutorialGameEffectModel> gamePostEffects, TutorialUiItem? anchorUiItem
});




}
/// @nodoc
class _$TutorialEventModelCopyWithImpl<$Res>
    implements $TutorialEventModelCopyWith<$Res> {
  _$TutorialEventModelCopyWithImpl(this._self, this._then);

  final TutorialEventModel _self;
  final $Res Function(TutorialEventModel) _then;

/// Create a copy of TutorialEventModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? localizedMap = null,Object? completeActions = null,Object? gamePreEffects = null,Object? gamePostEffects = null,Object? anchorUiItem = freezed,}) {
  return _then(_self.copyWith(
localizedMap: null == localizedMap ? _self.localizedMap : localizedMap // ignore: cast_nullable_to_non_nullable
as LocalizedMap,completeActions: null == completeActions ? _self.completeActions : completeActions // ignore: cast_nullable_to_non_nullable
as List<TutorialUiActionEventModel>,gamePreEffects: null == gamePreEffects ? _self.gamePreEffects : gamePreEffects // ignore: cast_nullable_to_non_nullable
as List<TutorialGameEffectModel>,gamePostEffects: null == gamePostEffects ? _self.gamePostEffects : gamePostEffects // ignore: cast_nullable_to_non_nullable
as List<TutorialGameEffectModel>,anchorUiItem: freezed == anchorUiItem ? _self.anchorUiItem : anchorUiItem // ignore: cast_nullable_to_non_nullable
as TutorialUiItem?,
  ));
}

}


/// Adds pattern-matching-related methods to [TutorialEventModel].
extension TutorialEventModelPatterns on TutorialEventModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TutorialEventModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TutorialEventModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TutorialEventModel value)  $default,){
final _that = this;
switch (_that) {
case _TutorialEventModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TutorialEventModel value)?  $default,){
final _that = this;
switch (_that) {
case _TutorialEventModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(fromJson: LocalizedMap.fromJson)  LocalizedMap localizedMap,  List<TutorialUiActionEventModel> completeActions,  List<TutorialGameEffectModel> gamePreEffects,  List<TutorialGameEffectModel> gamePostEffects,  TutorialUiItem? anchorUiItem)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TutorialEventModel() when $default != null:
return $default(_that.localizedMap,_that.completeActions,_that.gamePreEffects,_that.gamePostEffects,_that.anchorUiItem);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(fromJson: LocalizedMap.fromJson)  LocalizedMap localizedMap,  List<TutorialUiActionEventModel> completeActions,  List<TutorialGameEffectModel> gamePreEffects,  List<TutorialGameEffectModel> gamePostEffects,  TutorialUiItem? anchorUiItem)  $default,) {final _that = this;
switch (_that) {
case _TutorialEventModel():
return $default(_that.localizedMap,_that.completeActions,_that.gamePreEffects,_that.gamePostEffects,_that.anchorUiItem);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(fromJson: LocalizedMap.fromJson)  LocalizedMap localizedMap,  List<TutorialUiActionEventModel> completeActions,  List<TutorialGameEffectModel> gamePreEffects,  List<TutorialGameEffectModel> gamePostEffects,  TutorialUiItem? anchorUiItem)?  $default,) {final _that = this;
switch (_that) {
case _TutorialEventModel() when $default != null:
return $default(_that.localizedMap,_that.completeActions,_that.gamePreEffects,_that.gamePostEffects,_that.anchorUiItem);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _TutorialEventModel extends TutorialEventModel {
  const _TutorialEventModel({@JsonKey(fromJson: LocalizedMap.fromJson) required this.localizedMap, required final  List<TutorialUiActionEventModel> completeActions, final  List<TutorialGameEffectModel> gamePreEffects = const [], final  List<TutorialGameEffectModel> gamePostEffects = const [], this.anchorUiItem}): _completeActions = completeActions,_gamePreEffects = gamePreEffects,_gamePostEffects = gamePostEffects,super._();
  factory _TutorialEventModel.fromJson(Map<String, dynamic> json) => _$TutorialEventModelFromJson(json);

@override@JsonKey(fromJson: LocalizedMap.fromJson) final  LocalizedMap localizedMap;
/// what will switch this event to the next
 final  List<TutorialUiActionEventModel> _completeActions;
/// what will switch this event to the next
@override List<TutorialUiActionEventModel> get completeActions {
  if (_completeActions is EqualUnmodifiableListView) return _completeActions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_completeActions);
}

/// Effects for the game which applied when this event fired
 final  List<TutorialGameEffectModel> _gamePreEffects;
/// Effects for the game which applied when this event fired
@override@JsonKey() List<TutorialGameEffectModel> get gamePreEffects {
  if (_gamePreEffects is EqualUnmodifiableListView) return _gamePreEffects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_gamePreEffects);
}

/// Effects for the game which applied after this event
/// [completeActions] resolved.
 final  List<TutorialGameEffectModel> _gamePostEffects;
/// Effects for the game which applied after this event
/// [completeActions] resolved.
@override@JsonKey() List<TutorialGameEffectModel> get gamePostEffects {
  if (_gamePostEffects is EqualUnmodifiableListView) return _gamePostEffects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_gamePostEffects);
}

/// The ui item for which the event should be attached and
/// highlight is shown
@override final  TutorialUiItem? anchorUiItem;

/// Create a copy of TutorialEventModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TutorialEventModelCopyWith<_TutorialEventModel> get copyWith => __$TutorialEventModelCopyWithImpl<_TutorialEventModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TutorialEventModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TutorialEventModel&&(identical(other.localizedMap, localizedMap) || other.localizedMap == localizedMap)&&const DeepCollectionEquality().equals(other._completeActions, _completeActions)&&const DeepCollectionEquality().equals(other._gamePreEffects, _gamePreEffects)&&const DeepCollectionEquality().equals(other._gamePostEffects, _gamePostEffects)&&(identical(other.anchorUiItem, anchorUiItem) || other.anchorUiItem == anchorUiItem));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,localizedMap,const DeepCollectionEquality().hash(_completeActions),const DeepCollectionEquality().hash(_gamePreEffects),const DeepCollectionEquality().hash(_gamePostEffects),anchorUiItem);

@override
String toString() {
  return 'TutorialEventModel(localizedMap: $localizedMap, completeActions: $completeActions, gamePreEffects: $gamePreEffects, gamePostEffects: $gamePostEffects, anchorUiItem: $anchorUiItem)';
}


}

/// @nodoc
abstract mixin class _$TutorialEventModelCopyWith<$Res> implements $TutorialEventModelCopyWith<$Res> {
  factory _$TutorialEventModelCopyWith(_TutorialEventModel value, $Res Function(_TutorialEventModel) _then) = __$TutorialEventModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(fromJson: LocalizedMap.fromJson) LocalizedMap localizedMap, List<TutorialUiActionEventModel> completeActions, List<TutorialGameEffectModel> gamePreEffects, List<TutorialGameEffectModel> gamePostEffects, TutorialUiItem? anchorUiItem
});




}
/// @nodoc
class __$TutorialEventModelCopyWithImpl<$Res>
    implements _$TutorialEventModelCopyWith<$Res> {
  __$TutorialEventModelCopyWithImpl(this._self, this._then);

  final _TutorialEventModel _self;
  final $Res Function(_TutorialEventModel) _then;

/// Create a copy of TutorialEventModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? localizedMap = null,Object? completeActions = null,Object? gamePreEffects = null,Object? gamePostEffects = null,Object? anchorUiItem = freezed,}) {
  return _then(_TutorialEventModel(
localizedMap: null == localizedMap ? _self.localizedMap : localizedMap // ignore: cast_nullable_to_non_nullable
as LocalizedMap,completeActions: null == completeActions ? _self._completeActions : completeActions // ignore: cast_nullable_to_non_nullable
as List<TutorialUiActionEventModel>,gamePreEffects: null == gamePreEffects ? _self._gamePreEffects : gamePreEffects // ignore: cast_nullable_to_non_nullable
as List<TutorialGameEffectModel>,gamePostEffects: null == gamePostEffects ? _self._gamePostEffects : gamePostEffects // ignore: cast_nullable_to_non_nullable
as List<TutorialGameEffectModel>,anchorUiItem: freezed == anchorUiItem ? _self.anchorUiItem : anchorUiItem // ignore: cast_nullable_to_non_nullable
as TutorialUiItem?,
  ));
}


}


/// @nodoc
mixin _$TutorialGameEffectModel {

 TutorialGameEffectName get name;
/// Create a copy of TutorialGameEffectModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TutorialGameEffectModelCopyWith<TutorialGameEffectModel> get copyWith => _$TutorialGameEffectModelCopyWithImpl<TutorialGameEffectModel>(this as TutorialGameEffectModel, _$identity);

  /// Serializes this TutorialGameEffectModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TutorialGameEffectModel&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'TutorialGameEffectModel(name: $name)';
}


}

/// @nodoc
abstract mixin class $TutorialGameEffectModelCopyWith<$Res>  {
  factory $TutorialGameEffectModelCopyWith(TutorialGameEffectModel value, $Res Function(TutorialGameEffectModel) _then) = _$TutorialGameEffectModelCopyWithImpl;
@useResult
$Res call({
 TutorialGameEffectName name
});




}
/// @nodoc
class _$TutorialGameEffectModelCopyWithImpl<$Res>
    implements $TutorialGameEffectModelCopyWith<$Res> {
  _$TutorialGameEffectModelCopyWithImpl(this._self, this._then);

  final TutorialGameEffectModel _self;
  final $Res Function(TutorialGameEffectModel) _then;

/// Create a copy of TutorialGameEffectModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as TutorialGameEffectName,
  ));
}

}


/// Adds pattern-matching-related methods to [TutorialGameEffectModel].
extension TutorialGameEffectModelPatterns on TutorialGameEffectModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TutorialGameEffectModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TutorialGameEffectModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TutorialGameEffectModel value)  $default,){
final _that = this;
switch (_that) {
case _TutorialGameEffectModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TutorialGameEffectModel value)?  $default,){
final _that = this;
switch (_that) {
case _TutorialGameEffectModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TutorialGameEffectName name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TutorialGameEffectModel() when $default != null:
return $default(_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TutorialGameEffectName name)  $default,) {final _that = this;
switch (_that) {
case _TutorialGameEffectModel():
return $default(_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TutorialGameEffectName name)?  $default,) {final _that = this;
switch (_that) {
case _TutorialGameEffectModel() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _TutorialGameEffectModel extends TutorialGameEffectModel {
  const _TutorialGameEffectModel({required this.name}): super._();
  factory _TutorialGameEffectModel.fromJson(Map<String, dynamic> json) => _$TutorialGameEffectModelFromJson(json);

@override final  TutorialGameEffectName name;

/// Create a copy of TutorialGameEffectModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TutorialGameEffectModelCopyWith<_TutorialGameEffectModel> get copyWith => __$TutorialGameEffectModelCopyWithImpl<_TutorialGameEffectModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TutorialGameEffectModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TutorialGameEffectModel&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'TutorialGameEffectModel(name: $name)';
}


}

/// @nodoc
abstract mixin class _$TutorialGameEffectModelCopyWith<$Res> implements $TutorialGameEffectModelCopyWith<$Res> {
  factory _$TutorialGameEffectModelCopyWith(_TutorialGameEffectModel value, $Res Function(_TutorialGameEffectModel) _then) = __$TutorialGameEffectModelCopyWithImpl;
@override @useResult
$Res call({
 TutorialGameEffectName name
});




}
/// @nodoc
class __$TutorialGameEffectModelCopyWithImpl<$Res>
    implements _$TutorialGameEffectModelCopyWith<$Res> {
  __$TutorialGameEffectModelCopyWithImpl(this._self, this._then);

  final _TutorialGameEffectModel _self;
  final $Res Function(_TutorialGameEffectModel) _then;

/// Create a copy of TutorialGameEffectModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_TutorialGameEffectModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as TutorialGameEffectName,
  ));
}


}


/// @nodoc
mixin _$TutorialUiActionEventModel {

/// If [uiItem] is set null and the action
/// is [TutorialCompleteAction.onClick] then
/// it means that the action is click on anything
/// on screen
 TutorialCompleteAction get action; TutorialUiItem? get uiItem; bool get isCompleted; Map<PrimitiveBool, List<TutorialGameEffectModel>> get boolConsquenses;
/// Create a copy of TutorialUiActionEventModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TutorialUiActionEventModelCopyWith<TutorialUiActionEventModel> get copyWith => _$TutorialUiActionEventModelCopyWithImpl<TutorialUiActionEventModel>(this as TutorialUiActionEventModel, _$identity);

  /// Serializes this TutorialUiActionEventModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TutorialUiActionEventModel&&(identical(other.action, action) || other.action == action)&&(identical(other.uiItem, uiItem) || other.uiItem == uiItem)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&const DeepCollectionEquality().equals(other.boolConsquenses, boolConsquenses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,action,uiItem,isCompleted,const DeepCollectionEquality().hash(boolConsquenses));

@override
String toString() {
  return 'TutorialUiActionEventModel(action: $action, uiItem: $uiItem, isCompleted: $isCompleted, boolConsquenses: $boolConsquenses)';
}


}

/// @nodoc
abstract mixin class $TutorialUiActionEventModelCopyWith<$Res>  {
  factory $TutorialUiActionEventModelCopyWith(TutorialUiActionEventModel value, $Res Function(TutorialUiActionEventModel) _then) = _$TutorialUiActionEventModelCopyWithImpl;
@useResult
$Res call({
 TutorialCompleteAction action, TutorialUiItem? uiItem, bool isCompleted, Map<PrimitiveBool, List<TutorialGameEffectModel>> boolConsquenses
});




}
/// @nodoc
class _$TutorialUiActionEventModelCopyWithImpl<$Res>
    implements $TutorialUiActionEventModelCopyWith<$Res> {
  _$TutorialUiActionEventModelCopyWithImpl(this._self, this._then);

  final TutorialUiActionEventModel _self;
  final $Res Function(TutorialUiActionEventModel) _then;

/// Create a copy of TutorialUiActionEventModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? action = null,Object? uiItem = freezed,Object? isCompleted = null,Object? boolConsquenses = null,}) {
  return _then(_self.copyWith(
action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as TutorialCompleteAction,uiItem: freezed == uiItem ? _self.uiItem : uiItem // ignore: cast_nullable_to_non_nullable
as TutorialUiItem?,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,boolConsquenses: null == boolConsquenses ? _self.boolConsquenses : boolConsquenses // ignore: cast_nullable_to_non_nullable
as Map<PrimitiveBool, List<TutorialGameEffectModel>>,
  ));
}

}


/// Adds pattern-matching-related methods to [TutorialUiActionEventModel].
extension TutorialUiActionEventModelPatterns on TutorialUiActionEventModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TutorialUiActionEventModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TutorialUiActionEventModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TutorialUiActionEventModel value)  $default,){
final _that = this;
switch (_that) {
case _TutorialUiActionEventModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TutorialUiActionEventModel value)?  $default,){
final _that = this;
switch (_that) {
case _TutorialUiActionEventModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TutorialCompleteAction action,  TutorialUiItem? uiItem,  bool isCompleted,  Map<PrimitiveBool, List<TutorialGameEffectModel>> boolConsquenses)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TutorialUiActionEventModel() when $default != null:
return $default(_that.action,_that.uiItem,_that.isCompleted,_that.boolConsquenses);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TutorialCompleteAction action,  TutorialUiItem? uiItem,  bool isCompleted,  Map<PrimitiveBool, List<TutorialGameEffectModel>> boolConsquenses)  $default,) {final _that = this;
switch (_that) {
case _TutorialUiActionEventModel():
return $default(_that.action,_that.uiItem,_that.isCompleted,_that.boolConsquenses);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TutorialCompleteAction action,  TutorialUiItem? uiItem,  bool isCompleted,  Map<PrimitiveBool, List<TutorialGameEffectModel>> boolConsquenses)?  $default,) {final _that = this;
switch (_that) {
case _TutorialUiActionEventModel() when $default != null:
return $default(_that.action,_that.uiItem,_that.isCompleted,_that.boolConsquenses);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _TutorialUiActionEventModel extends TutorialUiActionEventModel {
  const _TutorialUiActionEventModel({required this.action, this.uiItem, this.isCompleted = false, final  Map<PrimitiveBool, List<TutorialGameEffectModel>> boolConsquenses = const {}}): _boolConsquenses = boolConsquenses,super._();
  factory _TutorialUiActionEventModel.fromJson(Map<String, dynamic> json) => _$TutorialUiActionEventModelFromJson(json);

/// If [uiItem] is set null and the action
/// is [TutorialCompleteAction.onClick] then
/// it means that the action is click on anything
/// on screen
@override final  TutorialCompleteAction action;
@override final  TutorialUiItem? uiItem;
@override@JsonKey() final  bool isCompleted;
 final  Map<PrimitiveBool, List<TutorialGameEffectModel>> _boolConsquenses;
@override@JsonKey() Map<PrimitiveBool, List<TutorialGameEffectModel>> get boolConsquenses {
  if (_boolConsquenses is EqualUnmodifiableMapView) return _boolConsquenses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_boolConsquenses);
}


/// Create a copy of TutorialUiActionEventModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TutorialUiActionEventModelCopyWith<_TutorialUiActionEventModel> get copyWith => __$TutorialUiActionEventModelCopyWithImpl<_TutorialUiActionEventModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TutorialUiActionEventModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TutorialUiActionEventModel&&(identical(other.action, action) || other.action == action)&&(identical(other.uiItem, uiItem) || other.uiItem == uiItem)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&const DeepCollectionEquality().equals(other._boolConsquenses, _boolConsquenses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,action,uiItem,isCompleted,const DeepCollectionEquality().hash(_boolConsquenses));

@override
String toString() {
  return 'TutorialUiActionEventModel(action: $action, uiItem: $uiItem, isCompleted: $isCompleted, boolConsquenses: $boolConsquenses)';
}


}

/// @nodoc
abstract mixin class _$TutorialUiActionEventModelCopyWith<$Res> implements $TutorialUiActionEventModelCopyWith<$Res> {
  factory _$TutorialUiActionEventModelCopyWith(_TutorialUiActionEventModel value, $Res Function(_TutorialUiActionEventModel) _then) = __$TutorialUiActionEventModelCopyWithImpl;
@override @useResult
$Res call({
 TutorialCompleteAction action, TutorialUiItem? uiItem, bool isCompleted, Map<PrimitiveBool, List<TutorialGameEffectModel>> boolConsquenses
});




}
/// @nodoc
class __$TutorialUiActionEventModelCopyWithImpl<$Res>
    implements _$TutorialUiActionEventModelCopyWith<$Res> {
  __$TutorialUiActionEventModelCopyWithImpl(this._self, this._then);

  final _TutorialUiActionEventModel _self;
  final $Res Function(_TutorialUiActionEventModel) _then;

/// Create a copy of TutorialUiActionEventModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? action = null,Object? uiItem = freezed,Object? isCompleted = null,Object? boolConsquenses = null,}) {
  return _then(_TutorialUiActionEventModel(
action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as TutorialCompleteAction,uiItem: freezed == uiItem ? _self.uiItem : uiItem // ignore: cast_nullable_to_non_nullable
as TutorialUiItem?,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,boolConsquenses: null == boolConsquenses ? _self._boolConsquenses : boolConsquenses // ignore: cast_nullable_to_non_nullable
as Map<PrimitiveBool, List<TutorialGameEffectModel>>,
  ));
}


}


/// @nodoc
mixin _$TutorialEventsCollectionModel {

 List<TutorialEventModel> get events; TutorialCollectionsName get name; int get currentIndex;
/// Create a copy of TutorialEventsCollectionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TutorialEventsCollectionModelCopyWith<TutorialEventsCollectionModel> get copyWith => _$TutorialEventsCollectionModelCopyWithImpl<TutorialEventsCollectionModel>(this as TutorialEventsCollectionModel, _$identity);

  /// Serializes this TutorialEventsCollectionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TutorialEventsCollectionModel&&const DeepCollectionEquality().equals(other.events, events)&&(identical(other.name, name) || other.name == name)&&(identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(events),name,currentIndex);

@override
String toString() {
  return 'TutorialEventsCollectionModel(events: $events, name: $name, currentIndex: $currentIndex)';
}


}

/// @nodoc
abstract mixin class $TutorialEventsCollectionModelCopyWith<$Res>  {
  factory $TutorialEventsCollectionModelCopyWith(TutorialEventsCollectionModel value, $Res Function(TutorialEventsCollectionModel) _then) = _$TutorialEventsCollectionModelCopyWithImpl;
@useResult
$Res call({
 List<TutorialEventModel> events, TutorialCollectionsName name, int currentIndex
});




}
/// @nodoc
class _$TutorialEventsCollectionModelCopyWithImpl<$Res>
    implements $TutorialEventsCollectionModelCopyWith<$Res> {
  _$TutorialEventsCollectionModelCopyWithImpl(this._self, this._then);

  final TutorialEventsCollectionModel _self;
  final $Res Function(TutorialEventsCollectionModel) _then;

/// Create a copy of TutorialEventsCollectionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? events = null,Object? name = null,Object? currentIndex = null,}) {
  return _then(_self.copyWith(
events: null == events ? _self.events : events // ignore: cast_nullable_to_non_nullable
as List<TutorialEventModel>,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as TutorialCollectionsName,currentIndex: null == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TutorialEventsCollectionModel].
extension TutorialEventsCollectionModelPatterns on TutorialEventsCollectionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TutorialEventsCollectionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TutorialEventsCollectionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TutorialEventsCollectionModel value)  $default,){
final _that = this;
switch (_that) {
case _TutorialEventsCollectionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TutorialEventsCollectionModel value)?  $default,){
final _that = this;
switch (_that) {
case _TutorialEventsCollectionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<TutorialEventModel> events,  TutorialCollectionsName name,  int currentIndex)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TutorialEventsCollectionModel() when $default != null:
return $default(_that.events,_that.name,_that.currentIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<TutorialEventModel> events,  TutorialCollectionsName name,  int currentIndex)  $default,) {final _that = this;
switch (_that) {
case _TutorialEventsCollectionModel():
return $default(_that.events,_that.name,_that.currentIndex);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<TutorialEventModel> events,  TutorialCollectionsName name,  int currentIndex)?  $default,) {final _that = this;
switch (_that) {
case _TutorialEventsCollectionModel() when $default != null:
return $default(_that.events,_that.name,_that.currentIndex);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _TutorialEventsCollectionModel extends TutorialEventsCollectionModel {
  const _TutorialEventsCollectionModel({required final  List<TutorialEventModel> events, required this.name, required this.currentIndex}): _events = events,super._();
  factory _TutorialEventsCollectionModel.fromJson(Map<String, dynamic> json) => _$TutorialEventsCollectionModelFromJson(json);

 final  List<TutorialEventModel> _events;
@override List<TutorialEventModel> get events {
  if (_events is EqualUnmodifiableListView) return _events;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_events);
}

@override final  TutorialCollectionsName name;
@override final  int currentIndex;

/// Create a copy of TutorialEventsCollectionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TutorialEventsCollectionModelCopyWith<_TutorialEventsCollectionModel> get copyWith => __$TutorialEventsCollectionModelCopyWithImpl<_TutorialEventsCollectionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TutorialEventsCollectionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TutorialEventsCollectionModel&&const DeepCollectionEquality().equals(other._events, _events)&&(identical(other.name, name) || other.name == name)&&(identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_events),name,currentIndex);

@override
String toString() {
  return 'TutorialEventsCollectionModel(events: $events, name: $name, currentIndex: $currentIndex)';
}


}

/// @nodoc
abstract mixin class _$TutorialEventsCollectionModelCopyWith<$Res> implements $TutorialEventsCollectionModelCopyWith<$Res> {
  factory _$TutorialEventsCollectionModelCopyWith(_TutorialEventsCollectionModel value, $Res Function(_TutorialEventsCollectionModel) _then) = __$TutorialEventsCollectionModelCopyWithImpl;
@override @useResult
$Res call({
 List<TutorialEventModel> events, TutorialCollectionsName name, int currentIndex
});




}
/// @nodoc
class __$TutorialEventsCollectionModelCopyWithImpl<$Res>
    implements _$TutorialEventsCollectionModelCopyWith<$Res> {
  __$TutorialEventsCollectionModelCopyWithImpl(this._self, this._then);

  final _TutorialEventsCollectionModel _self;
  final $Res Function(_TutorialEventsCollectionModel) _then;

/// Create a copy of TutorialEventsCollectionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? events = null,Object? name = null,Object? currentIndex = null,}) {
  return _then(_TutorialEventsCollectionModel(
events: null == events ? _self._events : events // ignore: cast_nullable_to_non_nullable
as List<TutorialEventModel>,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as TutorialCollectionsName,currentIndex: null == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$TutorialCollectionsProgressModel {

/// Key - [TutorialCollectionsName]
/// Value - int index from [TutorialEventsCollectionModel.events]
 Map<TutorialCollectionsName, int> get indexes;
/// Create a copy of TutorialCollectionsProgressModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TutorialCollectionsProgressModelCopyWith<TutorialCollectionsProgressModel> get copyWith => _$TutorialCollectionsProgressModelCopyWithImpl<TutorialCollectionsProgressModel>(this as TutorialCollectionsProgressModel, _$identity);

  /// Serializes this TutorialCollectionsProgressModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TutorialCollectionsProgressModel&&const DeepCollectionEquality().equals(other.indexes, indexes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(indexes));

@override
String toString() {
  return 'TutorialCollectionsProgressModel(indexes: $indexes)';
}


}

/// @nodoc
abstract mixin class $TutorialCollectionsProgressModelCopyWith<$Res>  {
  factory $TutorialCollectionsProgressModelCopyWith(TutorialCollectionsProgressModel value, $Res Function(TutorialCollectionsProgressModel) _then) = _$TutorialCollectionsProgressModelCopyWithImpl;
@useResult
$Res call({
 Map<TutorialCollectionsName, int> indexes
});




}
/// @nodoc
class _$TutorialCollectionsProgressModelCopyWithImpl<$Res>
    implements $TutorialCollectionsProgressModelCopyWith<$Res> {
  _$TutorialCollectionsProgressModelCopyWithImpl(this._self, this._then);

  final TutorialCollectionsProgressModel _self;
  final $Res Function(TutorialCollectionsProgressModel) _then;

/// Create a copy of TutorialCollectionsProgressModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? indexes = null,}) {
  return _then(_self.copyWith(
indexes: null == indexes ? _self.indexes : indexes // ignore: cast_nullable_to_non_nullable
as Map<TutorialCollectionsName, int>,
  ));
}

}


/// Adds pattern-matching-related methods to [TutorialCollectionsProgressModel].
extension TutorialCollectionsProgressModelPatterns on TutorialCollectionsProgressModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TutorialCollectionsProgressModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TutorialCollectionsProgressModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TutorialCollectionsProgressModel value)  $default,){
final _that = this;
switch (_that) {
case _TutorialCollectionsProgressModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TutorialCollectionsProgressModel value)?  $default,){
final _that = this;
switch (_that) {
case _TutorialCollectionsProgressModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<TutorialCollectionsName, int> indexes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TutorialCollectionsProgressModel() when $default != null:
return $default(_that.indexes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<TutorialCollectionsName, int> indexes)  $default,) {final _that = this;
switch (_that) {
case _TutorialCollectionsProgressModel():
return $default(_that.indexes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<TutorialCollectionsName, int> indexes)?  $default,) {final _that = this;
switch (_that) {
case _TutorialCollectionsProgressModel() when $default != null:
return $default(_that.indexes);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _TutorialCollectionsProgressModel extends TutorialCollectionsProgressModel {
  const _TutorialCollectionsProgressModel({required final  Map<TutorialCollectionsName, int> indexes}): _indexes = indexes,super._();
  factory _TutorialCollectionsProgressModel.fromJson(Map<String, dynamic> json) => _$TutorialCollectionsProgressModelFromJson(json);

/// Key - [TutorialCollectionsName]
/// Value - int index from [TutorialEventsCollectionModel.events]
 final  Map<TutorialCollectionsName, int> _indexes;
/// Key - [TutorialCollectionsName]
/// Value - int index from [TutorialEventsCollectionModel.events]
@override Map<TutorialCollectionsName, int> get indexes {
  if (_indexes is EqualUnmodifiableMapView) return _indexes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_indexes);
}


/// Create a copy of TutorialCollectionsProgressModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TutorialCollectionsProgressModelCopyWith<_TutorialCollectionsProgressModel> get copyWith => __$TutorialCollectionsProgressModelCopyWithImpl<_TutorialCollectionsProgressModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TutorialCollectionsProgressModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TutorialCollectionsProgressModel&&const DeepCollectionEquality().equals(other._indexes, _indexes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_indexes));

@override
String toString() {
  return 'TutorialCollectionsProgressModel(indexes: $indexes)';
}


}

/// @nodoc
abstract mixin class _$TutorialCollectionsProgressModelCopyWith<$Res> implements $TutorialCollectionsProgressModelCopyWith<$Res> {
  factory _$TutorialCollectionsProgressModelCopyWith(_TutorialCollectionsProgressModel value, $Res Function(_TutorialCollectionsProgressModel) _then) = __$TutorialCollectionsProgressModelCopyWithImpl;
@override @useResult
$Res call({
 Map<TutorialCollectionsName, int> indexes
});




}
/// @nodoc
class __$TutorialCollectionsProgressModelCopyWithImpl<$Res>
    implements _$TutorialCollectionsProgressModelCopyWith<$Res> {
  __$TutorialCollectionsProgressModelCopyWithImpl(this._self, this._then);

  final _TutorialCollectionsProgressModel _self;
  final $Res Function(_TutorialCollectionsProgressModel) _then;

/// Create a copy of TutorialCollectionsProgressModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? indexes = null,}) {
  return _then(_TutorialCollectionsProgressModel(
indexes: null == indexes ? _self._indexes : indexes // ignore: cast_nullable_to_non_nullable
as Map<TutorialCollectionsName, int>,
  ));
}


}


/// @nodoc
mixin _$TutorialCollectionsDataModel {

 Map<TutorialCollectionsName, List<TutorialEventModel>> get events;
/// Create a copy of TutorialCollectionsDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TutorialCollectionsDataModelCopyWith<TutorialCollectionsDataModel> get copyWith => _$TutorialCollectionsDataModelCopyWithImpl<TutorialCollectionsDataModel>(this as TutorialCollectionsDataModel, _$identity);

  /// Serializes this TutorialCollectionsDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TutorialCollectionsDataModel&&const DeepCollectionEquality().equals(other.events, events));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(events));

@override
String toString() {
  return 'TutorialCollectionsDataModel(events: $events)';
}


}

/// @nodoc
abstract mixin class $TutorialCollectionsDataModelCopyWith<$Res>  {
  factory $TutorialCollectionsDataModelCopyWith(TutorialCollectionsDataModel value, $Res Function(TutorialCollectionsDataModel) _then) = _$TutorialCollectionsDataModelCopyWithImpl;
@useResult
$Res call({
 Map<TutorialCollectionsName, List<TutorialEventModel>> events
});




}
/// @nodoc
class _$TutorialCollectionsDataModelCopyWithImpl<$Res>
    implements $TutorialCollectionsDataModelCopyWith<$Res> {
  _$TutorialCollectionsDataModelCopyWithImpl(this._self, this._then);

  final TutorialCollectionsDataModel _self;
  final $Res Function(TutorialCollectionsDataModel) _then;

/// Create a copy of TutorialCollectionsDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? events = null,}) {
  return _then(_self.copyWith(
events: null == events ? _self.events : events // ignore: cast_nullable_to_non_nullable
as Map<TutorialCollectionsName, List<TutorialEventModel>>,
  ));
}

}


/// Adds pattern-matching-related methods to [TutorialCollectionsDataModel].
extension TutorialCollectionsDataModelPatterns on TutorialCollectionsDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TutorialCollectionsDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TutorialCollectionsDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TutorialCollectionsDataModel value)  $default,){
final _that = this;
switch (_that) {
case _TutorialCollectionsDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TutorialCollectionsDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _TutorialCollectionsDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<TutorialCollectionsName, List<TutorialEventModel>> events)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TutorialCollectionsDataModel() when $default != null:
return $default(_that.events);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<TutorialCollectionsName, List<TutorialEventModel>> events)  $default,) {final _that = this;
switch (_that) {
case _TutorialCollectionsDataModel():
return $default(_that.events);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<TutorialCollectionsName, List<TutorialEventModel>> events)?  $default,) {final _that = this;
switch (_that) {
case _TutorialCollectionsDataModel() when $default != null:
return $default(_that.events);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TutorialCollectionsDataModel extends TutorialCollectionsDataModel {
  const _TutorialCollectionsDataModel({required final  Map<TutorialCollectionsName, List<TutorialEventModel>> events}): _events = events,super._();
  factory _TutorialCollectionsDataModel.fromJson(Map<String, dynamic> json) => _$TutorialCollectionsDataModelFromJson(json);

 final  Map<TutorialCollectionsName, List<TutorialEventModel>> _events;
@override Map<TutorialCollectionsName, List<TutorialEventModel>> get events {
  if (_events is EqualUnmodifiableMapView) return _events;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_events);
}


/// Create a copy of TutorialCollectionsDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TutorialCollectionsDataModelCopyWith<_TutorialCollectionsDataModel> get copyWith => __$TutorialCollectionsDataModelCopyWithImpl<_TutorialCollectionsDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TutorialCollectionsDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TutorialCollectionsDataModel&&const DeepCollectionEquality().equals(other._events, _events));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_events));

@override
String toString() {
  return 'TutorialCollectionsDataModel(events: $events)';
}


}

/// @nodoc
abstract mixin class _$TutorialCollectionsDataModelCopyWith<$Res> implements $TutorialCollectionsDataModelCopyWith<$Res> {
  factory _$TutorialCollectionsDataModelCopyWith(_TutorialCollectionsDataModel value, $Res Function(_TutorialCollectionsDataModel) _then) = __$TutorialCollectionsDataModelCopyWithImpl;
@override @useResult
$Res call({
 Map<TutorialCollectionsName, List<TutorialEventModel>> events
});




}
/// @nodoc
class __$TutorialCollectionsDataModelCopyWithImpl<$Res>
    implements _$TutorialCollectionsDataModelCopyWith<$Res> {
  __$TutorialCollectionsDataModelCopyWithImpl(this._self, this._then);

  final _TutorialCollectionsDataModel _self;
  final $Res Function(_TutorialCollectionsDataModel) _then;

/// Create a copy of TutorialCollectionsDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? events = null,}) {
  return _then(_TutorialCollectionsDataModel(
events: null == events ? _self._events : events // ignore: cast_nullable_to_non_nullable
as Map<TutorialCollectionsName, List<TutorialEventModel>>,
  ));
}


}

WorldDateTimeModel _$WorldDateTimeModelFromJson(
  Map<String, dynamic> json
) {
    return _WorldDateTime.fromJson(
      json
    );
}

/// @nodoc
mixin _$WorldDateTimeModel {

 int get second;
/// Create a copy of WorldDateTimeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorldDateTimeModelCopyWith<WorldDateTimeModel> get copyWith => _$WorldDateTimeModelCopyWithImpl<WorldDateTimeModel>(this as WorldDateTimeModel, _$identity);

  /// Serializes this WorldDateTimeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorldDateTimeModel&&(identical(other.second, second) || other.second == second));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,second);

@override
String toString() {
  return 'WorldDateTimeModel(second: $second)';
}


}

/// @nodoc
abstract mixin class $WorldDateTimeModelCopyWith<$Res>  {
  factory $WorldDateTimeModelCopyWith(WorldDateTimeModel value, $Res Function(WorldDateTimeModel) _then) = _$WorldDateTimeModelCopyWithImpl;
@useResult
$Res call({
 int second
});




}
/// @nodoc
class _$WorldDateTimeModelCopyWithImpl<$Res>
    implements $WorldDateTimeModelCopyWith<$Res> {
  _$WorldDateTimeModelCopyWithImpl(this._self, this._then);

  final WorldDateTimeModel _self;
  final $Res Function(WorldDateTimeModel) _then;

/// Create a copy of WorldDateTimeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? second = null,}) {
  return _then(_self.copyWith(
second: null == second ? _self.second : second // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [WorldDateTimeModel].
extension WorldDateTimeModelPatterns on WorldDateTimeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorldDateTime value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorldDateTime() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorldDateTime value)  $default,){
final _that = this;
switch (_that) {
case _WorldDateTime():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorldDateTime value)?  $default,){
final _that = this;
switch (_that) {
case _WorldDateTime() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int second)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorldDateTime() when $default != null:
return $default(_that.second);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int second)  $default,) {final _that = this;
switch (_that) {
case _WorldDateTime():
return $default(_that.second);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int second)?  $default,) {final _that = this;
switch (_that) {
case _WorldDateTime() when $default != null:
return $default(_that.second);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _WorldDateTime extends WorldDateTimeModel {
  const _WorldDateTime({this.second = 0}): super._();
  factory _WorldDateTime.fromJson(Map<String, dynamic> json) => _$WorldDateTimeFromJson(json);

@override@JsonKey() final  int second;

/// Create a copy of WorldDateTimeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorldDateTimeCopyWith<_WorldDateTime> get copyWith => __$WorldDateTimeCopyWithImpl<_WorldDateTime>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorldDateTimeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorldDateTime&&(identical(other.second, second) || other.second == second));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,second);

@override
String toString() {
  return 'WorldDateTimeModel(second: $second)';
}


}

/// @nodoc
abstract mixin class _$WorldDateTimeCopyWith<$Res> implements $WorldDateTimeModelCopyWith<$Res> {
  factory _$WorldDateTimeCopyWith(_WorldDateTime value, $Res Function(_WorldDateTime) _then) = __$WorldDateTimeCopyWithImpl;
@override @useResult
$Res call({
 int second
});




}
/// @nodoc
class __$WorldDateTimeCopyWithImpl<$Res>
    implements _$WorldDateTimeCopyWith<$Res> {
  __$WorldDateTimeCopyWithImpl(this._self, this._then);

  final _WorldDateTime _self;
  final $Res Function(_WorldDateTime) _then;

/// Create a copy of WorldDateTimeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? second = null,}) {
  return _then(_WorldDateTime(
second: null == second ? _self.second : second // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
