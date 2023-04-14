// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnimationEntryModel {
  double get frameIndex => throw _privateConstructorUsedError;
  int get framesLength => throw _privateConstructorUsedError;
  List<String> get framesPaths => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnimationEntryModelCopyWith<AnimationEntryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimationEntryModelCopyWith<$Res> {
  factory $AnimationEntryModelCopyWith(
          AnimationEntryModel value, $Res Function(AnimationEntryModel) then) =
      _$AnimationEntryModelCopyWithImpl<$Res, AnimationEntryModel>;
  @useResult
  $Res call({double frameIndex, int framesLength, List<String> framesPaths});
}

/// @nodoc
class _$AnimationEntryModelCopyWithImpl<$Res, $Val extends AnimationEntryModel>
    implements $AnimationEntryModelCopyWith<$Res> {
  _$AnimationEntryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frameIndex = null,
    Object? framesLength = null,
    Object? framesPaths = null,
  }) {
    return _then(_value.copyWith(
      frameIndex: null == frameIndex
          ? _value.frameIndex
          : frameIndex // ignore: cast_nullable_to_non_nullable
              as double,
      framesLength: null == framesLength
          ? _value.framesLength
          : framesLength // ignore: cast_nullable_to_non_nullable
              as int,
      framesPaths: null == framesPaths
          ? _value.framesPaths
          : framesPaths // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnimationEntryModelCopyWith<$Res>
    implements $AnimationEntryModelCopyWith<$Res> {
  factory _$$_AnimationEntryModelCopyWith(_$_AnimationEntryModel value,
          $Res Function(_$_AnimationEntryModel) then) =
      __$$_AnimationEntryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double frameIndex, int framesLength, List<String> framesPaths});
}

/// @nodoc
class __$$_AnimationEntryModelCopyWithImpl<$Res>
    extends _$AnimationEntryModelCopyWithImpl<$Res, _$_AnimationEntryModel>
    implements _$$_AnimationEntryModelCopyWith<$Res> {
  __$$_AnimationEntryModelCopyWithImpl(_$_AnimationEntryModel _value,
      $Res Function(_$_AnimationEntryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frameIndex = null,
    Object? framesLength = null,
    Object? framesPaths = null,
  }) {
    return _then(_$_AnimationEntryModel(
      frameIndex: null == frameIndex
          ? _value.frameIndex
          : frameIndex // ignore: cast_nullable_to_non_nullable
              as double,
      framesLength: null == framesLength
          ? _value.framesLength
          : framesLength // ignore: cast_nullable_to_non_nullable
              as int,
      framesPaths: null == framesPaths
          ? _value._framesPaths
          : framesPaths // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_AnimationEntryModel extends _AnimationEntryModel {
  const _$_AnimationEntryModel(
      {this.frameIndex = 0,
      this.framesLength = 0,
      final List<String> framesPaths = const []})
      : _framesPaths = framesPaths,
        super._();

  @override
  @JsonKey()
  final double frameIndex;
  @override
  @JsonKey()
  final int framesLength;
  final List<String> _framesPaths;
  @override
  @JsonKey()
  List<String> get framesPaths {
    if (_framesPaths is EqualUnmodifiableListView) return _framesPaths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_framesPaths);
  }

  @override
  String toString() {
    return 'AnimationEntryModel(frameIndex: $frameIndex, framesLength: $framesLength, framesPaths: $framesPaths)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnimationEntryModel &&
            (identical(other.frameIndex, frameIndex) ||
                other.frameIndex == frameIndex) &&
            (identical(other.framesLength, framesLength) ||
                other.framesLength == framesLength) &&
            const DeepCollectionEquality()
                .equals(other._framesPaths, _framesPaths));
  }

  @override
  int get hashCode => Object.hash(runtimeType, frameIndex, framesLength,
      const DeepCollectionEquality().hash(_framesPaths));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnimationEntryModelCopyWith<_$_AnimationEntryModel> get copyWith =>
      __$$_AnimationEntryModelCopyWithImpl<_$_AnimationEntryModel>(
          this, _$identity);
}

abstract class _AnimationEntryModel extends AnimationEntryModel {
  const factory _AnimationEntryModel(
      {final double frameIndex,
      final int framesLength,
      final List<String> framesPaths}) = _$_AnimationEntryModel;
  const _AnimationEntryModel._() : super._();

  @override
  double get frameIndex;
  @override
  int get framesLength;
  @override
  List<String> get framesPaths;
  @override
  @JsonKey(ignore: true)
  _$$_AnimationEntryModelCopyWith<_$_AnimationEntryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CanvasTileModel {
  String get tileId => throw _privateConstructorUsedError;

  /// Terrain
  bool get hasTerrain => throw _privateConstructorUsedError;
  List<String> get terrainNeighbours => throw _privateConstructorUsedError;

  /// Water
  bool get hasWater => throw _privateConstructorUsedError;
  bool get isWaterTop => throw _privateConstructorUsedError;

  /// Coin
  String get coin => throw _privateConstructorUsedError;

  /// Enemy
  String get enemy => throw _privateConstructorUsedError;
  List<dynamic> get objects => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String tileId,
            bool hasTerrain,
            List<String> terrainNeighbours,
            bool hasWater,
            bool isWaterTop,
            String coin,
            String enemy,
            List<dynamic> objects)
        secure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String tileId,
            bool hasTerrain,
            List<String> terrainNeighbours,
            bool hasWater,
            bool isWaterTop,
            String coin,
            String enemy,
            List<dynamic> objects)?
        secure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String tileId,
            bool hasTerrain,
            List<String> terrainNeighbours,
            bool hasWater,
            bool isWaterTop,
            String coin,
            String enemy,
            List<dynamic> objects)?
        secure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SecureCanvasTileModel value) secure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SecureCanvasTileModel value)? secure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SecureCanvasTileModel value)? secure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CanvasTileModelCopyWith<CanvasTileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CanvasTileModelCopyWith<$Res> {
  factory $CanvasTileModelCopyWith(
          CanvasTileModel value, $Res Function(CanvasTileModel) then) =
      _$CanvasTileModelCopyWithImpl<$Res, CanvasTileModel>;
  @useResult
  $Res call(
      {String tileId,
      bool hasTerrain,
      List<String> terrainNeighbours,
      bool hasWater,
      bool isWaterTop,
      String coin,
      String enemy,
      List<dynamic> objects});
}

