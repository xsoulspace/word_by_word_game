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
  int get selectionIndex => throw _privateConstructorUsedError;
  bool get isDeleteSelection => throw _privateConstructorUsedError;
  bool get isDeleteSelectionCompletely => throw _privateConstructorUsedError;
  Map<CellPointModel, CanvasTileModel> get canvasData =>
      throw _privateConstructorUsedError;

  /// can be negative and positive
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
      {int selectionIndex,
      bool isDeleteSelection,
      bool isDeleteSelectionCompletely,
      Map<CellPointModel, CanvasTileModel> canvasData,
      double gravityYPosition,
      double skyYPosition});
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
    Object? selectionIndex = null,
    Object? isDeleteSelection = null,
    Object? isDeleteSelectionCompletely = null,
    Object? canvasData = null,
    Object? gravityYPosition = null,
    Object? skyYPosition = null,
  }) {
    return _then(_value.copyWith(
      selectionIndex: null == selectionIndex
          ? _value.selectionIndex
          : selectionIndex // ignore: cast_nullable_to_non_nullable
              as int,
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
              as Map<CellPointModel, CanvasTileModel>,
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
      {int selectionIndex,
      bool isDeleteSelection,
      bool isDeleteSelectionCompletely,
      Map<CellPointModel, CanvasTileModel> canvasData,
      double gravityYPosition,
      double skyYPosition});
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
    Object? selectionIndex = null,
    Object? isDeleteSelection = null,
    Object? isDeleteSelectionCompletely = null,
    Object? canvasData = null,
    Object? gravityYPosition = null,
    Object? skyYPosition = null,
  }) {
    return _then(_$_DrawerCubitState(
      selectionIndex: null == selectionIndex
          ? _value.selectionIndex
          : selectionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isDeleteSelection: null == isDeleteSelection
          ? _value.isDeleteSelection
          : isDeleteSelection // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleteSelectionCompletely: null == isDeleteSelectionCompletely
          ? _value.isDeleteSelectionCompletely
          : isDeleteSelectionCompletely // ignore: cast_nullable_to_non_nullable
              as bool,
      canvasData: null == canvasData
          ? _value._canvasData
          : canvasData // ignore: cast_nullable_to_non_nullable
              as Map<CellPointModel, CanvasTileModel>,
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

class _$_DrawerCubitState implements _DrawerCubitState {
  const _$_DrawerCubitState(
      {this.selectionIndex = kMinSelectionIndex,
      this.isDeleteSelection = false,
      this.isDeleteSelectionCompletely = false,
      final Map<CellPointModel, CanvasTileModel> canvasData = const {},
      this.gravityYPosition = 0,
      this.skyYPosition = 0})
      : _canvasData = canvasData;

  @override
  @JsonKey()
  final int selectionIndex;
  @override
  @JsonKey()
  final bool isDeleteSelection;
  @override
  @JsonKey()
  final bool isDeleteSelectionCompletely;
  final Map<CellPointModel, CanvasTileModel> _canvasData;
  @override
  @JsonKey()
  Map<CellPointModel, CanvasTileModel> get canvasData {
    if (_canvasData is EqualUnmodifiableMapView) return _canvasData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_canvasData);
  }

  /// can be negative and positive
  @override
  @JsonKey()
  final double gravityYPosition;

  /// can be negative and positive
  @override
  @JsonKey()
  final double skyYPosition;

  @override
  String toString() {
    return 'DrawerCubitState(selectionIndex: $selectionIndex, isDeleteSelection: $isDeleteSelection, isDeleteSelectionCompletely: $isDeleteSelectionCompletely, canvasData: $canvasData, gravityYPosition: $gravityYPosition, skyYPosition: $skyYPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DrawerCubitState &&
            (identical(other.selectionIndex, selectionIndex) ||
                other.selectionIndex == selectionIndex) &&
            (identical(other.isDeleteSelection, isDeleteSelection) ||
                other.isDeleteSelection == isDeleteSelection) &&
            (identical(other.isDeleteSelectionCompletely,
                    isDeleteSelectionCompletely) ||
                other.isDeleteSelectionCompletely ==
                    isDeleteSelectionCompletely) &&
            const DeepCollectionEquality()
                .equals(other._canvasData, _canvasData) &&
            (identical(other.gravityYPosition, gravityYPosition) ||
                other.gravityYPosition == gravityYPosition) &&
            (identical(other.skyYPosition, skyYPosition) ||
                other.skyYPosition == skyYPosition));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectionIndex,
      isDeleteSelection,
      isDeleteSelectionCompletely,
      const DeepCollectionEquality().hash(_canvasData),
      gravityYPosition,
      skyYPosition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DrawerCubitStateCopyWith<_$_DrawerCubitState> get copyWith =>
      __$$_DrawerCubitStateCopyWithImpl<_$_DrawerCubitState>(this, _$identity);
}

abstract class _DrawerCubitState implements DrawerCubitState {
  const factory _DrawerCubitState(
      {final int selectionIndex,
      final bool isDeleteSelection,
      final bool isDeleteSelectionCompletely,
      final Map<CellPointModel, CanvasTileModel> canvasData,
      final double gravityYPosition,
      final double skyYPosition}) = _$_DrawerCubitState;

  @override
  int get selectionIndex;
  @override
  bool get isDeleteSelection;
  @override
  bool get isDeleteSelectionCompletely;
  @override
  Map<CellPointModel, CanvasTileModel> get canvasData;
  @override

  /// can be negative and positive
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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            Map<String, TileDataModel> tileData, bool isEditing)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(Map<String, TileDataModel> tileData, bool isEditing)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Map<String, TileDataModel> tileData, bool isEditing)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyMapEditorBlocState value) empty,
    required TResult Function(LoadedMapEditorBlocState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyMapEditorBlocState value)? empty,
    TResult? Function(LoadedMapEditorBlocState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyMapEditorBlocState value)? empty,
    TResult Function(LoadedMapEditorBlocState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapEditorBlocStateCopyWith<$Res> {
  factory $MapEditorBlocStateCopyWith(
          MapEditorBlocState value, $Res Function(MapEditorBlocState) then) =
      _$MapEditorBlocStateCopyWithImpl<$Res, MapEditorBlocState>;
}

/// @nodoc
class _$MapEditorBlocStateCopyWithImpl<$Res, $Val extends MapEditorBlocState>
    implements $MapEditorBlocStateCopyWith<$Res> {
  _$MapEditorBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmptyMapEditorBlocStateCopyWith<$Res> {
  factory _$$EmptyMapEditorBlocStateCopyWith(_$EmptyMapEditorBlocState value,
          $Res Function(_$EmptyMapEditorBlocState) then) =
      __$$EmptyMapEditorBlocStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyMapEditorBlocStateCopyWithImpl<$Res>
    extends _$MapEditorBlocStateCopyWithImpl<$Res, _$EmptyMapEditorBlocState>
    implements _$$EmptyMapEditorBlocStateCopyWith<$Res> {
  __$$EmptyMapEditorBlocStateCopyWithImpl(_$EmptyMapEditorBlocState _value,
      $Res Function(_$EmptyMapEditorBlocState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyMapEditorBlocState implements EmptyMapEditorBlocState {
  const _$EmptyMapEditorBlocState();

  @override
  String toString() {
    return 'MapEditorBlocState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyMapEditorBlocState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            Map<String, TileDataModel> tileData, bool isEditing)
        loaded,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(Map<String, TileDataModel> tileData, bool isEditing)?
        loaded,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Map<String, TileDataModel> tileData, bool isEditing)?
        loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyMapEditorBlocState value) empty,
    required TResult Function(LoadedMapEditorBlocState value) loaded,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyMapEditorBlocState value)? empty,
    TResult? Function(LoadedMapEditorBlocState value)? loaded,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyMapEditorBlocState value)? empty,
    TResult Function(LoadedMapEditorBlocState value)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyMapEditorBlocState implements MapEditorBlocState {
  const factory EmptyMapEditorBlocState() = _$EmptyMapEditorBlocState;
}

/// @nodoc
abstract class _$$LoadedMapEditorBlocStateCopyWith<$Res> {
  factory _$$LoadedMapEditorBlocStateCopyWith(_$LoadedMapEditorBlocState value,
          $Res Function(_$LoadedMapEditorBlocState) then) =
      __$$LoadedMapEditorBlocStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, TileDataModel> tileData, bool isEditing});
}

/// @nodoc
class __$$LoadedMapEditorBlocStateCopyWithImpl<$Res>
    extends _$MapEditorBlocStateCopyWithImpl<$Res, _$LoadedMapEditorBlocState>
    implements _$$LoadedMapEditorBlocStateCopyWith<$Res> {
  __$$LoadedMapEditorBlocStateCopyWithImpl(_$LoadedMapEditorBlocState _value,
      $Res Function(_$LoadedMapEditorBlocState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tileData = null,
    Object? isEditing = null,
  }) {
    return _then(_$LoadedMapEditorBlocState(
      tileData: null == tileData
          ? _value._tileData
          : tileData // ignore: cast_nullable_to_non_nullable
              as Map<String, TileDataModel>,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadedMapEditorBlocState implements LoadedMapEditorBlocState {
  const _$LoadedMapEditorBlocState(
      {required final Map<String, TileDataModel> tileData,
      this.isEditing = true})
      : _tileData = tileData;

  final Map<String, TileDataModel> _tileData;
  @override
  Map<String, TileDataModel> get tileData {
    if (_tileData is EqualUnmodifiableMapView) return _tileData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_tileData);
  }

  @override
  @JsonKey()
  final bool isEditing;

  @override
  String toString() {
    return 'MapEditorBlocState.loaded(tileData: $tileData, isEditing: $isEditing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedMapEditorBlocState &&
            const DeepCollectionEquality().equals(other._tileData, _tileData) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_tileData), isEditing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedMapEditorBlocStateCopyWith<_$LoadedMapEditorBlocState>
      get copyWith =>
          __$$LoadedMapEditorBlocStateCopyWithImpl<_$LoadedMapEditorBlocState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            Map<String, TileDataModel> tileData, bool isEditing)
        loaded,
  }) {
    return loaded(tileData, isEditing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(Map<String, TileDataModel> tileData, bool isEditing)?
        loaded,
  }) {
    return loaded?.call(tileData, isEditing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Map<String, TileDataModel> tileData, bool isEditing)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(tileData, isEditing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyMapEditorBlocState value) empty,
    required TResult Function(LoadedMapEditorBlocState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyMapEditorBlocState value)? empty,
    TResult? Function(LoadedMapEditorBlocState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyMapEditorBlocState value)? empty,
    TResult Function(LoadedMapEditorBlocState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedMapEditorBlocState implements MapEditorBlocState {
  const factory LoadedMapEditorBlocState(
      {required final Map<String, TileDataModel> tileData,
      final bool isEditing}) = _$LoadedMapEditorBlocState;

  Map<String, TileDataModel> get tileData;
  bool get isEditing;
  @JsonKey(ignore: true)
  _$$LoadedMapEditorBlocStateCopyWith<_$LoadedMapEditorBlocState>
      get copyWith => throw _privateConstructorUsedError;
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
