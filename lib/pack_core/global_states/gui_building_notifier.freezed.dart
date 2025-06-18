// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gui_building_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GuiBuildingNotifierState {

 GuiBuildingStatusEnum get status; GuiBuildingTypeEnum get type; SerializedVector2 get distanceToOrigin; CellPointModel? get cellPoint;
/// Create a copy of GuiBuildingNotifierState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GuiBuildingNotifierStateCopyWith<GuiBuildingNotifierState> get copyWith => _$GuiBuildingNotifierStateCopyWithImpl<GuiBuildingNotifierState>(this as GuiBuildingNotifierState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GuiBuildingNotifierState&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type)&&(identical(other.distanceToOrigin, distanceToOrigin) || other.distanceToOrigin == distanceToOrigin)&&(identical(other.cellPoint, cellPoint) || other.cellPoint == cellPoint));
}


@override
int get hashCode => Object.hash(runtimeType,status,type,distanceToOrigin,cellPoint);

@override
String toString() {
  return 'GuiBuildingNotifierState(status: $status, type: $type, distanceToOrigin: $distanceToOrigin, cellPoint: $cellPoint)';
}


}

/// @nodoc
abstract mixin class $GuiBuildingNotifierStateCopyWith<$Res>  {
  factory $GuiBuildingNotifierStateCopyWith(GuiBuildingNotifierState value, $Res Function(GuiBuildingNotifierState) _then) = _$GuiBuildingNotifierStateCopyWithImpl;
@useResult
$Res call({
 GuiBuildingStatusEnum status, GuiBuildingTypeEnum type, SerializedVector2 distanceToOrigin, CellPointModel? cellPoint
});


$SerializedVector2CopyWith<$Res> get distanceToOrigin;$CellPointModelCopyWith<$Res>? get cellPoint;

}
/// @nodoc
class _$GuiBuildingNotifierStateCopyWithImpl<$Res>
    implements $GuiBuildingNotifierStateCopyWith<$Res> {
  _$GuiBuildingNotifierStateCopyWithImpl(this._self, this._then);

  final GuiBuildingNotifierState _self;
  final $Res Function(GuiBuildingNotifierState) _then;

/// Create a copy of GuiBuildingNotifierState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? type = null,Object? distanceToOrigin = null,Object? cellPoint = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GuiBuildingStatusEnum,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as GuiBuildingTypeEnum,distanceToOrigin: null == distanceToOrigin ? _self.distanceToOrigin : distanceToOrigin // ignore: cast_nullable_to_non_nullable
as SerializedVector2,cellPoint: freezed == cellPoint ? _self.cellPoint : cellPoint // ignore: cast_nullable_to_non_nullable
as CellPointModel?,
  ));
}
/// Create a copy of GuiBuildingNotifierState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SerializedVector2CopyWith<$Res> get distanceToOrigin {
  
  return $SerializedVector2CopyWith<$Res>(_self.distanceToOrigin, (value) {
    return _then(_self.copyWith(distanceToOrigin: value));
  });
}/// Create a copy of GuiBuildingNotifierState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CellPointModelCopyWith<$Res>? get cellPoint {
    if (_self.cellPoint == null) {
    return null;
  }

  return $CellPointModelCopyWith<$Res>(_self.cellPoint!, (value) {
    return _then(_self.copyWith(cellPoint: value));
  });
}
}


/// @nodoc


class _GuiBuildingNotifierState implements GuiBuildingNotifierState {
  const _GuiBuildingNotifierState({this.status = GuiBuildingStatusEnum.idle, this.type = GuiBuildingTypeEnum.nothing, this.distanceToOrigin = SerializedVector2.zero, this.cellPoint});
  

@override@JsonKey() final  GuiBuildingStatusEnum status;
@override@JsonKey() final  GuiBuildingTypeEnum type;
@override@JsonKey() final  SerializedVector2 distanceToOrigin;
@override final  CellPointModel? cellPoint;

/// Create a copy of GuiBuildingNotifierState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GuiBuildingNotifierStateCopyWith<_GuiBuildingNotifierState> get copyWith => __$GuiBuildingNotifierStateCopyWithImpl<_GuiBuildingNotifierState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GuiBuildingNotifierState&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type)&&(identical(other.distanceToOrigin, distanceToOrigin) || other.distanceToOrigin == distanceToOrigin)&&(identical(other.cellPoint, cellPoint) || other.cellPoint == cellPoint));
}


@override
int get hashCode => Object.hash(runtimeType,status,type,distanceToOrigin,cellPoint);

@override
String toString() {
  return 'GuiBuildingNotifierState(status: $status, type: $type, distanceToOrigin: $distanceToOrigin, cellPoint: $cellPoint)';
}


}

/// @nodoc
abstract mixin class _$GuiBuildingNotifierStateCopyWith<$Res> implements $GuiBuildingNotifierStateCopyWith<$Res> {
  factory _$GuiBuildingNotifierStateCopyWith(_GuiBuildingNotifierState value, $Res Function(_GuiBuildingNotifierState) _then) = __$GuiBuildingNotifierStateCopyWithImpl;
@override @useResult
$Res call({
 GuiBuildingStatusEnum status, GuiBuildingTypeEnum type, SerializedVector2 distanceToOrigin, CellPointModel? cellPoint
});


@override $SerializedVector2CopyWith<$Res> get distanceToOrigin;@override $CellPointModelCopyWith<$Res>? get cellPoint;

}
/// @nodoc
class __$GuiBuildingNotifierStateCopyWithImpl<$Res>
    implements _$GuiBuildingNotifierStateCopyWith<$Res> {
  __$GuiBuildingNotifierStateCopyWithImpl(this._self, this._then);

  final _GuiBuildingNotifierState _self;
  final $Res Function(_GuiBuildingNotifierState) _then;

/// Create a copy of GuiBuildingNotifierState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? type = null,Object? distanceToOrigin = null,Object? cellPoint = freezed,}) {
  return _then(_GuiBuildingNotifierState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GuiBuildingStatusEnum,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as GuiBuildingTypeEnum,distanceToOrigin: null == distanceToOrigin ? _self.distanceToOrigin : distanceToOrigin // ignore: cast_nullable_to_non_nullable
as SerializedVector2,cellPoint: freezed == cellPoint ? _self.cellPoint : cellPoint // ignore: cast_nullable_to_non_nullable
as CellPointModel?,
  ));
}

/// Create a copy of GuiBuildingNotifierState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SerializedVector2CopyWith<$Res> get distanceToOrigin {
  
  return $SerializedVector2CopyWith<$Res>(_self.distanceToOrigin, (value) {
    return _then(_self.copyWith(distanceToOrigin: value));
  });
}/// Create a copy of GuiBuildingNotifierState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CellPointModelCopyWith<$Res>? get cellPoint {
    if (_self.cellPoint == null) {
    return null;
  }

  return $CellPointModelCopyWith<$Res>(_self.cellPoint!, (value) {
    return _then(_self.copyWith(cellPoint: value));
  });
}
}

// dart format on
