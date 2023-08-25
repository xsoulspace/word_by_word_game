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
      @JsonKey(
          fromJson: LocalizedMap.fromJsonValueMap,
          toJson: LocalizedMap.toJsonValueMap)
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
      @JsonKey(
          fromJson: LocalizedMap.fromJsonValueMap,
          toJson: LocalizedMap.toJsonValueMap)
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
      @JsonKey(
          fromJson: LocalizedMap.fromJsonValueMap,
          toJson: LocalizedMap.toJsonValueMap)
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
      @JsonKey(
          fromJson: LocalizedMap.fromJsonValueMap,
          toJson: LocalizedMap.toJsonValueMap)
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
  bool get animated => throw _privateConstructorUsedError;
  List<TileBehaviourType> get behaviours => throw _privateConstructorUsedError;

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
      bool animated,
      List<TileBehaviourType> behaviours});
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
    Object? animated = null,
    Object? behaviours = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TileGraphicsType,
      animated: null == animated
          ? _value.animated
          : animated // ignore: cast_nullable_to_non_nullable
              as bool,
      behaviours: null == behaviours
          ? _value.behaviours
          : behaviours // ignore: cast_nullable_to_non_nullable
              as List<TileBehaviourType>,
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
      bool animated,
      List<TileBehaviourType> behaviours});
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
    Object? animated = null,
    Object? behaviours = null,
  }) {
    return _then(_$_PresetTileGraphicsModel(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TileGraphicsType,
      animated: null == animated
          ? _value.animated
          : animated // ignore: cast_nullable_to_non_nullable
              as bool,
      behaviours: null == behaviours
          ? _value._behaviours
          : behaviours // ignore: cast_nullable_to_non_nullable
              as List<TileBehaviourType>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_PresetTileGraphicsModel extends _PresetTileGraphicsModel {
  const _$_PresetTileGraphicsModel(
      {required this.type,
      this.animated = false,
      final List<TileBehaviourType> behaviours = const []})
      : _behaviours = behaviours,
        super._();

  factory _$_PresetTileGraphicsModel.fromJson(Map<String, dynamic> json) =>
      _$$_PresetTileGraphicsModelFromJson(json);

  @override
  final TileGraphicsType type;
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

  @override
  String toString() {
    return 'PresetTileGraphicsModel(type: $type, animated: $animated, behaviours: $behaviours)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PresetTileGraphicsModel &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.animated, animated) ||
                other.animated == animated) &&
            const DeepCollectionEquality()
                .equals(other._behaviours, _behaviours));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, animated,
      const DeepCollectionEquality().hash(_behaviours));

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
      final bool animated,
      final List<TileBehaviourType> behaviours}) = _$_PresetTileGraphicsModel;
  const _PresetTileGraphicsModel._() : super._();

  factory _PresetTileGraphicsModel.fromJson(Map<String, dynamic> json) =
      _$_PresetTileGraphicsModel.fromJson;

  @override
  TileGraphicsType get type;
  @override
  bool get animated;
  @override
  List<TileBehaviourType> get behaviours;
  @override
  @JsonKey(ignore: true)
  _$$_PresetTileGraphicsModelCopyWith<_$_PresetTileGraphicsModel>
      get copyWith => throw _privateConstructorUsedError;
}

TilesetPresetDataModel _$TilesetPresetDataModelFromJson(
    Map<String, dynamic> json) {
  return _TilesetPresetDataModel.fromJson(json);
}

