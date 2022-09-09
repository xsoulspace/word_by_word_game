// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'world_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WorldState {
  WorldDateTimeModel get dateTime => throw _privateConstructorUsedError;
  WorldDateTimeModel get lastDateTime => throw _privateConstructorUsedError;
  int get dateTimeDelta => throw _privateConstructorUsedError;
  WorldDataModel get worldData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorldStateCopyWith<WorldState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorldStateCopyWith<$Res> {
  factory $WorldStateCopyWith(
          WorldState value, $Res Function(WorldState) then) =
      _$WorldStateCopyWithImpl<$Res>;
  $Res call(
      {WorldDateTimeModel dateTime,
      WorldDateTimeModel lastDateTime,
      int dateTimeDelta,
      WorldDataModel worldData});

  $WorldDateTimeModelCopyWith<$Res> get dateTime;
  $WorldDateTimeModelCopyWith<$Res> get lastDateTime;
  $WorldDataModelCopyWith<$Res> get worldData;
}

/// @nodoc
class _$WorldStateCopyWithImpl<$Res> implements $WorldStateCopyWith<$Res> {
  _$WorldStateCopyWithImpl(this._value, this._then);

  final WorldState _value;
  // ignore: unused_field
  final $Res Function(WorldState) _then;

  @override
  $Res call({
    Object? dateTime = freezed,
    Object? lastDateTime = freezed,
    Object? dateTimeDelta = freezed,
    Object? worldData = freezed,
  }) {
    return _then(_value.copyWith(
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as WorldDateTimeModel,
      lastDateTime: lastDateTime == freezed
          ? _value.lastDateTime
          : lastDateTime // ignore: cast_nullable_to_non_nullable
              as WorldDateTimeModel,
      dateTimeDelta: dateTimeDelta == freezed
          ? _value.dateTimeDelta
          : dateTimeDelta // ignore: cast_nullable_to_non_nullable
              as int,
      worldData: worldData == freezed
          ? _value.worldData
          : worldData // ignore: cast_nullable_to_non_nullable
              as WorldDataModel,
    ));
  }

  @override
  $WorldDateTimeModelCopyWith<$Res> get dateTime {
    return $WorldDateTimeModelCopyWith<$Res>(_value.dateTime, (value) {
      return _then(_value.copyWith(dateTime: value));
    });
  }

  @override
  $WorldDateTimeModelCopyWith<$Res> get lastDateTime {
    return $WorldDateTimeModelCopyWith<$Res>(_value.lastDateTime, (value) {
      return _then(_value.copyWith(lastDateTime: value));
    });
  }

  @override
  $WorldDataModelCopyWith<$Res> get worldData {
    return $WorldDataModelCopyWith<$Res>(_value.worldData, (value) {
      return _then(_value.copyWith(worldData: value));
    });
  }
}

/// @nodoc
abstract class _$$_WorldStateCopyWith<$Res>
    implements $WorldStateCopyWith<$Res> {
  factory _$$_WorldStateCopyWith(
          _$_WorldState value, $Res Function(_$_WorldState) then) =
      __$$_WorldStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {WorldDateTimeModel dateTime,
      WorldDateTimeModel lastDateTime,
      int dateTimeDelta,
      WorldDataModel worldData});

  @override
  $WorldDateTimeModelCopyWith<$Res> get dateTime;
  @override
  $WorldDateTimeModelCopyWith<$Res> get lastDateTime;
  @override
  $WorldDataModelCopyWith<$Res> get worldData;
}

/// @nodoc
class __$$_WorldStateCopyWithImpl<$Res> extends _$WorldStateCopyWithImpl<$Res>
    implements _$$_WorldStateCopyWith<$Res> {
  __$$_WorldStateCopyWithImpl(
      _$_WorldState _value, $Res Function(_$_WorldState) _then)
      : super(_value, (v) => _then(v as _$_WorldState));

  @override
  _$_WorldState get _value => super._value as _$_WorldState;

  @override
  $Res call({
    Object? dateTime = freezed,
    Object? lastDateTime = freezed,
    Object? dateTimeDelta = freezed,
    Object? worldData = freezed,
  }) {
    return _then(_$_WorldState(
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as WorldDateTimeModel,
      lastDateTime: lastDateTime == freezed
          ? _value.lastDateTime
          : lastDateTime // ignore: cast_nullable_to_non_nullable
              as WorldDateTimeModel,
      dateTimeDelta: dateTimeDelta == freezed
          ? _value.dateTimeDelta
          : dateTimeDelta // ignore: cast_nullable_to_non_nullable
              as int,
      worldData: worldData == freezed
          ? _value.worldData
          : worldData // ignore: cast_nullable_to_non_nullable
              as WorldDataModel,
    ));
  }
}

/// @nodoc

class _$_WorldState extends _WorldState {
  const _$_WorldState(
      {this.dateTime = const WorldDateTimeModel(),
      this.lastDateTime = const WorldDateTimeModel(),
      this.dateTimeDelta = 0,
      this.worldData = const WorldDataModel()})
      : super._();

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
  @JsonKey()
  final WorldDataModel worldData;

  @override
  String toString() {
    return 'WorldState(dateTime: $dateTime, lastDateTime: $lastDateTime, dateTimeDelta: $dateTimeDelta, worldData: $worldData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorldState &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime) &&
            const DeepCollectionEquality()
                .equals(other.lastDateTime, lastDateTime) &&
            const DeepCollectionEquality()
                .equals(other.dateTimeDelta, dateTimeDelta) &&
            const DeepCollectionEquality().equals(other.worldData, worldData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dateTime),
      const DeepCollectionEquality().hash(lastDateTime),
      const DeepCollectionEquality().hash(dateTimeDelta),
      const DeepCollectionEquality().hash(worldData));

  @JsonKey(ignore: true)
  @override
  _$$_WorldStateCopyWith<_$_WorldState> get copyWith =>
      __$$_WorldStateCopyWithImpl<_$_WorldState>(this, _$identity);
}

abstract class _WorldState extends WorldState {
  const factory _WorldState(
      {final WorldDateTimeModel dateTime,
      final WorldDateTimeModel lastDateTime,
      final int dateTimeDelta,
      final WorldDataModel worldData}) = _$_WorldState;
  const _WorldState._() : super._();

  @override
  WorldDateTimeModel get dateTime;
  @override
  WorldDateTimeModel get lastDateTime;
  @override
  int get dateTimeDelta;
  @override
  WorldDataModel get worldData;
  @override
  @JsonKey(ignore: true)
  _$$_WorldStateCopyWith<_$_WorldState> get copyWith =>
      throw _privateConstructorUsedError;
}
