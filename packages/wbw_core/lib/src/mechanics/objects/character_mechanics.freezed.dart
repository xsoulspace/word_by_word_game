// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_mechanics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LiftForceModel {

 double get liftPower; BalloonLiftPowersModel get updatedPowers;
/// Create a copy of LiftForceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LiftForceModelCopyWith<LiftForceModel> get copyWith => _$LiftForceModelCopyWithImpl<LiftForceModel>(this as LiftForceModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LiftForceModel&&(identical(other.liftPower, liftPower) || other.liftPower == liftPower)&&(identical(other.updatedPowers, updatedPowers) || other.updatedPowers == updatedPowers));
}


@override
int get hashCode => Object.hash(runtimeType,liftPower,updatedPowers);

@override
String toString() {
  return 'LiftForceModel(liftPower: $liftPower, updatedPowers: $updatedPowers)';
}


}

/// @nodoc
abstract mixin class $LiftForceModelCopyWith<$Res>  {
  factory $LiftForceModelCopyWith(LiftForceModel value, $Res Function(LiftForceModel) _then) = _$LiftForceModelCopyWithImpl;
@useResult
$Res call({
 double liftPower, BalloonLiftPowersModel updatedPowers
});


$BalloonLiftPowersModelCopyWith<$Res> get updatedPowers;

}
/// @nodoc
class _$LiftForceModelCopyWithImpl<$Res>
    implements $LiftForceModelCopyWith<$Res> {
  _$LiftForceModelCopyWithImpl(this._self, this._then);

  final LiftForceModel _self;
  final $Res Function(LiftForceModel) _then;

/// Create a copy of LiftForceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? liftPower = null,Object? updatedPowers = null,}) {
  return _then(_self.copyWith(
liftPower: null == liftPower ? _self.liftPower : liftPower // ignore: cast_nullable_to_non_nullable
as double,updatedPowers: null == updatedPowers ? _self.updatedPowers : updatedPowers // ignore: cast_nullable_to_non_nullable
as BalloonLiftPowersModel,
  ));
}
/// Create a copy of LiftForceModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BalloonLiftPowersModelCopyWith<$Res> get updatedPowers {
  
  return $BalloonLiftPowersModelCopyWith<$Res>(_self.updatedPowers, (value) {
    return _then(_self.copyWith(updatedPowers: value));
  });
}
}


/// Adds pattern-matching-related methods to [LiftForceModel].
extension LiftForceModelPatterns on LiftForceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LiftForceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LiftForceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LiftForceModel value)  $default,){
final _that = this;
switch (_that) {
case _LiftForceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LiftForceModel value)?  $default,){
final _that = this;
switch (_that) {
case _LiftForceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double liftPower,  BalloonLiftPowersModel updatedPowers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LiftForceModel() when $default != null:
return $default(_that.liftPower,_that.updatedPowers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double liftPower,  BalloonLiftPowersModel updatedPowers)  $default,) {final _that = this;
switch (_that) {
case _LiftForceModel():
return $default(_that.liftPower,_that.updatedPowers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double liftPower,  BalloonLiftPowersModel updatedPowers)?  $default,) {final _that = this;
switch (_that) {
case _LiftForceModel() when $default != null:
return $default(_that.liftPower,_that.updatedPowers);case _:
  return null;

}
}

}

/// @nodoc


class _LiftForceModel implements LiftForceModel {
  const _LiftForceModel({required this.liftPower, required this.updatedPowers});
  

@override final  double liftPower;
@override final  BalloonLiftPowersModel updatedPowers;

/// Create a copy of LiftForceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LiftForceModelCopyWith<_LiftForceModel> get copyWith => __$LiftForceModelCopyWithImpl<_LiftForceModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LiftForceModel&&(identical(other.liftPower, liftPower) || other.liftPower == liftPower)&&(identical(other.updatedPowers, updatedPowers) || other.updatedPowers == updatedPowers));
}


@override
int get hashCode => Object.hash(runtimeType,liftPower,updatedPowers);

@override
String toString() {
  return 'LiftForceModel(liftPower: $liftPower, updatedPowers: $updatedPowers)';
}


}

