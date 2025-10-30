// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AdPermissions {

 bool get adsAllowed; bool get pauseGameScreenBannerEnabled; bool get levelEndScreenBannerEnabled; bool get onContinueLevelVideoEnabled;
/// Create a copy of AdPermissions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdPermissionsCopyWith<AdPermissions> get copyWith => _$AdPermissionsCopyWithImpl<AdPermissions>(this as AdPermissions, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdPermissions&&(identical(other.adsAllowed, adsAllowed) || other.adsAllowed == adsAllowed)&&(identical(other.pauseGameScreenBannerEnabled, pauseGameScreenBannerEnabled) || other.pauseGameScreenBannerEnabled == pauseGameScreenBannerEnabled)&&(identical(other.levelEndScreenBannerEnabled, levelEndScreenBannerEnabled) || other.levelEndScreenBannerEnabled == levelEndScreenBannerEnabled)&&(identical(other.onContinueLevelVideoEnabled, onContinueLevelVideoEnabled) || other.onContinueLevelVideoEnabled == onContinueLevelVideoEnabled));
}


@override
int get hashCode => Object.hash(runtimeType,adsAllowed,pauseGameScreenBannerEnabled,levelEndScreenBannerEnabled,onContinueLevelVideoEnabled);

@override
String toString() {
  return 'AdPermissions(adsAllowed: $adsAllowed, pauseGameScreenBannerEnabled: $pauseGameScreenBannerEnabled, levelEndScreenBannerEnabled: $levelEndScreenBannerEnabled, onContinueLevelVideoEnabled: $onContinueLevelVideoEnabled)';
}


}

/// @nodoc
abstract mixin class $AdPermissionsCopyWith<$Res>  {
  factory $AdPermissionsCopyWith(AdPermissions value, $Res Function(AdPermissions) _then) = _$AdPermissionsCopyWithImpl;
@useResult
$Res call({
 bool adsAllowed, bool pauseGameScreenBannerEnabled, bool levelEndScreenBannerEnabled, bool onContinueLevelVideoEnabled
});




}
/// @nodoc
class _$AdPermissionsCopyWithImpl<$Res>
    implements $AdPermissionsCopyWith<$Res> {
  _$AdPermissionsCopyWithImpl(this._self, this._then);

  final AdPermissions _self;
  final $Res Function(AdPermissions) _then;

/// Create a copy of AdPermissions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? adsAllowed = null,Object? pauseGameScreenBannerEnabled = null,Object? levelEndScreenBannerEnabled = null,Object? onContinueLevelVideoEnabled = null,}) {
  return _then(_self.copyWith(
adsAllowed: null == adsAllowed ? _self.adsAllowed : adsAllowed // ignore: cast_nullable_to_non_nullable
as bool,pauseGameScreenBannerEnabled: null == pauseGameScreenBannerEnabled ? _self.pauseGameScreenBannerEnabled : pauseGameScreenBannerEnabled // ignore: cast_nullable_to_non_nullable
as bool,levelEndScreenBannerEnabled: null == levelEndScreenBannerEnabled ? _self.levelEndScreenBannerEnabled : levelEndScreenBannerEnabled // ignore: cast_nullable_to_non_nullable
as bool,onContinueLevelVideoEnabled: null == onContinueLevelVideoEnabled ? _self.onContinueLevelVideoEnabled : onContinueLevelVideoEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AdPermissions].
extension AdPermissionsPatterns on AdPermissions {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdPermissions value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdPermissions() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdPermissions value)  $default,){
final _that = this;
switch (_that) {
case _AdPermissions():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdPermissions value)?  $default,){
final _that = this;
switch (_that) {
case _AdPermissions() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool adsAllowed,  bool pauseGameScreenBannerEnabled,  bool levelEndScreenBannerEnabled,  bool onContinueLevelVideoEnabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdPermissions() when $default != null:
return $default(_that.adsAllowed,_that.pauseGameScreenBannerEnabled,_that.levelEndScreenBannerEnabled,_that.onContinueLevelVideoEnabled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool adsAllowed,  bool pauseGameScreenBannerEnabled,  bool levelEndScreenBannerEnabled,  bool onContinueLevelVideoEnabled)  $default,) {final _that = this;
switch (_that) {
case _AdPermissions():
return $default(_that.adsAllowed,_that.pauseGameScreenBannerEnabled,_that.levelEndScreenBannerEnabled,_that.onContinueLevelVideoEnabled);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool adsAllowed,  bool pauseGameScreenBannerEnabled,  bool levelEndScreenBannerEnabled,  bool onContinueLevelVideoEnabled)?  $default,) {final _that = this;
switch (_that) {
case _AdPermissions() when $default != null:
return $default(_that.adsAllowed,_that.pauseGameScreenBannerEnabled,_that.levelEndScreenBannerEnabled,_that.onContinueLevelVideoEnabled);case _:
  return null;

}
}

}

/// @nodoc


class _AdPermissions extends AdPermissions {
  const _AdPermissions({this.adsAllowed = false, this.pauseGameScreenBannerEnabled = false, this.levelEndScreenBannerEnabled = false, this.onContinueLevelVideoEnabled = false}): super._();
  

@override@JsonKey() final  bool adsAllowed;
@override@JsonKey() final  bool pauseGameScreenBannerEnabled;
@override@JsonKey() final  bool levelEndScreenBannerEnabled;
@override@JsonKey() final  bool onContinueLevelVideoEnabled;

/// Create a copy of AdPermissions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdPermissionsCopyWith<_AdPermissions> get copyWith => __$AdPermissionsCopyWithImpl<_AdPermissions>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdPermissions&&(identical(other.adsAllowed, adsAllowed) || other.adsAllowed == adsAllowed)&&(identical(other.pauseGameScreenBannerEnabled, pauseGameScreenBannerEnabled) || other.pauseGameScreenBannerEnabled == pauseGameScreenBannerEnabled)&&(identical(other.levelEndScreenBannerEnabled, levelEndScreenBannerEnabled) || other.levelEndScreenBannerEnabled == levelEndScreenBannerEnabled)&&(identical(other.onContinueLevelVideoEnabled, onContinueLevelVideoEnabled) || other.onContinueLevelVideoEnabled == onContinueLevelVideoEnabled));
}


@override
int get hashCode => Object.hash(runtimeType,adsAllowed,pauseGameScreenBannerEnabled,levelEndScreenBannerEnabled,onContinueLevelVideoEnabled);

@override
String toString() {
  return 'AdPermissions(adsAllowed: $adsAllowed, pauseGameScreenBannerEnabled: $pauseGameScreenBannerEnabled, levelEndScreenBannerEnabled: $levelEndScreenBannerEnabled, onContinueLevelVideoEnabled: $onContinueLevelVideoEnabled)';
}


}

