// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keyboard_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$UiKeyboardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String character) addCharacter,
    required TResult Function() removeCharacter,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String character)? addCharacter,
    TResult? Function()? removeCharacter,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String character)? addCharacter,
    TResult Function()? removeCharacter,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UiKeyboardEventAddCharacter value) addCharacter,
    required TResult Function(UiKeyboardEventRemoveCharacter value)
    removeCharacter,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UiKeyboardEventAddCharacter value)? addCharacter,
    TResult? Function(UiKeyboardEventRemoveCharacter value)? removeCharacter,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UiKeyboardEventAddCharacter value)? addCharacter,
    TResult Function(UiKeyboardEventRemoveCharacter value)? removeCharacter,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UiKeyboardEventCopyWith<$Res> {
  factory $UiKeyboardEventCopyWith(
    UiKeyboardEvent value,
    $Res Function(UiKeyboardEvent) then,
  ) = _$UiKeyboardEventCopyWithImpl<$Res, UiKeyboardEvent>;
}

/// @nodoc
class _$UiKeyboardEventCopyWithImpl<$Res, $Val extends UiKeyboardEvent>
    implements $UiKeyboardEventCopyWith<$Res> {
  _$UiKeyboardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UiKeyboardEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UiKeyboardEventAddCharacterImplCopyWith<$Res> {
  factory _$$UiKeyboardEventAddCharacterImplCopyWith(
    _$UiKeyboardEventAddCharacterImpl value,
    $Res Function(_$UiKeyboardEventAddCharacterImpl) then,
  ) = __$$UiKeyboardEventAddCharacterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String character});
}

/// @nodoc
class __$$UiKeyboardEventAddCharacterImplCopyWithImpl<$Res>
    extends
        _$UiKeyboardEventCopyWithImpl<$Res, _$UiKeyboardEventAddCharacterImpl>
    implements _$$UiKeyboardEventAddCharacterImplCopyWith<$Res> {
  __$$UiKeyboardEventAddCharacterImplCopyWithImpl(
    _$UiKeyboardEventAddCharacterImpl _value,
    $Res Function(_$UiKeyboardEventAddCharacterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UiKeyboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? character = null}) {
    return _then(
      _$UiKeyboardEventAddCharacterImpl(
        character: null == character
            ? _value.character
            : character // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$UiKeyboardEventAddCharacterImpl implements UiKeyboardEventAddCharacter {
  const _$UiKeyboardEventAddCharacterImpl({required this.character});

  @override
  final String character;

  @override
  String toString() {
    return 'UiKeyboardEvent.addCharacter(character: $character)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UiKeyboardEventAddCharacterImpl &&
            (identical(other.character, character) ||
                other.character == character));
  }

  @override
  int get hashCode => Object.hash(runtimeType, character);

  /// Create a copy of UiKeyboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UiKeyboardEventAddCharacterImplCopyWith<_$UiKeyboardEventAddCharacterImpl>
  get copyWith =>
      __$$UiKeyboardEventAddCharacterImplCopyWithImpl<
        _$UiKeyboardEventAddCharacterImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String character) addCharacter,
    required TResult Function() removeCharacter,
  }) {
    return addCharacter(character);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String character)? addCharacter,
    TResult? Function()? removeCharacter,
  }) {
    return addCharacter?.call(character);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String character)? addCharacter,
    TResult Function()? removeCharacter,
    required TResult orElse(),
  }) {
    if (addCharacter != null) {
      return addCharacter(character);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UiKeyboardEventAddCharacter value) addCharacter,
    required TResult Function(UiKeyboardEventRemoveCharacter value)
    removeCharacter,
  }) {
    return addCharacter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UiKeyboardEventAddCharacter value)? addCharacter,
    TResult? Function(UiKeyboardEventRemoveCharacter value)? removeCharacter,
  }) {
    return addCharacter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UiKeyboardEventAddCharacter value)? addCharacter,
    TResult Function(UiKeyboardEventRemoveCharacter value)? removeCharacter,
    required TResult orElse(),
  }) {
    if (addCharacter != null) {
      return addCharacter(this);
    }
    return orElse();
  }
}

abstract class UiKeyboardEventAddCharacter implements UiKeyboardEvent {
  const factory UiKeyboardEventAddCharacter({required final String character}) =
      _$UiKeyboardEventAddCharacterImpl;

  String get character;

