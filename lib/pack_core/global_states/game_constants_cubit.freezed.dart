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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$GameConstantsCubitStateImplCopyWith<$Res>
    implements $GameConstantsCubitStateCopyWith<$Res> {
  factory _$$GameConstantsCubitStateImplCopyWith(
          _$GameConstantsCubitStateImpl value,
          $Res Function(_$GameConstantsCubitStateImpl) then) =
      __$$GameConstantsCubitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ForcesConstantsModel forces});

  @override
  $ForcesConstantsModelCopyWith<$Res> get forces;
}

/// @nodoc
class __$$GameConstantsCubitStateImplCopyWithImpl<$Res>
    extends _$GameConstantsCubitStateCopyWithImpl<$Res,
        _$GameConstantsCubitStateImpl>
    implements _$$GameConstantsCubitStateImplCopyWith<$Res> {
  __$$GameConstantsCubitStateImplCopyWithImpl(
      _$GameConstantsCubitStateImpl _value,
      $Res Function(_$GameConstantsCubitStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forces = null,
  }) {
    return _then(_$GameConstantsCubitStateImpl(
      forces: null == forces
          ? _value.forces
          : forces // ignore: cast_nullable_to_non_nullable
              as ForcesConstantsModel,
    ));
  }
}

/// @nodoc

class _$GameConstantsCubitStateImpl implements _GameConstantsCubitState {
  const _$GameConstantsCubitStateImpl(
      {this.forces = ForcesConstantsModel.initial});

  @override
  @JsonKey()
  final ForcesConstantsModel forces;

  @override
  String toString() {
    return 'GameConstantsCubitState(forces: $forces)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameConstantsCubitStateImpl &&
            (identical(other.forces, forces) || other.forces == forces));
  }

  @override
  int get hashCode => Object.hash(runtimeType, forces);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameConstantsCubitStateImplCopyWith<_$GameConstantsCubitStateImpl>
      get copyWith => __$$GameConstantsCubitStateImplCopyWithImpl<
          _$GameConstantsCubitStateImpl>(this, _$identity);
}

abstract class _GameConstantsCubitState implements GameConstantsCubitState {
  const factory _GameConstantsCubitState({final ForcesConstantsModel forces}) =
      _$GameConstantsCubitStateImpl;

  @override
  ForcesConstantsModel get forces;
  @override
  @JsonKey(ignore: true)
  _$$GameConstantsCubitStateImplCopyWith<_$GameConstantsCubitStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