/// @nodoc
abstract mixin class _$LiftForceModelCopyWith<$Res> implements $LiftForceModelCopyWith<$Res> {
  factory _$LiftForceModelCopyWith(_LiftForceModel value, $Res Function(_LiftForceModel) _then) = __$LiftForceModelCopyWithImpl;
@override @useResult
$Res call({
 double liftPower, BalloonLiftPowersModel updatedPowers
});


@override $BalloonLiftPowersModelCopyWith<$Res> get updatedPowers;

}
/// @nodoc
class __$LiftForceModelCopyWithImpl<$Res>
    implements _$LiftForceModelCopyWith<$Res> {
  __$LiftForceModelCopyWithImpl(this._self, this._then);

  final _LiftForceModel _self;
  final $Res Function(_LiftForceModel) _then;

/// Create a copy of LiftForceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? liftPower = null,Object? updatedPowers = null,}) {
  return _then(_LiftForceModel(
liftPower: null == liftPower ? _self.liftPower : liftPower // ignore: cast_nullable_to_non_nullable
as double,updatedPowers: null == updatedPowers ? _self.updatedPowers : updatedPowers // ignore: cast_nullable_to_non_nullable
as BalloonLiftPowersModel,
  ));
}

/// Create a copy of LiftForceModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BalloonLiftPowersModelCopyWith<$Res> get updatedPowers {
  
  return $BalloonLiftPowersModelCopyWith<$Res>(_self.updatedPowers, (value) {
    return _then(_self.copyWith(updatedPowers: value));
  });
}
}


/// @nodoc
mixin _$BalloonLiftPowersModel {

 double get power; double get volume;
/// Create a copy of BalloonLiftPowersModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BalloonLiftPowersModelCopyWith<BalloonLiftPowersModel> get copyWith => _$BalloonLiftPowersModelCopyWithImpl<BalloonLiftPowersModel>(this as BalloonLiftPowersModel, _$identity);

  /// Serializes this BalloonLiftPowersModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BalloonLiftPowersModel&&(identical(other.power, power) || other.power == power)&&(identical(other.volume, volume) || other.volume == volume));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,power,volume);

@override
String toString() {
  return 'BalloonLiftPowersModel(power: $power, volume: $volume)';
}


}