  /// Create a copy of UiKeyboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UiKeyboardEventAddCharacterImplCopyWith<_$UiKeyboardEventAddCharacterImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UiKeyboardEventRemoveCharacterImplCopyWith<$Res> {
  factory _$$UiKeyboardEventRemoveCharacterImplCopyWith(
    _$UiKeyboardEventRemoveCharacterImpl value,
    $Res Function(_$UiKeyboardEventRemoveCharacterImpl) then,
  ) = __$$UiKeyboardEventRemoveCharacterImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UiKeyboardEventRemoveCharacterImplCopyWithImpl<$Res>
    extends
        _$UiKeyboardEventCopyWithImpl<
          $Res,
          _$UiKeyboardEventRemoveCharacterImpl
        >
    implements _$$UiKeyboardEventRemoveCharacterImplCopyWith<$Res> {
  __$$UiKeyboardEventRemoveCharacterImplCopyWithImpl(
    _$UiKeyboardEventRemoveCharacterImpl _value,
    $Res Function(_$UiKeyboardEventRemoveCharacterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UiKeyboardEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UiKeyboardEventRemoveCharacterImpl
    implements UiKeyboardEventRemoveCharacter {
  const _$UiKeyboardEventRemoveCharacterImpl();

  @override
  String toString() {
    return 'UiKeyboardEvent.removeCharacter()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UiKeyboardEventRemoveCharacterImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String character) addCharacter,
    required TResult Function() removeCharacter,
  }) {
    return removeCharacter();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String character)? addCharacter,
    TResult? Function()? removeCharacter,
  }) {
    return removeCharacter?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String character)? addCharacter,
    TResult Function()? removeCharacter,
    required TResult orElse(),
  }) {
    if (removeCharacter != null) {
      return removeCharacter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UiKeyboardEventAddCharacter value) addCharacter,
    required TResult Function(UiKeyboardEventRemoveCharacter value)
    removeCharacter,
  }) {
    return removeCharacter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UiKeyboardEventAddCharacter value)? addCharacter,
    TResult? Function(UiKeyboardEventRemoveCharacter value)? removeCharacter,
  }) {
    return removeCharacter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UiKeyboardEventAddCharacter value)? addCharacter,
    TResult Function(UiKeyboardEventRemoveCharacter value)? removeCharacter,
    required TResult orElse(),
  }) {
    if (removeCharacter != null) {
      return removeCharacter(this);
    }
    return orElse();
  }
}

abstract class UiKeyboardEventRemoveCharacter implements UiKeyboardEvent {
  const factory UiKeyboardEventRemoveCharacter() =
      _$UiKeyboardEventRemoveCharacterImpl;
}

/// @nodoc
mixin _$UiKeyboardControllerState {
  bool get isVisible => throw _privateConstructorUsedError;
  KeyboardLanguage get language => throw _privateConstructorUsedError;

  /// Create a copy of UiKeyboardControllerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UiKeyboardControllerStateCopyWith<UiKeyboardControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UiKeyboardControllerStateCopyWith<$Res> {
  factory $UiKeyboardControllerStateCopyWith(
    UiKeyboardControllerState value,
    $Res Function(UiKeyboardControllerState) then,
  ) = _$UiKeyboardControllerStateCopyWithImpl<$Res, UiKeyboardControllerState>;
  @useResult
  $Res call({bool isVisible, KeyboardLanguage language});
}

/// @nodoc
class _$UiKeyboardControllerStateCopyWithImpl<
  $Res,
  $Val extends UiKeyboardControllerState
>
    implements $UiKeyboardControllerStateCopyWith<$Res> {
  _$UiKeyboardControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UiKeyboardControllerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isVisible = null, Object? language = null}) {
    return _then(
      _value.copyWith(
            isVisible: null == isVisible
                ? _value.isVisible
                : isVisible // ignore: cast_nullable_to_non_nullable
                      as bool,
            language: null == language
                ? _value.language
                : language // ignore: cast_nullable_to_non_nullable
                      as KeyboardLanguage,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UiKeyboardControllerStateImplCopyWith<$Res>
    implements $UiKeyboardControllerStateCopyWith<$Res> {
  factory _$$UiKeyboardControllerStateImplCopyWith(
    _$UiKeyboardControllerStateImpl value,
    $Res Function(_$UiKeyboardControllerStateImpl) then,
  ) = __$$UiKeyboardControllerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isVisible, KeyboardLanguage language});
}

/// @nodoc
class __$$UiKeyboardControllerStateImplCopyWithImpl<$Res>
    extends
        _$UiKeyboardControllerStateCopyWithImpl<
          $Res,
          _$UiKeyboardControllerStateImpl
        >
    implements _$$UiKeyboardControllerStateImplCopyWith<$Res> {
  __$$UiKeyboardControllerStateImplCopyWithImpl(
    _$UiKeyboardControllerStateImpl _value,
    $Res Function(_$UiKeyboardControllerStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UiKeyboardControllerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isVisible = null, Object? language = null}) {
    return _then(
      _$UiKeyboardControllerStateImpl(
        isVisible: null == isVisible
            ? _value.isVisible
            : isVisible // ignore: cast_nullable_to_non_nullable
                  as bool,
        language: null == language
            ? _value.language
            : language // ignore: cast_nullable_to_non_nullable
                  as KeyboardLanguage,
      ),
    );
  }
}

/// @nodoc

class _$UiKeyboardControllerStateImpl implements _UiKeyboardControllerState {
  const _$UiKeyboardControllerStateImpl({
    this.isVisible = false,
    this.language = KeyboardLanguage.en,
  });

  @override
  @JsonKey()
  final bool isVisible;
  @override
  @JsonKey()
  final KeyboardLanguage language;

  @override
  String toString() {
    return 'UiKeyboardControllerState(isVisible: $isVisible, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UiKeyboardControllerStateImpl &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isVisible, language);

  /// Create a copy of UiKeyboardControllerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UiKeyboardControllerStateImplCopyWith<_$UiKeyboardControllerStateImpl>
  get copyWith =>
      __$$UiKeyboardControllerStateImplCopyWithImpl<
        _$UiKeyboardControllerStateImpl
      >(this, _$identity);
}

abstract class _UiKeyboardControllerState implements UiKeyboardControllerState {
  const factory _UiKeyboardControllerState({
    final bool isVisible,
    final KeyboardLanguage language,
  }) = _$UiKeyboardControllerStateImpl;

  @override
  bool get isVisible;
  @override
  KeyboardLanguage get language;

  /// Create a copy of UiKeyboardControllerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UiKeyboardControllerStateImplCopyWith<_$UiKeyboardControllerStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
