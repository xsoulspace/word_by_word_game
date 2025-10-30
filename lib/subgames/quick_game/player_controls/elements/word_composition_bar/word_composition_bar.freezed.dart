// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word_composition_bar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BottomActionsNotifierState implements DiagnosticableTreeMixin {

 bool get isCardVisible;
/// Create a copy of BottomActionsNotifierState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BottomActionsNotifierStateCopyWith<BottomActionsNotifierState> get copyWith => _$BottomActionsNotifierStateCopyWithImpl<BottomActionsNotifierState>(this as BottomActionsNotifierState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BottomActionsNotifierState'))
    ..add(DiagnosticsProperty('isCardVisible', isCardVisible));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BottomActionsNotifierState&&(identical(other.isCardVisible, isCardVisible) || other.isCardVisible == isCardVisible));
}


@override
int get hashCode => Object.hash(runtimeType,isCardVisible);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BottomActionsNotifierState(isCardVisible: $isCardVisible)';
}


}

/// @nodoc
abstract mixin class $BottomActionsNotifierStateCopyWith<$Res>  {
  factory $BottomActionsNotifierStateCopyWith(BottomActionsNotifierState value, $Res Function(BottomActionsNotifierState) _then) = _$BottomActionsNotifierStateCopyWithImpl;
@useResult
$Res call({
 bool isCardVisible
});




}
/// @nodoc
class _$BottomActionsNotifierStateCopyWithImpl<$Res>
    implements $BottomActionsNotifierStateCopyWith<$Res> {
  _$BottomActionsNotifierStateCopyWithImpl(this._self, this._then);

  final BottomActionsNotifierState _self;
  final $Res Function(BottomActionsNotifierState) _then;

/// Create a copy of BottomActionsNotifierState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isCardVisible = null,}) {
  return _then(_self.copyWith(
isCardVisible: null == isCardVisible ? _self.isCardVisible : isCardVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [BottomActionsNotifierState].
extension BottomActionsNotifierStatePatterns on BottomActionsNotifierState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BottomActionsNotifierState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BottomActionsNotifierState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BottomActionsNotifierState value)  $default,){
final _that = this;
switch (_that) {
case _BottomActionsNotifierState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BottomActionsNotifierState value)?  $default,){
final _that = this;
switch (_that) {
case _BottomActionsNotifierState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isCardVisible)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BottomActionsNotifierState() when $default != null:
return $default(_that.isCardVisible);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isCardVisible)  $default,) {final _that = this;
switch (_that) {
case _BottomActionsNotifierState():
return $default(_that.isCardVisible);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isCardVisible)?  $default,) {final _that = this;
switch (_that) {
case _BottomActionsNotifierState() when $default != null:
return $default(_that.isCardVisible);case _:
  return null;

}
}

}

/// @nodoc


class _BottomActionsNotifierState with DiagnosticableTreeMixin implements BottomActionsNotifierState {
  const _BottomActionsNotifierState({this.isCardVisible = true});
  

@override@JsonKey() final  bool isCardVisible;

/// Create a copy of BottomActionsNotifierState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BottomActionsNotifierStateCopyWith<_BottomActionsNotifierState> get copyWith => __$BottomActionsNotifierStateCopyWithImpl<_BottomActionsNotifierState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BottomActionsNotifierState'))
    ..add(DiagnosticsProperty('isCardVisible', isCardVisible));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BottomActionsNotifierState&&(identical(other.isCardVisible, isCardVisible) || other.isCardVisible == isCardVisible));
}


@override
int get hashCode => Object.hash(runtimeType,isCardVisible);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BottomActionsNotifierState(isCardVisible: $isCardVisible)';
}


}

/// @nodoc
abstract mixin class _$BottomActionsNotifierStateCopyWith<$Res> implements $BottomActionsNotifierStateCopyWith<$Res> {
  factory _$BottomActionsNotifierStateCopyWith(_BottomActionsNotifierState value, $Res Function(_BottomActionsNotifierState) _then) = __$BottomActionsNotifierStateCopyWithImpl;
@override @useResult
$Res call({
 bool isCardVisible
});




}
/// @nodoc
class __$BottomActionsNotifierStateCopyWithImpl<$Res>
    implements _$BottomActionsNotifierStateCopyWith<$Res> {
  __$BottomActionsNotifierStateCopyWithImpl(this._self, this._then);

  final _BottomActionsNotifierState _self;
  final $Res Function(_BottomActionsNotifierState) _then;

/// Create a copy of BottomActionsNotifierState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isCardVisible = null,}) {
  return _then(_BottomActionsNotifierState(
isCardVisible: null == isCardVisible ? _self.isCardVisible : isCardVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