/// @nodoc
mixin _$TilesetPresetDataModel {
  @JsonKey(
      fromJson: TilesetPresetDataModel._tilesFromJson,
      toJson: TilesetPresetDataModel._tilesToJson)
  Map<TileId, PresetTileModel> get tiles => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: TilesetPresetDataModel._tilesFromJson,
      toJson: TilesetPresetDataModel._tilesToJson)
  Map<TileId, PresetTileModel> get objects =>
      throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: TilesetPresetDataModel._tilesFromJson,
      toJson: TilesetPresetDataModel._tilesToJson)
  Map<TileId, PresetTileModel> get npcs => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: TilesetPresetDataModel._tilesFromJson,
      toJson: TilesetPresetDataModel._tilesToJson)
  Map<TileId, PresetTileModel> get players =>
      throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: TilesetPresetDataModel._tilesFromJson,
      toJson: TilesetPresetDataModel._tilesToJson)
  Map<TileId, PresetTileModel> get other => throw _privateConstructorUsedError;
  Map<SpriteTileName, List<String>> get autotileRules =>
      throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: LocalizedMap.fromJsonValueMap,
      toJson: LocalizedMap.toJsonValueMap)
  LocalizedMap get name => throw _privateConstructorUsedError;
  TilesetType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TilesetPresetDataModelCopyWith<TilesetPresetDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TilesetPresetDataModelCopyWith<$Res> {
  factory $TilesetPresetDataModelCopyWith(TilesetPresetDataModel value,
          $Res Function(TilesetPresetDataModel) then) =
      _$TilesetPresetDataModelCopyWithImpl<$Res, TilesetPresetDataModel>;
  @useResult
  $Res call(
      {@JsonKey(
          fromJson: TilesetPresetDataModel._tilesFromJson,
          toJson: TilesetPresetDataModel._tilesToJson)
      Map<TileId, PresetTileModel> tiles,
      @JsonKey(
          fromJson: TilesetPresetDataModel._tilesFromJson,
          toJson: TilesetPresetDataModel._tilesToJson)
      Map<TileId, PresetTileModel> objects,
      @JsonKey(
          fromJson: TilesetPresetDataModel._tilesFromJson,
          toJson: TilesetPresetDataModel._tilesToJson)
      Map<TileId, PresetTileModel> npcs,
      @JsonKey(
          fromJson: TilesetPresetDataModel._tilesFromJson,
          toJson: TilesetPresetDataModel._tilesToJson)
      Map<TileId, PresetTileModel> players,
      @JsonKey(
          fromJson: TilesetPresetDataModel._tilesFromJson,
          toJson: TilesetPresetDataModel._tilesToJson)
      Map<TileId, PresetTileModel> other,
      Map<SpriteTileName, List<String>> autotileRules,
      @JsonKey(
          fromJson: LocalizedMap.fromJsonValueMap,
          toJson: LocalizedMap.toJsonValueMap)
      LocalizedMap name,
      TilesetType type});

  $LocalizedMapCopyWith<$Res> get name;
}

/// @nodoc
class _$TilesetPresetDataModelCopyWithImpl<$Res,
        $Val extends TilesetPresetDataModel>
    implements $TilesetPresetDataModelCopyWith<$Res> {
  _$TilesetPresetDataModelCopyWithImpl(this._value, this._then);

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
    Object? other = null,
    Object? autotileRules = null,
    Object? name = null,
    Object? type = null,
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
      other: null == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as Map<TileId, PresetTileModel>,
      autotileRules: null == autotileRules
          ? _value.autotileRules
          : autotileRules // ignore: cast_nullable_to_non_nullable
              as Map<SpriteTileName, List<String>>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as LocalizedMap,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TilesetType,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocalizedMapCopyWith<$Res> get name {
    return $LocalizedMapCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TilesetPresetDataModelCopyWith<$Res>
    implements $TilesetPresetDataModelCopyWith<$Res> {
  factory _$$_TilesetPresetDataModelCopyWith(_$_TilesetPresetDataModel value,
          $Res Function(_$_TilesetPresetDataModel) then) =
      __$$_TilesetPresetDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          fromJson: TilesetPresetDataModel._tilesFromJson,
          toJson: TilesetPresetDataModel._tilesToJson)
      Map<TileId, PresetTileModel> tiles,
      @JsonKey(
          fromJson: TilesetPresetDataModel._tilesFromJson,
          toJson: TilesetPresetDataModel._tilesToJson)
      Map<TileId, PresetTileModel> objects,
      @JsonKey(
          fromJson: TilesetPresetDataModel._tilesFromJson,
          toJson: TilesetPresetDataModel._tilesToJson)
      Map<TileId, PresetTileModel> npcs,
      @JsonKey(
          fromJson: TilesetPresetDataModel._tilesFromJson,
          toJson: TilesetPresetDataModel._tilesToJson)
      Map<TileId, PresetTileModel> players,
      @JsonKey(
          fromJson: TilesetPresetDataModel._tilesFromJson,
          toJson: TilesetPresetDataModel._tilesToJson)
      Map<TileId, PresetTileModel> other,
      Map<SpriteTileName, List<String>> autotileRules,
      @JsonKey(
          fromJson: LocalizedMap.fromJsonValueMap,
          toJson: LocalizedMap.toJsonValueMap)
      LocalizedMap name,
      TilesetType type});

  @override
  $LocalizedMapCopyWith<$Res> get name;
}

