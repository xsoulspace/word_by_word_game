// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DrawerCubitState {
  /// Real origin for all elements
  Vector2 get origin => throw _privateConstructorUsedError;
  PresetTileResource? get tileToDraw => throw _privateConstructorUsedError;
  bool get isDeleteSelection => throw _privateConstructorUsedError;
  bool get isDeleteSelectionCompletely => throw _privateConstructorUsedError;
  CanvasDataModel get canvasData => throw _privateConstructorUsedError;

  /// use to get or update layer [canvasData]
  ///
  /// shortcut - [drawLayer]
  LayerModelId get drawLayerId => throw _privateConstructorUsedError;

  /// Never changable in runtime tileset, like grass, water and data
  /// to instantiate objects
  TilesetPresetResources get tileResources =>
      throw _privateConstructorUsedError;
  List<TilesetConfigModel> get tilesetsConfigs =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DrawerCubitStateCopyWith<DrawerCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawerCubitStateCopyWith<$Res> {
  factory $DrawerCubitStateCopyWith(
          DrawerCubitState value, $Res Function(DrawerCubitState) then) =
      _$DrawerCubitStateCopyWithImpl<$Res, DrawerCubitState>;
  @useResult
  $Res call(
      {Vector2 origin,
      PresetTileResource? tileToDraw,
      bool isDeleteSelection,
      bool isDeleteSelectionCompletely,
      CanvasDataModel canvasData,
      LayerModelId drawLayerId,
      TilesetPresetResources tileResources,
      List<TilesetConfigModel> tilesetsConfigs});

  $PresetTileResourceCopyWith<$Res>? get tileToDraw;
  $CanvasDataModelCopyWith<$Res> get canvasData;
  $LayerModelIdCopyWith<$Res> get drawLayerId;
  $TilesetPresetResourcesCopyWith<$Res> get tileResources;
}

