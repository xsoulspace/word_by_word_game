// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'technologies_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TechnologiesCubitState {

 TechnologyTreeProgressModel get progress;
/// Create a copy of TechnologiesCubitState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TechnologiesCubitStateCopyWith<TechnologiesCubitState> get copyWith => _$TechnologiesCubitStateCopyWithImpl<TechnologiesCubitState>(this as TechnologiesCubitState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TechnologiesCubitState&&(identical(other.progress, progress) || other.progress == progress));
}


@override
int get hashCode => Object.hash(runtimeType,progress);

@override
String toString() {
  return 'TechnologiesCubitState(progress: $progress)';
}


}

/// @nodoc
abstract mixin class $TechnologiesCubitStateCopyWith<$Res>  {
  factory $TechnologiesCubitStateCopyWith(TechnologiesCubitState value, $Res Function(TechnologiesCubitState) _then) = _$TechnologiesCubitStateCopyWithImpl;
@useResult
$Res call({
 TechnologyTreeProgressModel progress
});


$TechnologyTreeProgressModelCopyWith<$Res> get progress;

}
/// @nodoc
class _$TechnologiesCubitStateCopyWithImpl<$Res>
    implements $TechnologiesCubitStateCopyWith<$Res> {
  _$TechnologiesCubitStateCopyWithImpl(this._self, this._then);

  final TechnologiesCubitState _self;
  final $Res Function(TechnologiesCubitState) _then;

/// Create a copy of TechnologiesCubitState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? progress = null,}) {
  return _then(_self.copyWith(
progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as TechnologyTreeProgressModel,
  ));
}
/// Create a copy of TechnologiesCubitState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TechnologyTreeProgressModelCopyWith<$Res> get progress {
  
  return $TechnologyTreeProgressModelCopyWith<$Res>(_self.progress, (value) {
    return _then(_self.copyWith(progress: value));
  });
}
}


/// Adds pattern-matching-related methods to [TechnologiesCubitState].
extension TechnologiesCubitStatePatterns on TechnologiesCubitState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TechnologiesCubitState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TechnologiesCubitState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TechnologiesCubitState value)  $default,){
final _that = this;
switch (_that) {
case _TechnologiesCubitState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TechnologiesCubitState value)?  $default,){
final _that = this;
switch (_that) {
case _TechnologiesCubitState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TechnologyTreeProgressModel progress)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TechnologiesCubitState() when $default != null:
return $default(_that.progress);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TechnologyTreeProgressModel progress)  $default,) {final _that = this;
switch (_that) {
case _TechnologiesCubitState():
return $default(_that.progress);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TechnologyTreeProgressModel progress)?  $default,) {final _that = this;
switch (_that) {
case _TechnologiesCubitState() when $default != null:
return $default(_that.progress);case _:
  return null;

}
}

}

/// @nodoc


class _TechnologiesCubitState extends TechnologiesCubitState {
  const _TechnologiesCubitState({this.progress = TechnologyTreeProgressModel.empty}): super._();
  

@override@JsonKey() final  TechnologyTreeProgressModel progress;

/// Create a copy of TechnologiesCubitState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TechnologiesCubitStateCopyWith<_TechnologiesCubitState> get copyWith => __$TechnologiesCubitStateCopyWithImpl<_TechnologiesCubitState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TechnologiesCubitState&&(identical(other.progress, progress) || other.progress == progress));
}


@override
int get hashCode => Object.hash(runtimeType,progress);

@override
String toString() {
  return 'TechnologiesCubitState(progress: $progress)';
}


}

/// @nodoc
abstract mixin class _$TechnologiesCubitStateCopyWith<$Res> implements $TechnologiesCubitStateCopyWith<$Res> {
  factory _$TechnologiesCubitStateCopyWith(_TechnologiesCubitState value, $Res Function(_TechnologiesCubitState) _then) = __$TechnologiesCubitStateCopyWithImpl;
@override @useResult
$Res call({
 TechnologyTreeProgressModel progress
});


@override $TechnologyTreeProgressModelCopyWith<$Res> get progress;

}
/// @nodoc
class __$TechnologiesCubitStateCopyWithImpl<$Res>
    implements _$TechnologiesCubitStateCopyWith<$Res> {
  __$TechnologiesCubitStateCopyWithImpl(this._self, this._then);

  final _TechnologiesCubitState _self;
  final $Res Function(_TechnologiesCubitState) _then;

/// Create a copy of TechnologiesCubitState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? progress = null,}) {
  return _then(_TechnologiesCubitState(
progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as TechnologyTreeProgressModel,
  ));
}

/// Create a copy of TechnologiesCubitState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TechnologyTreeProgressModelCopyWith<$Res> get progress {
  
  return $TechnologyTreeProgressModelCopyWith<$Res>(_self.progress, (value) {
    return _then(_self.copyWith(progress: value));
  });
}
}

// dart format on