/// @nodoc
class __$$_TilesetPresetDataModelCopyWithImpl<$Res>
    extends _$TilesetPresetDataModelCopyWithImpl<$Res,
        _$_TilesetPresetDataModel>
    implements _$$_TilesetPresetDataModelCopyWith<$Res> {
  __$$_TilesetPresetDataModelCopyWithImpl(_$_TilesetPresetDataModel _value,
      $Res Function(_$_TilesetPresetDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tiles = null,
    Object? objects = null,
    Object? npcs = null,
    Object? players = null,
    Object? other = null,
    Object? autotileRules = null,
    Object? name = null,
    Object? type = null,
  }) {
    return _then(_$_TilesetPresetDataModel(
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
      other: null == other
          ? _value._other
          : other // ignore: cast_nullable_to_non_nullable
              as Map<TileId, PresetTileModel>,
      autotileRules: null == autotileRules
          ? _value._autotileRules
          : autotileRules // ignore: cast_nullable_to_non_nullable
              as Map<SpriteTileName, List<String>>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as LocalizedMap,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TilesetType,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_TilesetPresetDataModel implements _TilesetPresetDataModel {
  const _$_TilesetPresetDataModel(
      {@JsonKey(
          fromJson: TilesetPresetDataModel._tilesFromJson,
          toJson: TilesetPresetDataModel._tilesToJson)
      final Map<TileId, PresetTileModel> tiles = const {},
      @JsonKey(
          fromJson: TilesetPresetDataModel._tilesFromJson,
          toJson: TilesetPresetDataModel._tilesToJson)
      final Map<TileId, PresetTileModel> objects = const {},
      @JsonKey(
          fromJson: TilesetPresetDataModel._tilesFromJson,
          toJson: TilesetPresetDataModel._tilesToJson)
      final Map<TileId, PresetTileModel> npcs = const {},
      @JsonKey(
          fromJson: TilesetPresetDataModel._tilesFromJson,
          toJson: TilesetPresetDataModel._tilesToJson)
      final Map<TileId, PresetTileModel> players = const {},
      @JsonKey(
          fromJson: TilesetPresetDataModel._tilesFromJson,
          toJson: TilesetPresetDataModel._tilesToJson)
      final Map<TileId, PresetTileModel> other = const {},
      final Map<SpriteTileName, List<String>> autotileRules = _nameCodes,
      @JsonKey(
          fromJson: LocalizedMap.fromJsonValueMap,
          toJson: LocalizedMap.toJsonValueMap)
      this.name = LocalizedMap.empty,
      this.type = TilesetType.colourful})
      : _tiles = tiles,
        _objects = objects,
        _npcs = npcs,
        _players = players,
        _other = other,
        _autotileRules = autotileRules;

  factory _$_TilesetPresetDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_TilesetPresetDataModelFromJson(json);

  final Map<TileId, PresetTileModel> _tiles;
  @override
  @JsonKey(
      fromJson: TilesetPresetDataModel._tilesFromJson,
      toJson: TilesetPresetDataModel._tilesToJson)
  Map<TileId, PresetTileModel> get tiles {
    if (_tiles is EqualUnmodifiableMapView) return _tiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_tiles);
  }

  final Map<TileId, PresetTileModel> _objects;
  @override
  @JsonKey(
      fromJson: TilesetPresetDataModel._tilesFromJson,
      toJson: TilesetPresetDataModel._tilesToJson)
  Map<TileId, PresetTileModel> get objects {
    if (_objects is EqualUnmodifiableMapView) return _objects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_objects);
  }

  final Map<TileId, PresetTileModel> _npcs;
  @override
  @JsonKey(
      fromJson: TilesetPresetDataModel._tilesFromJson,
      toJson: TilesetPresetDataModel._tilesToJson)
  Map<TileId, PresetTileModel> get npcs {
    if (_npcs is EqualUnmodifiableMapView) return _npcs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_npcs);
  }

  final Map<TileId, PresetTileModel> _players;
  @override
  @JsonKey(
      fromJson: TilesetPresetDataModel._tilesFromJson,
      toJson: TilesetPresetDataModel._tilesToJson)
  Map<TileId, PresetTileModel> get players {
    if (_players is EqualUnmodifiableMapView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_players);
  }

  final Map<TileId, PresetTileModel> _other;
  @override
  @JsonKey(
      fromJson: TilesetPresetDataModel._tilesFromJson,
      toJson: TilesetPresetDataModel._tilesToJson)
  Map<TileId, PresetTileModel> get other {
    if (_other is EqualUnmodifiableMapView) return _other;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_other);
  }

  final Map<SpriteTileName, List<String>> _autotileRules;
  @override
  @JsonKey()
  Map<SpriteTileName, List<String>> get autotileRules {
    if (_autotileRules is EqualUnmodifiableMapView) return _autotileRules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_autotileRules);
  }

  @override
  @JsonKey(
      fromJson: LocalizedMap.fromJsonValueMap,
      toJson: LocalizedMap.toJsonValueMap)
  final LocalizedMap name;
  @override
  @JsonKey()
  final TilesetType type;

  @override
  String toString() {
    return 'TilesetPresetDataModel(tiles: $tiles, objects: $objects, npcs: $npcs, players: $players, other: $other, autotileRules: $autotileRules, name: $name, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TilesetPresetDataModel &&
            const DeepCollectionEquality().equals(other._tiles, _tiles) &&
            const DeepCollectionEquality().equals(other._objects, _objects) &&
            const DeepCollectionEquality().equals(other._npcs, _npcs) &&
            const DeepCollectionEquality().equals(other._players, _players) &&
            const DeepCollectionEquality().equals(other._other, this._other) &&
            const DeepCollectionEquality()
                .equals(other._autotileRules, _autotileRules) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tiles),
      const DeepCollectionEquality().hash(_objects),
      const DeepCollectionEquality().hash(_npcs),
      const DeepCollectionEquality().hash(_players),
      const DeepCollectionEquality().hash(_other),
      const DeepCollectionEquality().hash(_autotileRules),
      name,
      type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TilesetPresetDataModelCopyWith<_$_TilesetPresetDataModel> get copyWith =>
      __$$_TilesetPresetDataModelCopyWithImpl<_$_TilesetPresetDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TilesetPresetDataModelToJson(
      this,
    );
  }
}

