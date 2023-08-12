// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word_composition_bar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WordCompositionCubitState {
  bool get isCardVisible => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WordCompositionCubitStateCopyWith<WordCompositionCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordCompositionCubitStateCopyWith<$Res> {
  factory $WordCompositionCubitStateCopyWith(WordCompositionCubitState value,
          $Res Function(WordCompositionCubitState) then) =
      _$WordCompositionCubitStateCopyWithImpl<$Res, WordCompositionCubitState>;
  @useResult
  $Res call({bool isCardVisible});
}

/// @nodoc
class _$WordCompositionCubitStateCopyWithImpl<$Res,
        $Val extends WordCompositionCubitState>
    implements $WordCompositionCubitStateCopyWith<$Res> {
  _$WordCompositionCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCardVisible = null,
  }) {
    return _then(_value.copyWith(
      isCardVisible: null == isCardVisible
          ? _value.isCardVisible
          : isCardVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WordCompositionCubitStateCopyWith<$Res>
    implements $WordCompositionCubitStateCopyWith<$Res> {
  factory _$$_WordCompositionCubitStateCopyWith(
          _$_WordCompositionCubitState value,
          $Res Function(_$_WordCompositionCubitState) then) =
      __$$_WordCompositionCubitStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isCardVisible});
}

/// @nodoc
class __$$_WordCompositionCubitStateCopyWithImpl<$Res>
    extends _$WordCompositionCubitStateCopyWithImpl<$Res,
        _$_WordCompositionCubitState>
    implements _$$_WordCompositionCubitStateCopyWith<$Res> {
  __$$_WordCompositionCubitStateCopyWithImpl(
      _$_WordCompositionCubitState _value,
      $Res Function(_$_WordCompositionCubitState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCardVisible = null,
  }) {
    return _then(_$_WordCompositionCubitState(
      isCardVisible: null == isCardVisible
          ? _value.isCardVisible
          : isCardVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_WordCompositionCubitState implements _WordCompositionCubitState {
  const _$_WordCompositionCubitState({this.isCardVisible = true});

  @override
  @JsonKey()
  final bool isCardVisible;

  @override
  String toString() {
    return 'WordCompositionCubitState(isCardVisible: $isCardVisible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WordCompositionCubitState &&
            (identical(other.isCardVisible, isCardVisible) ||
                other.isCardVisible == isCardVisible));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isCardVisible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WordCompositionCubitStateCopyWith<_$_WordCompositionCubitState>
      get copyWith => __$$_WordCompositionCubitStateCopyWithImpl<
          _$_WordCompositionCubitState>(this, _$identity);
}

abstract class _WordCompositionCubitState implements WordCompositionCubitState {
  const factory _WordCompositionCubitState({final bool isCardVisible}) =
      _$_WordCompositionCubitState;

  @override
  bool get isCardVisible;
  @override
  @JsonKey(ignore: true)
  _$$_WordCompositionCubitStateCopyWith<_$_WordCompositionCubitState>
      get copyWith => throw _privateConstructorUsedError;
}