/// @nodoc
class _$DrawerCubitStateCopyWithImpl<$Res, $Val extends DrawerCubitState>
    implements $DrawerCubitStateCopyWith<$Res> {
  _$DrawerCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? origin = null,
    Object? tileToDraw = freezed,
    Object? isDeleteSelection = null,
    Object? isDeleteSelectionCompletely = null,
    Object? canvasData = null,
    Object? drawLayerId = null,
    Object? tileResources = null,
    Object? tilesetsConfigs = null,
  }) {
    return _then(_value.copyWith(
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as Vector2,
      tileToDraw: freezed == tileToDraw
          ? _value.tileToDraw
          : tileToDraw // ignore: cast_nullable_to_non_nullable
              as PresetTileResource?,
      isDeleteSelection: null == isDeleteSelection
          ? _value.isDeleteSelection
          : isDeleteSelection // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleteSelectionCompletely: null == isDeleteSelectionCompletely
          ? _value.isDeleteSelectionCompletely
          : isDeleteSelectionCompletely // ignore: cast_nullable_to_non_nullable
              as bool,
      canvasData: null == canvasData
          ? _value.canvasData
          : canvasData // ignore: cast_nullable_to_non_nullable
              as CanvasDataModel,
      drawLayerId: null == drawLayerId
          ? _value.drawLayerId
          : drawLayerId // ignore: cast_nullable_to_non_nullable
              as LayerModelId,
      tileResources: null == tileResources
          ? _value.tileResources
          : tileResources // ignore: cast_nullable_to_non_nullable
              as TilesetPresetResources,
      tilesetsConfigs: null == tilesetsConfigs
          ? _value.tilesetsConfigs
          : tilesetsConfigs // ignore: cast_nullable_to_non_nullable
              as List<TilesetConfigModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PresetTileResourceCopyWith<$Res>? get tileToDraw {
    if (_value.tileToDraw == null) {
      return null;
    }

    return $PresetTileResourceCopyWith<$Res>(_value.tileToDraw!, (value) {
      return _then(_value.copyWith(tileToDraw: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CanvasDataModelCopyWith<$Res> get canvasData {
    return $CanvasDataModelCopyWith<$Res>(_value.canvasData, (value) {
      return _then(_value.copyWith(canvasData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LayerModelIdCopyWith<$Res> get drawLayerId {
    return $LayerModelIdCopyWith<$Res>(_value.drawLayerId, (value) {
      return _then(_value.copyWith(drawLayerId: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TilesetPresetResourcesCopyWith<$Res> get tileResources {
    return $TilesetPresetResourcesCopyWith<$Res>(_value.tileResources, (value) {
      return _then(_value.copyWith(tileResources: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DrawerCubitStateCopyWith<$Res>
    implements $DrawerCubitStateCopyWith<$Res> {
  factory _$$_DrawerCubitStateCopyWith(
          _$_DrawerCubitState value, $Res Function(_$_DrawerCubitState) then) =
      __$$_DrawerCubitStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Vector2 origin,
      PresetTileResource? tileToDraw,
      bool isDeleteSelection,
      bool isDeleteSelectionCompletely,
      CanvasDataModel canvasData,
      LayerModelId drawLayerId,
      TilesetPresetResources tileResources,
      List<TilesetConfigModel> tilesetsConfigs});

  @override
  $PresetTileResourceCopyWith<$Res>? get tileToDraw;
  @override
  $CanvasDataModelCopyWith<$Res> get canvasData;
  @override
  $LayerModelIdCopyWith<$Res> get drawLayerId;
  @override
  $TilesetPresetResourcesCopyWith<$Res> get tileResources;
}

/// @nodoc
class __$$_DrawerCubitStateCopyWithImpl<$Res>
    extends _$DrawerCubitStateCopyWithImpl<$Res, _$_DrawerCubitState>
    implements _$$_DrawerCubitStateCopyWith<$Res> {
  __$$_DrawerCubitStateCopyWithImpl(
      _$_DrawerCubitState _value, $Res Function(_$_DrawerCubitState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? origin = null,
    Object? tileToDraw = freezed,
    Object? isDeleteSelection = null,
    Object? isDeleteSelectionCompletely = null,
    Object? canvasData = null,
    Object? drawLayerId = null,
    Object? tileResources = null,
    Object? tilesetsConfigs = null,
  }) {
    return _then(_$_DrawerCubitState(
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as Vector2,
      tileToDraw: freezed == tileToDraw
          ? _value.tileToDraw
          : tileToDraw // ignore: cast_nullable_to_non_nullable
              as PresetTileResource?,
      isDeleteSelection: null == isDeleteSelection
          ? _value.isDeleteSelection
          : isDeleteSelection // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleteSelectionCompletely: null == isDeleteSelectionCompletely
          ? _value.isDeleteSelectionCompletely
          : isDeleteSelectionCompletely // ignore: cast_nullable_to_non_nullable
              as bool,
      canvasData: null == canvasData
          ? _value.canvasData
          : canvasData // ignore: cast_nullable_to_non_nullable
              as CanvasDataModel,
      drawLayerId: null == drawLayerId
          ? _value.drawLayerId
          : drawLayerId // ignore: cast_nullable_to_non_nullable
              as LayerModelId,
      tileResources: null == tileResources
          ? _value.tileResources
          : tileResources // ignore: cast_nullable_to_non_nullable
              as TilesetPresetResources,
      tilesetsConfigs: null == tilesetsConfigs
          ? _value._tilesetsConfigs
          : tilesetsConfigs // ignore: cast_nullable_to_non_nullable
              as List<TilesetConfigModel>,
    ));
  }
}

/// @nodoc

class _$_DrawerCubitState extends _DrawerCubitState {
  const _$_DrawerCubitState(
      {required this.origin,
      this.tileToDraw,
      this.isDeleteSelection = false,
      this.isDeleteSelectionCompletely = false,
      this.canvasData = CanvasDataModel.empty,
      this.drawLayerId = LayerModelId.empty,
      this.tileResources = TilesetPresetResources.empty,
      final List<TilesetConfigModel> tilesetsConfigs = const []})
      : _tilesetsConfigs = tilesetsConfigs,
        super._();

  /// Real origin for all elements
  @override
  final Vector2 origin;
  @override
  final PresetTileResource? tileToDraw;
  @override
  @JsonKey()
  final bool isDeleteSelection;
  @override
  @JsonKey()
  final bool isDeleteSelectionCompletely;
  @override
  @JsonKey()
  final CanvasDataModel canvasData;

  /// use to get or update layer [canvasData]
  ///
  /// shortcut - [drawLayer]
  @override
  @JsonKey()
  final LayerModelId drawLayerId;

  /// Never changable in runtime tileset, like grass, water and data
  /// to instantiate objects
  @override
  @JsonKey()
  final TilesetPresetResources tileResources;
  final List<TilesetConfigModel> _tilesetsConfigs;
  @override
  @JsonKey()
  List<TilesetConfigModel> get tilesetsConfigs {
    if (_tilesetsConfigs is EqualUnmodifiableListView) return _tilesetsConfigs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tilesetsConfigs);
  }

  @override
  String toString() {
    return 'DrawerCubitState(origin: $origin, tileToDraw: $tileToDraw, isDeleteSelection: $isDeleteSelection, isDeleteSelectionCompletely: $isDeleteSelectionCompletely, canvasData: $canvasData, drawLayerId: $drawLayerId, tileResources: $tileResources, tilesetsConfigs: $tilesetsConfigs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DrawerCubitState &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.tileToDraw, tileToDraw) ||
                other.tileToDraw == tileToDraw) &&
            (identical(other.isDeleteSelection, isDeleteSelection) ||
                other.isDeleteSelection == isDeleteSelection) &&
            (identical(other.isDeleteSelectionCompletely,
                    isDeleteSelectionCompletely) ||
                other.isDeleteSelectionCompletely ==
                    isDeleteSelectionCompletely) &&
            (identical(other.canvasData, canvasData) ||
                other.canvasData == canvasData) &&
            (identical(other.drawLayerId, drawLayerId) ||
                other.drawLayerId == drawLayerId) &&
            (identical(other.tileResources, tileResources) ||
                other.tileResources == tileResources) &&
            const DeepCollectionEquality()
                .equals(other._tilesetsConfigs, _tilesetsConfigs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      origin,
      tileToDraw,
      isDeleteSelection,
      isDeleteSelectionCompletely,
      canvasData,
      drawLayerId,
      tileResources,
      const DeepCollectionEquality().hash(_tilesetsConfigs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DrawerCubitStateCopyWith<_$_DrawerCubitState> get copyWith =>
      __$$_DrawerCubitStateCopyWithImpl<_$_DrawerCubitState>(this, _$identity);
}

abstract class _DrawerCubitState extends DrawerCubitState {
  const factory _DrawerCubitState(
      {required final Vector2 origin,
      final PresetTileResource? tileToDraw,
      final bool isDeleteSelection,
      final bool isDeleteSelectionCompletely,
      final CanvasDataModel canvasData,
      final LayerModelId drawLayerId,
      final TilesetPresetResources tileResources,
      final List<TilesetConfigModel> tilesetsConfigs}) = _$_DrawerCubitState;
  const _DrawerCubitState._() : super._();

  @override

  /// Real origin for all elements
  Vector2 get origin;
  @override
  PresetTileResource? get tileToDraw;
  @override
  bool get isDeleteSelection;
  @override
  bool get isDeleteSelectionCompletely;
  @override
  CanvasDataModel get canvasData;
  @override

  /// use to get or update layer [canvasData]
  ///
  /// shortcut - [drawLayer]
  LayerModelId get drawLayerId;
  @override

  /// Never changable in runtime tileset, like grass, water and data
  /// to instantiate objects
  TilesetPresetResources get tileResources;
  @override
  List<TilesetConfigModel> get tilesetsConfigs;
  @override
  @JsonKey(ignore: true)
  _$$_DrawerCubitStateCopyWith<_$_DrawerCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MapEditorBlocState {
  bool get isEditing => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapEditorBlocStateCopyWith<MapEditorBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapEditorBlocStateCopyWith<$Res> {
  factory $MapEditorBlocStateCopyWith(
          MapEditorBlocState value, $Res Function(MapEditorBlocState) then) =
      _$MapEditorBlocStateCopyWithImpl<$Res, MapEditorBlocState>;
  @useResult
  $Res call({bool isEditing});
}

/// @nodoc
class _$MapEditorBlocStateCopyWithImpl<$Res, $Val extends MapEditorBlocState>
    implements $MapEditorBlocStateCopyWith<$Res> {
  _$MapEditorBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEditing = null,
  }) {
    return _then(_value.copyWith(
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MapEditorBlocStateCopyWith<$Res>
    implements $MapEditorBlocStateCopyWith<$Res> {
  factory _$$_MapEditorBlocStateCopyWith(_$_MapEditorBlocState value,
          $Res Function(_$_MapEditorBlocState) then) =
      __$$_MapEditorBlocStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isEditing});
}

/// @nodoc
class __$$_MapEditorBlocStateCopyWithImpl<$Res>
    extends _$MapEditorBlocStateCopyWithImpl<$Res, _$_MapEditorBlocState>
    implements _$$_MapEditorBlocStateCopyWith<$Res> {
  __$$_MapEditorBlocStateCopyWithImpl(
      _$_MapEditorBlocState _value, $Res Function(_$_MapEditorBlocState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEditing = null,
  }) {
    return _then(_$_MapEditorBlocState(
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MapEditorBlocState implements _MapEditorBlocState {
  const _$_MapEditorBlocState({this.isEditing = false});

  @override
  @JsonKey()
  final bool isEditing;

  @override
  String toString() {
    return 'MapEditorBlocState(isEditing: $isEditing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapEditorBlocState &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isEditing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MapEditorBlocStateCopyWith<_$_MapEditorBlocState> get copyWith =>
      __$$_MapEditorBlocStateCopyWithImpl<_$_MapEditorBlocState>(
          this, _$identity);
}

abstract class _MapEditorBlocState implements MapEditorBlocState {
  const factory _MapEditorBlocState({final bool isEditing}) =
      _$_MapEditorBlocState;

  @override
  bool get isEditing;
  @override
  @JsonKey(ignore: true)
  _$$_MapEditorBlocStateCopyWith<_$_MapEditorBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WorldState {
  WorldDateTimeModel get dateTime => throw _privateConstructorUsedError;
  WorldDateTimeModel get lastDateTime => throw _privateConstructorUsedError;
  int get dateTimeDelta => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorldStateCopyWith<WorldState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorldStateCopyWith<$Res> {
  factory $WorldStateCopyWith(
          WorldState value, $Res Function(WorldState) then) =
      _$WorldStateCopyWithImpl<$Res, WorldState>;
  @useResult
  $Res call(
      {WorldDateTimeModel dateTime,
      WorldDateTimeModel lastDateTime,
      int dateTimeDelta});

  $WorldDateTimeModelCopyWith<$Res> get dateTime;
  $WorldDateTimeModelCopyWith<$Res> get lastDateTime;
}

/// @nodoc
class _$WorldStateCopyWithImpl<$Res, $Val extends WorldState>
    implements $WorldStateCopyWith<$Res> {
  _$WorldStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? lastDateTime = null,
    Object? dateTimeDelta = null,
  }) {
    return _then(_value.copyWith(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as WorldDateTimeModel,
      lastDateTime: null == lastDateTime
          ? _value.lastDateTime
          : lastDateTime // ignore: cast_nullable_to_non_nullable
              as WorldDateTimeModel,
      dateTimeDelta: null == dateTimeDelta
          ? _value.dateTimeDelta
          : dateTimeDelta // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WorldDateTimeModelCopyWith<$Res> get dateTime {
    return $WorldDateTimeModelCopyWith<$Res>(_value.dateTime, (value) {
      return _then(_value.copyWith(dateTime: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WorldDateTimeModelCopyWith<$Res> get lastDateTime {
    return $WorldDateTimeModelCopyWith<$Res>(_value.lastDateTime, (value) {
      return _then(_value.copyWith(lastDateTime: value) as $Val);
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
  @useResult
  $Res call(
      {WorldDateTimeModel dateTime,
      WorldDateTimeModel lastDateTime,
      int dateTimeDelta});

  @override
  $WorldDateTimeModelCopyWith<$Res> get dateTime;
  @override
  $WorldDateTimeModelCopyWith<$Res> get lastDateTime;
}

/// @nodoc
class __$$_WorldStateCopyWithImpl<$Res>
    extends _$WorldStateCopyWithImpl<$Res, _$_WorldState>
    implements _$$_WorldStateCopyWith<$Res> {
  __$$_WorldStateCopyWithImpl(
      _$_WorldState _value, $Res Function(_$_WorldState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? lastDateTime = null,
    Object? dateTimeDelta = null,
  }) {
    return _then(_$_WorldState(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as WorldDateTimeModel,
      lastDateTime: null == lastDateTime
          ? _value.lastDateTime
          : lastDateTime // ignore: cast_nullable_to_non_nullable
              as WorldDateTimeModel,
      dateTimeDelta: null == dateTimeDelta
          ? _value.dateTimeDelta
          : dateTimeDelta // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_WorldState extends _WorldState {
  const _$_WorldState(
      {this.dateTime = const WorldDateTimeModel(),
      this.lastDateTime = const WorldDateTimeModel(),
      this.dateTimeDelta = 0})
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
  String toString() {
    return 'WorldState(dateTime: $dateTime, lastDateTime: $lastDateTime, dateTimeDelta: $dateTimeDelta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorldState &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.lastDateTime, lastDateTime) ||
                other.lastDateTime == lastDateTime) &&
            (identical(other.dateTimeDelta, dateTimeDelta) ||
                other.dateTimeDelta == dateTimeDelta));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, dateTime, lastDateTime, dateTimeDelta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorldStateCopyWith<_$_WorldState> get copyWith =>
      __$$_WorldStateCopyWithImpl<_$_WorldState>(this, _$identity);
}

abstract class _WorldState extends WorldState {
  const factory _WorldState(
      {final WorldDateTimeModel dateTime,
      final WorldDateTimeModel lastDateTime,
      final int dateTimeDelta}) = _$_WorldState;
  const _WorldState._() : super._();

  @override
  WorldDateTimeModel get dateTime;
  @override
  WorldDateTimeModel get lastDateTime;
  @override
  int get dateTimeDelta;
  @override
  @JsonKey(ignore: true)
  _$$_WorldStateCopyWith<_$_WorldState> get copyWith =>
      throw _privateConstructorUsedError;
}
