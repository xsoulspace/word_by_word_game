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
  int get drawLayerIndex => throw _privateConstructorUsedError;

  /// Never changable in runtime tileset, like grass, water and data
  /// to instantiate objects
  TilesPresetResources get tileResources => throw _privateConstructorUsedError;

  /// can be negative and positive
  /// !maybe need to remove this
  double get gravityYPosition => throw _privateConstructorUsedError;

  /// can be negative and positive
  double get skyYPosition => throw _privateConstructorUsedError;

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
      int drawLayerIndex,
      TilesPresetResources tileResources,
      double gravityYPosition,
      double skyYPosition});

  $PresetTileResourceCopyWith<$Res>? get tileToDraw;
  $CanvasDataModelCopyWith<$Res> get canvasData;
  $TilesPresetResourcesCopyWith<$Res> get tileResources;
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
    Object? drawLayerIndex = null,
    Object? tileResources = null,
    Object? gravityYPosition = null,
    Object? skyYPosition = null,
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
      drawLayerIndex: null == drawLayerIndex
          ? _value.drawLayerIndex
          : drawLayerIndex // ignore: cast_nullable_to_non_nullable
              as int,
      tileResources: null == tileResources
          ? _value.tileResources
          : tileResources // ignore: cast_nullable_to_non_nullable
              as TilesPresetResources,
      gravityYPosition: null == gravityYPosition
          ? _value.gravityYPosition
          : gravityYPosition // ignore: cast_nullable_to_non_nullable
              as double,
      skyYPosition: null == skyYPosition
          ? _value.skyYPosition
          : skyYPosition // ignore: cast_nullable_to_non_nullable
              as double,
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
  $TilesPresetResourcesCopyWith<$Res> get tileResources {
    return $TilesPresetResourcesCopyWith<$Res>(_value.tileResources, (value) {
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
      int drawLayerIndex,
      TilesPresetResources tileResources,
      double gravityYPosition,
      double skyYPosition});

  @override
  $PresetTileResourceCopyWith<$Res>? get tileToDraw;
  @override
  $CanvasDataModelCopyWith<$Res> get canvasData;
  @override
  $TilesPresetResourcesCopyWith<$Res> get tileResources;
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
    Object? drawLayerIndex = null,
    Object? tileResources = null,
    Object? gravityYPosition = null,
    Object? skyYPosition = null,
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
      drawLayerIndex: null == drawLayerIndex
          ? _value.drawLayerIndex
          : drawLayerIndex // ignore: cast_nullable_to_non_nullable
              as int,
      tileResources: null == tileResources
          ? _value.tileResources
          : tileResources // ignore: cast_nullable_to_non_nullable
              as TilesPresetResources,
      gravityYPosition: null == gravityYPosition
          ? _value.gravityYPosition
          : gravityYPosition // ignore: cast_nullable_to_non_nullable
              as double,
      skyYPosition: null == skyYPosition
          ? _value.skyYPosition
          : skyYPosition // ignore: cast_nullable_to_non_nullable
              as double,
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
      this.drawLayerIndex = 0,
      this.tileResources = TilesPresetResources.empty,
      this.gravityYPosition = 0,
      this.skyYPosition = 0})
      : super._();

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
  final int drawLayerIndex;

  /// Never changable in runtime tileset, like grass, water and data
  /// to instantiate objects
  @override
  @JsonKey()
  final TilesPresetResources tileResources;

  /// can be negative and positive
  /// !maybe need to remove this
  @override
  @JsonKey()
  final double gravityYPosition;

  /// can be negative and positive
  @override
  @JsonKey()
  final double skyYPosition;

  @override
  String toString() {
    return 'DrawerCubitState(origin: $origin, tileToDraw: $tileToDraw, isDeleteSelection: $isDeleteSelection, isDeleteSelectionCompletely: $isDeleteSelectionCompletely, canvasData: $canvasData, drawLayerIndex: $drawLayerIndex, tileResources: $tileResources, gravityYPosition: $gravityYPosition, skyYPosition: $skyYPosition)';
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
            (identical(other.drawLayerIndex, drawLayerIndex) ||
                other.drawLayerIndex == drawLayerIndex) &&
            (identical(other.tileResources, tileResources) ||
                other.tileResources == tileResources) &&
            (identical(other.gravityYPosition, gravityYPosition) ||
                other.gravityYPosition == gravityYPosition) &&
            (identical(other.skyYPosition, skyYPosition) ||
                other.skyYPosition == skyYPosition));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      origin,
      tileToDraw,
      isDeleteSelection,
      isDeleteSelectionCompletely,
      canvasData,
      drawLayerIndex,
      tileResources,
      gravityYPosition,
      skyYPosition);

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
      final int drawLayerIndex,
      final TilesPresetResources tileResources,
      final double gravityYPosition,
      final double skyYPosition}) = _$_DrawerCubitState;
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
  int get drawLayerIndex;
  @override

  /// Never changable in runtime tileset, like grass, water and data
  /// to instantiate objects
  TilesPresetResources get tileResources;
  @override

  /// can be negative and positive
  /// !maybe need to remove this
  double get gravityYPosition;
  @override

  /// can be negative and positive
  double get skyYPosition;
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
  const _$_MapEditorBlocState({this.isEditing = true});

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
mixin _$LiveWorldBlocState {
  /// The player object
  PlayerModel get player => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LiveWorldBlocStateCopyWith<LiveWorldBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveWorldBlocStateCopyWith<$Res> {
  factory $LiveWorldBlocStateCopyWith(
          LiveWorldBlocState value, $Res Function(LiveWorldBlocState) then) =
      _$LiveWorldBlocStateCopyWithImpl<$Res, LiveWorldBlocState>;
  @useResult
  $Res call({PlayerModel player});

  $PlayerModelCopyWith<$Res> get player;
}

/// @nodoc
class _$LiveWorldBlocStateCopyWithImpl<$Res, $Val extends LiveWorldBlocState>
    implements $LiveWorldBlocStateCopyWith<$Res> {
  _$LiveWorldBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
  }) {
    return _then(_value.copyWith(
      player: null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as PlayerModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlayerModelCopyWith<$Res> get player {
    return $PlayerModelCopyWith<$Res>(_value.player, (value) {
      return _then(_value.copyWith(player: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LiveWorldBlocStateCopyWith<$Res>
    implements $LiveWorldBlocStateCopyWith<$Res> {
  factory _$$_LiveWorldBlocStateCopyWith(_$_LiveWorldBlocState value,
          $Res Function(_$_LiveWorldBlocState) then) =
      __$$_LiveWorldBlocStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlayerModel player});

  @override
  $PlayerModelCopyWith<$Res> get player;
}

/// @nodoc
class __$$_LiveWorldBlocStateCopyWithImpl<$Res>
    extends _$LiveWorldBlocStateCopyWithImpl<$Res, _$_LiveWorldBlocState>
    implements _$$_LiveWorldBlocStateCopyWith<$Res> {
  __$$_LiveWorldBlocStateCopyWithImpl(
      _$_LiveWorldBlocState _value, $Res Function(_$_LiveWorldBlocState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
  }) {
    return _then(_$_LiveWorldBlocState(
      player: null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as PlayerModel,
    ));
  }
}

/// @nodoc

class _$_LiveWorldBlocState extends _LiveWorldBlocState {
  const _$_LiveWorldBlocState({required this.player}) : super._();

  /// The player object
  @override
  final PlayerModel player;

  @override
  String toString() {
    return 'LiveWorldBlocState(player: $player)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LiveWorldBlocState &&
            (identical(other.player, player) || other.player == player));
  }

  @override
  int get hashCode => Object.hash(runtimeType, player);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LiveWorldBlocStateCopyWith<_$_LiveWorldBlocState> get copyWith =>
      __$$_LiveWorldBlocStateCopyWithImpl<_$_LiveWorldBlocState>(
          this, _$identity);
}

abstract class _LiveWorldBlocState extends LiveWorldBlocState {
  const factory _LiveWorldBlocState({required final PlayerModel player}) =
      _$_LiveWorldBlocState;
  const _LiveWorldBlocState._() : super._();

  @override

  /// The player object
  PlayerModel get player;
  @override
  @JsonKey(ignore: true)
  _$$_LiveWorldBlocStateCopyWith<_$_LiveWorldBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WorldEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WorldTimeMechanics worldTimeManager) timeTick,
    required TResult Function() init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WorldTimeMechanics worldTimeManager)? timeTick,
    TResult? Function()? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorldTimeMechanics worldTimeManager)? timeTick,
    TResult Function()? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WorldTimeTickEvent value) timeTick,
    required TResult Function(InitWorldEvent value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WorldTimeTickEvent value)? timeTick,
    TResult? Function(InitWorldEvent value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WorldTimeTickEvent value)? timeTick,
    TResult Function(InitWorldEvent value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorldEventCopyWith<$Res> {
  factory $WorldEventCopyWith(
          WorldEvent value, $Res Function(WorldEvent) then) =
      _$WorldEventCopyWithImpl<$Res, WorldEvent>;
}

/// @nodoc
class _$WorldEventCopyWithImpl<$Res, $Val extends WorldEvent>
    implements $WorldEventCopyWith<$Res> {
  _$WorldEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WorldTimeTickEventCopyWith<$Res> {
  factory _$$WorldTimeTickEventCopyWith(_$WorldTimeTickEvent value,
          $Res Function(_$WorldTimeTickEvent) then) =
      __$$WorldTimeTickEventCopyWithImpl<$Res>;
  @useResult
  $Res call({WorldTimeMechanics worldTimeManager});
}

/// @nodoc
class __$$WorldTimeTickEventCopyWithImpl<$Res>
    extends _$WorldEventCopyWithImpl<$Res, _$WorldTimeTickEvent>
    implements _$$WorldTimeTickEventCopyWith<$Res> {
  __$$WorldTimeTickEventCopyWithImpl(
      _$WorldTimeTickEvent _value, $Res Function(_$WorldTimeTickEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? worldTimeManager = null,
  }) {
    return _then(_$WorldTimeTickEvent(
      worldTimeManager: null == worldTimeManager
          ? _value.worldTimeManager
          : worldTimeManager // ignore: cast_nullable_to_non_nullable
              as WorldTimeMechanics,
    ));
  }
}

/// @nodoc

class _$WorldTimeTickEvent implements WorldTimeTickEvent {
  const _$WorldTimeTickEvent({required this.worldTimeManager});

  @override
  final WorldTimeMechanics worldTimeManager;

  @override
  String toString() {
    return 'WorldEvent.timeTick(worldTimeManager: $worldTimeManager)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorldTimeTickEvent &&
            (identical(other.worldTimeManager, worldTimeManager) ||
                other.worldTimeManager == worldTimeManager));
  }

  @override
  int get hashCode => Object.hash(runtimeType, worldTimeManager);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorldTimeTickEventCopyWith<_$WorldTimeTickEvent> get copyWith =>
      __$$WorldTimeTickEventCopyWithImpl<_$WorldTimeTickEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WorldTimeMechanics worldTimeManager) timeTick,
    required TResult Function() init,
  }) {
    return timeTick(worldTimeManager);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WorldTimeMechanics worldTimeManager)? timeTick,
    TResult? Function()? init,
  }) {
    return timeTick?.call(worldTimeManager);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorldTimeMechanics worldTimeManager)? timeTick,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (timeTick != null) {
      return timeTick(worldTimeManager);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WorldTimeTickEvent value) timeTick,
    required TResult Function(InitWorldEvent value) init,
  }) {
    return timeTick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WorldTimeTickEvent value)? timeTick,
    TResult? Function(InitWorldEvent value)? init,
  }) {
    return timeTick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WorldTimeTickEvent value)? timeTick,
    TResult Function(InitWorldEvent value)? init,
    required TResult orElse(),
  }) {
    if (timeTick != null) {
      return timeTick(this);
    }
    return orElse();
  }
}

