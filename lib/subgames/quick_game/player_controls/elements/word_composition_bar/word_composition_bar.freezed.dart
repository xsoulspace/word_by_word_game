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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BottomActionsNotifierState {
  bool get isCardVisible => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomActionsNotifierStateCopyWith<BottomActionsNotifierState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomActionsNotifierStateCopyWith<$Res> {
  factory $BottomActionsNotifierStateCopyWith(BottomActionsNotifierState value,
          $Res Function(BottomActionsNotifierState) then) =
      _$BottomActionsNotifierStateCopyWithImpl<$Res,
          BottomActionsNotifierState>;
  @useResult
  $Res call({bool isCardVisible});
}

/// @nodoc
class _$BottomActionsNotifierStateCopyWithImpl<$Res,
        $Val extends BottomActionsNotifierState>
    implements $BottomActionsNotifierStateCopyWith<$Res> {
  _$BottomActionsNotifierStateCopyWithImpl(this._value, this._then);

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
abstract class _$$BottomActionsNotifierStateImplCopyWith<$Res>
    implements $BottomActionsNotifierStateCopyWith<$Res> {
  factory _$$BottomActionsNotifierStateImplCopyWith(
          _$BottomActionsNotifierStateImpl value,
          $Res Function(_$BottomActionsNotifierStateImpl) then) =
      __$$BottomActionsNotifierStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isCardVisible});
}

/// @nodoc
class __$$BottomActionsNotifierStateImplCopyWithImpl<$Res>
    extends _$BottomActionsNotifierStateCopyWithImpl<$Res,
        _$BottomActionsNotifierStateImpl>
    implements _$$BottomActionsNotifierStateImplCopyWith<$Res> {
  __$$BottomActionsNotifierStateImplCopyWithImpl(
      _$BottomActionsNotifierStateImpl _value,
      $Res Function(_$BottomActionsNotifierStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCardVisible = null,
  }) {
    return _then(_$BottomActionsNotifierStateImpl(
      isCardVisible: null == isCardVisible
          ? _value.isCardVisible
          : isCardVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BottomActionsNotifierStateImpl implements _BottomActionsNotifierState {
  const _$BottomActionsNotifierStateImpl({this.isCardVisible = true});

  @override
  @JsonKey()
  final bool isCardVisible;

  @override
  String toString() {
    return 'BottomActionsNotifierState(isCardVisible: $isCardVisible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BottomActionsNotifierStateImpl &&
            (identical(other.isCardVisible, isCardVisible) ||
                other.isCardVisible == isCardVisible));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isCardVisible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BottomActionsNotifierStateImplCopyWith<_$BottomActionsNotifierStateImpl>
      get copyWith => __$$BottomActionsNotifierStateImplCopyWithImpl<
          _$BottomActionsNotifierStateImpl>(this, _$identity);
}

abstract class _BottomActionsNotifierState
    implements BottomActionsNotifierState {
  const factory _BottomActionsNotifierState({final bool isCardVisible}) =
      _$BottomActionsNotifierStateImpl;

  @override
  bool get isCardVisible;
  @override
  @JsonKey(ignore: true)
  _$$BottomActionsNotifierStateImplCopyWith<_$BottomActionsNotifierStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