abstract class _TilesetPresetDataModel implements TilesetPresetDataModel {
  const factory _TilesetPresetDataModel(
      {@JsonKey(
          fromJson: TilesetPresetDataModel._tilesFromJson,
          toJson: TilesetPresetDataModel._tilesToJson)
      final Map<TileId, PresetTileModel> tiles,
      @JsonKey(
          fromJson: TilesetPresetDataModel._tilesFromJson,
          toJson: TilesetPresetDataModel._tilesToJson)
      final Map<TileId, PresetTileModel> objects,
      @JsonKey(
          fromJson: TilesetPresetDataModel._tilesFromJson,
          toJson: TilesetPresetDataModel._tilesToJson)
      final Map<TileId, PresetTileModel> npcs,
      @JsonKey(
          fromJson: TilesetPresetDataModel._tilesFromJson,
          toJson: TilesetPresetDataModel._tilesToJson)
      final Map<TileId, PresetTileModel> players,
      @JsonKey(
          fromJson: TilesetPresetDataModel._tilesFromJson,
          toJson: TilesetPresetDataModel._tilesToJson)
      final Map<TileId, PresetTileModel> other,
      final Map<SpriteTileName, List<String>> autotileRules,
      @JsonKey(
          fromJson: LocalizedMap.fromJsonValueMap,
          toJson: LocalizedMap.toJsonValueMap)
      final LocalizedMap name,
      final TilesetType type}) = _$_TilesetPresetDataModel;