abstract class WorldTimeTickEvent implements WorldEvent {
  const factory WorldTimeTickEvent(
          {required final WorldTimeMechanics worldTimeManager}) =
      _$WorldTimeTickEvent;

  WorldTimeMechanics get worldTimeManager;
  @JsonKey(ignore: true)
  _$$WorldTimeTickEventCopyWith<_$WorldTimeTickEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitWorldEventCopyWith<$Res> {
  factory _$$InitWorldEventCopyWith(
          _$InitWorldEvent value, $Res Function(_$InitWorldEvent) then) =
      __$$InitWorldEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitWorldEventCopyWithImpl<$Res>
    extends _$WorldEventCopyWithImpl<$Res, _$InitWorldEvent>
    implements _$$InitWorldEventCopyWith<$Res> {
  __$$InitWorldEventCopyWithImpl(
      _$InitWorldEvent _value, $Res Function(_$InitWorldEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitWorldEvent implements InitWorldEvent {
  const _$InitWorldEvent();

  @override
  String toString() {
    return 'WorldEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitWorldEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WorldTimeMechanics worldTimeManager) timeTick,
    required TResult Function() init,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WorldTimeMechanics worldTimeManager)? timeTick,
    TResult? Function()? init,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorldTimeMechanics worldTimeManager)? timeTick,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WorldTimeTickEvent value) timeTick,
    required TResult Function(InitWorldEvent value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WorldTimeTickEvent value)? timeTick,
    TResult? Function(InitWorldEvent value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WorldTimeTickEvent value)? timeTick,
    TResult Function(InitWorldEvent value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitWorldEvent implements WorldEvent {
  const factory InitWorldEvent() = _$InitWorldEvent;
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
