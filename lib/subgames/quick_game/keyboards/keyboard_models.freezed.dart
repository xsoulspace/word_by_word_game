// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keyboard_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UiKeyboardEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UiKeyboardEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UiKeyboardEvent()';
}


}

/// @nodoc
class $UiKeyboardEventCopyWith<$Res>  {
$UiKeyboardEventCopyWith(UiKeyboardEvent _, $Res Function(UiKeyboardEvent) __);
}


/// Adds pattern-matching-related methods to [UiKeyboardEvent].
extension UiKeyboardEventPatterns on UiKeyboardEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UiKeyboardEventAddCharacter value)?  addCharacter,TResult Function( UiKeyboardEventRemoveCharacter value)?  removeCharacter,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UiKeyboardEventAddCharacter() when addCharacter != null:
return addCharacter(_that);case UiKeyboardEventRemoveCharacter() when removeCharacter != null:
return removeCharacter(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UiKeyboardEventAddCharacter value)  addCharacter,required TResult Function( UiKeyboardEventRemoveCharacter value)  removeCharacter,}){
final _that = this;
switch (_that) {
case UiKeyboardEventAddCharacter():
return addCharacter(_that);case UiKeyboardEventRemoveCharacter():
return removeCharacter(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UiKeyboardEventAddCharacter value)?  addCharacter,TResult? Function( UiKeyboardEventRemoveCharacter value)?  removeCharacter,}){
final _that = this;
switch (_that) {
case UiKeyboardEventAddCharacter() when addCharacter != null:
return addCharacter(_that);case UiKeyboardEventRemoveCharacter() when removeCharacter != null:
return removeCharacter(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String character)?  addCharacter,TResult Function()?  removeCharacter,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UiKeyboardEventAddCharacter() when addCharacter != null:
return addCharacter(_that.character);case UiKeyboardEventRemoveCharacter() when removeCharacter != null:
return removeCharacter();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String character)  addCharacter,required TResult Function()  removeCharacter,}) {final _that = this;
switch (_that) {
case UiKeyboardEventAddCharacter():
return addCharacter(_that.character);case UiKeyboardEventRemoveCharacter():
return removeCharacter();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String character)?  addCharacter,TResult? Function()?  removeCharacter,}) {final _that = this;
switch (_that) {
case UiKeyboardEventAddCharacter() when addCharacter != null:
return addCharacter(_that.character);case UiKeyboardEventRemoveCharacter() when removeCharacter != null:
return removeCharacter();case _:
  return null;

}
}

}

/// @nodoc


class UiKeyboardEventAddCharacter implements UiKeyboardEvent {
  const UiKeyboardEventAddCharacter({required this.character});
  

 final  String character;

/// Create a copy of UiKeyboardEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UiKeyboardEventAddCharacterCopyWith<UiKeyboardEventAddCharacter> get copyWith => _$UiKeyboardEventAddCharacterCopyWithImpl<UiKeyboardEventAddCharacter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UiKeyboardEventAddCharacter&&(identical(other.character, character) || other.character == character));
}


@override
int get hashCode => Object.hash(runtimeType,character);

@override
String toString() {
  return 'UiKeyboardEvent.addCharacter(character: $character)';
}


}

/// @nodoc
abstract mixin class $UiKeyboardEventAddCharacterCopyWith<$Res> implements $UiKeyboardEventCopyWith<$Res> {
  factory $UiKeyboardEventAddCharacterCopyWith(UiKeyboardEventAddCharacter value, $Res Function(UiKeyboardEventAddCharacter) _then) = _$UiKeyboardEventAddCharacterCopyWithImpl;
@useResult
$Res call({
 String character
});




}
/// @nodoc
class _$UiKeyboardEventAddCharacterCopyWithImpl<$Res>
    implements $UiKeyboardEventAddCharacterCopyWith<$Res> {
  _$UiKeyboardEventAddCharacterCopyWithImpl(this._self, this._then);

  final UiKeyboardEventAddCharacter _self;
  final $Res Function(UiKeyboardEventAddCharacter) _then;

/// Create a copy of UiKeyboardEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? character = null,}) {
  return _then(UiKeyboardEventAddCharacter(
character: null == character ? _self.character : character // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UiKeyboardEventRemoveCharacter implements UiKeyboardEvent {
  const UiKeyboardEventRemoveCharacter();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UiKeyboardEventRemoveCharacter);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UiKeyboardEvent.removeCharacter()';
}


}




// dart format on
