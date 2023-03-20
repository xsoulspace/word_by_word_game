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
mixin _$CanvasTile {
  String get tileId => throw _privateConstructorUsedError;

  /// Terrain
  bool get hasTerrain => throw _privateConstructorUsedError;
  List<String> get terrainNeighbours => throw _privateConstructorUsedError;

  /// Water
  bool get hasWater => throw _privateConstructorUsedError;
  bool get isTopWater => throw _privateConstructorUsedError;

  /// Coin
  String get coin => throw _privateConstructorUsedError;

  /// Enemy
  String get enemy => throw _privateConstructorUsedError;
  List<dynamic> get objects => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CanvasTileCopyWith<CanvasTile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CanvasTileCopyWith<$Res> {
  factory $CanvasTileCopyWith(
          CanvasTile value, $Res Function(CanvasTile) then) =
      _$CanvasTileCopyWithImpl<$Res, CanvasTile>;
  @useResult
  $Res call(
      {String tileId,
      bool hasTerrain,
      List<String> terrainNeighbours,
      bool hasWater,
      bool isTopWater,
      String coin,
      String enemy,
      List<dynamic> objects});
}

/// @nodoc
class _$CanvasTileCopyWithImpl<$Res, $Val extends CanvasTile>
    implements $CanvasTileCopyWith<$Res> {
  _$CanvasTileCopyWithImpl(this._value, this._then);

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
    Object? isTopWater = null,
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
      isTopWater: null == isTopWater
          ? _value.isTopWater
          : isTopWater // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_SecureCanvasTileCopyWith<$Res>
    implements $CanvasTileCopyWith<$Res> {
  factory _$$_SecureCanvasTileCopyWith(
          _$_SecureCanvasTile value, $Res Function(_$_SecureCanvasTile) then) =
      __$$_SecureCanvasTileCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String tileId,
      bool hasTerrain,
      List<String> terrainNeighbours,
      bool hasWater,
      bool isTopWater,
      String coin,
      String enemy,
      List<dynamic> objects});
}

/// @nodoc
class __$$_SecureCanvasTileCopyWithImpl<$Res>
    extends _$CanvasTileCopyWithImpl<$Res, _$_SecureCanvasTile>
    implements _$$_SecureCanvasTileCopyWith<$Res> {
  __$$_SecureCanvasTileCopyWithImpl(
      _$_SecureCanvasTile _value, $Res Function(_$_SecureCanvasTile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tileId = null,
    Object? hasTerrain = null,
    Object? terrainNeighbours = null,
    Object? hasWater = null,
    Object? isTopWater = null,
    Object? coin = null,
    Object? enemy = null,
    Object? objects = null,
  }) {
    return _then(_$_SecureCanvasTile(
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
      isTopWater: null == isTopWater
          ? _value.isTopWater
          : isTopWater // ignore: cast_nullable_to_non_nullable
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

class _$_SecureCanvasTile implements _SecureCanvasTile {
  const _$_SecureCanvasTile(
      {required this.tileId,
      this.hasTerrain = false,
      final List<String> terrainNeighbours = const [],
      this.hasWater = false,
      this.isTopWater = false,
      this.coin = '',
      this.enemy = '',
      final List<dynamic> objects = const []})
      : _terrainNeighbours = terrainNeighbours,
        _objects = objects;

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
  final bool isTopWater;

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
    return 'CanvasTile._(tileId: $tileId, hasTerrain: $hasTerrain, terrainNeighbours: $terrainNeighbours, hasWater: $hasWater, isTopWater: $isTopWater, coin: $coin, enemy: $enemy, objects: $objects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SecureCanvasTile &&
            (identical(other.tileId, tileId) || other.tileId == tileId) &&
            (identical(other.hasTerrain, hasTerrain) ||
                other.hasTerrain == hasTerrain) &&
            const DeepCollectionEquality()
                .equals(other._terrainNeighbours, _terrainNeighbours) &&
            (identical(other.hasWater, hasWater) ||
                other.hasWater == hasWater) &&
            (identical(other.isTopWater, isTopWater) ||
                other.isTopWater == isTopWater) &&
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
      isTopWater,
      coin,
      enemy,
      const DeepCollectionEquality().hash(_objects));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SecureCanvasTileCopyWith<_$_SecureCanvasTile> get copyWith =>
      __$$_SecureCanvasTileCopyWithImpl<_$_SecureCanvasTile>(this, _$identity);
}

abstract class _SecureCanvasTile implements CanvasTile {
  const factory _SecureCanvasTile(
      {required final String tileId,
      final bool hasTerrain,
      final List<String> terrainNeighbours,
      final bool hasWater,
      final bool isTopWater,
      final String coin,
      final String enemy,
      final List<dynamic> objects}) = _$_SecureCanvasTile;

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
  bool get isTopWater;
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
  _$$_SecureCanvasTileCopyWith<_$_SecureCanvasTile> get copyWith =>
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
  int get row => throw _privateConstructorUsedError;
  int get column => throw _privateConstructorUsedError;

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
  $Res call({int row, int column});
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
    Object? row = null,
    Object? column = null,
  }) {
    return _then(_value.copyWith(
      row: null == row
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as int,
      column: null == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
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
  $Res call({int row, int column});
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
    Object? row = null,
    Object? column = null,
  }) {
    return _then(_$_CellPointModel(
      null == row
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as int,
      null == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CellPointModel implements _CellPointModel {
  const _$_CellPointModel(this.row, this.column);

  factory _$_CellPointModel.fromJson(Map<String, dynamic> json) =>
      _$$_CellPointModelFromJson(json);

  @override
  final int row;
  @override
  final int column;

  @override
  String toString() {
    return 'CellPointModel(row: $row, column: $column)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CellPointModel &&
            (identical(other.row, row) || other.row == row) &&
            (identical(other.column, column) || other.column == column));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, row, column);

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

abstract class _CellPointModel implements CellPointModel {
  const factory _CellPointModel(final int row, final int column) =
      _$_CellPointModel;

  factory _CellPointModel.fromJson(Map<String, dynamic> json) =
      _$_CellPointModel.fromJson;

  @override
  int get row;
  @override
  int get column;
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
