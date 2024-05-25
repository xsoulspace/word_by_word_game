// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gui_building_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GuiBuildingNotifierState {
  GuiBuildingStatusEnum get status => throw _privateConstructorUsedError;
  GuiBuildingTypeEnum get type => throw _privateConstructorUsedError;
  SerializedVector2 get distanceToOrigin => throw _privateConstructorUsedError;
  CellPointModel? get cellPoint => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GuiBuildingNotifierStateCopyWith<GuiBuildingNotifierState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuiBuildingNotifierStateCopyWith<$Res> {
  factory $GuiBuildingNotifierStateCopyWith(GuiBuildingNotifierState value,
          $Res Function(GuiBuildingNotifierState) then) =
      _$GuiBuildingNotifierStateCopyWithImpl<$Res, GuiBuildingNotifierState>;
  @useResult
  $Res call(
      {GuiBuildingStatusEnum status,
      GuiBuildingTypeEnum type,
      SerializedVector2 distanceToOrigin,
      CellPointModel? cellPoint});

  $SerializedVector2CopyWith<$Res> get distanceToOrigin;
  $CellPointModelCopyWith<$Res>? get cellPoint;
}

/// @nodoc
class _$GuiBuildingNotifierStateCopyWithImpl<$Res,
        $Val extends GuiBuildingNotifierState>
    implements $GuiBuildingNotifierStateCopyWith<$Res> {
  _$GuiBuildingNotifierStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? type = null,
    Object? distanceToOrigin = null,
    Object? cellPoint = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GuiBuildingStatusEnum,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GuiBuildingTypeEnum,
      distanceToOrigin: null == distanceToOrigin
          ? _value.distanceToOrigin
          : distanceToOrigin // ignore: cast_nullable_to_non_nullable
              as SerializedVector2,
      cellPoint: freezed == cellPoint
          ? _value.cellPoint
          : cellPoint // ignore: cast_nullable_to_non_nullable
              as CellPointModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SerializedVector2CopyWith<$Res> get distanceToOrigin {
    return $SerializedVector2CopyWith<$Res>(_value.distanceToOrigin, (value) {
      return _then(_value.copyWith(distanceToOrigin: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CellPointModelCopyWith<$Res>? get cellPoint {
    if (_value.cellPoint == null) {
      return null;
    }

    return $CellPointModelCopyWith<$Res>(_value.cellPoint!, (value) {
      return _then(_value.copyWith(cellPoint: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GuiBuildingNotifierStateImplCopyWith<$Res>
    implements $GuiBuildingNotifierStateCopyWith<$Res> {
  factory _$$GuiBuildingNotifierStateImplCopyWith(
          _$GuiBuildingNotifierStateImpl value,
          $Res Function(_$GuiBuildingNotifierStateImpl) then) =
      __$$GuiBuildingNotifierStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GuiBuildingStatusEnum status,
      GuiBuildingTypeEnum type,
      SerializedVector2 distanceToOrigin,
      CellPointModel? cellPoint});

  @override
  $SerializedVector2CopyWith<$Res> get distanceToOrigin;
  @override
  $CellPointModelCopyWith<$Res>? get cellPoint;
}

/// @nodoc
class __$$GuiBuildingNotifierStateImplCopyWithImpl<$Res>
    extends _$GuiBuildingNotifierStateCopyWithImpl<$Res,
        _$GuiBuildingNotifierStateImpl>
    implements _$$GuiBuildingNotifierStateImplCopyWith<$Res> {
  __$$GuiBuildingNotifierStateImplCopyWithImpl(
      _$GuiBuildingNotifierStateImpl _value,
      $Res Function(_$GuiBuildingNotifierStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? type = null,
    Object? distanceToOrigin = null,
    Object? cellPoint = freezed,
  }) {
    return _then(_$GuiBuildingNotifierStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GuiBuildingStatusEnum,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GuiBuildingTypeEnum,
      distanceToOrigin: null == distanceToOrigin
          ? _value.distanceToOrigin
          : distanceToOrigin // ignore: cast_nullable_to_non_nullable
              as SerializedVector2,
      cellPoint: freezed == cellPoint
          ? _value.cellPoint
          : cellPoint // ignore: cast_nullable_to_non_nullable
              as CellPointModel?,
    ));
  }
}

/// @nodoc

class _$GuiBuildingNotifierStateImpl implements _GuiBuildingNotifierState {
  const _$GuiBuildingNotifierStateImpl(
      {this.status = GuiBuildingStatusEnum.idle,
      this.type = GuiBuildingTypeEnum.nothing,
      this.distanceToOrigin = SerializedVector2.zero,
      this.cellPoint});

  @override
  @JsonKey()
  final GuiBuildingStatusEnum status;
  @override
  @JsonKey()
  final GuiBuildingTypeEnum type;
  @override
  @JsonKey()
  final SerializedVector2 distanceToOrigin;
  @override
  final CellPointModel? cellPoint;

  @override
  String toString() {
    return 'GuiBuildingNotifierState(status: $status, type: $type, distanceToOrigin: $distanceToOrigin, cellPoint: $cellPoint)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuiBuildingNotifierStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.distanceToOrigin, distanceToOrigin) ||
                other.distanceToOrigin == distanceToOrigin) &&
            (identical(other.cellPoint, cellPoint) ||
                other.cellPoint == cellPoint));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, type, distanceToOrigin, cellPoint);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GuiBuildingNotifierStateImplCopyWith<_$GuiBuildingNotifierStateImpl>
      get copyWith => __$$GuiBuildingNotifierStateImplCopyWithImpl<
          _$GuiBuildingNotifierStateImpl>(this, _$identity);
}

abstract class _GuiBuildingNotifierState implements GuiBuildingNotifierState {
  const factory _GuiBuildingNotifierState(
      {final GuiBuildingStatusEnum status,
      final GuiBuildingTypeEnum type,
      final SerializedVector2 distanceToOrigin,
      final CellPointModel? cellPoint}) = _$GuiBuildingNotifierStateImpl;

  @override
  GuiBuildingStatusEnum get status;
  @override
  GuiBuildingTypeEnum get type;
  @override
  SerializedVector2 get distanceToOrigin;
  @override
  CellPointModel? get cellPoint;
  @override
  @JsonKey(ignore: true)
  _$$GuiBuildingNotifierStateImplCopyWith<_$GuiBuildingNotifierStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