  factory _TilesetPresetDataModel.fromJson(Map<String, dynamic> json) =
      _$_TilesetPresetDataModel.fromJson;

  @override
  @JsonKey(
      fromJson: TilesetPresetDataModel._tilesFromJson,
      toJson: TilesetPresetDataModel._tilesToJson)
  Map<TileId, PresetTileModel> get tiles;
  @override
  @JsonKey(
      fromJson: TilesetPresetDataModel._tilesFromJson,
      toJson: TilesetPresetDataModel._tilesToJson)
  Map<TileId, PresetTileModel> get objects;
  @override
  @JsonKey(
      fromJson: TilesetPresetDataModel._tilesFromJson,
      toJson: TilesetPresetDataModel._tilesToJson)
  Map<TileId, PresetTileModel> get npcs;
  @override
  @JsonKey(
      fromJson: TilesetPresetDataModel._tilesFromJson,
      toJson: TilesetPresetDataModel._tilesToJson)
  Map<TileId, PresetTileModel> get players;
  @override
  @JsonKey(
      fromJson: TilesetPresetDataModel._tilesFromJson,
      toJson: TilesetPresetDataModel._tilesToJson)
  Map<TileId, PresetTileModel> get other;
  @override
  Map<SpriteTileName, List<String>> get autotileRules;
  @override
  @JsonKey(
      fromJson: LocalizedMap.fromJsonValueMap,
      toJson: LocalizedMap.toJsonValueMap)
  LocalizedMap get name;
  @override
  TilesetType get type;
  @override
  @JsonKey(ignore: true)
  _$$_TilesetPresetDataModelCopyWith<_$_TilesetPresetDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TilesetConfigModel {
  /// should be a _preset_data.json
  String get path => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TilesetConfigModelCopyWith<TilesetConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TilesetConfigModelCopyWith<$Res> {
  factory $TilesetConfigModelCopyWith(
          TilesetConfigModel value, $Res Function(TilesetConfigModel) then) =
      _$TilesetConfigModelCopyWithImpl<$Res, TilesetConfigModel>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class _$TilesetConfigModelCopyWithImpl<$Res, $Val extends TilesetConfigModel>
    implements $TilesetConfigModelCopyWith<$Res> {
  _$TilesetConfigModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TilesetConfigModelCopyWith<$Res>
    implements $TilesetConfigModelCopyWith<$Res> {
  factory _$$_TilesetConfigModelCopyWith(_$_TilesetConfigModel value,
          $Res Function(_$_TilesetConfigModel) then) =
      __$$_TilesetConfigModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$_TilesetConfigModelCopyWithImpl<$Res>
    extends _$TilesetConfigModelCopyWithImpl<$Res, _$_TilesetConfigModel>
    implements _$$_TilesetConfigModelCopyWith<$Res> {
  __$$_TilesetConfigModelCopyWithImpl(
      _$_TilesetConfigModel _value, $Res Function(_$_TilesetConfigModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$_TilesetConfigModel(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TilesetConfigModel extends _TilesetConfigModel {
  const _$_TilesetConfigModel({this.path = ''}) : super._();

  /// should be a _preset_data.json
  @override
  @JsonKey()
  final String path;

  @override
  String toString() {
    return 'TilesetConfigModel(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TilesetConfigModel &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TilesetConfigModelCopyWith<_$_TilesetConfigModel> get copyWith =>
      __$$_TilesetConfigModelCopyWithImpl<_$_TilesetConfigModel>(
          this, _$identity);
}

abstract class _TilesetConfigModel extends TilesetConfigModel {
  const factory _TilesetConfigModel({final String path}) =
      _$_TilesetConfigModel;
  const _TilesetConfigModel._() : super._();

  @override

  /// should be a _preset_data.json
  String get path;
  @override
  @JsonKey(ignore: true)
  _$$_TilesetConfigModelCopyWith<_$_TilesetConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TilesetPresetResources {
  LocalizedMap get name => throw _privateConstructorUsedError;
  TilesetType get type => throw _privateConstructorUsedError;
  Map<SpriteTileName, List<String>> get autotileRules =>
      throw _privateConstructorUsedError;
  Map<TileId, PresetTileResource> get tiles =>
      throw _privateConstructorUsedError;
  Map<TileId, PresetTileResource> get objects =>
      throw _privateConstructorUsedError;
  Map<TileId, PresetTileResource> get npcs =>
      throw _privateConstructorUsedError;
  Map<TileId, PresetTileResource> get players =>
      throw _privateConstructorUsedError;
  Map<TileId, PresetTileResource> get other =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TilesetPresetResourcesCopyWith<TilesetPresetResources> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TilesetPresetResourcesCopyWith<$Res> {
  factory $TilesetPresetResourcesCopyWith(TilesetPresetResources value,
          $Res Function(TilesetPresetResources) then) =
      _$TilesetPresetResourcesCopyWithImpl<$Res, TilesetPresetResources>;
  @useResult
  $Res call(
      {LocalizedMap name,
      TilesetType type,
      Map<SpriteTileName, List<String>> autotileRules,
      Map<TileId, PresetTileResource> tiles,
      Map<TileId, PresetTileResource> objects,
      Map<TileId, PresetTileResource> npcs,
      Map<TileId, PresetTileResource> players,
      Map<TileId, PresetTileResource> other});

  $LocalizedMapCopyWith<$Res> get name;
}

/// @nodoc
class _$TilesetPresetResourcesCopyWithImpl<$Res,
        $Val extends TilesetPresetResources>
    implements $TilesetPresetResourcesCopyWith<$Res> {
  _$TilesetPresetResourcesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? autotileRules = null,
    Object? tiles = null,
    Object? objects = null,
    Object? npcs = null,
    Object? players = null,
    Object? other = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as LocalizedMap,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TilesetType,
      autotileRules: null == autotileRules
          ? _value.autotileRules
          : autotileRules // ignore: cast_nullable_to_non_nullable
              as Map<SpriteTileName, List<String>>,
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
      other: null == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as Map<TileId, PresetTileResource>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocalizedMapCopyWith<$Res> get name {
    return $LocalizedMapCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TilesetPresetResourcesCopyWith<$Res>
    implements $TilesetPresetResourcesCopyWith<$Res> {
  factory _$$_TilesetPresetResourcesCopyWith(_$_TilesetPresetResources value,
          $Res Function(_$_TilesetPresetResources) then) =
      __$$_TilesetPresetResourcesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LocalizedMap name,
      TilesetType type,
      Map<SpriteTileName, List<String>> autotileRules,
      Map<TileId, PresetTileResource> tiles,
      Map<TileId, PresetTileResource> objects,
      Map<TileId, PresetTileResource> npcs,
      Map<TileId, PresetTileResource> players,
      Map<TileId, PresetTileResource> other});

  @override
  $LocalizedMapCopyWith<$Res> get name;
}

/// @nodoc
class __$$_TilesetPresetResourcesCopyWithImpl<$Res>
    extends _$TilesetPresetResourcesCopyWithImpl<$Res,
        _$_TilesetPresetResources>
    implements _$$_TilesetPresetResourcesCopyWith<$Res> {
  __$$_TilesetPresetResourcesCopyWithImpl(_$_TilesetPresetResources _value,
      $Res Function(_$_TilesetPresetResources) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? autotileRules = null,
    Object? tiles = null,
    Object? objects = null,
    Object? npcs = null,
    Object? players = null,
    Object? other = null,
  }) {
    return _then(_$_TilesetPresetResources(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as LocalizedMap,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TilesetType,
      autotileRules: null == autotileRules
          ? _value._autotileRules
          : autotileRules // ignore: cast_nullable_to_non_nullable
              as Map<SpriteTileName, List<String>>,
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
      other: null == other
          ? _value._other
          : other // ignore: cast_nullable_to_non_nullable
              as Map<TileId, PresetTileResource>,
    ));
  }
}

/// @nodoc

class _$_TilesetPresetResources implements _TilesetPresetResources {
  const _$_TilesetPresetResources(
      {this.name = LocalizedMap.empty,
      this.type = TilesetType.colourful,
      final Map<SpriteTileName, List<String>> autotileRules = const {},
      final Map<TileId, PresetTileResource> tiles = const {},
      final Map<TileId, PresetTileResource> objects = const {},
      final Map<TileId, PresetTileResource> npcs = const {},
      final Map<TileId, PresetTileResource> players = const {},
      final Map<TileId, PresetTileResource> other = const {}})
      : _autotileRules = autotileRules,
        _tiles = tiles,
        _objects = objects,
        _npcs = npcs,
        _players = players,
        _other = other;

  @override
  @JsonKey()
  final LocalizedMap name;
  @override
  @JsonKey()
  final TilesetType type;
  final Map<SpriteTileName, List<String>> _autotileRules;
  @override
  @JsonKey()
  Map<SpriteTileName, List<String>> get autotileRules {
    if (_autotileRules is EqualUnmodifiableMapView) return _autotileRules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_autotileRules);
  }

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

  final Map<TileId, PresetTileResource> _other;
  @override
  @JsonKey()
  Map<TileId, PresetTileResource> get other {
    if (_other is EqualUnmodifiableMapView) return _other;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_other);
  }

  @override
  String toString() {
    return 'TilesetPresetResources(name: $name, type: $type, autotileRules: $autotileRules, tiles: $tiles, objects: $objects, npcs: $npcs, players: $players, other: $other)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TilesetPresetResources &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._autotileRules, _autotileRules) &&
            const DeepCollectionEquality().equals(other._tiles, _tiles) &&
            const DeepCollectionEquality().equals(other._objects, _objects) &&
            const DeepCollectionEquality().equals(other._npcs, _npcs) &&
            const DeepCollectionEquality().equals(other._players, _players) &&
            const DeepCollectionEquality().equals(other._other, this._other));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      type,
      const DeepCollectionEquality().hash(_autotileRules),
      const DeepCollectionEquality().hash(_tiles),
      const DeepCollectionEquality().hash(_objects),
      const DeepCollectionEquality().hash(_npcs),
      const DeepCollectionEquality().hash(_players),
      const DeepCollectionEquality().hash(_other));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TilesetPresetResourcesCopyWith<_$_TilesetPresetResources> get copyWith =>
      __$$_TilesetPresetResourcesCopyWithImpl<_$_TilesetPresetResources>(
          this, _$identity);
}

abstract class _TilesetPresetResources implements TilesetPresetResources {
  const factory _TilesetPresetResources(
      {final LocalizedMap name,
      final TilesetType type,
      final Map<SpriteTileName, List<String>> autotileRules,
      final Map<TileId, PresetTileResource> tiles,
      final Map<TileId, PresetTileResource> objects,
      final Map<TileId, PresetTileResource> npcs,
      final Map<TileId, PresetTileResource> players,
      final Map<TileId, PresetTileResource> other}) = _$_TilesetPresetResources;

  @override
  LocalizedMap get name;
  @override
  TilesetType get type;
  @override
  Map<SpriteTileName, List<String>> get autotileRules;
  @override
  Map<TileId, PresetTileResource> get tiles;
  @override
  Map<TileId, PresetTileResource> get objects;
  @override
  Map<TileId, PresetTileResource> get npcs;
  @override
  Map<TileId, PresetTileResource> get players;
  @override
  Map<TileId, PresetTileResource> get other;
  @override
  @JsonKey(ignore: true)
  _$$_TilesetPresetResourcesCopyWith<_$_TilesetPresetResources> get copyWith =>
      throw _privateConstructorUsedError;
}
