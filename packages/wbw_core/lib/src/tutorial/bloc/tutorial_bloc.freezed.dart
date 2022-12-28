// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tutorial_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PendingTutorialBlocState _$PendingTutorialBlocStateFromJson(
    Map<String, dynamic> json) {
  return _PendingTutorialBlocState.fromJson(json);
}

/// @nodoc
mixin _$PendingTutorialBlocState {
  TutorialCollectionsProgressModel get progress =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PendingTutorialBlocStateCopyWith<PendingTutorialBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PendingTutorialBlocStateCopyWith<$Res> {
  factory $PendingTutorialBlocStateCopyWith(PendingTutorialBlocState value,
          $Res Function(PendingTutorialBlocState) then) =
      _$PendingTutorialBlocStateCopyWithImpl<$Res>;
  $Res call({TutorialCollectionsProgressModel progress});

  $TutorialCollectionsProgressModelCopyWith<$Res> get progress;
}

/// @nodoc
class _$PendingTutorialBlocStateCopyWithImpl<$Res>
    implements $PendingTutorialBlocStateCopyWith<$Res> {
  _$PendingTutorialBlocStateCopyWithImpl(this._value, this._then);

  final PendingTutorialBlocState _value;
  // ignore: unused_field
  final $Res Function(PendingTutorialBlocState) _then;

  @override
  $Res call({
    Object? progress = freezed,
  }) {
    return _then(_value.copyWith(
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as TutorialCollectionsProgressModel,
    ));
  }

  @override
  $TutorialCollectionsProgressModelCopyWith<$Res> get progress {
    return $TutorialCollectionsProgressModelCopyWith<$Res>(_value.progress,
        (value) {
      return _then(_value.copyWith(progress: value));
    });
  }
}

/// @nodoc
abstract class _$$_PendingTutorialBlocStateCopyWith<$Res>
    implements $PendingTutorialBlocStateCopyWith<$Res> {
  factory _$$_PendingTutorialBlocStateCopyWith(
          _$_PendingTutorialBlocState value,
          $Res Function(_$_PendingTutorialBlocState) then) =
      __$$_PendingTutorialBlocStateCopyWithImpl<$Res>;
  @override
  $Res call({TutorialCollectionsProgressModel progress});

  @override
  $TutorialCollectionsProgressModelCopyWith<$Res> get progress;
}

/// @nodoc
class __$$_PendingTutorialBlocStateCopyWithImpl<$Res>
    extends _$PendingTutorialBlocStateCopyWithImpl<$Res>
    implements _$$_PendingTutorialBlocStateCopyWith<$Res> {
  __$$_PendingTutorialBlocStateCopyWithImpl(_$_PendingTutorialBlocState _value,
      $Res Function(_$_PendingTutorialBlocState) _then)
      : super(_value, (v) => _then(v as _$_PendingTutorialBlocState));

  @override
  _$_PendingTutorialBlocState get _value =>
      super._value as _$_PendingTutorialBlocState;

  @override
  $Res call({
    Object? progress = freezed,
  }) {
    return _then(_$_PendingTutorialBlocState(
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as TutorialCollectionsProgressModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PendingTutorialBlocState extends _PendingTutorialBlocState {
  const _$_PendingTutorialBlocState({required this.progress}) : super._();

  factory _$_PendingTutorialBlocState.fromJson(Map<String, dynamic> json) =>
      _$$_PendingTutorialBlocStateFromJson(json);

  @override
  final TutorialCollectionsProgressModel progress;

  @override
  String toString() {
    return 'PendingTutorialBlocState(progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PendingTutorialBlocState &&
            const DeepCollectionEquality().equals(other.progress, progress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(progress));

  @JsonKey(ignore: true)
  @override
  _$$_PendingTutorialBlocStateCopyWith<_$_PendingTutorialBlocState>
      get copyWith => __$$_PendingTutorialBlocStateCopyWithImpl<
          _$_PendingTutorialBlocState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PendingTutorialBlocStateToJson(
      this,
    );
  }
}

abstract class _PendingTutorialBlocState extends PendingTutorialBlocState
    implements TutorialBlocState {
  const factory _PendingTutorialBlocState(
          {required final TutorialCollectionsProgressModel progress}) =
      _$_PendingTutorialBlocState;
  const _PendingTutorialBlocState._() : super._();

  factory _PendingTutorialBlocState.fromJson(Map<String, dynamic> json) =
      _$_PendingTutorialBlocState.fromJson;

  @override
  TutorialCollectionsProgressModel get progress;
  @override
  @JsonKey(ignore: true)
  _$$_PendingTutorialBlocStateCopyWith<_$_PendingTutorialBlocState>
      get copyWith => throw _privateConstructorUsedError;
}

LiveTutorialBlocState _$LiveTutorialBlocStateFromJson(
    Map<String, dynamic> json) {
  return _LiveTutorialBlocState.fromJson(json);
}

/// @nodoc
mixin _$LiveTutorialBlocState {
  TutorialEventsCollectionModel get tutorial =>
      throw _privateConstructorUsedError;
  TutorialCollectionsProgressModel get progress =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LiveTutorialBlocStateCopyWith<LiveTutorialBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveTutorialBlocStateCopyWith<$Res> {
  factory $LiveTutorialBlocStateCopyWith(LiveTutorialBlocState value,
          $Res Function(LiveTutorialBlocState) then) =
      _$LiveTutorialBlocStateCopyWithImpl<$Res>;
  $Res call(
      {TutorialEventsCollectionModel tutorial,
      TutorialCollectionsProgressModel progress});

  $TutorialEventsCollectionModelCopyWith<$Res> get tutorial;
  $TutorialCollectionsProgressModelCopyWith<$Res> get progress;
}

/// @nodoc
class _$LiveTutorialBlocStateCopyWithImpl<$Res>
    implements $LiveTutorialBlocStateCopyWith<$Res> {
  _$LiveTutorialBlocStateCopyWithImpl(this._value, this._then);

  final LiveTutorialBlocState _value;
  // ignore: unused_field
  final $Res Function(LiveTutorialBlocState) _then;

  @override
  $Res call({
    Object? tutorial = freezed,
    Object? progress = freezed,
  }) {
    return _then(_value.copyWith(
      tutorial: tutorial == freezed
          ? _value.tutorial
          : tutorial // ignore: cast_nullable_to_non_nullable
              as TutorialEventsCollectionModel,
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as TutorialCollectionsProgressModel,
    ));
  }

  @override
  $TutorialEventsCollectionModelCopyWith<$Res> get tutorial {
    return $TutorialEventsCollectionModelCopyWith<$Res>(_value.tutorial,
        (value) {
      return _then(_value.copyWith(tutorial: value));
    });
  }

  @override
  $TutorialCollectionsProgressModelCopyWith<$Res> get progress {
    return $TutorialCollectionsProgressModelCopyWith<$Res>(_value.progress,
        (value) {
      return _then(_value.copyWith(progress: value));
    });
  }
}

/// @nodoc
abstract class _$$_LiveTutorialBlocStateCopyWith<$Res>
    implements $LiveTutorialBlocStateCopyWith<$Res> {
  factory _$$_LiveTutorialBlocStateCopyWith(_$_LiveTutorialBlocState value,
          $Res Function(_$_LiveTutorialBlocState) then) =
      __$$_LiveTutorialBlocStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {TutorialEventsCollectionModel tutorial,
      TutorialCollectionsProgressModel progress});

  @override
  $TutorialEventsCollectionModelCopyWith<$Res> get tutorial;
  @override
  $TutorialCollectionsProgressModelCopyWith<$Res> get progress;
}

/// @nodoc
class __$$_LiveTutorialBlocStateCopyWithImpl<$Res>
    extends _$LiveTutorialBlocStateCopyWithImpl<$Res>
    implements _$$_LiveTutorialBlocStateCopyWith<$Res> {
  __$$_LiveTutorialBlocStateCopyWithImpl(_$_LiveTutorialBlocState _value,
      $Res Function(_$_LiveTutorialBlocState) _then)
      : super(_value, (v) => _then(v as _$_LiveTutorialBlocState));

  @override
  _$_LiveTutorialBlocState get _value =>
      super._value as _$_LiveTutorialBlocState;

  @override
  $Res call({
    Object? tutorial = freezed,
    Object? progress = freezed,
  }) {
    return _then(_$_LiveTutorialBlocState(
      tutorial: tutorial == freezed
          ? _value.tutorial
          : tutorial // ignore: cast_nullable_to_non_nullable
              as TutorialEventsCollectionModel,
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as TutorialCollectionsProgressModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_LiveTutorialBlocState extends _LiveTutorialBlocState {
  const _$_LiveTutorialBlocState(
      {required this.tutorial, required this.progress})
      : super._();

  factory _$_LiveTutorialBlocState.fromJson(Map<String, dynamic> json) =>
      _$$_LiveTutorialBlocStateFromJson(json);

  @override
  final TutorialEventsCollectionModel tutorial;
  @override
  final TutorialCollectionsProgressModel progress;

  @override
  String toString() {
    return 'LiveTutorialBlocState(tutorial: $tutorial, progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LiveTutorialBlocState &&
            const DeepCollectionEquality().equals(other.tutorial, tutorial) &&
            const DeepCollectionEquality().equals(other.progress, progress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tutorial),
      const DeepCollectionEquality().hash(progress));

  @JsonKey(ignore: true)
  @override
  _$$_LiveTutorialBlocStateCopyWith<_$_LiveTutorialBlocState> get copyWith =>
      __$$_LiveTutorialBlocStateCopyWithImpl<_$_LiveTutorialBlocState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LiveTutorialBlocStateToJson(
      this,
    );
  }
}

abstract class _LiveTutorialBlocState extends LiveTutorialBlocState
    implements TutorialBlocState {
  const factory _LiveTutorialBlocState(
          {required final TutorialEventsCollectionModel tutorial,
          required final TutorialCollectionsProgressModel progress}) =
      _$_LiveTutorialBlocState;
  const _LiveTutorialBlocState._() : super._();

  factory _LiveTutorialBlocState.fromJson(Map<String, dynamic> json) =
      _$_LiveTutorialBlocState.fromJson;

  @override
  TutorialEventsCollectionModel get tutorial;
  @override
  TutorialCollectionsProgressModel get progress;
  @override
  @JsonKey(ignore: true)
  _$$_LiveTutorialBlocStateCopyWith<_$_LiveTutorialBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}
