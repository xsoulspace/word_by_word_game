// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preset_resources.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PresetTileResource {
  PresetTileModel get tile => throw _privateConstructorUsedError;
  Map<TileBehaviourType, AnimationEntryModel> get behaviourPaths =>
      throw _privateConstructorUsedError;
  Map<String, AnimationEntryModel> get directionalPaths =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PresetTileResourceCopyWith<PresetTileResource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresetTileResourceCopyWith<$Res> {
  factory $PresetTileResourceCopyWith(
          PresetTileResource value, $Res Function(PresetTileResource) then) =
      _$PresetTileResourceCopyWithImpl<$Res, PresetTileResource>;
  @useResult
  $Res call(
      {PresetTileModel tile,
      Map<TileBehaviourType, AnimationEntryModel> behaviourPaths,
      Map<String, AnimationEntryModel> directionalPaths});

  $PresetTileModelCopyWith<$Res> get tile;
}

/// @nodoc
class _$PresetTileResourceCopyWithImpl<$Res, $Val extends PresetTileResource>
    implements $PresetTileResourceCopyWith<$Res> {
  _$PresetTileResourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tile = null,
    Object? behaviourPaths = null,
    Object? directionalPaths = null,
  }) {
    return _then(_value.copyWith(
      tile: null == tile
          ? _value.tile
          : tile // ignore: cast_nullable_to_non_nullable
              as PresetTileModel,
      behaviourPaths: null == behaviourPaths
          ? _value.behaviourPaths
          : behaviourPaths // ignore: cast_nullable_to_non_nullable
              as Map<TileBehaviourType, AnimationEntryModel>,
      directionalPaths: null == directionalPaths
          ? _value.directionalPaths
          : directionalPaths // ignore: cast_nullable_to_non_nullable
              as Map<String, AnimationEntryModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PresetTileModelCopyWith<$Res> get tile {
    return $PresetTileModelCopyWith<$Res>(_value.tile, (value) {
      return _then(_value.copyWith(tile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PresetTileResourceCopyWith<$Res>
    implements $PresetTileResourceCopyWith<$Res> {
  factory _$$_PresetTileResourceCopyWith(_$_PresetTileResource value,
          $Res Function(_$_PresetTileResource) then) =
      __$$_PresetTileResourceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PresetTileModel tile,
      Map<TileBehaviourType, AnimationEntryModel> behaviourPaths,
      Map<String, AnimationEntryModel> directionalPaths});

  @override
  $PresetTileModelCopyWith<$Res> get tile;
}

/// @nodoc
class __$$_PresetTileResourceCopyWithImpl<$Res>
    extends _$PresetTileResourceCopyWithImpl<$Res, _$_PresetTileResource>
    implements _$$_PresetTileResourceCopyWith<$Res> {
  __$$_PresetTileResourceCopyWithImpl(
      _$_PresetTileResource _value, $Res Function(_$_PresetTileResource) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tile = null,
    Object? behaviourPaths = null,
    Object? directionalPaths = null,
  }) {
    return _then(_$_PresetTileResource(
      tile: null == tile
          ? _value.tile
          : tile // ignore: cast_nullable_to_non_nullable
              as PresetTileModel,
      behaviourPaths: null == behaviourPaths
          ? _value._behaviourPaths
          : behaviourPaths // ignore: cast_nullable_to_non_nullable
              as Map<TileBehaviourType, AnimationEntryModel>,
      directionalPaths: null == directionalPaths
          ? _value._directionalPaths
          : directionalPaths // ignore: cast_nullable_to_non_nullable
              as Map<String, AnimationEntryModel>,
    ));
  }
}

/// @nodoc

class _$_PresetTileResource extends _PresetTileResource {
  const _$_PresetTileResource(
      {required this.tile,
      final Map<TileBehaviourType, AnimationEntryModel> behaviourPaths =
          const {},
      final Map<String, AnimationEntryModel> directionalPaths = const {}})
      : _behaviourPaths = behaviourPaths,
        _directionalPaths = directionalPaths,
        super._();

  @override
  final PresetTileModel tile;
  final Map<TileBehaviourType, AnimationEntryModel> _behaviourPaths;
  @override
  @JsonKey()
  Map<TileBehaviourType, AnimationEntryModel> get behaviourPaths {
    if (_behaviourPaths is EqualUnmodifiableMapView) return _behaviourPaths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_behaviourPaths);
  }

  final Map<String, AnimationEntryModel> _directionalPaths;
  @override
  @JsonKey()
  Map<String, AnimationEntryModel> get directionalPaths {
    if (_directionalPaths is EqualUnmodifiableMapView) return _directionalPaths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_directionalPaths);
  }

  @override
  String toString() {
    return 'PresetTileResource(tile: $tile, behaviourPaths: $behaviourPaths, directionalPaths: $directionalPaths)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PresetTileResource &&
            (identical(other.tile, tile) || other.tile == tile) &&
            const DeepCollectionEquality()
                .equals(other._behaviourPaths, _behaviourPaths) &&
            const DeepCollectionEquality()
                .equals(other._directionalPaths, _directionalPaths));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      tile,
      const DeepCollectionEquality().hash(_behaviourPaths),
      const DeepCollectionEquality().hash(_directionalPaths));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PresetTileResourceCopyWith<_$_PresetTileResource> get copyWith =>
      __$$_PresetTileResourceCopyWithImpl<_$_PresetTileResource>(
          this, _$identity);
}

abstract class _PresetTileResource extends PresetTileResource {
  const factory _PresetTileResource(
          {required final PresetTileModel tile,
          final Map<TileBehaviourType, AnimationEntryModel> behaviourPaths,
          final Map<String, AnimationEntryModel> directionalPaths}) =
      _$_PresetTileResource;
  const _PresetTileResource._() : super._();

  @override
  PresetTileModel get tile;
  @override
  Map<TileBehaviourType, AnimationEntryModel> get behaviourPaths;
  @override
  Map<String, AnimationEntryModel> get directionalPaths;
  @override
  @JsonKey(ignore: true)
  _$$_PresetTileResourceCopyWith<_$_PresetTileResource> get copyWith =>
      throw _privateConstructorUsedError;
}
