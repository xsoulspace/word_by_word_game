// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_constants_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameConstantsCubitState {
  ForcesConstantsModel get forces => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameConstantsCubitStateCopyWith<GameConstantsCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameConstantsCubitStateCopyWith<$Res> {
  factory $GameConstantsCubitStateCopyWith(GameConstantsCubitState value,
          $Res Function(GameConstantsCubitState) then) =
      _$GameConstantsCubitStateCopyWithImpl<$Res, GameConstantsCubitState>;
  @useResult
  $Res call({ForcesConstantsModel forces});

  $ForcesConstantsModelCopyWith<$Res> get forces;
}

/// @nodoc
class _$GameConstantsCubitStateCopyWithImpl<$Res,
        $Val extends GameConstantsCubitState>
    implements $GameConstantsCubitStateCopyWith<$Res> {
  _$GameConstantsCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forces = null,
  }) {
    return _then(_value.copyWith(
      forces: null == forces
          ? _value.forces
          : forces // ignore: cast_nullable_to_non_nullable
              as ForcesConstantsModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ForcesConstantsModelCopyWith<$Res> get forces {
    return $ForcesConstantsModelCopyWith<$Res>(_value.forces, (value) {
      return _then(_value.copyWith(forces: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GameConstantsCubitStateCopyWith<$Res>
    implements $GameConstantsCubitStateCopyWith<$Res> {
  factory _$$_GameConstantsCubitStateCopyWith(_$_GameConstantsCubitState value,
          $Res Function(_$_GameConstantsCubitState) then) =
      __$$_GameConstantsCubitStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ForcesConstantsModel forces});

  @override
  $ForcesConstantsModelCopyWith<$Res> get forces;
}

/// @nodoc
class __$$_GameConstantsCubitStateCopyWithImpl<$Res>
    extends _$GameConstantsCubitStateCopyWithImpl<$Res,
        _$_GameConstantsCubitState>
    implements _$$_GameConstantsCubitStateCopyWith<$Res> {
  __$$_GameConstantsCubitStateCopyWithImpl(_$_GameConstantsCubitState _value,
      $Res Function(_$_GameConstantsCubitState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forces = null,
  }) {
    return _then(_$_GameConstantsCubitState(
      forces: null == forces
          ? _value.forces
          : forces // ignore: cast_nullable_to_non_nullable
              as ForcesConstantsModel,
    ));
  }
}

/// @nodoc

class _$_GameConstantsCubitState implements _GameConstantsCubitState {
  const _$_GameConstantsCubitState(
      {this.forces = ForcesConstantsModel.initial});

  @override
  @JsonKey()
  final ForcesConstantsModel forces;

  @override
  String toString() {
    return 'GameConstantsCubitState(forces: $forces)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameConstantsCubitState &&
            (identical(other.forces, forces) || other.forces == forces));
  }

  @override
  int get hashCode => Object.hash(runtimeType, forces);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameConstantsCubitStateCopyWith<_$_GameConstantsCubitState>
      get copyWith =>
          __$$_GameConstantsCubitStateCopyWithImpl<_$_GameConstantsCubitState>(
              this, _$identity);
}

abstract class _GameConstantsCubitState implements GameConstantsCubitState {
  const factory _GameConstantsCubitState({final ForcesConstantsModel forces}) =
      _$_GameConstantsCubitState;

  @override
  ForcesConstantsModel get forces;
  @override
  @JsonKey(ignore: true)
  _$$_GameConstantsCubitStateCopyWith<_$_GameConstantsCubitState>
      get copyWith => throw _privateConstructorUsedError;
}