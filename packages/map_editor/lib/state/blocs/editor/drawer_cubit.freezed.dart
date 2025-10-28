// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drawer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DrawerCubitState {

/// Real origin for all elements
 Vector2 get origin; PresetTileResource? get tileToDraw; bool get isDeleteSelection; bool get isDeleteSelectionCompletely; CanvasDataModel get canvasData;/// use to get or update layer [canvasData]
///
/// shortcut - [drawLayer]
 LayerModelId get drawLayerId;/// Never changable in runtime tileset, like grass, water and data
/// to instantiate objects
 TilesetPresetResources get tileResources; List<TilesetConfigModel> get tilesetsConfigs;
/// Create a copy of DrawerCubitState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DrawerCubitStateCopyWith<DrawerCubitState> get copyWith => _$DrawerCubitStateCopyWithImpl<DrawerCubitState>(this as DrawerCubitState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DrawerCubitState&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.tileToDraw, tileToDraw) || other.tileToDraw == tileToDraw)&&(identical(other.isDeleteSelection, isDeleteSelection) || other.isDeleteSelection == isDeleteSelection)&&(identical(other.isDeleteSelectionCompletely, isDeleteSelectionCompletely) || other.isDeleteSelectionCompletely == isDeleteSelectionCompletely)&&(identical(other.canvasData, canvasData) || other.canvasData == canvasData)&&(identical(other.drawLayerId, drawLayerId) || other.drawLayerId == drawLayerId)&&(identical(other.tileResources, tileResources) || other.tileResources == tileResources)&&const DeepCollectionEquality().equals(other.tilesetsConfigs, tilesetsConfigs));
}


@override
int get hashCode => Object.hash(runtimeType,origin,tileToDraw,isDeleteSelection,isDeleteSelectionCompletely,canvasData,drawLayerId,tileResources,const DeepCollectionEquality().hash(tilesetsConfigs));

@override
String toString() {
  return 'DrawerCubitState(origin: $origin, tileToDraw: $tileToDraw, isDeleteSelection: $isDeleteSelection, isDeleteSelectionCompletely: $isDeleteSelectionCompletely, canvasData: $canvasData, drawLayerId: $drawLayerId, tileResources: $tileResources, tilesetsConfigs: $tilesetsConfigs)';
}


}

/// @nodoc
abstract mixin class $DrawerCubitStateCopyWith<$Res>  {
  factory $DrawerCubitStateCopyWith(DrawerCubitState value, $Res Function(DrawerCubitState) _then) = _$DrawerCubitStateCopyWithImpl;
@useResult
$Res call({
 Vector2 origin, PresetTileResource? tileToDraw, bool isDeleteSelection, bool isDeleteSelectionCompletely, CanvasDataModel canvasData, LayerModelId drawLayerId, TilesetPresetResources tileResources, List<TilesetConfigModel> tilesetsConfigs
});


$PresetTileResourceCopyWith<$Res>? get tileToDraw;$CanvasDataModelCopyWith<$Res> get canvasData;$LayerModelIdCopyWith<$Res> get drawLayerId;$TilesetPresetResourcesCopyWith<$Res> get tileResources;

}
/// @nodoc
class _$DrawerCubitStateCopyWithImpl<$Res>
    implements $DrawerCubitStateCopyWith<$Res> {
  _$DrawerCubitStateCopyWithImpl(this._self, this._then);

  final DrawerCubitState _self;
  final $Res Function(DrawerCubitState) _then;

/// Create a copy of DrawerCubitState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? origin = null,Object? tileToDraw = freezed,Object? isDeleteSelection = null,Object? isDeleteSelectionCompletely = null,Object? canvasData = null,Object? drawLayerId = null,Object? tileResources = null,Object? tilesetsConfigs = null,}) {
  return _then(_self.copyWith(
origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as Vector2,tileToDraw: freezed == tileToDraw ? _self.tileToDraw : tileToDraw // ignore: cast_nullable_to_non_nullable
as PresetTileResource?,isDeleteSelection: null == isDeleteSelection ? _self.isDeleteSelection : isDeleteSelection // ignore: cast_nullable_to_non_nullable
as bool,isDeleteSelectionCompletely: null == isDeleteSelectionCompletely ? _self.isDeleteSelectionCompletely : isDeleteSelectionCompletely // ignore: cast_nullable_to_non_nullable
as bool,canvasData: null == canvasData ? _self.canvasData : canvasData // ignore: cast_nullable_to_non_nullable
as CanvasDataModel,drawLayerId: null == drawLayerId ? _self.drawLayerId : drawLayerId // ignore: cast_nullable_to_non_nullable
as LayerModelId,tileResources: null == tileResources ? _self.tileResources : tileResources // ignore: cast_nullable_to_non_nullable
as TilesetPresetResources,tilesetsConfigs: null == tilesetsConfigs ? _self.tilesetsConfigs : tilesetsConfigs // ignore: cast_nullable_to_non_nullable
as List<TilesetConfigModel>,
  ));
}
/// Create a copy of DrawerCubitState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PresetTileResourceCopyWith<$Res>? get tileToDraw {
    if (_self.tileToDraw == null) {
    return null;
  }

  return $PresetTileResourceCopyWith<$Res>(_self.tileToDraw!, (value) {
    return _then(_self.copyWith(tileToDraw: value));
  });
}/// Create a copy of DrawerCubitState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CanvasDataModelCopyWith<$Res> get canvasData {
  
  return $CanvasDataModelCopyWith<$Res>(_self.canvasData, (value) {
    return _then(_self.copyWith(canvasData: value));
  });
}/// Create a copy of DrawerCubitState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LayerModelIdCopyWith<$Res> get drawLayerId {
  
  return $LayerModelIdCopyWith<$Res>(_self.drawLayerId, (value) {
    return _then(_self.copyWith(drawLayerId: value));
  });
}/// Create a copy of DrawerCubitState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TilesetPresetResourcesCopyWith<$Res> get tileResources {
  
  return $TilesetPresetResourcesCopyWith<$Res>(_self.tileResources, (value) {
    return _then(_self.copyWith(tileResources: value));
  });
}
}


