// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'debug_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DebugCubitState {
  bool get isCameraFollowingPlayer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DebugCubitStateCopyWith<DebugCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DebugCubitStateCopyWith<$Res> {
  factory $DebugCubitStateCopyWith(
          DebugCubitState value, $Res Function(DebugCubitState) then) =
      _$DebugCubitStateCopyWithImpl<$Res, DebugCubitState>;
  @useResult
  $Res call({bool isCameraFollowingPlayer});
}

/// @nodoc
class _$DebugCubitStateCopyWithImpl<$Res, $Val extends DebugCubitState>
    implements $DebugCubitStateCopyWith<$Res> {
  _$DebugCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCameraFollowingPlayer = null,
  }) {
    return _then(_value.copyWith(
      isCameraFollowingPlayer: null == isCameraFollowingPlayer
          ? _value.isCameraFollowingPlayer
          : isCameraFollowingPlayer // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DebugCubitStateCopyWith<$Res>
    implements $DebugCubitStateCopyWith<$Res> {
  factory _$$_DebugCubitStateCopyWith(
          _$_DebugCubitState value, $Res Function(_$_DebugCubitState) then) =
      __$$_DebugCubitStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isCameraFollowingPlayer});
}

/// @nodoc
class __$$_DebugCubitStateCopyWithImpl<$Res>
    extends _$DebugCubitStateCopyWithImpl<$Res, _$_DebugCubitState>
    implements _$$_DebugCubitStateCopyWith<$Res> {
  __$$_DebugCubitStateCopyWithImpl(
      _$_DebugCubitState _value, $Res Function(_$_DebugCubitState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCameraFollowingPlayer = null,
  }) {
    return _then(_$_DebugCubitState(
      isCameraFollowingPlayer: null == isCameraFollowingPlayer
          ? _value.isCameraFollowingPlayer
          : isCameraFollowingPlayer // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DebugCubitState implements _DebugCubitState {
  const _$_DebugCubitState({this.isCameraFollowingPlayer = true});

  @override
  @JsonKey()
  final bool isCameraFollowingPlayer;

  @override
  String toString() {
    return 'DebugCubitState(isCameraFollowingPlayer: $isCameraFollowingPlayer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DebugCubitState &&
            (identical(
                    other.isCameraFollowingPlayer, isCameraFollowingPlayer) ||
                other.isCameraFollowingPlayer == isCameraFollowingPlayer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isCameraFollowingPlayer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DebugCubitStateCopyWith<_$_DebugCubitState> get copyWith =>
      __$$_DebugCubitStateCopyWithImpl<_$_DebugCubitState>(this, _$identity);
}

abstract class _DebugCubitState implements DebugCubitState {
  const factory _DebugCubitState({final bool isCameraFollowingPlayer}) =
      _$_DebugCubitState;

  @override
  bool get isCameraFollowingPlayer;
  @override
  @JsonKey(ignore: true)
  _$$_DebugCubitStateCopyWith<_$_DebugCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}
