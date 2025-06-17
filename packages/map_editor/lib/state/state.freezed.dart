// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$WorldState {
  WorldDateTimeModel get dateTime => throw _privateConstructorUsedError;
  WorldDateTimeModel get lastDateTime => throw _privateConstructorUsedError;
  int get dateTimeDelta => throw _privateConstructorUsedError;

  /// Create a copy of WorldState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorldStateCopyWith<WorldState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorldStateCopyWith<$Res> {
  factory $WorldStateCopyWith(
    WorldState value,
    $Res Function(WorldState) then,
  ) = _$WorldStateCopyWithImpl<$Res, WorldState>;
  @useResult
  $Res call({
    WorldDateTimeModel dateTime,
    WorldDateTimeModel lastDateTime,
    int dateTimeDelta,
  });

  $WorldDateTimeModelCopyWith<$Res> get dateTime;
  $WorldDateTimeModelCopyWith<$Res> get lastDateTime;
}

/// @nodoc
class _$WorldStateCopyWithImpl<$Res, $Val extends WorldState>
    implements $WorldStateCopyWith<$Res> {
  _$WorldStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorldState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? lastDateTime = null,
    Object? dateTimeDelta = null,
  }) {
    return _then(
      _value.copyWith(
            dateTime: null == dateTime
                ? _value.dateTime
                : dateTime // ignore: cast_nullable_to_non_nullable
                      as WorldDateTimeModel,
            lastDateTime: null == lastDateTime
                ? _value.lastDateTime
                : lastDateTime // ignore: cast_nullable_to_non_nullable
                      as WorldDateTimeModel,
            dateTimeDelta: null == dateTimeDelta
                ? _value.dateTimeDelta
                : dateTimeDelta // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }

  /// Create a copy of WorldState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WorldDateTimeModelCopyWith<$Res> get dateTime {
    return $WorldDateTimeModelCopyWith<$Res>(_value.dateTime, (value) {
      return _then(_value.copyWith(dateTime: value) as $Val);
    });
  }

  /// Create a copy of WorldState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WorldDateTimeModelCopyWith<$Res> get lastDateTime {
    return $WorldDateTimeModelCopyWith<$Res>(_value.lastDateTime, (value) {
      return _then(_value.copyWith(lastDateTime: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WorldStateImplCopyWith<$Res>
    implements $WorldStateCopyWith<$Res> {
  factory _$$WorldStateImplCopyWith(
    _$WorldStateImpl value,
    $Res Function(_$WorldStateImpl) then,
  ) = __$$WorldStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    WorldDateTimeModel dateTime,
    WorldDateTimeModel lastDateTime,
    int dateTimeDelta,
  });

  @override
  $WorldDateTimeModelCopyWith<$Res> get dateTime;
  @override
  $WorldDateTimeModelCopyWith<$Res> get lastDateTime;
}

/// @nodoc
class __$$WorldStateImplCopyWithImpl<$Res>
    extends _$WorldStateCopyWithImpl<$Res, _$WorldStateImpl>
    implements _$$WorldStateImplCopyWith<$Res> {
  __$$WorldStateImplCopyWithImpl(
    _$WorldStateImpl _value,
    $Res Function(_$WorldStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WorldState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? lastDateTime = null,
    Object? dateTimeDelta = null,
  }) {
    return _then(
      _$WorldStateImpl(
        dateTime: null == dateTime
            ? _value.dateTime
            : dateTime // ignore: cast_nullable_to_non_nullable
                  as WorldDateTimeModel,
        lastDateTime: null == lastDateTime
            ? _value.lastDateTime
            : lastDateTime // ignore: cast_nullable_to_non_nullable
                  as WorldDateTimeModel,
        dateTimeDelta: null == dateTimeDelta
            ? _value.dateTimeDelta
            : dateTimeDelta // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$WorldStateImpl extends _WorldState {
  const _$WorldStateImpl({
    this.dateTime = WorldDateTimeModel.zero,
    this.lastDateTime = WorldDateTimeModel.zero,
    this.dateTimeDelta = 0,
  }) : super._();

  @override
  @JsonKey()
  final WorldDateTimeModel dateTime;
  @override
  @JsonKey()
  final WorldDateTimeModel lastDateTime;
  @override
  @JsonKey()
  final int dateTimeDelta;

  @override
  String toString() {
    return 'WorldState(dateTime: $dateTime, lastDateTime: $lastDateTime, dateTimeDelta: $dateTimeDelta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorldStateImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.lastDateTime, lastDateTime) ||
                other.lastDateTime == lastDateTime) &&
            (identical(other.dateTimeDelta, dateTimeDelta) ||
                other.dateTimeDelta == dateTimeDelta));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, dateTime, lastDateTime, dateTimeDelta);

  /// Create a copy of WorldState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorldStateImplCopyWith<_$WorldStateImpl> get copyWith =>
      __$$WorldStateImplCopyWithImpl<_$WorldStateImpl>(this, _$identity);
}

abstract class _WorldState extends WorldState {
  const factory _WorldState({
    final WorldDateTimeModel dateTime,
    final WorldDateTimeModel lastDateTime,
    final int dateTimeDelta,
  }) = _$WorldStateImpl;
  const _WorldState._() : super._();

  @override
  WorldDateTimeModel get dateTime;
  @override
  WorldDateTimeModel get lastDateTime;
  @override
  int get dateTimeDelta;

  /// Create a copy of WorldState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorldStateImplCopyWith<_$WorldStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