/// Adds pattern-matching-related methods to [DrawerCubitState].
extension DrawerCubitStatePatterns on DrawerCubitState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DrawerCubitState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DrawerCubitState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DrawerCubitState value)  $default,){
final _that = this;
switch (_that) {
case _DrawerCubitState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DrawerCubitState value)?  $default,){
final _that = this;
switch (_that) {
case _DrawerCubitState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Vector2 origin,  PresetTileResource? tileToDraw,  bool isDeleteSelection,  bool isDeleteSelectionCompletely,  CanvasDataModel canvasData,  LayerModelId drawLayerId,  TilesetPresetResources tileResources,  List<TilesetConfigModel> tilesetsConfigs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DrawerCubitState() when $default != null:
return $default(_that.origin,_that.tileToDraw,_that.isDeleteSelection,_that.isDeleteSelectionCompletely,_that.canvasData,_that.drawLayerId,_that.tileResources,_that.tilesetsConfigs);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Vector2 origin,  PresetTileResource? tileToDraw,  bool isDeleteSelection,  bool isDeleteSelectionCompletely,  CanvasDataModel canvasData,  LayerModelId drawLayerId,  TilesetPresetResources tileResources,  List<TilesetConfigModel> tilesetsConfigs)  $default,) {final _that = this;
switch (_that) {
case _DrawerCubitState():
return $default(_that.origin,_that.tileToDraw,_that.isDeleteSelection,_that.isDeleteSelectionCompletely,_that.canvasData,_that.drawLayerId,_that.tileResources,_that.tilesetsConfigs);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Vector2 origin,  PresetTileResource? tileToDraw,  bool isDeleteSelection,  bool isDeleteSelectionCompletely,  CanvasDataModel canvasData,  LayerModelId drawLayerId,  TilesetPresetResources tileResources,  List<TilesetConfigModel> tilesetsConfigs)?  $default,) {final _that = this;
switch (_that) {
case _DrawerCubitState() when $default != null:
return $default(_that.origin,_that.tileToDraw,_that.isDeleteSelection,_that.isDeleteSelectionCompletely,_that.canvasData,_that.drawLayerId,_that.tileResources,_that.tilesetsConfigs);case _:
  return null;

}
}

}

/// @nodoc


class _DrawerCubitState extends DrawerCubitState {
  const _DrawerCubitState({required this.origin, this.tileToDraw, this.isDeleteSelection = false, this.isDeleteSelectionCompletely = false, this.canvasData = CanvasDataModel.empty, this.drawLayerId = LayerModelId.empty, this.tileResources = TilesetPresetResources.empty, final  List<TilesetConfigModel> tilesetsConfigs = const []}): _tilesetsConfigs = tilesetsConfigs,super._();
  

/// Real origin for all elements
@override final  Vector2 origin;
@override final  PresetTileResource? tileToDraw;
@override@JsonKey() final  bool isDeleteSelection;
@override@JsonKey() final  bool isDeleteSelectionCompletely;
@override@JsonKey() final  CanvasDataModel canvasData;
/// use to get or update layer [canvasData]
///
/// shortcut - [drawLayer]
@override@JsonKey() final  LayerModelId drawLayerId;
/// Never changable in runtime tileset, like grass, water and data
/// to instantiate objects
@override@JsonKey() final  TilesetPresetResources tileResources;
 final  List<TilesetConfigModel> _tilesetsConfigs;
@override@JsonKey() List<TilesetConfigModel> get tilesetsConfigs {
  if (_tilesetsConfigs is EqualUnmodifiableListView) return _tilesetsConfigs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tilesetsConfigs);
}


