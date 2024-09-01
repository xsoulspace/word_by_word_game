// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'technologies_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TechnologiesCubitState {
  TechnologyTreeProgressModel get progress =>
      throw _privateConstructorUsedError;

  /// Create a copy of TechnologiesCubitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TechnologiesCubitStateCopyWith<TechnologiesCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TechnologiesCubitStateCopyWith<$Res> {
  factory $TechnologiesCubitStateCopyWith(TechnologiesCubitState value,
          $Res Function(TechnologiesCubitState) then) =
      _$TechnologiesCubitStateCopyWithImpl<$Res, TechnologiesCubitState>;
  @useResult
  $Res call({TechnologyTreeProgressModel progress});

  $TechnologyTreeProgressModelCopyWith<$Res> get progress;
}

/// @nodoc
class _$TechnologiesCubitStateCopyWithImpl<$Res,
        $Val extends TechnologiesCubitState>
    implements $TechnologiesCubitStateCopyWith<$Res> {
  _$TechnologiesCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TechnologiesCubitState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
  }) {
    return _then(_value.copyWith(
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as TechnologyTreeProgressModel,
    ) as $Val);
  }

  /// Create a copy of TechnologiesCubitState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TechnologyTreeProgressModelCopyWith<$Res> get progress {
    return $TechnologyTreeProgressModelCopyWith<$Res>(_value.progress, (value) {
      return _then(_value.copyWith(progress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TechnologiesCubitStateImplCopyWith<$Res>
    implements $TechnologiesCubitStateCopyWith<$Res> {
  factory _$$TechnologiesCubitStateImplCopyWith(
          _$TechnologiesCubitStateImpl value,
          $Res Function(_$TechnologiesCubitStateImpl) then) =
      __$$TechnologiesCubitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TechnologyTreeProgressModel progress});

  @override
  $TechnologyTreeProgressModelCopyWith<$Res> get progress;
}

/// @nodoc
class __$$TechnologiesCubitStateImplCopyWithImpl<$Res>
    extends _$TechnologiesCubitStateCopyWithImpl<$Res,
        _$TechnologiesCubitStateImpl>
    implements _$$TechnologiesCubitStateImplCopyWith<$Res> {
  __$$TechnologiesCubitStateImplCopyWithImpl(
      _$TechnologiesCubitStateImpl _value,
      $Res Function(_$TechnologiesCubitStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TechnologiesCubitState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
  }) {
    return _then(_$TechnologiesCubitStateImpl(
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as TechnologyTreeProgressModel,
    ));
  }
}

/// @nodoc

class _$TechnologiesCubitStateImpl extends _TechnologiesCubitState {
  const _$TechnologiesCubitStateImpl(
      {this.progress = TechnologyTreeProgressModel.empty})
      : super._();

  @override
  @JsonKey()
  final TechnologyTreeProgressModel progress;

  @override
  String toString() {
    return 'TechnologiesCubitState(progress: $progress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TechnologiesCubitStateImpl &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progress);

  /// Create a copy of TechnologiesCubitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TechnologiesCubitStateImplCopyWith<_$TechnologiesCubitStateImpl>
      get copyWith => __$$TechnologiesCubitStateImplCopyWithImpl<
          _$TechnologiesCubitStateImpl>(this, _$identity);
}

abstract class _TechnologiesCubitState extends TechnologiesCubitState {
  const factory _TechnologiesCubitState(
          {final TechnologyTreeProgressModel progress}) =
      _$TechnologiesCubitStateImpl;
  const _TechnologiesCubitState._() : super._();

  @override
  TechnologyTreeProgressModel get progress;

  /// Create a copy of TechnologiesCubitState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TechnologiesCubitStateImplCopyWith<_$TechnologiesCubitStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
