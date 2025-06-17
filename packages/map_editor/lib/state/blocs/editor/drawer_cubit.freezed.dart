// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drawer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

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

  /// Create a copy of DrawerCubitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DrawerCubitStateCopyWith<DrawerCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawerCubitStateCopyWith<$Res> {
  factory $DrawerCubitStateCopyWith(
    DrawerCubitState value,
    $Res Function(DrawerCubitState) then,
  ) = _$DrawerCubitStateCopyWithImpl<$Res, DrawerCubitState>;
  @useResult
  $Res call({
    Vector2 origin,
    PresetTileResource? tileToDraw,
    bool isDeleteSelection,
    bool isDeleteSelectionCompletely,
    CanvasDataModel canvasData,
    LayerModelId drawLayerId,
    TilesetPresetResources tileResources,
    List<TilesetConfigModel> tilesetsConfigs,
  });

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

  /// Create a copy of DrawerCubitState
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(
      _value.copyWith(
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
          )
          as $Val,
    );
  }

  /// Create a copy of DrawerCubitState
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of DrawerCubitState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CanvasDataModelCopyWith<$Res> get canvasData {
    return $CanvasDataModelCopyWith<$Res>(_value.canvasData, (value) {
      return _then(_value.copyWith(canvasData: value) as $Val);
    });
  }

  /// Create a copy of DrawerCubitState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LayerModelIdCopyWith<$Res> get drawLayerId {
    return $LayerModelIdCopyWith<$Res>(_value.drawLayerId, (value) {
      return _then(_value.copyWith(drawLayerId: value) as $Val);
    });
  }

  /// Create a copy of DrawerCubitState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TilesetPresetResourcesCopyWith<$Res> get tileResources {
    return $TilesetPresetResourcesCopyWith<$Res>(_value.tileResources, (value) {
      return _then(_value.copyWith(tileResources: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DrawerCubitStateImplCopyWith<$Res>
    implements $DrawerCubitStateCopyWith<$Res> {
  factory _$$DrawerCubitStateImplCopyWith(
    _$DrawerCubitStateImpl value,
    $Res Function(_$DrawerCubitStateImpl) then,
  ) = __$$DrawerCubitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Vector2 origin,
    PresetTileResource? tileToDraw,
    bool isDeleteSelection,
    bool isDeleteSelectionCompletely,
    CanvasDataModel canvasData,
    LayerModelId drawLayerId,
    TilesetPresetResources tileResources,
    List<TilesetConfigModel> tilesetsConfigs,
  });

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
class __$$DrawerCubitStateImplCopyWithImpl<$Res>
    extends _$DrawerCubitStateCopyWithImpl<$Res, _$DrawerCubitStateImpl>
    implements _$$DrawerCubitStateImplCopyWith<$Res> {
  __$$DrawerCubitStateImplCopyWithImpl(
    _$DrawerCubitStateImpl _value,
    $Res Function(_$DrawerCubitStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DrawerCubitState
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(
      _$DrawerCubitStateImpl(
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
      ),
    );
  }
}

/// @nodoc

class _$DrawerCubitStateImpl extends _DrawerCubitState {
  const _$DrawerCubitStateImpl({
    required this.origin,
    this.tileToDraw,
    this.isDeleteSelection = false,
    this.isDeleteSelectionCompletely = false,
    this.canvasData = CanvasDataModel.empty,
    this.drawLayerId = LayerModelId.empty,
    this.tileResources = TilesetPresetResources.empty,
    final List<TilesetConfigModel> tilesetsConfigs = const [],
  }) : _tilesetsConfigs = tilesetsConfigs,
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DrawerCubitStateImpl &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.tileToDraw, tileToDraw) ||
                other.tileToDraw == tileToDraw) &&
            (identical(other.isDeleteSelection, isDeleteSelection) ||
                other.isDeleteSelection == isDeleteSelection) &&
            (identical(
                  other.isDeleteSelectionCompletely,
                  isDeleteSelectionCompletely,
                ) ||
                other.isDeleteSelectionCompletely ==
                    isDeleteSelectionCompletely) &&
            (identical(other.canvasData, canvasData) ||
                other.canvasData == canvasData) &&
            (identical(other.drawLayerId, drawLayerId) ||
                other.drawLayerId == drawLayerId) &&
            (identical(other.tileResources, tileResources) ||
                other.tileResources == tileResources) &&
            const DeepCollectionEquality().equals(
              other._tilesetsConfigs,
              _tilesetsConfigs,
            ));
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
    const DeepCollectionEquality().hash(_tilesetsConfigs),
  );

  /// Create a copy of DrawerCubitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DrawerCubitStateImplCopyWith<_$DrawerCubitStateImpl> get copyWith =>
      __$$DrawerCubitStateImplCopyWithImpl<_$DrawerCubitStateImpl>(
        this,
        _$identity,
      );
}

abstract class _DrawerCubitState extends DrawerCubitState {
  const factory _DrawerCubitState({
    required final Vector2 origin,
    final PresetTileResource? tileToDraw,
    final bool isDeleteSelection,
    final bool isDeleteSelectionCompletely,
    final CanvasDataModel canvasData,
    final LayerModelId drawLayerId,
    final TilesetPresetResources tileResources,
    final List<TilesetConfigModel> tilesetsConfigs,
  }) = _$DrawerCubitStateImpl;
  const _DrawerCubitState._() : super._();

  /// Real origin for all elements
  @override
  Vector2 get origin;
  @override
  PresetTileResource? get tileToDraw;
  @override
  bool get isDeleteSelection;
  @override
  bool get isDeleteSelectionCompletely;
  @override
  CanvasDataModel get canvasData;

  /// use to get or update layer [canvasData]
  ///
  /// shortcut - [drawLayer]
  @override
  LayerModelId get drawLayerId;

  /// Never changable in runtime tileset, like grass, water and data
  /// to instantiate objects
  @override
  TilesetPresetResources get tileResources;
  @override
  List<TilesetConfigModel> get tilesetsConfigs;

  /// Create a copy of DrawerCubitState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DrawerCubitStateImplCopyWith<_$DrawerCubitStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