/// @nodoc
abstract mixin class $BalloonLiftPowersModelCopyWith<$Res>  {
  factory $BalloonLiftPowersModelCopyWith(BalloonLiftPowersModel value, $Res Function(BalloonLiftPowersModel) _then) = _$BalloonLiftPowersModelCopyWithImpl;
@useResult
$Res call({
 double power, double volume
});




}
/// @nodoc
class _$BalloonLiftPowersModelCopyWithImpl<$Res>
    implements $BalloonLiftPowersModelCopyWith<$Res> {
  _$BalloonLiftPowersModelCopyWithImpl(this._self, this._then);

  final BalloonLiftPowersModel _self;
  final $Res Function(BalloonLiftPowersModel) _then;

/// Create a copy of BalloonLiftPowersModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? power = null,Object? volume = null,}) {
  return _then(_self.copyWith(
power: null == power ? _self.power : power // ignore: cast_nullable_to_non_nullable
as double,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [BalloonLiftPowersModel].
extension BalloonLiftPowersModelPatterns on BalloonLiftPowersModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BalloonLiftPowersModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BalloonLiftPowersModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BalloonLiftPowersModel value)  $default,){
final _that = this;
switch (_that) {
case _BalloonLiftPowersModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BalloonLiftPowersModel value)?  $default,){
final _that = this;
switch (_that) {
case _BalloonLiftPowersModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double power,  double volume)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BalloonLiftPowersModel() when $default != null:
return $default(_that.power,_that.volume);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double power,  double volume)  $default,) {final _that = this;
switch (_that) {
case _BalloonLiftPowersModel():
return $default(_that.power,_that.volume);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double power,  double volume)?  $default,) {final _that = this;
switch (_that) {
case _BalloonLiftPowersModel() when $default != null:
return $default(_that.power,_that.volume);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _BalloonLiftPowersModel implements BalloonLiftPowersModel {
  const _BalloonLiftPowersModel({required this.power, this.volume = 0});
  factory _BalloonLiftPowersModel.fromJson(Map<String, dynamic> json) => _$BalloonLiftPowersModelFromJson(json);

@override final  double power;
@override@JsonKey() final  double volume;

/// Create a copy of BalloonLiftPowersModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BalloonLiftPowersModelCopyWith<_BalloonLiftPowersModel> get copyWith => __$BalloonLiftPowersModelCopyWithImpl<_BalloonLiftPowersModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BalloonLiftPowersModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BalloonLiftPowersModel&&(identical(other.power, power) || other.power == power)&&(identical(other.volume, volume) || other.volume == volume));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,power,volume);

@override
String toString() {
  return 'BalloonLiftPowersModel(power: $power, volume: $volume)';
}


}

/// @nodoc
abstract mixin class _$BalloonLiftPowersModelCopyWith<$Res> implements $BalloonLiftPowersModelCopyWith<$Res> {
  factory _$BalloonLiftPowersModelCopyWith(_BalloonLiftPowersModel value, $Res Function(_BalloonLiftPowersModel) _then) = __$BalloonLiftPowersModelCopyWithImpl;
@override @useResult
$Res call({
 double power, double volume
});




}
/// @nodoc
class __$BalloonLiftPowersModelCopyWithImpl<$Res>
    implements _$BalloonLiftPowersModelCopyWith<$Res> {
  __$BalloonLiftPowersModelCopyWithImpl(this._self, this._then);

  final _BalloonLiftPowersModel _self;
  final $Res Function(_BalloonLiftPowersModel) _then;

/// Create a copy of BalloonLiftPowersModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? power = null,Object? volume = null,}) {
  return _then(_BalloonLiftPowersModel(
power: null == power ? _self.power : power // ignore: cast_nullable_to_non_nullable
as double,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$BalloonLiftParamsModel {

 double get maxVolume; double get maxPower; double get powerUsage;
/// Create a copy of BalloonLiftParamsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BalloonLiftParamsModelCopyWith<BalloonLiftParamsModel> get copyWith => _$BalloonLiftParamsModelCopyWithImpl<BalloonLiftParamsModel>(this as BalloonLiftParamsModel, _$identity);

  /// Serializes this BalloonLiftParamsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BalloonLiftParamsModel&&(identical(other.maxVolume, maxVolume) || other.maxVolume == maxVolume)&&(identical(other.maxPower, maxPower) || other.maxPower == maxPower)&&(identical(other.powerUsage, powerUsage) || other.powerUsage == powerUsage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,maxVolume,maxPower,powerUsage);

@override
String toString() {
  return 'BalloonLiftParamsModel(maxVolume: $maxVolume, maxPower: $maxPower, powerUsage: $powerUsage)';
}


}

/// @nodoc
abstract mixin class $BalloonLiftParamsModelCopyWith<$Res>  {
  factory $BalloonLiftParamsModelCopyWith(BalloonLiftParamsModel value, $Res Function(BalloonLiftParamsModel) _then) = _$BalloonLiftParamsModelCopyWithImpl;
@useResult
$Res call({
 double maxVolume, double maxPower, double powerUsage
});




}
/// @nodoc
class _$BalloonLiftParamsModelCopyWithImpl<$Res>
    implements $BalloonLiftParamsModelCopyWith<$Res> {
  _$BalloonLiftParamsModelCopyWithImpl(this._self, this._then);

  final BalloonLiftParamsModel _self;
  final $Res Function(BalloonLiftParamsModel) _then;

/// Create a copy of BalloonLiftParamsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? maxVolume = null,Object? maxPower = null,Object? powerUsage = null,}) {
  return _then(_self.copyWith(
maxVolume: null == maxVolume ? _self.maxVolume : maxVolume // ignore: cast_nullable_to_non_nullable
as double,maxPower: null == maxPower ? _self.maxPower : maxPower // ignore: cast_nullable_to_non_nullable
as double,powerUsage: null == powerUsage ? _self.powerUsage : powerUsage // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [BalloonLiftParamsModel].
extension BalloonLiftParamsModelPatterns on BalloonLiftParamsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BalloonLiftParamsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BalloonLiftParamsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BalloonLiftParamsModel value)  $default,){
final _that = this;
switch (_that) {
case _BalloonLiftParamsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BalloonLiftParamsModel value)?  $default,){
final _that = this;
switch (_that) {
case _BalloonLiftParamsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double maxVolume,  double maxPower,  double powerUsage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BalloonLiftParamsModel() when $default != null:
return $default(_that.maxVolume,_that.maxPower,_that.powerUsage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double maxVolume,  double maxPower,  double powerUsage)  $default,) {final _that = this;
switch (_that) {
case _BalloonLiftParamsModel():
return $default(_that.maxVolume,_that.maxPower,_that.powerUsage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double maxVolume,  double maxPower,  double powerUsage)?  $default,) {final _that = this;
switch (_that) {
case _BalloonLiftParamsModel() when $default != null:
return $default(_that.maxVolume,_that.maxPower,_that.powerUsage);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _BalloonLiftParamsModel implements BalloonLiftParamsModel {
  const _BalloonLiftParamsModel({required this.maxVolume, required this.maxPower, required this.powerUsage});
  factory _BalloonLiftParamsModel.fromJson(Map<String, dynamic> json) => _$BalloonLiftParamsModelFromJson(json);

@override final  double maxVolume;
@override final  double maxPower;
@override final  double powerUsage;

/// Create a copy of BalloonLiftParamsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BalloonLiftParamsModelCopyWith<_BalloonLiftParamsModel> get copyWith => __$BalloonLiftParamsModelCopyWithImpl<_BalloonLiftParamsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BalloonLiftParamsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BalloonLiftParamsModel&&(identical(other.maxVolume, maxVolume) || other.maxVolume == maxVolume)&&(identical(other.maxPower, maxPower) || other.maxPower == maxPower)&&(identical(other.powerUsage, powerUsage) || other.powerUsage == powerUsage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,maxVolume,maxPower,powerUsage);

@override
String toString() {
  return 'BalloonLiftParamsModel(maxVolume: $maxVolume, maxPower: $maxPower, powerUsage: $powerUsage)';
}


}

/// @nodoc
abstract mixin class _$BalloonLiftParamsModelCopyWith<$Res> implements $BalloonLiftParamsModelCopyWith<$Res> {
  factory _$BalloonLiftParamsModelCopyWith(_BalloonLiftParamsModel value, $Res Function(_BalloonLiftParamsModel) _then) = __$BalloonLiftParamsModelCopyWithImpl;
@override @useResult
$Res call({
 double maxVolume, double maxPower, double powerUsage
});




}
/// @nodoc
class __$BalloonLiftParamsModelCopyWithImpl<$Res>
    implements _$BalloonLiftParamsModelCopyWith<$Res> {
  __$BalloonLiftParamsModelCopyWithImpl(this._self, this._then);

  final _BalloonLiftParamsModel _self;
  final $Res Function(_BalloonLiftParamsModel) _then;

/// Create a copy of BalloonLiftParamsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? maxVolume = null,Object? maxPower = null,Object? powerUsage = null,}) {
  return _then(_BalloonLiftParamsModel(
maxVolume: null == maxVolume ? _self.maxVolume : maxVolume // ignore: cast_nullable_to_non_nullable
as double,maxPower: null == maxPower ? _self.maxPower : maxPower // ignore: cast_nullable_to_non_nullable
as double,powerUsage: null == powerUsage ? _self.powerUsage : powerUsage // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$ForcesConstantsModel {

 double get gravityForce; double get volumeDecreaseRatio; double get volumeIncreaseRatio; double get volumeIncreaseRatioMax; double get volumeToLiftRatio;
/// Create a copy of ForcesConstantsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForcesConstantsModelCopyWith<ForcesConstantsModel> get copyWith => _$ForcesConstantsModelCopyWithImpl<ForcesConstantsModel>(this as ForcesConstantsModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForcesConstantsModel&&(identical(other.gravityForce, gravityForce) || other.gravityForce == gravityForce)&&(identical(other.volumeDecreaseRatio, volumeDecreaseRatio) || other.volumeDecreaseRatio == volumeDecreaseRatio)&&(identical(other.volumeIncreaseRatio, volumeIncreaseRatio) || other.volumeIncreaseRatio == volumeIncreaseRatio)&&(identical(other.volumeIncreaseRatioMax, volumeIncreaseRatioMax) || other.volumeIncreaseRatioMax == volumeIncreaseRatioMax)&&(identical(other.volumeToLiftRatio, volumeToLiftRatio) || other.volumeToLiftRatio == volumeToLiftRatio));
}


@override
int get hashCode => Object.hash(runtimeType,gravityForce,volumeDecreaseRatio,volumeIncreaseRatio,volumeIncreaseRatioMax,volumeToLiftRatio);

@override
String toString() {
  return 'ForcesConstantsModel(gravityForce: $gravityForce, volumeDecreaseRatio: $volumeDecreaseRatio, volumeIncreaseRatio: $volumeIncreaseRatio, volumeIncreaseRatioMax: $volumeIncreaseRatioMax, volumeToLiftRatio: $volumeToLiftRatio)';
}


}

/// @nodoc
abstract mixin class $ForcesConstantsModelCopyWith<$Res>  {
  factory $ForcesConstantsModelCopyWith(ForcesConstantsModel value, $Res Function(ForcesConstantsModel) _then) = _$ForcesConstantsModelCopyWithImpl;
@useResult
$Res call({
 double gravityForce, double volumeDecreaseRatio, double volumeIncreaseRatio, double volumeIncreaseRatioMax, double volumeToLiftRatio
});




}
/// @nodoc
class _$ForcesConstantsModelCopyWithImpl<$Res>
    implements $ForcesConstantsModelCopyWith<$Res> {
  _$ForcesConstantsModelCopyWithImpl(this._self, this._then);

  final ForcesConstantsModel _self;
  final $Res Function(ForcesConstantsModel) _then;

/// Create a copy of ForcesConstantsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gravityForce = null,Object? volumeDecreaseRatio = null,Object? volumeIncreaseRatio = null,Object? volumeIncreaseRatioMax = null,Object? volumeToLiftRatio = null,}) {
  return _then(_self.copyWith(
gravityForce: null == gravityForce ? _self.gravityForce : gravityForce // ignore: cast_nullable_to_non_nullable
as double,volumeDecreaseRatio: null == volumeDecreaseRatio ? _self.volumeDecreaseRatio : volumeDecreaseRatio // ignore: cast_nullable_to_non_nullable
as double,volumeIncreaseRatio: null == volumeIncreaseRatio ? _self.volumeIncreaseRatio : volumeIncreaseRatio // ignore: cast_nullable_to_non_nullable
as double,volumeIncreaseRatioMax: null == volumeIncreaseRatioMax ? _self.volumeIncreaseRatioMax : volumeIncreaseRatioMax // ignore: cast_nullable_to_non_nullable
as double,volumeToLiftRatio: null == volumeToLiftRatio ? _self.volumeToLiftRatio : volumeToLiftRatio // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [ForcesConstantsModel].
extension ForcesConstantsModelPatterns on ForcesConstantsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForcesConstantsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForcesConstantsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForcesConstantsModel value)  $default,){
final _that = this;
switch (_that) {
case _ForcesConstantsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForcesConstantsModel value)?  $default,){
final _that = this;
switch (_that) {
case _ForcesConstantsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double gravityForce,  double volumeDecreaseRatio,  double volumeIncreaseRatio,  double volumeIncreaseRatioMax,  double volumeToLiftRatio)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForcesConstantsModel() when $default != null:
return $default(_that.gravityForce,_that.volumeDecreaseRatio,_that.volumeIncreaseRatio,_that.volumeIncreaseRatioMax,_that.volumeToLiftRatio);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double gravityForce,  double volumeDecreaseRatio,  double volumeIncreaseRatio,  double volumeIncreaseRatioMax,  double volumeToLiftRatio)  $default,) {final _that = this;
switch (_that) {
case _ForcesConstantsModel():
return $default(_that.gravityForce,_that.volumeDecreaseRatio,_that.volumeIncreaseRatio,_that.volumeIncreaseRatioMax,_that.volumeToLiftRatio);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double gravityForce,  double volumeDecreaseRatio,  double volumeIncreaseRatio,  double volumeIncreaseRatioMax,  double volumeToLiftRatio)?  $default,) {final _that = this;
switch (_that) {
case _ForcesConstantsModel() when $default != null:
return $default(_that.gravityForce,_that.volumeDecreaseRatio,_that.volumeIncreaseRatio,_that.volumeIncreaseRatioMax,_that.volumeToLiftRatio);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _ForcesConstantsModel implements ForcesConstantsModel {
  const _ForcesConstantsModel({required this.gravityForce, required this.volumeDecreaseRatio, required this.volumeIncreaseRatio, required this.volumeIncreaseRatioMax, required this.volumeToLiftRatio});
  

@override final  double gravityForce;
@override final  double volumeDecreaseRatio;
@override final  double volumeIncreaseRatio;
@override final  double volumeIncreaseRatioMax;
@override final  double volumeToLiftRatio;

/// Create a copy of ForcesConstantsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForcesConstantsModelCopyWith<_ForcesConstantsModel> get copyWith => __$ForcesConstantsModelCopyWithImpl<_ForcesConstantsModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForcesConstantsModel&&(identical(other.gravityForce, gravityForce) || other.gravityForce == gravityForce)&&(identical(other.volumeDecreaseRatio, volumeDecreaseRatio) || other.volumeDecreaseRatio == volumeDecreaseRatio)&&(identical(other.volumeIncreaseRatio, volumeIncreaseRatio) || other.volumeIncreaseRatio == volumeIncreaseRatio)&&(identical(other.volumeIncreaseRatioMax, volumeIncreaseRatioMax) || other.volumeIncreaseRatioMax == volumeIncreaseRatioMax)&&(identical(other.volumeToLiftRatio, volumeToLiftRatio) || other.volumeToLiftRatio == volumeToLiftRatio));
}


@override
int get hashCode => Object.hash(runtimeType,gravityForce,volumeDecreaseRatio,volumeIncreaseRatio,volumeIncreaseRatioMax,volumeToLiftRatio);

@override
String toString() {
  return 'ForcesConstantsModel(gravityForce: $gravityForce, volumeDecreaseRatio: $volumeDecreaseRatio, volumeIncreaseRatio: $volumeIncreaseRatio, volumeIncreaseRatioMax: $volumeIncreaseRatioMax, volumeToLiftRatio: $volumeToLiftRatio)';
}


}

/// @nodoc
abstract mixin class _$ForcesConstantsModelCopyWith<$Res> implements $ForcesConstantsModelCopyWith<$Res> {
  factory _$ForcesConstantsModelCopyWith(_ForcesConstantsModel value, $Res Function(_ForcesConstantsModel) _then) = __$ForcesConstantsModelCopyWithImpl;
@override @useResult
$Res call({
 double gravityForce, double volumeDecreaseRatio, double volumeIncreaseRatio, double volumeIncreaseRatioMax, double volumeToLiftRatio
});




}
/// @nodoc
class __$ForcesConstantsModelCopyWithImpl<$Res>
    implements _$ForcesConstantsModelCopyWith<$Res> {
  __$ForcesConstantsModelCopyWithImpl(this._self, this._then);

  final _ForcesConstantsModel _self;
  final $Res Function(_ForcesConstantsModel) _then;

/// Create a copy of ForcesConstantsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gravityForce = null,Object? volumeDecreaseRatio = null,Object? volumeIncreaseRatio = null,Object? volumeIncreaseRatioMax = null,Object? volumeToLiftRatio = null,}) {
  return _then(_ForcesConstantsModel(
gravityForce: null == gravityForce ? _self.gravityForce : gravityForce // ignore: cast_nullable_to_non_nullable
as double,volumeDecreaseRatio: null == volumeDecreaseRatio ? _self.volumeDecreaseRatio : volumeDecreaseRatio // ignore: cast_nullable_to_non_nullable
as double,volumeIncreaseRatio: null == volumeIncreaseRatio ? _self.volumeIncreaseRatio : volumeIncreaseRatio // ignore: cast_nullable_to_non_nullable
as double,volumeIncreaseRatioMax: null == volumeIncreaseRatioMax ? _self.volumeIncreaseRatioMax : volumeIncreaseRatioMax // ignore: cast_nullable_to_non_nullable
as double,volumeToLiftRatio: null == volumeToLiftRatio ? _self.volumeToLiftRatio : volumeToLiftRatio // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