/// @nodoc
abstract mixin class _$AdPermissionsCopyWith<$Res> implements $AdPermissionsCopyWith<$Res> {
  factory _$AdPermissionsCopyWith(_AdPermissions value, $Res Function(_AdPermissions) _then) = __$AdPermissionsCopyWithImpl;
@override @useResult
$Res call({
 bool adsAllowed, bool pauseGameScreenBannerEnabled, bool levelEndScreenBannerEnabled, bool onContinueLevelVideoEnabled
});




}
/// @nodoc
class __$AdPermissionsCopyWithImpl<$Res>
    implements _$AdPermissionsCopyWith<$Res> {
  __$AdPermissionsCopyWithImpl(this._self, this._then);

  final _AdPermissions _self;
  final $Res Function(_AdPermissions) _then;

/// Create a copy of AdPermissions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? adsAllowed = null,Object? pauseGameScreenBannerEnabled = null,Object? levelEndScreenBannerEnabled = null,Object? onContinueLevelVideoEnabled = null,}) {
  return _then(_AdPermissions(
adsAllowed: null == adsAllowed ? _self.adsAllowed : adsAllowed // ignore: cast_nullable_to_non_nullable
as bool,pauseGameScreenBannerEnabled: null == pauseGameScreenBannerEnabled ? _self.pauseGameScreenBannerEnabled : pauseGameScreenBannerEnabled // ignore: cast_nullable_to_non_nullable
as bool,levelEndScreenBannerEnabled: null == levelEndScreenBannerEnabled ? _self.levelEndScreenBannerEnabled : levelEndScreenBannerEnabled // ignore: cast_nullable_to_non_nullable
as bool,onContinueLevelVideoEnabled: null == onContinueLevelVideoEnabled ? _self.onContinueLevelVideoEnabled : onContinueLevelVideoEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
