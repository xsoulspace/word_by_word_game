// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