/// Create a copy of DrawerCubitState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DrawerCubitStateCopyWith<_DrawerCubitState> get copyWith => __$DrawerCubitStateCopyWithImpl<_DrawerCubitState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DrawerCubitState&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.tileToDraw, tileToDraw) || other.tileToDraw == tileToDraw)&&(identical(other.isDeleteSelection, isDeleteSelection) || other.isDeleteSelection == isDeleteSelection)&&(identical(other.isDeleteSelectionCompletely, isDeleteSelectionCompletely) || other.isDeleteSelectionCompletely == isDeleteSelectionCompletely)&&(identical(other.canvasData, canvasData) || other.canvasData == canvasData)&&(identical(other.drawLayerId, drawLayerId) || other.drawLayerId == drawLayerId)&&(identical(other.tileResources, tileResources) || other.tileResources == tileResources)&&const DeepCollectionEquality().equals(other._tilesetsConfigs, _tilesetsConfigs));
}


@override
int get hashCode => Object.hash(runtimeType,origin,tileToDraw,isDeleteSelection,isDeleteSelectionCompletely,canvasData,drawLayerId,tileResources,const DeepCollectionEquality().hash(_tilesetsConfigs));

@override
String toString() {
  return 'DrawerCubitState(origin: $origin, tileToDraw: $tileToDraw, isDeleteSelection: $isDeleteSelection, isDeleteSelectionCompletely: $isDeleteSelectionCompletely, canvasData: $canvasData, drawLayerId: $drawLayerId, tileResources: $tileResources, tilesetsConfigs: $tilesetsConfigs)';
}


}

/// @nodoc
abstract mixin class _$DrawerCubitStateCopyWith<$Res> implements $DrawerCubitStateCopyWith<$Res> {
  factory _$DrawerCubitStateCopyWith(_DrawerCubitState value, $Res Function(_DrawerCubitState) _then) = __$DrawerCubitStateCopyWithImpl;
@override @useResult
$Res call({
 Vector2 origin, PresetTileResource? tileToDraw, bool isDeleteSelection, bool isDeleteSelectionCompletely, CanvasDataModel canvasData, LayerModelId drawLayerId, TilesetPresetResources tileResources, List<TilesetConfigModel> tilesetsConfigs
});


@override $PresetTileResourceCopyWith<$Res>? get tileToDraw;@override $CanvasDataModelCopyWith<$Res> get canvasData;@override $LayerModelIdCopyWith<$Res> get drawLayerId;@override $TilesetPresetResourcesCopyWith<$Res> get tileResources;

}
/// @nodoc
class __$DrawerCubitStateCopyWithImpl<$Res>
    implements _$DrawerCubitStateCopyWith<$Res> {
  __$DrawerCubitStateCopyWithImpl(this._self, this._then);

  final _DrawerCubitState _self;
  final $Res Function(_DrawerCubitState) _then;

/// Create a copy of DrawerCubitState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? origin = null,Object? tileToDraw = freezed,Object? isDeleteSelection = null,Object? isDeleteSelectionCompletely = null,Object? canvasData = null,Object? drawLayerId = null,Object? tileResources = null,Object? tilesetsConfigs = null,}) {
  return _then(_DrawerCubitState(
origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as Vector2,tileToDraw: freezed == tileToDraw ? _self.tileToDraw : tileToDraw // ignore: cast_nullable_to_non_nullable
as PresetTileResource?,isDeleteSelection: null == isDeleteSelection ? _self.isDeleteSelection : isDeleteSelection // ignore: cast_nullable_to_non_nullable
as bool,isDeleteSelectionCompletely: null == isDeleteSelectionCompletely ? _self.isDeleteSelectionCompletely : isDeleteSelectionCompletely // ignore: cast_nullable_to_non_nullable
as bool,canvasData: null == canvasData ? _self.canvasData : canvasData // ignore: cast_nullable_to_non_nullable
as CanvasDataModel,drawLayerId: null == drawLayerId ? _self.drawLayerId : drawLayerId // ignore: cast_nullable_to_non_nullable
as LayerModelId,tileResources: null == tileResources ? _self.tileResources : tileResources // ignore: cast_nullable_to_non_nullable
as TilesetPresetResources,tilesetsConfigs: null == tilesetsConfigs ? _self._tilesetsConfigs : tilesetsConfigs // ignore: cast_nullable_to_non_nullable
as List<TilesetConfigModel>,
  ));
}

/// Create a copy of DrawerCubitState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PresetTileResourceCopyWith<$Res>? get tileToDraw {
    if (_self.tileToDraw == null) {
    return null;
  }

  return $PresetTileResourceCopyWith<$Res>(_self.tileToDraw!, (value) {
    return _then(_self.copyWith(tileToDraw: value));
  });
}/// Create a copy of DrawerCubitState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CanvasDataModelCopyWith<$Res> get canvasData {
  
  return $CanvasDataModelCopyWith<$Res>(_self.canvasData, (value) {
    return _then(_self.copyWith(canvasData: value));
  });
}/// Create a copy of DrawerCubitState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LayerModelIdCopyWith<$Res> get drawLayerId {
  
  return $LayerModelIdCopyWith<$Res>(_self.drawLayerId, (value) {
    return _then(_self.copyWith(drawLayerId: value));
  });
}/// Create a copy of DrawerCubitState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TilesetPresetResourcesCopyWith<$Res> get tileResources {
  
  return $TilesetPresetResourcesCopyWith<$Res>(_self.tileResources, (value) {
    return _then(_self.copyWith(tileResources: value));
  });
}
}

// dart format on
