// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preset_resources.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PresetTileResource {

 PresetTileModel get tile; Map<TileBehaviourType, AnimationEntryModel> get behaviourPaths; Map<SpriteCode, AnimationEntryModel> get directionalPaths;
/// Create a copy of PresetTileResource
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PresetTileResourceCopyWith<PresetTileResource> get copyWith => _$PresetTileResourceCopyWithImpl<PresetTileResource>(this as PresetTileResource, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PresetTileResource&&(identical(other.tile, tile) || other.tile == tile)&&const DeepCollectionEquality().equals(other.behaviourPaths, behaviourPaths)&&const DeepCollectionEquality().equals(other.directionalPaths, directionalPaths));
}


@override
int get hashCode => Object.hash(runtimeType,tile,const DeepCollectionEquality().hash(behaviourPaths),const DeepCollectionEquality().hash(directionalPaths));

@override
String toString() {
  return 'PresetTileResource(tile: $tile, behaviourPaths: $behaviourPaths, directionalPaths: $directionalPaths)';
}


}

/// @nodoc
abstract mixin class $PresetTileResourceCopyWith<$Res>  {
  factory $PresetTileResourceCopyWith(PresetTileResource value, $Res Function(PresetTileResource) _then) = _$PresetTileResourceCopyWithImpl;
@useResult
$Res call({
 PresetTileModel tile, Map<TileBehaviourType, AnimationEntryModel> behaviourPaths, Map<SpriteCode, AnimationEntryModel> directionalPaths
});


$PresetTileModelCopyWith<$Res> get tile;

}
/// @nodoc
class _$PresetTileResourceCopyWithImpl<$Res>
    implements $PresetTileResourceCopyWith<$Res> {
  _$PresetTileResourceCopyWithImpl(this._self, this._then);

  final PresetTileResource _self;
  final $Res Function(PresetTileResource) _then;

/// Create a copy of PresetTileResource
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tile = null,Object? behaviourPaths = null,Object? directionalPaths = null,}) {
  return _then(_self.copyWith(
tile: null == tile ? _self.tile : tile // ignore: cast_nullable_to_non_nullable
as PresetTileModel,behaviourPaths: null == behaviourPaths ? _self.behaviourPaths : behaviourPaths // ignore: cast_nullable_to_non_nullable
as Map<TileBehaviourType, AnimationEntryModel>,directionalPaths: null == directionalPaths ? _self.directionalPaths : directionalPaths // ignore: cast_nullable_to_non_nullable
as Map<SpriteCode, AnimationEntryModel>,
  ));
}
/// Create a copy of PresetTileResource
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PresetTileModelCopyWith<$Res> get tile {
  
  return $PresetTileModelCopyWith<$Res>(_self.tile, (value) {
    return _then(_self.copyWith(tile: value));
  });
}
}


/// @nodoc


class _PresetTileResource extends PresetTileResource {
  const _PresetTileResource({required this.tile, final  Map<TileBehaviourType, AnimationEntryModel> behaviourPaths = const {}, final  Map<SpriteCode, AnimationEntryModel> directionalPaths = const {}}): _behaviourPaths = behaviourPaths,_directionalPaths = directionalPaths,super._();
  

@override final  PresetTileModel tile;
 final  Map<TileBehaviourType, AnimationEntryModel> _behaviourPaths;
@override@JsonKey() Map<TileBehaviourType, AnimationEntryModel> get behaviourPaths {
  if (_behaviourPaths is EqualUnmodifiableMapView) return _behaviourPaths;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_behaviourPaths);
}

 final  Map<SpriteCode, AnimationEntryModel> _directionalPaths;
@override@JsonKey() Map<SpriteCode, AnimationEntryModel> get directionalPaths {
  if (_directionalPaths is EqualUnmodifiableMapView) return _directionalPaths;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_directionalPaths);
}


/// Create a copy of PresetTileResource
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PresetTileResourceCopyWith<_PresetTileResource> get copyWith => __$PresetTileResourceCopyWithImpl<_PresetTileResource>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PresetTileResource&&(identical(other.tile, tile) || other.tile == tile)&&const DeepCollectionEquality().equals(other._behaviourPaths, _behaviourPaths)&&const DeepCollectionEquality().equals(other._directionalPaths, _directionalPaths));
}


@override
int get hashCode => Object.hash(runtimeType,tile,const DeepCollectionEquality().hash(_behaviourPaths),const DeepCollectionEquality().hash(_directionalPaths));

@override
String toString() {
  return 'PresetTileResource(tile: $tile, behaviourPaths: $behaviourPaths, directionalPaths: $directionalPaths)';
}


}

/// @nodoc
abstract mixin class _$PresetTileResourceCopyWith<$Res> implements $PresetTileResourceCopyWith<$Res> {
  factory _$PresetTileResourceCopyWith(_PresetTileResource value, $Res Function(_PresetTileResource) _then) = __$PresetTileResourceCopyWithImpl;
@override @useResult
$Res call({
 PresetTileModel tile, Map<TileBehaviourType, AnimationEntryModel> behaviourPaths, Map<SpriteCode, AnimationEntryModel> directionalPaths
});


@override $PresetTileModelCopyWith<$Res> get tile;

}
/// @nodoc
class __$PresetTileResourceCopyWithImpl<$Res>
    implements _$PresetTileResourceCopyWith<$Res> {
  __$PresetTileResourceCopyWithImpl(this._self, this._then);

  final _PresetTileResource _self;
  final $Res Function(_PresetTileResource) _then;

/// Create a copy of PresetTileResource
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tile = null,Object? behaviourPaths = null,Object? directionalPaths = null,}) {
  return _then(_PresetTileResource(
tile: null == tile ? _self.tile : tile // ignore: cast_nullable_to_non_nullable
as PresetTileModel,behaviourPaths: null == behaviourPaths ? _self._behaviourPaths : behaviourPaths // ignore: cast_nullable_to_non_nullable
as Map<TileBehaviourType, AnimationEntryModel>,directionalPaths: null == directionalPaths ? _self._directionalPaths : directionalPaths // ignore: cast_nullable_to_non_nullable
as Map<SpriteCode, AnimationEntryModel>,
  ));
}

/// Create a copy of PresetTileResource
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PresetTileModelCopyWith<$Res> get tile {
  
  return $PresetTileModelCopyWith<$Res>(_self.tile, (value) {
    return _then(_self.copyWith(tile: value));
  });
}
}

// dart format on