/// @nodoc
class _$CanvasTileModelCopyWithImpl<$Res, $Val extends CanvasTileModel>
    implements $CanvasTileModelCopyWith<$Res> {
  _$CanvasTileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tileId = null,
    Object? hasTerrain = null,
    Object? terrainNeighbours = null,
    Object? hasWater = null,
    Object? isWaterTop = null,
    Object? coin = null,
    Object? enemy = null,
    Object? objects = null,
  }) {
    return _then(_value.copyWith(
      tileId: null == tileId
          ? _value.tileId
          : tileId // ignore: cast_nullable_to_non_nullable
              as String,
      hasTerrain: null == hasTerrain
          ? _value.hasTerrain
          : hasTerrain // ignore: cast_nullable_to_non_nullable
              as bool,
      terrainNeighbours: null == terrainNeighbours
          ? _value.terrainNeighbours
          : terrainNeighbours // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hasWater: null == hasWater
          ? _value.hasWater
          : hasWater // ignore: cast_nullable_to_non_nullable
              as bool,
      isWaterTop: null == isWaterTop
          ? _value.isWaterTop
          : isWaterTop // ignore: cast_nullable_to_non_nullable
              as bool,
      coin: null == coin
          ? _value.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as String,
      enemy: null == enemy
          ? _value.enemy
          : enemy // ignore: cast_nullable_to_non_nullable
              as String,
      objects: null == objects
          ? _value.objects
          : objects // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SecureCanvasTileModelCopyWith<$Res>
    implements $CanvasTileModelCopyWith<$Res> {
  factory _$$_SecureCanvasTileModelCopyWith(_$_SecureCanvasTileModel value,
          $Res Function(_$_SecureCanvasTileModel) then) =
      __$$_SecureCanvasTileModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String tileId,
      bool hasTerrain,
      List<String> terrainNeighbours,
      bool hasWater,
      bool isWaterTop,
      String coin,
      String enemy,
      List<dynamic> objects});
}

/// @nodoc
class __$$_SecureCanvasTileModelCopyWithImpl<$Res>
    extends _$CanvasTileModelCopyWithImpl<$Res, _$_SecureCanvasTileModel>
    implements _$$_SecureCanvasTileModelCopyWith<$Res> {
  __$$_SecureCanvasTileModelCopyWithImpl(_$_SecureCanvasTileModel _value,
      $Res Function(_$_SecureCanvasTileModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tileId = null,
    Object? hasTerrain = null,
    Object? terrainNeighbours = null,
    Object? hasWater = null,
    Object? isWaterTop = null,
    Object? coin = null,
    Object? enemy = null,
    Object? objects = null,
  }) {
    return _then(_$_SecureCanvasTileModel(
      tileId: null == tileId
          ? _value.tileId
          : tileId // ignore: cast_nullable_to_non_nullable
              as String,
      hasTerrain: null == hasTerrain
          ? _value.hasTerrain
          : hasTerrain // ignore: cast_nullable_to_non_nullable
              as bool,
      terrainNeighbours: null == terrainNeighbours
          ? _value._terrainNeighbours
          : terrainNeighbours // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hasWater: null == hasWater
          ? _value.hasWater
          : hasWater // ignore: cast_nullable_to_non_nullable
              as bool,
      isWaterTop: null == isWaterTop
          ? _value.isWaterTop
          : isWaterTop // ignore: cast_nullable_to_non_nullable
              as bool,
      coin: null == coin
          ? _value.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as String,
      enemy: null == enemy
          ? _value.enemy
          : enemy // ignore: cast_nullable_to_non_nullable
              as String,
      objects: null == objects
          ? _value._objects
          : objects // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$_SecureCanvasTileModel extends _SecureCanvasTileModel {
  const _$_SecureCanvasTileModel(
      {required this.tileId,
      this.hasTerrain = false,
      final List<String> terrainNeighbours = const [],
      this.hasWater = false,
      this.isWaterTop = false,
      this.coin = '',
      this.enemy = '',
      final List<dynamic> objects = const []})
      : _terrainNeighbours = terrainNeighbours,
        _objects = objects,
        super._();

  @override
  final String tileId;

  /// Terrain
  @override
  @JsonKey()
  final bool hasTerrain;
  final List<String> _terrainNeighbours;
  @override
  @JsonKey()
  List<String> get terrainNeighbours {
    if (_terrainNeighbours is EqualUnmodifiableListView)
      return _terrainNeighbours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_terrainNeighbours);
  }

  /// Water
  @override
  @JsonKey()
  final bool hasWater;
  @override
  @JsonKey()
  final bool isWaterTop;

  /// Coin
  @override
  @JsonKey()
  final String coin;

  /// Enemy
  @override
  @JsonKey()
  final String enemy;
  final List<dynamic> _objects;
  @override
  @JsonKey()
  List<dynamic> get objects {
    if (_objects is EqualUnmodifiableListView) return _objects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_objects);
  }

  @override
  String toString() {
    return 'CanvasTileModel.secure(tileId: $tileId, hasTerrain: $hasTerrain, terrainNeighbours: $terrainNeighbours, hasWater: $hasWater, isWaterTop: $isWaterTop, coin: $coin, enemy: $enemy, objects: $objects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SecureCanvasTileModel &&
            (identical(other.tileId, tileId) || other.tileId == tileId) &&
            (identical(other.hasTerrain, hasTerrain) ||
                other.hasTerrain == hasTerrain) &&
            const DeepCollectionEquality()
                .equals(other._terrainNeighbours, _terrainNeighbours) &&
            (identical(other.hasWater, hasWater) ||
                other.hasWater == hasWater) &&
            (identical(other.isWaterTop, isWaterTop) ||
                other.isWaterTop == isWaterTop) &&
            (identical(other.coin, coin) || other.coin == coin) &&
            (identical(other.enemy, enemy) || other.enemy == enemy) &&
            const DeepCollectionEquality().equals(other._objects, _objects));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      tileId,
      hasTerrain,
      const DeepCollectionEquality().hash(_terrainNeighbours),
      hasWater,
      isWaterTop,
      coin,
      enemy,
      const DeepCollectionEquality().hash(_objects));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SecureCanvasTileModelCopyWith<_$_SecureCanvasTileModel> get copyWith =>
      __$$_SecureCanvasTileModelCopyWithImpl<_$_SecureCanvasTileModel>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String tileId,
            bool hasTerrain,
            List<String> terrainNeighbours,
            bool hasWater,
            bool isWaterTop,
            String coin,
            String enemy,
            List<dynamic> objects)
        secure,
  }) {
    return secure(tileId, hasTerrain, terrainNeighbours, hasWater, isWaterTop,
        coin, enemy, objects);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String tileId,
            bool hasTerrain,
            List<String> terrainNeighbours,
            bool hasWater,
            bool isWaterTop,
            String coin,
            String enemy,
            List<dynamic> objects)?
        secure,
  }) {
    return secure?.call(tileId, hasTerrain, terrainNeighbours, hasWater,
        isWaterTop, coin, enemy, objects);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String tileId,
            bool hasTerrain,
            List<String> terrainNeighbours,
            bool hasWater,
            bool isWaterTop,
            String coin,
            String enemy,
            List<dynamic> objects)?
        secure,
    required TResult orElse(),
  }) {
    if (secure != null) {
      return secure(tileId, hasTerrain, terrainNeighbours, hasWater, isWaterTop,
          coin, enemy, objects);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SecureCanvasTileModel value) secure,
  }) {
    return secure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SecureCanvasTileModel value)? secure,
  }) {
    return secure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SecureCanvasTileModel value)? secure,
    required TResult orElse(),
  }) {
    if (secure != null) {
      return secure(this);
    }
    return orElse();
  }
}

