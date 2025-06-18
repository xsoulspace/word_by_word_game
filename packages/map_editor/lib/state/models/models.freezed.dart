// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AnimationEntryModel {

 double get frameIndex; int get framesLength; List<String> get framesPaths;
/// Create a copy of AnimationEntryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnimationEntryModelCopyWith<AnimationEntryModel> get copyWith => _$AnimationEntryModelCopyWithImpl<AnimationEntryModel>(this as AnimationEntryModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnimationEntryModel&&(identical(other.frameIndex, frameIndex) || other.frameIndex == frameIndex)&&(identical(other.framesLength, framesLength) || other.framesLength == framesLength)&&const DeepCollectionEquality().equals(other.framesPaths, framesPaths));
}


@override
int get hashCode => Object.hash(runtimeType,frameIndex,framesLength,const DeepCollectionEquality().hash(framesPaths));

@override
String toString() {
  return 'AnimationEntryModel(frameIndex: $frameIndex, framesLength: $framesLength, framesPaths: $framesPaths)';
}


}

/// @nodoc
abstract mixin class $AnimationEntryModelCopyWith<$Res>  {
  factory $AnimationEntryModelCopyWith(AnimationEntryModel value, $Res Function(AnimationEntryModel) _then) = _$AnimationEntryModelCopyWithImpl;
@useResult
$Res call({
 double frameIndex, int framesLength, List<String> framesPaths
});




}
/// @nodoc
class _$AnimationEntryModelCopyWithImpl<$Res>
    implements $AnimationEntryModelCopyWith<$Res> {
  _$AnimationEntryModelCopyWithImpl(this._self, this._then);

  final AnimationEntryModel _self;
  final $Res Function(AnimationEntryModel) _then;

/// Create a copy of AnimationEntryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? frameIndex = null,Object? framesLength = null,Object? framesPaths = null,}) {
  return _then(_self.copyWith(
frameIndex: null == frameIndex ? _self.frameIndex : frameIndex // ignore: cast_nullable_to_non_nullable
as double,framesLength: null == framesLength ? _self.framesLength : framesLength // ignore: cast_nullable_to_non_nullable
as int,framesPaths: null == framesPaths ? _self.framesPaths : framesPaths // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// @nodoc


class _AnimationEntryModel extends AnimationEntryModel {
  const _AnimationEntryModel({this.frameIndex = 0, this.framesLength = 0, final  List<String> framesPaths = const []}): _framesPaths = framesPaths,super._();
  

@override@JsonKey() final  double frameIndex;
@override@JsonKey() final  int framesLength;
 final  List<String> _framesPaths;
@override@JsonKey() List<String> get framesPaths {
  if (_framesPaths is EqualUnmodifiableListView) return _framesPaths;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_framesPaths);
}


/// Create a copy of AnimationEntryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnimationEntryModelCopyWith<_AnimationEntryModel> get copyWith => __$AnimationEntryModelCopyWithImpl<_AnimationEntryModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnimationEntryModel&&(identical(other.frameIndex, frameIndex) || other.frameIndex == frameIndex)&&(identical(other.framesLength, framesLength) || other.framesLength == framesLength)&&const DeepCollectionEquality().equals(other._framesPaths, _framesPaths));
}


@override
int get hashCode => Object.hash(runtimeType,frameIndex,framesLength,const DeepCollectionEquality().hash(_framesPaths));

@override
String toString() {
  return 'AnimationEntryModel(frameIndex: $frameIndex, framesLength: $framesLength, framesPaths: $framesPaths)';
}


}

/// @nodoc
abstract mixin class _$AnimationEntryModelCopyWith<$Res> implements $AnimationEntryModelCopyWith<$Res> {
  factory _$AnimationEntryModelCopyWith(_AnimationEntryModel value, $Res Function(_AnimationEntryModel) _then) = __$AnimationEntryModelCopyWithImpl;
@override @useResult
$Res call({
 double frameIndex, int framesLength, List<String> framesPaths
});




}
/// @nodoc
class __$AnimationEntryModelCopyWithImpl<$Res>
    implements _$AnimationEntryModelCopyWith<$Res> {
  __$AnimationEntryModelCopyWithImpl(this._self, this._then);

  final _AnimationEntryModel _self;
  final $Res Function(_AnimationEntryModel) _then;

/// Create a copy of AnimationEntryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? frameIndex = null,Object? framesLength = null,Object? framesPaths = null,}) {
  return _then(_AnimationEntryModel(
frameIndex: null == frameIndex ? _self.frameIndex : frameIndex // ignore: cast_nullable_to_non_nullable
as double,framesLength: null == framesLength ? _self.framesLength : framesLength // ignore: cast_nullable_to_non_nullable
as int,framesPaths: null == framesPaths ? _self._framesPaths : framesPaths // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc
mixin _$GameRendererConfig {

 int get animationSpeed;
/// Create a copy of GameRendererConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameRendererConfigCopyWith<GameRendererConfig> get copyWith => _$GameRendererConfigCopyWithImpl<GameRendererConfig>(this as GameRendererConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameRendererConfig&&(identical(other.animationSpeed, animationSpeed) || other.animationSpeed == animationSpeed));
}


@override
int get hashCode => Object.hash(runtimeType,animationSpeed);

@override
String toString() {
  return 'GameRendererConfig(animationSpeed: $animationSpeed)';
}


}

/// @nodoc
abstract mixin class $GameRendererConfigCopyWith<$Res>  {
  factory $GameRendererConfigCopyWith(GameRendererConfig value, $Res Function(GameRendererConfig) _then) = _$GameRendererConfigCopyWithImpl;
@useResult
$Res call({
 int animationSpeed
});




}
/// @nodoc
class _$GameRendererConfigCopyWithImpl<$Res>
    implements $GameRendererConfigCopyWith<$Res> {
  _$GameRendererConfigCopyWithImpl(this._self, this._then);

  final GameRendererConfig _self;
  final $Res Function(GameRendererConfig) _then;

/// Create a copy of GameRendererConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? animationSpeed = null,}) {
  return _then(_self.copyWith(
animationSpeed: null == animationSpeed ? _self.animationSpeed : animationSpeed // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc


class _GameRendererConfig implements GameRendererConfig {
  const _GameRendererConfig({this.animationSpeed = 8});
  

@override@JsonKey() final  int animationSpeed;

/// Create a copy of GameRendererConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameRendererConfigCopyWith<_GameRendererConfig> get copyWith => __$GameRendererConfigCopyWithImpl<_GameRendererConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameRendererConfig&&(identical(other.animationSpeed, animationSpeed) || other.animationSpeed == animationSpeed));
}


@override
int get hashCode => Object.hash(runtimeType,animationSpeed);

@override
String toString() {
  return 'GameRendererConfig(animationSpeed: $animationSpeed)';
}


}

/// @nodoc
abstract mixin class _$GameRendererConfigCopyWith<$Res> implements $GameRendererConfigCopyWith<$Res> {
  factory _$GameRendererConfigCopyWith(_GameRendererConfig value, $Res Function(_GameRendererConfig) _then) = __$GameRendererConfigCopyWithImpl;
@override @useResult
$Res call({
 int animationSpeed
});




}
/// @nodoc
class __$GameRendererConfigCopyWithImpl<$Res>
    implements _$GameRendererConfigCopyWith<$Res> {
  __$GameRendererConfigCopyWithImpl(this._self, this._then);

  final _GameRendererConfig _self;
  final $Res Function(_GameRendererConfig) _then;

/// Create a copy of GameRendererConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? animationSpeed = null,}) {
  return _then(_GameRendererConfig(
animationSpeed: null == animationSpeed ? _self.animationSpeed : animationSpeed // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
