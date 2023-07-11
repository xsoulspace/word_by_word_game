// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preset_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TileId {
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TileIdCopyWith<TileId> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TileIdCopyWith<$Res> {
  factory $TileIdCopyWith(TileId value, $Res Function(TileId) then) =
      _$TileIdCopyWithImpl<$Res, TileId>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$TileIdCopyWithImpl<$Res, $Val extends TileId>
    implements $TileIdCopyWith<$Res> {
  _$TileIdCopyWithImpl(this._value, this._then);

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
abstract class _$$_TileIdCopyWith<$Res> implements $TileIdCopyWith<$Res> {
  factory _$$_TileIdCopyWith(_$_TileId value, $Res Function(_$_TileId) then) =
      __$$_TileIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_TileIdCopyWithImpl<$Res>
    extends _$TileIdCopyWithImpl<$Res, _$_TileId>
    implements _$$_TileIdCopyWith<$Res> {
  __$$_TileIdCopyWithImpl(_$_TileId _value, $Res Function(_$_TileId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_TileId(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TileId extends _TileId {
  const _$_TileId({required this.value}) : super._();

  @override
  final String value;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TileIdCopyWith<_$_TileId> get copyWith =>
      __$$_TileIdCopyWithImpl<_$_TileId>(this, _$identity);
}

abstract class _TileId extends TileId {
  const factory _TileId({required final String value}) = _$_TileId;
  const _TileId._() : super._();

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_TileIdCopyWith<_$_TileId> get copyWith =>
      throw _privateConstructorUsedError;
}

PresetTileModel _$PresetTileModelFromJson(Map<String, dynamic> json) {
  return _PresetTileModel.fromJson(json);
}

/// @nodoc
mixin _$PresetTileModel {
  TileId get id => throw _privateConstructorUsedError;
  TileType get type => throw _privateConstructorUsedError;
  DataCategoryType get category => throw _privateConstructorUsedError;
  PresetTileGraphicsModel get graphics => throw _privateConstructorUsedError;
  PresetTilePropertiesModel get properties =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PresetTileModelCopyWith<PresetTileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresetTileModelCopyWith<$Res> {
  factory $PresetTileModelCopyWith(
          PresetTileModel value, $Res Function(PresetTileModel) then) =
      _$PresetTileModelCopyWithImpl<$Res, PresetTileModel>;
  @useResult
  $Res call(
      {TileId id,
      TileType type,
      DataCategoryType category,
      PresetTileGraphicsModel graphics,
      PresetTilePropertiesModel properties});

  $TileIdCopyWith<$Res> get id;
  $PresetTileGraphicsModelCopyWith<$Res> get graphics;
  $PresetTilePropertiesModelCopyWith<$Res> get properties;
}

/// @nodoc
class _$PresetTileModelCopyWithImpl<$Res, $Val extends PresetTileModel>
    implements $PresetTileModelCopyWith<$Res> {
  _$PresetTileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? category = null,
    Object? graphics = null,
    Object? properties = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as TileId,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TileType,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as DataCategoryType,
      graphics: null == graphics
          ? _value.graphics
          : graphics // ignore: cast_nullable_to_non_nullable
              as PresetTileGraphicsModel,
      properties: null == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as PresetTilePropertiesModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TileIdCopyWith<$Res> get id {
    return $TileIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PresetTileGraphicsModelCopyWith<$Res> get graphics {
    return $PresetTileGraphicsModelCopyWith<$Res>(_value.graphics, (value) {
      return _then(_value.copyWith(graphics: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PresetTilePropertiesModelCopyWith<$Res> get properties {
    return $PresetTilePropertiesModelCopyWith<$Res>(_value.properties, (value) {
      return _then(_value.copyWith(properties: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PresetTileModelCopyWith<$Res>
    implements $PresetTileModelCopyWith<$Res> {
  factory _$$_PresetTileModelCopyWith(
          _$_PresetTileModel value, $Res Function(_$_PresetTileModel) then) =
      __$$_PresetTileModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TileId id,
      TileType type,
      DataCategoryType category,
      PresetTileGraphicsModel graphics,
      PresetTilePropertiesModel properties});

  @override
  $TileIdCopyWith<$Res> get id;
  @override
  $PresetTileGraphicsModelCopyWith<$Res> get graphics;
  @override
  $PresetTilePropertiesModelCopyWith<$Res> get properties;
}

/// @nodoc
class __$$_PresetTileModelCopyWithImpl<$Res>
    extends _$PresetTileModelCopyWithImpl<$Res, _$_PresetTileModel>
    implements _$$_PresetTileModelCopyWith<$Res> {
  __$$_PresetTileModelCopyWithImpl(
      _$_PresetTileModel _value, $Res Function(_$_PresetTileModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? category = null,
    Object? graphics = null,
    Object? properties = null,
  }) {
    return _then(_$_PresetTileModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as TileId,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TileType,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as DataCategoryType,
      graphics: null == graphics
          ? _value.graphics
          : graphics // ignore: cast_nullable_to_non_nullable
              as PresetTileGraphicsModel,
      properties: null == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as PresetTilePropertiesModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_PresetTileModel extends _PresetTileModel {
  const _$_PresetTileModel(
      {required this.id,
      required this.type,
      required this.category,
      required this.graphics,
      this.properties = PresetTilePropertiesModel.empty})
      : super._();

  factory _$_PresetTileModel.fromJson(Map<String, dynamic> json) =>
      _$$_PresetTileModelFromJson(json);

  @override
  final TileId id;
  @override
  final TileType type;
  @override
  final DataCategoryType category;
  @override
  final PresetTileGraphicsModel graphics;
  @override
  @JsonKey()
  final PresetTilePropertiesModel properties;

  @override
  String toString() {
    return 'PresetTileModel(id: $id, type: $type, category: $category, graphics: $graphics, properties: $properties)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PresetTileModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.graphics, graphics) ||
                other.graphics == graphics) &&
            (identical(other.properties, properties) ||
                other.properties == properties));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, type, category, graphics, properties);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PresetTileModelCopyWith<_$_PresetTileModel> get copyWith =>
      __$$_PresetTileModelCopyWithImpl<_$_PresetTileModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PresetTileModelToJson(
      this,
    );
  }
}

abstract class _PresetTileModel extends PresetTileModel {
  const factory _PresetTileModel(
      {required final TileId id,
      required final TileType type,
      required final DataCategoryType category,
      required final PresetTileGraphicsModel graphics,
      final PresetTilePropertiesModel properties}) = _$_PresetTileModel;
  const _PresetTileModel._() : super._();

  factory _PresetTileModel.fromJson(Map<String, dynamic> json) =
      _$_PresetTileModel.fromJson;

  @override
  TileId get id;
  @override
  TileType get type;
  @override
  DataCategoryType get category;
  @override
  PresetTileGraphicsModel get graphics;
  @override
  PresetTilePropertiesModel get properties;
  @override
  @JsonKey(ignore: true)
  _$$_PresetTileModelCopyWith<_$_PresetTileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PresetTilePropertiesModel _$PresetTilePropertiesModelFromJson(
    Map<String, dynamic> json) {
  return _PresetTilePropertiesModel.fromJson(json);
}

/// @nodoc
mixin _$PresetTilePropertiesModel {
  String get title => throw _privateConstructorUsedError;
  String get thumbnailPath => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: LocalizedMap.fromJsonValueMap,
      toJson: LocalizedMap.toJsonValueMap)
  LocalizedMap get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PresetTilePropertiesModelCopyWith<PresetTilePropertiesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresetTilePropertiesModelCopyWith<$Res> {
  factory $PresetTilePropertiesModelCopyWith(PresetTilePropertiesModel value,
          $Res Function(PresetTilePropertiesModel) then) =
      _$PresetTilePropertiesModelCopyWithImpl<$Res, PresetTilePropertiesModel>;
  @useResult
  $Res call(
      {String title,
      String thumbnailPath,
      @JsonKey(fromJson: LocalizedMap.fromJsonValueMap, toJson: LocalizedMap.toJsonValueMap)
          LocalizedMap description});

  $LocalizedMapCopyWith<$Res> get description;
}

/// @nodoc
class _$PresetTilePropertiesModelCopyWithImpl<$Res,
        $Val extends PresetTilePropertiesModel>
    implements $PresetTilePropertiesModelCopyWith<$Res> {
  _$PresetTilePropertiesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? thumbnailPath = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailPath: null == thumbnailPath
          ? _value.thumbnailPath
          : thumbnailPath // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as LocalizedMap,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocalizedMapCopyWith<$Res> get description {
    return $LocalizedMapCopyWith<$Res>(_value.description, (value) {
      return _then(_value.copyWith(description: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PresetTilePropertiesModelCopyWith<$Res>
    implements $PresetTilePropertiesModelCopyWith<$Res> {
  factory _$$_PresetTilePropertiesModelCopyWith(
          _$_PresetTilePropertiesModel value,
          $Res Function(_$_PresetTilePropertiesModel) then) =
      __$$_PresetTilePropertiesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String thumbnailPath,
      @JsonKey(fromJson: LocalizedMap.fromJsonValueMap, toJson: LocalizedMap.toJsonValueMap)
          LocalizedMap description});

  @override
  $LocalizedMapCopyWith<$Res> get description;
}

/// @nodoc
class __$$_PresetTilePropertiesModelCopyWithImpl<$Res>
    extends _$PresetTilePropertiesModelCopyWithImpl<$Res,
        _$_PresetTilePropertiesModel>
    implements _$$_PresetTilePropertiesModelCopyWith<$Res> {
  __$$_PresetTilePropertiesModelCopyWithImpl(
      _$_PresetTilePropertiesModel _value,
      $Res Function(_$_PresetTilePropertiesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? thumbnailPath = null,
    Object? description = null,
  }) {
    return _then(_$_PresetTilePropertiesModel(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailPath: null == thumbnailPath
          ? _value.thumbnailPath
          : thumbnailPath // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as LocalizedMap,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_PresetTilePropertiesModel extends _PresetTilePropertiesModel {
  const _$_PresetTilePropertiesModel(
      {this.title = '',
      this.thumbnailPath = '',
      @JsonKey(fromJson: LocalizedMap.fromJsonValueMap, toJson: LocalizedMap.toJsonValueMap)
          this.description = LocalizedMap.empty})
      : super._();

  factory _$_PresetTilePropertiesModel.fromJson(Map<String, dynamic> json) =>
      _$$_PresetTilePropertiesModelFromJson(json);

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String thumbnailPath;
  @override
  @JsonKey(
      fromJson: LocalizedMap.fromJsonValueMap,
      toJson: LocalizedMap.toJsonValueMap)
  final LocalizedMap description;

  @override
  String toString() {
    return 'PresetTilePropertiesModel(title: $title, thumbnailPath: $thumbnailPath, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PresetTilePropertiesModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.thumbnailPath, thumbnailPath) ||
                other.thumbnailPath == thumbnailPath) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, thumbnailPath, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PresetTilePropertiesModelCopyWith<_$_PresetTilePropertiesModel>
      get copyWith => __$$_PresetTilePropertiesModelCopyWithImpl<
          _$_PresetTilePropertiesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PresetTilePropertiesModelToJson(
      this,
    );
  }
}

abstract class _PresetTilePropertiesModel extends PresetTilePropertiesModel {
  const factory _PresetTilePropertiesModel(
      {final String title,
      final String thumbnailPath,
      @JsonKey(fromJson: LocalizedMap.fromJsonValueMap, toJson: LocalizedMap.toJsonValueMap)
          final LocalizedMap description}) = _$_PresetTilePropertiesModel;
  const _PresetTilePropertiesModel._() : super._();

  factory _PresetTilePropertiesModel.fromJson(Map<String, dynamic> json) =
      _$_PresetTilePropertiesModel.fromJson;

  @override
  String get title;
  @override
  String get thumbnailPath;
  @override
  @JsonKey(
      fromJson: LocalizedMap.fromJsonValueMap,
      toJson: LocalizedMap.toJsonValueMap)
  LocalizedMap get description;
  @override
  @JsonKey(ignore: true)
  _$$_PresetTilePropertiesModelCopyWith<_$_PresetTilePropertiesModel>
      get copyWith => throw _privateConstructorUsedError;
}

PresetTileGraphicsModel _$PresetTileGraphicsModelFromJson(
    Map<String, dynamic> json) {
  return _PresetTileGraphicsModel.fromJson(json);
}

/// @nodoc
mixin _$PresetTileGraphicsModel {
  TileGraphicsType get type => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  bool get animated => throw _privateConstructorUsedError;
  List<TileBehaviourType> get behaviours => throw _privateConstructorUsedError;
  Map<String, NeighborsAssociationModel> get neighborsAssociativeMap =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PresetTileGraphicsModelCopyWith<PresetTileGraphicsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresetTileGraphicsModelCopyWith<$Res> {
  factory $PresetTileGraphicsModelCopyWith(PresetTileGraphicsModel value,
          $Res Function(PresetTileGraphicsModel) then) =
      _$PresetTileGraphicsModelCopyWithImpl<$Res, PresetTileGraphicsModel>;
  @useResult
  $Res call(
      {TileGraphicsType type,
      String path,
      bool animated,
      List<TileBehaviourType> behaviours,
      Map<String, NeighborsAssociationModel> neighborsAssociativeMap});
}

/// @nodoc
class _$PresetTileGraphicsModelCopyWithImpl<$Res,
        $Val extends PresetTileGraphicsModel>
    implements $PresetTileGraphicsModelCopyWith<$Res> {
  _$PresetTileGraphicsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? path = null,
    Object? animated = null,
    Object? behaviours = null,
    Object? neighborsAssociativeMap = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TileGraphicsType,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      animated: null == animated
          ? _value.animated
          : animated // ignore: cast_nullable_to_non_nullable
              as bool,
      behaviours: null == behaviours
          ? _value.behaviours
          : behaviours // ignore: cast_nullable_to_non_nullable
              as List<TileBehaviourType>,
      neighborsAssociativeMap: null == neighborsAssociativeMap
          ? _value.neighborsAssociativeMap
          : neighborsAssociativeMap // ignore: cast_nullable_to_non_nullable
              as Map<String, NeighborsAssociationModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PresetTileGraphicsModelCopyWith<$Res>
    implements $PresetTileGraphicsModelCopyWith<$Res> {
  factory _$$_PresetTileGraphicsModelCopyWith(_$_PresetTileGraphicsModel value,
          $Res Function(_$_PresetTileGraphicsModel) then) =
      __$$_PresetTileGraphicsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TileGraphicsType type,
      String path,
      bool animated,
      List<TileBehaviourType> behaviours,
      Map<String, NeighborsAssociationModel> neighborsAssociativeMap});
}

/// @nodoc
class __$$_PresetTileGraphicsModelCopyWithImpl<$Res>
    extends _$PresetTileGraphicsModelCopyWithImpl<$Res,
        _$_PresetTileGraphicsModel>
    implements _$$_PresetTileGraphicsModelCopyWith<$Res> {
  __$$_PresetTileGraphicsModelCopyWithImpl(_$_PresetTileGraphicsModel _value,
      $Res Function(_$_PresetTileGraphicsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? path = null,
    Object? animated = null,
    Object? behaviours = null,
    Object? neighborsAssociativeMap = null,
  }) {
    return _then(_$_PresetTileGraphicsModel(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TileGraphicsType,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      animated: null == animated
          ? _value.animated
          : animated // ignore: cast_nullable_to_non_nullable
              as bool,
      behaviours: null == behaviours
          ? _value._behaviours
          : behaviours // ignore: cast_nullable_to_non_nullable
              as List<TileBehaviourType>,
      neighborsAssociativeMap: null == neighborsAssociativeMap
          ? _value._neighborsAssociativeMap
          : neighborsAssociativeMap // ignore: cast_nullable_to_non_nullable
              as Map<String, NeighborsAssociationModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_PresetTileGraphicsModel extends _PresetTileGraphicsModel {
  const _$_PresetTileGraphicsModel(
      {required this.type,
      this.path = '',
      this.animated = false,
      final List<TileBehaviourType> behaviours = const [],
      final Map<String, NeighborsAssociationModel> neighborsAssociativeMap =
          const {}})
      : _behaviours = behaviours,
        _neighborsAssociativeMap = neighborsAssociativeMap,
        super._();

  factory _$_PresetTileGraphicsModel.fromJson(Map<String, dynamic> json) =>
      _$$_PresetTileGraphicsModelFromJson(json);

  @override
  final TileGraphicsType type;
  @override
  @JsonKey()
  final String path;
  @override
  @JsonKey()
  final bool animated;
  final List<TileBehaviourType> _behaviours;
  @override
  @JsonKey()
  List<TileBehaviourType> get behaviours {
    if (_behaviours is EqualUnmodifiableListView) return _behaviours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_behaviours);
  }

  final Map<String, NeighborsAssociationModel> _neighborsAssociativeMap;
  @override
  @JsonKey()
  Map<String, NeighborsAssociationModel> get neighborsAssociativeMap {
    if (_neighborsAssociativeMap is EqualUnmodifiableMapView)
      return _neighborsAssociativeMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_neighborsAssociativeMap);
  }

  @override
  String toString() {
    return 'PresetTileGraphicsModel(type: $type, path: $path, animated: $animated, behaviours: $behaviours, neighborsAssociativeMap: $neighborsAssociativeMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PresetTileGraphicsModel &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.animated, animated) ||
                other.animated == animated) &&
            const DeepCollectionEquality()
                .equals(other._behaviours, _behaviours) &&
            const DeepCollectionEquality().equals(
                other._neighborsAssociativeMap, _neighborsAssociativeMap));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      path,
      animated,
      const DeepCollectionEquality().hash(_behaviours),
      const DeepCollectionEquality().hash(_neighborsAssociativeMap));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PresetTileGraphicsModelCopyWith<_$_PresetTileGraphicsModel>
      get copyWith =>
          __$$_PresetTileGraphicsModelCopyWithImpl<_$_PresetTileGraphicsModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PresetTileGraphicsModelToJson(
      this,
    );
  }
}

abstract class _PresetTileGraphicsModel extends PresetTileGraphicsModel {
  const factory _PresetTileGraphicsModel(
      {required final TileGraphicsType type,
      final String path,
      final bool animated,
      final List<TileBehaviourType> behaviours,
      final Map<String, NeighborsAssociationModel>
          neighborsAssociativeMap}) = _$_PresetTileGraphicsModel;
  const _PresetTileGraphicsModel._() : super._();

  factory _PresetTileGraphicsModel.fromJson(Map<String, dynamic> json) =
      _$_PresetTileGraphicsModel.fromJson;

  @override
  TileGraphicsType get type;
  @override
  String get path;
  @override
  bool get animated;
  @override
  List<TileBehaviourType> get behaviours;
  @override
  Map<String, NeighborsAssociationModel> get neighborsAssociativeMap;
  @override
  @JsonKey(ignore: true)
  _$$_PresetTileGraphicsModelCopyWith<_$_PresetTileGraphicsModel>
      get copyWith => throw _privateConstructorUsedError;
}

NeighborsAssociationModel _$NeighborsAssociationModelFromJson(
    Map<String, dynamic> json) {
  return _NeighborsAssociationModel.fromJson(json);
}

/// @nodoc
mixin _$NeighborsAssociationModel {
  List<String> get useWhenFilled => throw _privateConstructorUsedError;
  List<String> get useWhenNotFilled => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NeighborsAssociationModelCopyWith<NeighborsAssociationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NeighborsAssociationModelCopyWith<$Res> {
  factory $NeighborsAssociationModelCopyWith(NeighborsAssociationModel value,
          $Res Function(NeighborsAssociationModel) then) =
      _$NeighborsAssociationModelCopyWithImpl<$Res, NeighborsAssociationModel>;
  @useResult
  $Res call({List<String> useWhenFilled, List<String> useWhenNotFilled});
}

/// @nodoc
class _$NeighborsAssociationModelCopyWithImpl<$Res,
        $Val extends NeighborsAssociationModel>
    implements $NeighborsAssociationModelCopyWith<$Res> {
  _$NeighborsAssociationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? useWhenFilled = null,
    Object? useWhenNotFilled = null,
  }) {
    return _then(_value.copyWith(
      useWhenFilled: null == useWhenFilled
          ? _value.useWhenFilled
          : useWhenFilled // ignore: cast_nullable_to_non_nullable
              as List<String>,
      useWhenNotFilled: null == useWhenNotFilled
          ? _value.useWhenNotFilled
          : useWhenNotFilled // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NeighborsAssociationModelCopyWith<$Res>
    implements $NeighborsAssociationModelCopyWith<$Res> {
  factory _$$_NeighborsAssociationModelCopyWith(
          _$_NeighborsAssociationModel value,
          $Res Function(_$_NeighborsAssociationModel) then) =
      __$$_NeighborsAssociationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> useWhenFilled, List<String> useWhenNotFilled});
}

/// @nodoc
class __$$_NeighborsAssociationModelCopyWithImpl<$Res>
    extends _$NeighborsAssociationModelCopyWithImpl<$Res,
        _$_NeighborsAssociationModel>
    implements _$$_NeighborsAssociationModelCopyWith<$Res> {
  __$$_NeighborsAssociationModelCopyWithImpl(
      _$_NeighborsAssociationModel _value,
      $Res Function(_$_NeighborsAssociationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? useWhenFilled = null,
    Object? useWhenNotFilled = null,
  }) {
    return _then(_$_NeighborsAssociationModel(
      useWhenFilled: null == useWhenFilled
          ? _value._useWhenFilled
          : useWhenFilled // ignore: cast_nullable_to_non_nullable
              as List<String>,
      useWhenNotFilled: null == useWhenNotFilled
          ? _value._useWhenNotFilled
          : useWhenNotFilled // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_NeighborsAssociationModel extends _NeighborsAssociationModel {
  const _$_NeighborsAssociationModel(
      {final List<String> useWhenFilled = const [],
      final List<String> useWhenNotFilled = const []})
      : _useWhenFilled = useWhenFilled,
        _useWhenNotFilled = useWhenNotFilled,
        super._();

  factory _$_NeighborsAssociationModel.fromJson(Map<String, dynamic> json) =>
      _$$_NeighborsAssociationModelFromJson(json);

  final List<String> _useWhenFilled;
  @override
  @JsonKey()
  List<String> get useWhenFilled {
    if (_useWhenFilled is EqualUnmodifiableListView) return _useWhenFilled;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_useWhenFilled);
  }

  final List<String> _useWhenNotFilled;
  @override
  @JsonKey()
  List<String> get useWhenNotFilled {
    if (_useWhenNotFilled is EqualUnmodifiableListView)
      return _useWhenNotFilled;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_useWhenNotFilled);
  }

  @override
  String toString() {
    return 'NeighborsAssociationModel(useWhenFilled: $useWhenFilled, useWhenNotFilled: $useWhenNotFilled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NeighborsAssociationModel &&
            const DeepCollectionEquality()
                .equals(other._useWhenFilled, _useWhenFilled) &&
            const DeepCollectionEquality()
                .equals(other._useWhenNotFilled, _useWhenNotFilled));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_useWhenFilled),
      const DeepCollectionEquality().hash(_useWhenNotFilled));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NeighborsAssociationModelCopyWith<_$_NeighborsAssociationModel>
      get copyWith => __$$_NeighborsAssociationModelCopyWithImpl<
          _$_NeighborsAssociationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NeighborsAssociationModelToJson(
      this,
    );
  }
}

abstract class _NeighborsAssociationModel extends NeighborsAssociationModel {
  const factory _NeighborsAssociationModel(
      {final List<String> useWhenFilled,
      final List<String> useWhenNotFilled}) = _$_NeighborsAssociationModel;
  const _NeighborsAssociationModel._() : super._();

  factory _NeighborsAssociationModel.fromJson(Map<String, dynamic> json) =
      _$_NeighborsAssociationModel.fromJson;

  @override
  List<String> get useWhenFilled;
  @override
  List<String> get useWhenNotFilled;
  @override
  @JsonKey(ignore: true)
  _$$_NeighborsAssociationModelCopyWith<_$_NeighborsAssociationModel>
      get copyWith => throw _privateConstructorUsedError;
}

TilesPresetDataModel _$TilesPresetDataModelFromJson(Map<String, dynamic> json) {
  return _TilesPresetDataModel.fromJson(json);
}

/// @nodoc
mixin _$TilesPresetDataModel {
  @JsonKey(
      fromJson: TilesPresetDataModel._tilesFromJson,
      toJson: TilesPresetDataModel._tilesToJson)
  Map<TileId, PresetTileModel> get tiles => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: TilesPresetDataModel._tilesFromJson,
      toJson: TilesPresetDataModel._tilesToJson)
  Map<TileId, PresetTileModel> get objects =>
      throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: TilesPresetDataModel._tilesFromJson,
      toJson: TilesPresetDataModel._tilesToJson)
  Map<TileId, PresetTileModel> get npcs => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: TilesPresetDataModel._tilesFromJson,
      toJson: TilesPresetDataModel._tilesToJson)
  Map<TileId, PresetTileModel> get players =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TilesPresetDataModelCopyWith<TilesPresetDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TilesPresetDataModelCopyWith<$Res> {
  factory $TilesPresetDataModelCopyWith(TilesPresetDataModel value,
          $Res Function(TilesPresetDataModel) then) =
      _$TilesPresetDataModelCopyWithImpl<$Res, TilesPresetDataModel>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: TilesPresetDataModel._tilesFromJson, toJson: TilesPresetDataModel._tilesToJson)
          Map<TileId, PresetTileModel> tiles,
      @JsonKey(fromJson: TilesPresetDataModel._tilesFromJson, toJson: TilesPresetDataModel._tilesToJson)
          Map<TileId, PresetTileModel> objects,
      @JsonKey(fromJson: TilesPresetDataModel._tilesFromJson, toJson: TilesPresetDataModel._tilesToJson)
          Map<TileId, PresetTileModel> npcs,
      @JsonKey(fromJson: TilesPresetDataModel._tilesFromJson, toJson: TilesPresetDataModel._tilesToJson)
          Map<TileId, PresetTileModel> players});
}

/// @nodoc
class _$TilesPresetDataModelCopyWithImpl<$Res,
        $Val extends TilesPresetDataModel>
    implements $TilesPresetDataModelCopyWith<$Res> {
  _$TilesPresetDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tiles = null,
    Object? objects = null,
    Object? npcs = null,
    Object? players = null,
  }) {
    return _then(_value.copyWith(
      tiles: null == tiles
          ? _value.tiles
          : tiles // ignore: cast_nullable_to_non_nullable
              as Map<TileId, PresetTileModel>,
      objects: null == objects
          ? _value.objects
          : objects // ignore: cast_nullable_to_non_nullable
              as Map<TileId, PresetTileModel>,
      npcs: null == npcs
          ? _value.npcs
          : npcs // ignore: cast_nullable_to_non_nullable
              as Map<TileId, PresetTileModel>,
      players: null == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as Map<TileId, PresetTileModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TilesPresetDataModelCopyWith<$Res>
    implements $TilesPresetDataModelCopyWith<$Res> {
  factory _$$_TilesPresetDataModelCopyWith(_$_TilesPresetDataModel value,
          $Res Function(_$_TilesPresetDataModel) then) =
      __$$_TilesPresetDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: TilesPresetDataModel._tilesFromJson, toJson: TilesPresetDataModel._tilesToJson)
          Map<TileId, PresetTileModel> tiles,
      @JsonKey(fromJson: TilesPresetDataModel._tilesFromJson, toJson: TilesPresetDataModel._tilesToJson)
          Map<TileId, PresetTileModel> objects,
      @JsonKey(fromJson: TilesPresetDataModel._tilesFromJson, toJson: TilesPresetDataModel._tilesToJson)
          Map<TileId, PresetTileModel> npcs,
      @JsonKey(fromJson: TilesPresetDataModel._tilesFromJson, toJson: TilesPresetDataModel._tilesToJson)
          Map<TileId, PresetTileModel> players});
}

/// @nodoc
class __$$_TilesPresetDataModelCopyWithImpl<$Res>
    extends _$TilesPresetDataModelCopyWithImpl<$Res, _$_TilesPresetDataModel>
    implements _$$_TilesPresetDataModelCopyWith<$Res> {
  __$$_TilesPresetDataModelCopyWithImpl(_$_TilesPresetDataModel _value,
      $Res Function(_$_TilesPresetDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tiles = null,
    Object? objects = null,
    Object? npcs = null,
    Object? players = null,
  }) {
    return _then(_$_TilesPresetDataModel(
      tiles: null == tiles
          ? _value._tiles
          : tiles // ignore: cast_nullable_to_non_nullable
              as Map<TileId, PresetTileModel>,
      objects: null == objects
          ? _value._objects
          : objects // ignore: cast_nullable_to_non_nullable
              as Map<TileId, PresetTileModel>,
      npcs: null == npcs
          ? _value._npcs
          : npcs // ignore: cast_nullable_to_non_nullable
              as Map<TileId, PresetTileModel>,
      players: null == players
          ? _value._players
          : players // ignore: cast_nullable_to_non_nullable
              as Map<TileId, PresetTileModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_TilesPresetDataModel implements _TilesPresetDataModel {
  const _$_TilesPresetDataModel(
      {@JsonKey(fromJson: TilesPresetDataModel._tilesFromJson, toJson: TilesPresetDataModel._tilesToJson)
          final Map<TileId, PresetTileModel> tiles = const {},
      @JsonKey(fromJson: TilesPresetDataModel._tilesFromJson, toJson: TilesPresetDataModel._tilesToJson)
          final Map<TileId, PresetTileModel> objects = const {},
      @JsonKey(fromJson: TilesPresetDataModel._tilesFromJson, toJson: TilesPresetDataModel._tilesToJson)
          final Map<TileId, PresetTileModel> npcs = const {},
      @JsonKey(fromJson: TilesPresetDataModel._tilesFromJson, toJson: TilesPresetDataModel._tilesToJson)
          final Map<TileId, PresetTileModel> players = const {}})
      : _tiles = tiles,
        _objects = objects,
        _npcs = npcs,
        _players = players;

  factory _$_TilesPresetDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_TilesPresetDataModelFromJson(json);

  final Map<TileId, PresetTileModel> _tiles;
  @override
  @JsonKey(
      fromJson: TilesPresetDataModel._tilesFromJson,
      toJson: TilesPresetDataModel._tilesToJson)
  Map<TileId, PresetTileModel> get tiles {
    if (_tiles is EqualUnmodifiableMapView) return _tiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_tiles);
  }

  final Map<TileId, PresetTileModel> _objects;
  @override
  @JsonKey(
      fromJson: TilesPresetDataModel._tilesFromJson,
      toJson: TilesPresetDataModel._tilesToJson)
  Map<TileId, PresetTileModel> get objects {
    if (_objects is EqualUnmodifiableMapView) return _objects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_objects);
  }

  final Map<TileId, PresetTileModel> _npcs;
  @override
  @JsonKey(
      fromJson: TilesPresetDataModel._tilesFromJson,
      toJson: TilesPresetDataModel._tilesToJson)
  Map<TileId, PresetTileModel> get npcs {
    if (_npcs is EqualUnmodifiableMapView) return _npcs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_npcs);
  }

  final Map<TileId, PresetTileModel> _players;
  @override
  @JsonKey(
      fromJson: TilesPresetDataModel._tilesFromJson,
      toJson: TilesPresetDataModel._tilesToJson)
  Map<TileId, PresetTileModel> get players {
    if (_players is EqualUnmodifiableMapView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_players);
  }

  @override
  String toString() {
    return 'TilesPresetDataModel(tiles: $tiles, objects: $objects, npcs: $npcs, players: $players)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TilesPresetDataModel &&
            const DeepCollectionEquality().equals(other._tiles, _tiles) &&
            const DeepCollectionEquality().equals(other._objects, _objects) &&
            const DeepCollectionEquality().equals(other._npcs, _npcs) &&
            const DeepCollectionEquality().equals(other._players, _players));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tiles),
      const DeepCollectionEquality().hash(_objects),
      const DeepCollectionEquality().hash(_npcs),
      const DeepCollectionEquality().hash(_players));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TilesPresetDataModelCopyWith<_$_TilesPresetDataModel> get copyWith =>
      __$$_TilesPresetDataModelCopyWithImpl<_$_TilesPresetDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TilesPresetDataModelToJson(
      this,
    );
  }
}

abstract class _TilesPresetDataModel implements TilesPresetDataModel {
  const factory _TilesPresetDataModel(
      {@JsonKey(fromJson: TilesPresetDataModel._tilesFromJson, toJson: TilesPresetDataModel._tilesToJson)
          final Map<TileId, PresetTileModel> tiles,
      @JsonKey(fromJson: TilesPresetDataModel._tilesFromJson, toJson: TilesPresetDataModel._tilesToJson)
          final Map<TileId, PresetTileModel> objects,
      @JsonKey(fromJson: TilesPresetDataModel._tilesFromJson, toJson: TilesPresetDataModel._tilesToJson)
          final Map<TileId, PresetTileModel> npcs,
      @JsonKey(fromJson: TilesPresetDataModel._tilesFromJson, toJson: TilesPresetDataModel._tilesToJson)
          final Map<TileId, PresetTileModel> players}) = _$_TilesPresetDataModel;

  factory _TilesPresetDataModel.fromJson(Map<String, dynamic> json) =
      _$_TilesPresetDataModel.fromJson;

  @override
  @JsonKey(
      fromJson: TilesPresetDataModel._tilesFromJson,
      toJson: TilesPresetDataModel._tilesToJson)
  Map<TileId, PresetTileModel> get tiles;
  @override
  @JsonKey(
      fromJson: TilesPresetDataModel._tilesFromJson,
      toJson: TilesPresetDataModel._tilesToJson)
  Map<TileId, PresetTileModel> get objects;
  @override
  @JsonKey(
      fromJson: TilesPresetDataModel._tilesFromJson,
      toJson: TilesPresetDataModel._tilesToJson)
  Map<TileId, PresetTileModel> get npcs;
  @override
  @JsonKey(
      fromJson: TilesPresetDataModel._tilesFromJson,
      toJson: TilesPresetDataModel._tilesToJson)
  Map<TileId, PresetTileModel> get players;
  @override
  @JsonKey(ignore: true)
  _$$_TilesPresetDataModelCopyWith<_$_TilesPresetDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TilesPresetResources {
  Map<TileId, PresetTileResource> get tiles =>
      throw _privateConstructorUsedError;
  Map<TileId, PresetTileResource> get objects =>
      throw _privateConstructorUsedError;
  Map<TileId, PresetTileResource> get npcs =>
      throw _privateConstructorUsedError;
  Map<TileId, PresetTileResource> get players =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TilesPresetResourcesCopyWith<TilesPresetResources> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TilesPresetResourcesCopyWith<$Res> {
  factory $TilesPresetResourcesCopyWith(TilesPresetResources value,
          $Res Function(TilesPresetResources) then) =
      _$TilesPresetResourcesCopyWithImpl<$Res, TilesPresetResources>;
  @useResult
  $Res call(
      {Map<TileId, PresetTileResource> tiles,
      Map<TileId, PresetTileResource> objects,
      Map<TileId, PresetTileResource> npcs,
      Map<TileId, PresetTileResource> players});
}

/// @nodoc
class _$TilesPresetResourcesCopyWithImpl<$Res,
        $Val extends TilesPresetResources>
    implements $TilesPresetResourcesCopyWith<$Res> {
  _$TilesPresetResourcesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tiles = null,
    Object? objects = null,
    Object? npcs = null,
    Object? players = null,
  }) {
    return _then(_value.copyWith(
      tiles: null == tiles
          ? _value.tiles
          : tiles // ignore: cast_nullable_to_non_nullable
              as Map<TileId, PresetTileResource>,
      objects: null == objects
          ? _value.objects
          : objects // ignore: cast_nullable_to_non_nullable
              as Map<TileId, PresetTileResource>,
      npcs: null == npcs
          ? _value.npcs
          : npcs // ignore: cast_nullable_to_non_nullable
              as Map<TileId, PresetTileResource>,
      players: null == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as Map<TileId, PresetTileResource>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TilesPresetResourcesCopyWith<$Res>
    implements $TilesPresetResourcesCopyWith<$Res> {
  factory _$$_TilesPresetResourcesCopyWith(_$_TilesPresetResources value,
          $Res Function(_$_TilesPresetResources) then) =
      __$$_TilesPresetResourcesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<TileId, PresetTileResource> tiles,
      Map<TileId, PresetTileResource> objects,
      Map<TileId, PresetTileResource> npcs,
      Map<TileId, PresetTileResource> players});
}

/// @nodoc
class __$$_TilesPresetResourcesCopyWithImpl<$Res>
    extends _$TilesPresetResourcesCopyWithImpl<$Res, _$_TilesPresetResources>
    implements _$$_TilesPresetResourcesCopyWith<$Res> {
  __$$_TilesPresetResourcesCopyWithImpl(_$_TilesPresetResources _value,
      $Res Function(_$_TilesPresetResources) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tiles = null,
    Object? objects = null,
    Object? npcs = null,
    Object? players = null,
  }) {
    return _then(_$_TilesPresetResources(
      tiles: null == tiles
          ? _value._tiles
          : tiles // ignore: cast_nullable_to_non_nullable
              as Map<TileId, PresetTileResource>,
      objects: null == objects
          ? _value._objects
          : objects // ignore: cast_nullable_to_non_nullable
              as Map<TileId, PresetTileResource>,
      npcs: null == npcs
          ? _value._npcs
          : npcs // ignore: cast_nullable_to_non_nullable
              as Map<TileId, PresetTileResource>,
      players: null == players
          ? _value._players
          : players // ignore: cast_nullable_to_non_nullable
              as Map<TileId, PresetTileResource>,
    ));
  }
}

/// @nodoc

class _$_TilesPresetResources implements _TilesPresetResources {
  const _$_TilesPresetResources(
      {final Map<TileId, PresetTileResource> tiles = const {},
      final Map<TileId, PresetTileResource> objects = const {},
      final Map<TileId, PresetTileResource> npcs = const {},
      final Map<TileId, PresetTileResource> players = const {}})
      : _tiles = tiles,
        _objects = objects,
        _npcs = npcs,
        _players = players;

  final Map<TileId, PresetTileResource> _tiles;
  @override
  @JsonKey()
  Map<TileId, PresetTileResource> get tiles {
    if (_tiles is EqualUnmodifiableMapView) return _tiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_tiles);
  }

  final Map<TileId, PresetTileResource> _objects;
  @override
  @JsonKey()
  Map<TileId, PresetTileResource> get objects {
    if (_objects is EqualUnmodifiableMapView) return _objects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_objects);
  }

  final Map<TileId, PresetTileResource> _npcs;
  @override
  @JsonKey()
  Map<TileId, PresetTileResource> get npcs {
    if (_npcs is EqualUnmodifiableMapView) return _npcs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_npcs);
  }

  final Map<TileId, PresetTileResource> _players;
  @override
  @JsonKey()
  Map<TileId, PresetTileResource> get players {
    if (_players is EqualUnmodifiableMapView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_players);
  }

  @override
  String toString() {
    return 'TilesPresetResources(tiles: $tiles, objects: $objects, npcs: $npcs, players: $players)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TilesPresetResources &&
            const DeepCollectionEquality().equals(other._tiles, _tiles) &&
            const DeepCollectionEquality().equals(other._objects, _objects) &&
            const DeepCollectionEquality().equals(other._npcs, _npcs) &&
            const DeepCollectionEquality().equals(other._players, _players));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tiles),
      const DeepCollectionEquality().hash(_objects),
      const DeepCollectionEquality().hash(_npcs),
      const DeepCollectionEquality().hash(_players));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TilesPresetResourcesCopyWith<_$_TilesPresetResources> get copyWith =>
      __$$_TilesPresetResourcesCopyWithImpl<_$_TilesPresetResources>(
          this, _$identity);
}

abstract class _TilesPresetResources implements TilesPresetResources {
  const factory _TilesPresetResources(
      {final Map<TileId, PresetTileResource> tiles,
      final Map<TileId, PresetTileResource> objects,
      final Map<TileId, PresetTileResource> npcs,
      final Map<TileId, PresetTileResource> players}) = _$_TilesPresetResources;

  @override
  Map<TileId, PresetTileResource> get tiles;
  @override
  Map<TileId, PresetTileResource> get objects;
  @override
  Map<TileId, PresetTileResource> get npcs;
  @override
  Map<TileId, PresetTileResource> get players;
  @override
  @JsonKey(ignore: true)
  _$$_TilesPresetResourcesCopyWith<_$_TilesPresetResources> get copyWith =>
      throw _privateConstructorUsedError;
}