abstract class _SecureCanvasTileModel extends CanvasTileModel {
  const factory _SecureCanvasTileModel(
      {required final String tileId,
      final bool hasTerrain,
      final List<String> terrainNeighbours,
      final bool hasWater,
      final bool isWaterTop,
      final String coin,
      final String enemy,
      final List<dynamic> objects}) = _$_SecureCanvasTileModel;
  const _SecureCanvasTileModel._() : super._();

  @override
  String get tileId;
  @override

  /// Terrain
  bool get hasTerrain;
  @override
  List<String> get terrainNeighbours;
  @override

  /// Water
  bool get hasWater;
  @override
  bool get isWaterTop;
  @override

  /// Coin
  String get coin;
  @override

  /// Enemy
  String get enemy;
  @override
  List<dynamic> get objects;
  @override
  @JsonKey(ignore: true)
  _$$_SecureCanvasTileModelCopyWith<_$_SecureCanvasTileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameRendererConfig {
  int get animationSpeed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameRendererConfigCopyWith<GameRendererConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameRendererConfigCopyWith<$Res> {
  factory $GameRendererConfigCopyWith(
          GameRendererConfig value, $Res Function(GameRendererConfig) then) =
      _$GameRendererConfigCopyWithImpl<$Res, GameRendererConfig>;
  @useResult
  $Res call({int animationSpeed});
}

/// @nodoc
class _$GameRendererConfigCopyWithImpl<$Res, $Val extends GameRendererConfig>
    implements $GameRendererConfigCopyWith<$Res> {
  _$GameRendererConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? animationSpeed = null,
  }) {
    return _then(_value.copyWith(
      animationSpeed: null == animationSpeed
          ? _value.animationSpeed
          : animationSpeed // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GameRendererConfigCopyWith<$Res>
    implements $GameRendererConfigCopyWith<$Res> {
  factory _$$_GameRendererConfigCopyWith(_$_GameRendererConfig value,
          $Res Function(_$_GameRendererConfig) then) =
      __$$_GameRendererConfigCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int animationSpeed});
}

/// @nodoc
class __$$_GameRendererConfigCopyWithImpl<$Res>
    extends _$GameRendererConfigCopyWithImpl<$Res, _$_GameRendererConfig>
    implements _$$_GameRendererConfigCopyWith<$Res> {
  __$$_GameRendererConfigCopyWithImpl(
      _$_GameRendererConfig _value, $Res Function(_$_GameRendererConfig) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? animationSpeed = null,
  }) {
    return _then(_$_GameRendererConfig(
      animationSpeed: null == animationSpeed
          ? _value.animationSpeed
          : animationSpeed // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GameRendererConfig implements _GameRendererConfig {
  const _$_GameRendererConfig({this.animationSpeed = 8});

  @override
  @JsonKey()
  final int animationSpeed;

  @override
  String toString() {
    return 'GameRendererConfig(animationSpeed: $animationSpeed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameRendererConfig &&
            (identical(other.animationSpeed, animationSpeed) ||
                other.animationSpeed == animationSpeed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, animationSpeed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameRendererConfigCopyWith<_$_GameRendererConfig> get copyWith =>
      __$$_GameRendererConfigCopyWithImpl<_$_GameRendererConfig>(
          this, _$identity);
}

abstract class _GameRendererConfig implements GameRendererConfig {
  const factory _GameRendererConfig({final int animationSpeed}) =
      _$_GameRendererConfig;

  @override
  int get animationSpeed;
  @override
  @JsonKey(ignore: true)
  _$$_GameRendererConfigCopyWith<_$_GameRendererConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

CellDataModel _$CellDataModelFromJson(Map<String, dynamic> json) {
  return _CellDataModel.fromJson(json);
}

/// @nodoc
mixin _$CellDataModel {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CellDataModelCopyWith<$Res> {
  factory $CellDataModelCopyWith(
          CellDataModel value, $Res Function(CellDataModel) then) =
      _$CellDataModelCopyWithImpl<$Res, CellDataModel>;
}

/// @nodoc
class _$CellDataModelCopyWithImpl<$Res, $Val extends CellDataModel>
    implements $CellDataModelCopyWith<$Res> {
  _$CellDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CellDataModelCopyWith<$Res> {
  factory _$$_CellDataModelCopyWith(
          _$_CellDataModel value, $Res Function(_$_CellDataModel) then) =
      __$$_CellDataModelCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CellDataModelCopyWithImpl<$Res>
    extends _$CellDataModelCopyWithImpl<$Res, _$_CellDataModel>
    implements _$$_CellDataModelCopyWith<$Res> {
  __$$_CellDataModelCopyWithImpl(
      _$_CellDataModel _value, $Res Function(_$_CellDataModel) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_CellDataModel implements _CellDataModel {
  const _$_CellDataModel();

  factory _$_CellDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_CellDataModelFromJson(json);

  @override
  String toString() {
    return 'CellDataModel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CellDataModel);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_CellDataModelToJson(
      this,
    );
  }
}

abstract class _CellDataModel implements CellDataModel {
  const factory _CellDataModel() = _$_CellDataModel;

  factory _CellDataModel.fromJson(Map<String, dynamic> json) =
      _$_CellDataModel.fromJson;
}

CellPointModel _$CellPointModelFromJson(Map<String, dynamic> json) {
  return _CellPointModel.fromJson(json);
}

/// @nodoc
mixin _$CellPointModel {
  int get x => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CellPointModelCopyWith<CellPointModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CellPointModelCopyWith<$Res> {
  factory $CellPointModelCopyWith(
          CellPointModel value, $Res Function(CellPointModel) then) =
      _$CellPointModelCopyWithImpl<$Res, CellPointModel>;
  @useResult
  $Res call({int x, int y});
}

/// @nodoc
class _$CellPointModelCopyWithImpl<$Res, $Val extends CellPointModel>
    implements $CellPointModelCopyWith<$Res> {
  _$CellPointModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_value.copyWith(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CellPointModelCopyWith<$Res>
    implements $CellPointModelCopyWith<$Res> {
  factory _$$_CellPointModelCopyWith(
          _$_CellPointModel value, $Res Function(_$_CellPointModel) then) =
      __$$_CellPointModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int x, int y});
}

/// @nodoc
class __$$_CellPointModelCopyWithImpl<$Res>
    extends _$CellPointModelCopyWithImpl<$Res, _$_CellPointModel>
    implements _$$_CellPointModelCopyWith<$Res> {
  __$$_CellPointModelCopyWithImpl(
      _$_CellPointModel _value, $Res Function(_$_CellPointModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$_CellPointModel(
      null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CellPointModel extends _CellPointModel {
  const _$_CellPointModel(this.x, this.y) : super._();

  factory _$_CellPointModel.fromJson(Map<String, dynamic> json) =>
      _$$_CellPointModelFromJson(json);

  @override
  final int x;
  @override
  final int y;

  @override
  String toString() {
    return 'CellPointModel(x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CellPointModel &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, x, y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CellPointModelCopyWith<_$_CellPointModel> get copyWith =>
      __$$_CellPointModelCopyWithImpl<_$_CellPointModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CellPointModelToJson(
      this,
    );
  }
}

abstract class _CellPointModel extends CellPointModel {
  const factory _CellPointModel(final int x, final int y) = _$_CellPointModel;
  const _CellPointModel._() : super._();

  factory _CellPointModel.fromJson(Map<String, dynamic> json) =
      _$_CellPointModel.fromJson;

  @override
  int get x;
  @override
  int get y;
  @override
  @JsonKey(ignore: true)
  _$$_CellPointModelCopyWith<_$_CellPointModel> get copyWith =>
      throw _privateConstructorUsedError;
}

TileDataModel _$TileDataModelFromJson(Map<String, dynamic> json) {
  return _TileDataModel.fromJson(json);
}

/// @nodoc
mixin _$TileDataModel {
  TileStyle get style => throw _privateConstructorUsedError;
  TileStyle? get menu => throw _privateConstructorUsedError;
  @JsonKey(name: 'menu_surf')
  String get menuSurface => throw _privateConstructorUsedError;
  String get preview => throw _privateConstructorUsedError;
  String get graphics => throw _privateConstructorUsedError;
  GameObjectType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TileDataModelCopyWith<TileDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TileDataModelCopyWith<$Res> {
  factory $TileDataModelCopyWith(
          TileDataModel value, $Res Function(TileDataModel) then) =
      _$TileDataModelCopyWithImpl<$Res, TileDataModel>;
  @useResult
  $Res call(
      {TileStyle style,
      TileStyle? menu,
      @JsonKey(name: 'menu_surf') String menuSurface,
      String preview,
      String graphics,
      GameObjectType type});
}

/// @nodoc
class _$TileDataModelCopyWithImpl<$Res, $Val extends TileDataModel>
    implements $TileDataModelCopyWith<$Res> {
  _$TileDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? style = null,
    Object? menu = freezed,
    Object? menuSurface = null,
    Object? preview = null,
    Object? graphics = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as TileStyle,
      menu: freezed == menu
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as TileStyle?,
      menuSurface: null == menuSurface
          ? _value.menuSurface
          : menuSurface // ignore: cast_nullable_to_non_nullable
              as String,
      preview: null == preview
          ? _value.preview
          : preview // ignore: cast_nullable_to_non_nullable
              as String,
      graphics: null == graphics
          ? _value.graphics
          : graphics // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GameObjectType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TileDataModelCopyWith<$Res>
    implements $TileDataModelCopyWith<$Res> {
  factory _$$_TileDataModelCopyWith(
          _$_TileDataModel value, $Res Function(_$_TileDataModel) then) =
      __$$_TileDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TileStyle style,
      TileStyle? menu,
      @JsonKey(name: 'menu_surf') String menuSurface,
      String preview,
      String graphics,
      GameObjectType type});
}

/// @nodoc
class __$$_TileDataModelCopyWithImpl<$Res>
    extends _$TileDataModelCopyWithImpl<$Res, _$_TileDataModel>
    implements _$$_TileDataModelCopyWith<$Res> {
  __$$_TileDataModelCopyWithImpl(
      _$_TileDataModel _value, $Res Function(_$_TileDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? style = null,
    Object? menu = freezed,
    Object? menuSurface = null,
    Object? preview = null,
    Object? graphics = null,
    Object? type = null,
  }) {
    return _then(_$_TileDataModel(
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as TileStyle,
      menu: freezed == menu
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as TileStyle?,
      menuSurface: null == menuSurface
          ? _value.menuSurface
          : menuSurface // ignore: cast_nullable_to_non_nullable
              as String,
      preview: null == preview
          ? _value.preview
          : preview // ignore: cast_nullable_to_non_nullable
              as String,
      graphics: null == graphics
          ? _value.graphics
          : graphics // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GameObjectType,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_TileDataModel implements _TileDataModel {
  const _$_TileDataModel(
      {required this.style,
      this.menu,
      @JsonKey(name: 'menu_surf') this.menuSurface = '',
      this.preview = '',
      this.graphics = '',
      this.type = GameObjectType.tile});

  factory _$_TileDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_TileDataModelFromJson(json);

  @override
  final TileStyle style;
  @override
  final TileStyle? menu;
  @override
  @JsonKey(name: 'menu_surf')
  final String menuSurface;
  @override
  @JsonKey()
  final String preview;
  @override
  @JsonKey()
  final String graphics;
  @override
  @JsonKey()
  final GameObjectType type;

  @override
  String toString() {
    return 'TileDataModel(style: $style, menu: $menu, menuSurface: $menuSurface, preview: $preview, graphics: $graphics, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TileDataModel &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.menu, menu) || other.menu == menu) &&
            (identical(other.menuSurface, menuSurface) ||
                other.menuSurface == menuSurface) &&
            (identical(other.preview, preview) || other.preview == preview) &&
            (identical(other.graphics, graphics) ||
                other.graphics == graphics) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, style, menu, menuSurface, preview, graphics, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TileDataModelCopyWith<_$_TileDataModel> get copyWith =>
      __$$_TileDataModelCopyWithImpl<_$_TileDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TileDataModelToJson(
      this,
    );
  }
}

abstract class _TileDataModel implements TileDataModel {
  const factory _TileDataModel(
      {required final TileStyle style,
      final TileStyle? menu,
      @JsonKey(name: 'menu_surf') final String menuSurface,
      final String preview,
      final String graphics,
      final GameObjectType type}) = _$_TileDataModel;

  factory _TileDataModel.fromJson(Map<String, dynamic> json) =
      _$_TileDataModel.fromJson;

  @override
  TileStyle get style;
  @override
  TileStyle? get menu;
  @override
  @JsonKey(name: 'menu_surf')
  String get menuSurface;
  @override
  String get preview;
  @override
  String get graphics;
  @override
  GameObjectType get type;
  @override
  @JsonKey(ignore: true)
  _$$_TileDataModelCopyWith<_$_TileDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TileMenuItem {
  int get index => throw _privateConstructorUsedError;
  TileDataModel get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TileMenuItemCopyWith<TileMenuItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TileMenuItemCopyWith<$Res> {
  factory $TileMenuItemCopyWith(
          TileMenuItem value, $Res Function(TileMenuItem) then) =
      _$TileMenuItemCopyWithImpl<$Res, TileMenuItem>;
  @useResult
  $Res call({int index, TileDataModel data});

  $TileDataModelCopyWith<$Res> get data;
}

/// @nodoc
class _$TileMenuItemCopyWithImpl<$Res, $Val extends TileMenuItem>
    implements $TileMenuItemCopyWith<$Res> {
  _$TileMenuItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TileDataModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TileDataModelCopyWith<$Res> get data {
    return $TileDataModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TileMenuItemCopyWith<$Res>
    implements $TileMenuItemCopyWith<$Res> {
  factory _$$_TileMenuItemCopyWith(
          _$_TileMenuItem value, $Res Function(_$_TileMenuItem) then) =
      __$$_TileMenuItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, TileDataModel data});

  @override
  $TileDataModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$_TileMenuItemCopyWithImpl<$Res>
    extends _$TileMenuItemCopyWithImpl<$Res, _$_TileMenuItem>
    implements _$$_TileMenuItemCopyWith<$Res> {
  __$$_TileMenuItemCopyWithImpl(
      _$_TileMenuItem _value, $Res Function(_$_TileMenuItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? data = null,
  }) {
    return _then(_$_TileMenuItem(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TileDataModel,
    ));
  }
}

/// @nodoc

class _$_TileMenuItem implements _TileMenuItem {
  const _$_TileMenuItem({required this.index, required this.data});

  @override
  final int index;
  @override
  final TileDataModel data;

  @override
  String toString() {
    return 'TileMenuItem(index: $index, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TileMenuItem &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TileMenuItemCopyWith<_$_TileMenuItem> get copyWith =>
      __$$_TileMenuItemCopyWithImpl<_$_TileMenuItem>(this, _$identity);
}

abstract class _TileMenuItem implements TileMenuItem {
  const factory _TileMenuItem(
      {required final int index,
      required final TileDataModel data}) = _$_TileMenuItem;

  @override
  int get index;
  @override
  TileDataModel get data;
  @override
  @JsonKey(ignore: true)
  _$$_TileMenuItemCopyWith<_$_TileMenuItem> get copyWith =>
      throw _privateConstructorUsedError;
}

GameObjectId _$GameObjectIdFromJson(Map<String, dynamic> json) {
  return _GameObjectId.fromJson(json);
}

/// @nodoc
mixin _$GameObjectId {
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameObjectIdCopyWith<GameObjectId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameObjectIdCopyWith<$Res> {
  factory $GameObjectIdCopyWith(
          GameObjectId value, $Res Function(GameObjectId) then) =
      _$GameObjectIdCopyWithImpl<$Res, GameObjectId>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$GameObjectIdCopyWithImpl<$Res, $Val extends GameObjectId>
    implements $GameObjectIdCopyWith<$Res> {
  _$GameObjectIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GameObjectIdCopyWith<$Res>
    implements $GameObjectIdCopyWith<$Res> {
  factory _$$_GameObjectIdCopyWith(
          _$_GameObjectId value, $Res Function(_$_GameObjectId) then) =
      __$$_GameObjectIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_GameObjectIdCopyWithImpl<$Res>
    extends _$GameObjectIdCopyWithImpl<$Res, _$_GameObjectId>
    implements _$$_GameObjectIdCopyWith<$Res> {
  __$$_GameObjectIdCopyWithImpl(
      _$_GameObjectId _value, $Res Function(_$_GameObjectId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_GameObjectId(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_GameObjectId implements _GameObjectId {
  const _$_GameObjectId({required this.value});

  factory _$_GameObjectId.fromJson(Map<String, dynamic> json) =>
      _$$_GameObjectIdFromJson(json);

  @override
  final String value;

  @override
  String toString() {
    return 'GameObjectId(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameObjectId &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameObjectIdCopyWith<_$_GameObjectId> get copyWith =>
      __$$_GameObjectIdCopyWithImpl<_$_GameObjectId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameObjectIdToJson(
      this,
    );
  }
}

abstract class _GameObjectId implements GameObjectId {
  const factory _GameObjectId({required final String value}) = _$_GameObjectId;

  factory _GameObjectId.fromJson(Map<String, dynamic> json) =
      _$_GameObjectId.fromJson;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_GameObjectIdCopyWith<_$_GameObjectId> get copyWith =>
      throw _privateConstructorUsedError;
}

GameObjectModel _$GameObjectModelFromJson(Map<String, dynamic> json) {
  return ControlledGameObjectModel.fromJson(json);
}

/// @nodoc
mixin _$GameObjectModel {
  GameObjectId get id =>
      throw _privateConstructorUsedError; // TODO(arenukvern): add player settings
// TODO(arenukvern): add canvas object
  String get canvasObjectProperties => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GameObjectId id, String canvasObjectProperties)
        controlled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GameObjectId id, String canvasObjectProperties)?
        controlled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameObjectId id, String canvasObjectProperties)?
        controlled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ControlledGameObjectModel value) controlled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ControlledGameObjectModel value)? controlled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ControlledGameObjectModel value)? controlled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameObjectModelCopyWith<GameObjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameObjectModelCopyWith<$Res> {
  factory $GameObjectModelCopyWith(
          GameObjectModel value, $Res Function(GameObjectModel) then) =
      _$GameObjectModelCopyWithImpl<$Res, GameObjectModel>;
  @useResult
  $Res call({GameObjectId id, String canvasObjectProperties});

  $GameObjectIdCopyWith<$Res> get id;
}

/// @nodoc
class _$GameObjectModelCopyWithImpl<$Res, $Val extends GameObjectModel>
    implements $GameObjectModelCopyWith<$Res> {
  _$GameObjectModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? canvasObjectProperties = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as GameObjectId,
      canvasObjectProperties: null == canvasObjectProperties
          ? _value.canvasObjectProperties
          : canvasObjectProperties // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GameObjectIdCopyWith<$Res> get id {
    return $GameObjectIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ControlledGameObjectModelCopyWith<$Res>
    implements $GameObjectModelCopyWith<$Res> {
  factory _$$ControlledGameObjectModelCopyWith(
          _$ControlledGameObjectModel value,
          $Res Function(_$ControlledGameObjectModel) then) =
      __$$ControlledGameObjectModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GameObjectId id, String canvasObjectProperties});

  @override
  $GameObjectIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$ControlledGameObjectModelCopyWithImpl<$Res>
    extends _$GameObjectModelCopyWithImpl<$Res, _$ControlledGameObjectModel>
    implements _$$ControlledGameObjectModelCopyWith<$Res> {
  __$$ControlledGameObjectModelCopyWithImpl(_$ControlledGameObjectModel _value,
      $Res Function(_$ControlledGameObjectModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? canvasObjectProperties = null,
  }) {
    return _then(_$ControlledGameObjectModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as GameObjectId,
      canvasObjectProperties: null == canvasObjectProperties
          ? _value.canvasObjectProperties
          : canvasObjectProperties // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ControlledGameObjectModel implements ControlledGameObjectModel {
  const _$ControlledGameObjectModel(
      {required this.id, required this.canvasObjectProperties});

  factory _$ControlledGameObjectModel.fromJson(Map<String, dynamic> json) =>
      _$$ControlledGameObjectModelFromJson(json);

  @override
  final GameObjectId id;
// TODO(arenukvern): add player settings
// TODO(arenukvern): add canvas object
  @override
  final String canvasObjectProperties;

  @override
  String toString() {
    return 'GameObjectModel.controlled(id: $id, canvasObjectProperties: $canvasObjectProperties)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ControlledGameObjectModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.canvasObjectProperties, canvasObjectProperties) ||
                other.canvasObjectProperties == canvasObjectProperties));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, canvasObjectProperties);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ControlledGameObjectModelCopyWith<_$ControlledGameObjectModel>
      get copyWith => __$$ControlledGameObjectModelCopyWithImpl<
          _$ControlledGameObjectModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GameObjectId id, String canvasObjectProperties)
        controlled,
  }) {
    return controlled(id, canvasObjectProperties);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GameObjectId id, String canvasObjectProperties)?
        controlled,
  }) {
    return controlled?.call(id, canvasObjectProperties);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameObjectId id, String canvasObjectProperties)?
        controlled,
    required TResult orElse(),
  }) {
    if (controlled != null) {
      return controlled(id, canvasObjectProperties);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ControlledGameObjectModel value) controlled,
  }) {
    return controlled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ControlledGameObjectModel value)? controlled,
  }) {
    return controlled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ControlledGameObjectModel value)? controlled,
    required TResult orElse(),
  }) {
    if (controlled != null) {
      return controlled(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ControlledGameObjectModelToJson(
      this,
    );
  }
}

abstract class ControlledGameObjectModel implements GameObjectModel {
  const factory ControlledGameObjectModel(
          {required final GameObjectId id,
          required final String canvasObjectProperties}) =
      _$ControlledGameObjectModel;

  factory ControlledGameObjectModel.fromJson(Map<String, dynamic> json) =
      _$ControlledGameObjectModel.fromJson;

  @override
  GameObjectId get id;
  @override // TODO(arenukvern): add player settings
// TODO(arenukvern): add canvas object
  String get canvasObjectProperties;
  @override
  @JsonKey(ignore: true)
  _$$ControlledGameObjectModelCopyWith<_$ControlledGameObjectModel>
      get copyWith => throw _privateConstructorUsedError;
}
