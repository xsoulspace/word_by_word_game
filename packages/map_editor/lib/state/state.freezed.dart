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
  Map<CellPointModel, dynamic> get canvasData =>
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
  $Res call({int selectionIndex, Map<CellPointModel, dynamic> canvasData});
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
    Object? canvasData = null,
  }) {
    return _then(_value.copyWith(
      selectionIndex: null == selectionIndex
          ? _value.selectionIndex
          : selectionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      canvasData: null == canvasData
          ? _value.canvasData
          : canvasData // ignore: cast_nullable_to_non_nullable
              as Map<CellPointModel, dynamic>,
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
  $Res call({int selectionIndex, Map<CellPointModel, dynamic> canvasData});
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
    Object? canvasData = null,
  }) {
    return _then(_$_DrawerCubitState(
      selectionIndex: null == selectionIndex
          ? _value.selectionIndex
          : selectionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      canvasData: null == canvasData
          ? _value._canvasData
          : canvasData // ignore: cast_nullable_to_non_nullable
              as Map<CellPointModel, dynamic>,
    ));
  }
}

/// @nodoc

class _$_DrawerCubitState implements _DrawerCubitState {
  const _$_DrawerCubitState(
      {this.selectionIndex = kMinSelectionIndex,
      final Map<CellPointModel, dynamic> canvasData = const {}})
      : _canvasData = canvasData;

  @override
  @JsonKey()
  final int selectionIndex;
  final Map<CellPointModel, dynamic> _canvasData;
  @override
  @JsonKey()
  Map<CellPointModel, dynamic> get canvasData {
    if (_canvasData is EqualUnmodifiableMapView) return _canvasData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_canvasData);
  }

  @override
  String toString() {
    return 'DrawerCubitState(selectionIndex: $selectionIndex, canvasData: $canvasData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DrawerCubitState &&
            (identical(other.selectionIndex, selectionIndex) ||
                other.selectionIndex == selectionIndex) &&
            const DeepCollectionEquality()
                .equals(other._canvasData, _canvasData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectionIndex,
      const DeepCollectionEquality().hash(_canvasData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DrawerCubitStateCopyWith<_$_DrawerCubitState> get copyWith =>
      __$$_DrawerCubitStateCopyWithImpl<_$_DrawerCubitState>(this, _$identity);
}

abstract class _DrawerCubitState implements DrawerCubitState {
  const factory _DrawerCubitState(
      {final int selectionIndex,
      final Map<CellPointModel, dynamic> canvasData}) = _$_DrawerCubitState;

  @override
  int get selectionIndex;
  @override
  Map<CellPointModel, dynamic> get canvasData;
  @override
  @JsonKey(ignore: true)
  _$$_DrawerCubitStateCopyWith<_$_DrawerCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MapEditorBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadMapEditorBlocEvent value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadMapEditorBlocEvent value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadMapEditorBlocEvent value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapEditorBlocEventCopyWith<$Res> {
  factory $MapEditorBlocEventCopyWith(
          MapEditorBlocEvent value, $Res Function(MapEditorBlocEvent) then) =
      _$MapEditorBlocEventCopyWithImpl<$Res, MapEditorBlocEvent>;
}

/// @nodoc
class _$MapEditorBlocEventCopyWithImpl<$Res, $Val extends MapEditorBlocEvent>
    implements $MapEditorBlocEventCopyWith<$Res> {
  _$MapEditorBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadMapEditorBlocEventCopyWith<$Res> {
  factory _$$LoadMapEditorBlocEventCopyWith(_$LoadMapEditorBlocEvent value,
          $Res Function(_$LoadMapEditorBlocEvent) then) =
      __$$LoadMapEditorBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMapEditorBlocEventCopyWithImpl<$Res>
    extends _$MapEditorBlocEventCopyWithImpl<$Res, _$LoadMapEditorBlocEvent>
    implements _$$LoadMapEditorBlocEventCopyWith<$Res> {
  __$$LoadMapEditorBlocEventCopyWithImpl(_$LoadMapEditorBlocEvent _value,
      $Res Function(_$LoadMapEditorBlocEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadMapEditorBlocEvent implements LoadMapEditorBlocEvent {
  const _$LoadMapEditorBlocEvent();

  @override
  String toString() {
    return 'MapEditorBlocEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMapEditorBlocEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadMapEditorBlocEvent value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadMapEditorBlocEvent value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadMapEditorBlocEvent value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadMapEditorBlocEvent implements MapEditorBlocEvent {
  const factory LoadMapEditorBlocEvent() = _$LoadMapEditorBlocEvent;
}

/// @nodoc
mixin _$MapEditorBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Map<String, TileDataModel> tileData) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(Map<String, TileDataModel> tileData)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Map<String, TileDataModel> tileData)? loaded,
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
    required TResult Function(Map<String, TileDataModel> tileData) loaded,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(Map<String, TileDataModel> tileData)? loaded,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Map<String, TileDataModel> tileData)? loaded,
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
  $Res call({Map<String, TileDataModel> tileData});
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
  }) {
    return _then(_$LoadedMapEditorBlocState(
      tileData: null == tileData
          ? _value._tileData
          : tileData // ignore: cast_nullable_to_non_nullable
              as Map<String, TileDataModel>,
    ));
  }
}

/// @nodoc

class _$LoadedMapEditorBlocState implements LoadedMapEditorBlocState {
  const _$LoadedMapEditorBlocState(
      {required final Map<String, TileDataModel> tileData})
      : _tileData = tileData;

  final Map<String, TileDataModel> _tileData;
  @override
  Map<String, TileDataModel> get tileData {
    if (_tileData is EqualUnmodifiableMapView) return _tileData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_tileData);
  }

  @override
  String toString() {
    return 'MapEditorBlocState.loaded(tileData: $tileData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedMapEditorBlocState &&
            const DeepCollectionEquality().equals(other._tileData, _tileData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tileData));

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
    required TResult Function(Map<String, TileDataModel> tileData) loaded,
  }) {
    return loaded(tileData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(Map<String, TileDataModel> tileData)? loaded,
  }) {
    return loaded?.call(tileData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Map<String, TileDataModel> tileData)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(tileData);
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
          {required final Map<String, TileDataModel> tileData}) =
      _$LoadedMapEditorBlocState;

  Map<String, TileDataModel> get tileData;
  @JsonKey(ignore: true)
  _$$LoadedMapEditorBlocStateCopyWith<_$LoadedMapEditorBlocState>
      get copyWith => throw _privateConstructorUsedError;
}
