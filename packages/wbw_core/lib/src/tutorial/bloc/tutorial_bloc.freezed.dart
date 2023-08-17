// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tutorial_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TutorialEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() complete,
    required TResult Function(TutorialCollectionsProgressModel progress)
        loadTutorialProgress,
    required TResult Function(TutorialCollectionsName tutorialName,
            bool shouldContinueIfPlayed, bool shouldStartFromBeginning)
        start,
    required TResult Function(NextTutorialEventType action) next,
    required TResult Function(TutorialCompleteAction action,
            TutorialUiItem? key, String stringValue, bool boolValue)
        uiAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? complete,
    TResult? Function(TutorialCollectionsProgressModel progress)?
        loadTutorialProgress,
    TResult? Function(TutorialCollectionsName tutorialName,
            bool shouldContinueIfPlayed, bool shouldStartFromBeginning)?
        start,
    TResult? Function(NextTutorialEventType action)? next,
    TResult? Function(TutorialCompleteAction action, TutorialUiItem? key,
            String stringValue, bool boolValue)?
        uiAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? complete,
    TResult Function(TutorialCollectionsProgressModel progress)?
        loadTutorialProgress,
    TResult Function(TutorialCollectionsName tutorialName,
            bool shouldContinueIfPlayed, bool shouldStartFromBeginning)?
        start,
    TResult Function(NextTutorialEventType action)? next,
    TResult Function(TutorialCompleteAction action, TutorialUiItem? key,
            String stringValue, bool boolValue)?
        uiAction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompleteTutorialEvent value) complete,
    required TResult Function(LoadTutorialsProgressEvent value)
        loadTutorialProgress,
    required TResult Function(StartTutorialEvent value) start,
    required TResult Function(NextTutorialEvent value) next,
    required TResult Function(TutorialUiActionEvent value) uiAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CompleteTutorialEvent value)? complete,
    TResult? Function(LoadTutorialsProgressEvent value)? loadTutorialProgress,
    TResult? Function(StartTutorialEvent value)? start,
    TResult? Function(NextTutorialEvent value)? next,
    TResult? Function(TutorialUiActionEvent value)? uiAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompleteTutorialEvent value)? complete,
    TResult Function(LoadTutorialsProgressEvent value)? loadTutorialProgress,
    TResult Function(StartTutorialEvent value)? start,
    TResult Function(NextTutorialEvent value)? next,
    TResult Function(TutorialUiActionEvent value)? uiAction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorialEventCopyWith<$Res> {
  factory $TutorialEventCopyWith(
          TutorialEvent value, $Res Function(TutorialEvent) then) =
      _$TutorialEventCopyWithImpl<$Res, TutorialEvent>;
}

/// @nodoc
class _$TutorialEventCopyWithImpl<$Res, $Val extends TutorialEvent>
    implements $TutorialEventCopyWith<$Res> {
  _$TutorialEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CompleteTutorialEventCopyWith<$Res> {
  factory _$$CompleteTutorialEventCopyWith(_$CompleteTutorialEvent value,
          $Res Function(_$CompleteTutorialEvent) then) =
      __$$CompleteTutorialEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompleteTutorialEventCopyWithImpl<$Res>
    extends _$TutorialEventCopyWithImpl<$Res, _$CompleteTutorialEvent>
    implements _$$CompleteTutorialEventCopyWith<$Res> {
  __$$CompleteTutorialEventCopyWithImpl(_$CompleteTutorialEvent _value,
      $Res Function(_$CompleteTutorialEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CompleteTutorialEvent implements CompleteTutorialEvent {
  const _$CompleteTutorialEvent();

  @override
  String toString() {
    return 'TutorialEvent.complete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CompleteTutorialEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() complete,
    required TResult Function(TutorialCollectionsProgressModel progress)
        loadTutorialProgress,
    required TResult Function(TutorialCollectionsName tutorialName,
            bool shouldContinueIfPlayed, bool shouldStartFromBeginning)
        start,
    required TResult Function(NextTutorialEventType action) next,
    required TResult Function(TutorialCompleteAction action,
            TutorialUiItem? key, String stringValue, bool boolValue)
        uiAction,
  }) {
    return complete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? complete,
    TResult? Function(TutorialCollectionsProgressModel progress)?
        loadTutorialProgress,
    TResult? Function(TutorialCollectionsName tutorialName,
            bool shouldContinueIfPlayed, bool shouldStartFromBeginning)?
        start,
    TResult? Function(NextTutorialEventType action)? next,
    TResult? Function(TutorialCompleteAction action, TutorialUiItem? key,
            String stringValue, bool boolValue)?
        uiAction,
  }) {
    return complete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? complete,
    TResult Function(TutorialCollectionsProgressModel progress)?
        loadTutorialProgress,
    TResult Function(TutorialCollectionsName tutorialName,
            bool shouldContinueIfPlayed, bool shouldStartFromBeginning)?
        start,
    TResult Function(NextTutorialEventType action)? next,
    TResult Function(TutorialCompleteAction action, TutorialUiItem? key,
            String stringValue, bool boolValue)?
        uiAction,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompleteTutorialEvent value) complete,
    required TResult Function(LoadTutorialsProgressEvent value)
        loadTutorialProgress,
    required TResult Function(StartTutorialEvent value) start,
    required TResult Function(NextTutorialEvent value) next,
    required TResult Function(TutorialUiActionEvent value) uiAction,
  }) {
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CompleteTutorialEvent value)? complete,
    TResult? Function(LoadTutorialsProgressEvent value)? loadTutorialProgress,
    TResult? Function(StartTutorialEvent value)? start,
    TResult? Function(NextTutorialEvent value)? next,
    TResult? Function(TutorialUiActionEvent value)? uiAction,
  }) {
    return complete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompleteTutorialEvent value)? complete,
    TResult Function(LoadTutorialsProgressEvent value)? loadTutorialProgress,
    TResult Function(StartTutorialEvent value)? start,
    TResult Function(NextTutorialEvent value)? next,
    TResult Function(TutorialUiActionEvent value)? uiAction,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class CompleteTutorialEvent implements TutorialEvent {
  const factory CompleteTutorialEvent() = _$CompleteTutorialEvent;
}

/// @nodoc
abstract class _$$LoadTutorialsProgressEventCopyWith<$Res> {
  factory _$$LoadTutorialsProgressEventCopyWith(
          _$LoadTutorialsProgressEvent value,
          $Res Function(_$LoadTutorialsProgressEvent) then) =
      __$$LoadTutorialsProgressEventCopyWithImpl<$Res>;
  @useResult
  $Res call({TutorialCollectionsProgressModel progress});

  $TutorialCollectionsProgressModelCopyWith<$Res> get progress;
}

/// @nodoc
class __$$LoadTutorialsProgressEventCopyWithImpl<$Res>
    extends _$TutorialEventCopyWithImpl<$Res, _$LoadTutorialsProgressEvent>
    implements _$$LoadTutorialsProgressEventCopyWith<$Res> {
  __$$LoadTutorialsProgressEventCopyWithImpl(
      _$LoadTutorialsProgressEvent _value,
      $Res Function(_$LoadTutorialsProgressEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
  }) {
    return _then(_$LoadTutorialsProgressEvent(
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as TutorialCollectionsProgressModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TutorialCollectionsProgressModelCopyWith<$Res> get progress {
    return $TutorialCollectionsProgressModelCopyWith<$Res>(_value.progress,
        (value) {
      return _then(_value.copyWith(progress: value));
    });
  }
}

/// @nodoc

class _$LoadTutorialsProgressEvent implements LoadTutorialsProgressEvent {
  const _$LoadTutorialsProgressEvent({required this.progress});

  @override
  final TutorialCollectionsProgressModel progress;

  @override
  String toString() {
    return 'TutorialEvent.loadTutorialProgress(progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadTutorialsProgressEvent &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadTutorialsProgressEventCopyWith<_$LoadTutorialsProgressEvent>
      get copyWith => __$$LoadTutorialsProgressEventCopyWithImpl<
          _$LoadTutorialsProgressEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() complete,
    required TResult Function(TutorialCollectionsProgressModel progress)
        loadTutorialProgress,
    required TResult Function(TutorialCollectionsName tutorialName,
            bool shouldContinueIfPlayed, bool shouldStartFromBeginning)
        start,
    required TResult Function(NextTutorialEventType action) next,
    required TResult Function(TutorialCompleteAction action,
            TutorialUiItem? key, String stringValue, bool boolValue)
        uiAction,
  }) {
    return loadTutorialProgress(progress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? complete,
    TResult? Function(TutorialCollectionsProgressModel progress)?
        loadTutorialProgress,
    TResult? Function(TutorialCollectionsName tutorialName,
            bool shouldContinueIfPlayed, bool shouldStartFromBeginning)?
        start,
    TResult? Function(NextTutorialEventType action)? next,
    TResult? Function(TutorialCompleteAction action, TutorialUiItem? key,
            String stringValue, bool boolValue)?
        uiAction,
  }) {
    return loadTutorialProgress?.call(progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? complete,
    TResult Function(TutorialCollectionsProgressModel progress)?
        loadTutorialProgress,
    TResult Function(TutorialCollectionsName tutorialName,
            bool shouldContinueIfPlayed, bool shouldStartFromBeginning)?
        start,
    TResult Function(NextTutorialEventType action)? next,
    TResult Function(TutorialCompleteAction action, TutorialUiItem? key,
            String stringValue, bool boolValue)?
        uiAction,
    required TResult orElse(),
  }) {
    if (loadTutorialProgress != null) {
      return loadTutorialProgress(progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompleteTutorialEvent value) complete,
    required TResult Function(LoadTutorialsProgressEvent value)
        loadTutorialProgress,
    required TResult Function(StartTutorialEvent value) start,
    required TResult Function(NextTutorialEvent value) next,
    required TResult Function(TutorialUiActionEvent value) uiAction,
  }) {
    return loadTutorialProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CompleteTutorialEvent value)? complete,
    TResult? Function(LoadTutorialsProgressEvent value)? loadTutorialProgress,
    TResult? Function(StartTutorialEvent value)? start,
    TResult? Function(NextTutorialEvent value)? next,
    TResult? Function(TutorialUiActionEvent value)? uiAction,
  }) {
    return loadTutorialProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompleteTutorialEvent value)? complete,
    TResult Function(LoadTutorialsProgressEvent value)? loadTutorialProgress,
    TResult Function(StartTutorialEvent value)? start,
    TResult Function(NextTutorialEvent value)? next,
    TResult Function(TutorialUiActionEvent value)? uiAction,
    required TResult orElse(),
  }) {
    if (loadTutorialProgress != null) {
      return loadTutorialProgress(this);
    }
    return orElse();
  }
}

abstract class LoadTutorialsProgressEvent implements TutorialEvent {
  const factory LoadTutorialsProgressEvent(
          {required final TutorialCollectionsProgressModel progress}) =
      _$LoadTutorialsProgressEvent;

  TutorialCollectionsProgressModel get progress;
  @JsonKey(ignore: true)
  _$$LoadTutorialsProgressEventCopyWith<_$LoadTutorialsProgressEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartTutorialEventCopyWith<$Res> {
  factory _$$StartTutorialEventCopyWith(_$StartTutorialEvent value,
          $Res Function(_$StartTutorialEvent) then) =
      __$$StartTutorialEventCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {TutorialCollectionsName tutorialName,
      bool shouldContinueIfPlayed,
      bool shouldStartFromBeginning});
}

/// @nodoc
class __$$StartTutorialEventCopyWithImpl<$Res>
    extends _$TutorialEventCopyWithImpl<$Res, _$StartTutorialEvent>
    implements _$$StartTutorialEventCopyWith<$Res> {
  __$$StartTutorialEventCopyWithImpl(
      _$StartTutorialEvent _value, $Res Function(_$StartTutorialEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tutorialName = null,
    Object? shouldContinueIfPlayed = null,
    Object? shouldStartFromBeginning = null,
  }) {
    return _then(_$StartTutorialEvent(
      tutorialName: null == tutorialName
          ? _value.tutorialName
          : tutorialName // ignore: cast_nullable_to_non_nullable
              as TutorialCollectionsName,
      shouldContinueIfPlayed: null == shouldContinueIfPlayed
          ? _value.shouldContinueIfPlayed
          : shouldContinueIfPlayed // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldStartFromBeginning: null == shouldStartFromBeginning
          ? _value.shouldStartFromBeginning
          : shouldStartFromBeginning // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$StartTutorialEvent implements StartTutorialEvent {
  const _$StartTutorialEvent(
      {required this.tutorialName,
      required this.shouldContinueIfPlayed,
      required this.shouldStartFromBeginning});

  @override
  final TutorialCollectionsName tutorialName;
  @override
  final bool shouldContinueIfPlayed;
  @override
  final bool shouldStartFromBeginning;

  @override
  String toString() {
    return 'TutorialEvent.start(tutorialName: $tutorialName, shouldContinueIfPlayed: $shouldContinueIfPlayed, shouldStartFromBeginning: $shouldStartFromBeginning)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartTutorialEvent &&
            (identical(other.tutorialName, tutorialName) ||
                other.tutorialName == tutorialName) &&
            (identical(other.shouldContinueIfPlayed, shouldContinueIfPlayed) ||
                other.shouldContinueIfPlayed == shouldContinueIfPlayed) &&
            (identical(
                    other.shouldStartFromBeginning, shouldStartFromBeginning) ||
                other.shouldStartFromBeginning == shouldStartFromBeginning));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tutorialName,
      shouldContinueIfPlayed, shouldStartFromBeginning);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartTutorialEventCopyWith<_$StartTutorialEvent> get copyWith =>
      __$$StartTutorialEventCopyWithImpl<_$StartTutorialEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() complete,
    required TResult Function(TutorialCollectionsProgressModel progress)
        loadTutorialProgress,
    required TResult Function(TutorialCollectionsName tutorialName,
            bool shouldContinueIfPlayed, bool shouldStartFromBeginning)
        start,
    required TResult Function(NextTutorialEventType action) next,
    required TResult Function(TutorialCompleteAction action,
            TutorialUiItem? key, String stringValue, bool boolValue)
        uiAction,
  }) {
    return start(
        tutorialName, shouldContinueIfPlayed, shouldStartFromBeginning);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? complete,
    TResult? Function(TutorialCollectionsProgressModel progress)?
        loadTutorialProgress,
    TResult? Function(TutorialCollectionsName tutorialName,
            bool shouldContinueIfPlayed, bool shouldStartFromBeginning)?
        start,
    TResult? Function(NextTutorialEventType action)? next,
    TResult? Function(TutorialCompleteAction action, TutorialUiItem? key,
            String stringValue, bool boolValue)?
        uiAction,
  }) {
    return start?.call(
        tutorialName, shouldContinueIfPlayed, shouldStartFromBeginning);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? complete,
    TResult Function(TutorialCollectionsProgressModel progress)?
        loadTutorialProgress,
    TResult Function(TutorialCollectionsName tutorialName,
            bool shouldContinueIfPlayed, bool shouldStartFromBeginning)?
        start,
    TResult Function(NextTutorialEventType action)? next,
    TResult Function(TutorialCompleteAction action, TutorialUiItem? key,
            String stringValue, bool boolValue)?
        uiAction,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(
          tutorialName, shouldContinueIfPlayed, shouldStartFromBeginning);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompleteTutorialEvent value) complete,
    required TResult Function(LoadTutorialsProgressEvent value)
        loadTutorialProgress,
    required TResult Function(StartTutorialEvent value) start,
    required TResult Function(NextTutorialEvent value) next,
    required TResult Function(TutorialUiActionEvent value) uiAction,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CompleteTutorialEvent value)? complete,
    TResult? Function(LoadTutorialsProgressEvent value)? loadTutorialProgress,
    TResult? Function(StartTutorialEvent value)? start,
    TResult? Function(NextTutorialEvent value)? next,
    TResult? Function(TutorialUiActionEvent value)? uiAction,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompleteTutorialEvent value)? complete,
    TResult Function(LoadTutorialsProgressEvent value)? loadTutorialProgress,
    TResult Function(StartTutorialEvent value)? start,
    TResult Function(NextTutorialEvent value)? next,
    TResult Function(TutorialUiActionEvent value)? uiAction,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class StartTutorialEvent implements TutorialEvent {
  const factory StartTutorialEvent(
      {required final TutorialCollectionsName tutorialName,
      required final bool shouldContinueIfPlayed,
      required final bool shouldStartFromBeginning}) = _$StartTutorialEvent;

  TutorialCollectionsName get tutorialName;
  bool get shouldContinueIfPlayed;
  bool get shouldStartFromBeginning;
  @JsonKey(ignore: true)
  _$$StartTutorialEventCopyWith<_$StartTutorialEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NextTutorialEventCopyWith<$Res> {
  factory _$$NextTutorialEventCopyWith(
          _$NextTutorialEvent value, $Res Function(_$NextTutorialEvent) then) =
      __$$NextTutorialEventCopyWithImpl<$Res>;
  @useResult
  $Res call({NextTutorialEventType action});
}

/// @nodoc
class __$$NextTutorialEventCopyWithImpl<$Res>
    extends _$TutorialEventCopyWithImpl<$Res, _$NextTutorialEvent>
    implements _$$NextTutorialEventCopyWith<$Res> {
  __$$NextTutorialEventCopyWithImpl(
      _$NextTutorialEvent _value, $Res Function(_$NextTutorialEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
  }) {
    return _then(_$NextTutorialEvent(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as NextTutorialEventType,
    ));
  }
}

/// @nodoc

class _$NextTutorialEvent implements NextTutorialEvent {
  const _$NextTutorialEvent({this.action = NextTutorialEventType.next});

  @override
  @JsonKey()
  final NextTutorialEventType action;

  @override
  String toString() {
    return 'TutorialEvent.next(action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NextTutorialEvent &&
            (identical(other.action, action) || other.action == action));
  }

  @override
  int get hashCode => Object.hash(runtimeType, action);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NextTutorialEventCopyWith<_$NextTutorialEvent> get copyWith =>
      __$$NextTutorialEventCopyWithImpl<_$NextTutorialEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() complete,
    required TResult Function(TutorialCollectionsProgressModel progress)
        loadTutorialProgress,
    required TResult Function(TutorialCollectionsName tutorialName,
            bool shouldContinueIfPlayed, bool shouldStartFromBeginning)
        start,
    required TResult Function(NextTutorialEventType action) next,
    required TResult Function(TutorialCompleteAction action,
            TutorialUiItem? key, String stringValue, bool boolValue)
        uiAction,
  }) {
    return next(action);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? complete,
    TResult? Function(TutorialCollectionsProgressModel progress)?
        loadTutorialProgress,
    TResult? Function(TutorialCollectionsName tutorialName,
            bool shouldContinueIfPlayed, bool shouldStartFromBeginning)?
        start,
    TResult? Function(NextTutorialEventType action)? next,
    TResult? Function(TutorialCompleteAction action, TutorialUiItem? key,
            String stringValue, bool boolValue)?
        uiAction,
  }) {
    return next?.call(action);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? complete,
    TResult Function(TutorialCollectionsProgressModel progress)?
        loadTutorialProgress,
    TResult Function(TutorialCollectionsName tutorialName,
            bool shouldContinueIfPlayed, bool shouldStartFromBeginning)?
        start,
    TResult Function(NextTutorialEventType action)? next,
    TResult Function(TutorialCompleteAction action, TutorialUiItem? key,
            String stringValue, bool boolValue)?
        uiAction,
    required TResult orElse(),
  }) {
    if (next != null) {
      return next(action);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompleteTutorialEvent value) complete,
    required TResult Function(LoadTutorialsProgressEvent value)
        loadTutorialProgress,
    required TResult Function(StartTutorialEvent value) start,
    required TResult Function(NextTutorialEvent value) next,
    required TResult Function(TutorialUiActionEvent value) uiAction,
  }) {
    return next(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CompleteTutorialEvent value)? complete,
    TResult? Function(LoadTutorialsProgressEvent value)? loadTutorialProgress,
    TResult? Function(StartTutorialEvent value)? start,
    TResult? Function(NextTutorialEvent value)? next,
    TResult? Function(TutorialUiActionEvent value)? uiAction,
  }) {
    return next?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompleteTutorialEvent value)? complete,
    TResult Function(LoadTutorialsProgressEvent value)? loadTutorialProgress,
    TResult Function(StartTutorialEvent value)? start,
    TResult Function(NextTutorialEvent value)? next,
    TResult Function(TutorialUiActionEvent value)? uiAction,
    required TResult orElse(),
  }) {
    if (next != null) {
      return next(this);
    }
    return orElse();
  }
}

abstract class NextTutorialEvent implements TutorialEvent {
  const factory NextTutorialEvent({final NextTutorialEventType action}) =
      _$NextTutorialEvent;

  NextTutorialEventType get action;
  @JsonKey(ignore: true)
  _$$NextTutorialEventCopyWith<_$NextTutorialEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TutorialUiActionEventCopyWith<$Res> {
  factory _$$TutorialUiActionEventCopyWith(_$TutorialUiActionEvent value,
          $Res Function(_$TutorialUiActionEvent) then) =
      __$$TutorialUiActionEventCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {TutorialCompleteAction action,
      TutorialUiItem? key,
      String stringValue,
      bool boolValue});
}

/// @nodoc
class __$$TutorialUiActionEventCopyWithImpl<$Res>
    extends _$TutorialEventCopyWithImpl<$Res, _$TutorialUiActionEvent>
    implements _$$TutorialUiActionEventCopyWith<$Res> {
  __$$TutorialUiActionEventCopyWithImpl(_$TutorialUiActionEvent _value,
      $Res Function(_$TutorialUiActionEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? key = freezed,
    Object? stringValue = null,
    Object? boolValue = null,
  }) {
    return _then(_$TutorialUiActionEvent(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as TutorialCompleteAction,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as TutorialUiItem?,
      stringValue: null == stringValue
          ? _value.stringValue
          : stringValue // ignore: cast_nullable_to_non_nullable
              as String,
      boolValue: null == boolValue
          ? _value.boolValue
          : boolValue // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TutorialUiActionEvent implements TutorialUiActionEvent {
  const _$TutorialUiActionEvent(
      {required this.action,
      this.key,
      this.stringValue = '',
      this.boolValue = false});

  @override
  final TutorialCompleteAction action;
  @override
  final TutorialUiItem? key;
  @override
  @JsonKey()
  final String stringValue;
  @override
  @JsonKey()
  final bool boolValue;

  @override
  String toString() {
    return 'TutorialEvent.uiAction(action: $action, key: $key, stringValue: $stringValue, boolValue: $boolValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TutorialUiActionEvent &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.stringValue, stringValue) ||
                other.stringValue == stringValue) &&
            (identical(other.boolValue, boolValue) ||
                other.boolValue == boolValue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, action, key, stringValue, boolValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TutorialUiActionEventCopyWith<_$TutorialUiActionEvent> get copyWith =>
      __$$TutorialUiActionEventCopyWithImpl<_$TutorialUiActionEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() complete,
    required TResult Function(TutorialCollectionsProgressModel progress)
        loadTutorialProgress,
    required TResult Function(TutorialCollectionsName tutorialName,
            bool shouldContinueIfPlayed, bool shouldStartFromBeginning)
        start,
    required TResult Function(NextTutorialEventType action) next,
    required TResult Function(TutorialCompleteAction action,
            TutorialUiItem? key, String stringValue, bool boolValue)
        uiAction,
  }) {
    return uiAction(action, key, stringValue, boolValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? complete,
    TResult? Function(TutorialCollectionsProgressModel progress)?
        loadTutorialProgress,
    TResult? Function(TutorialCollectionsName tutorialName,
            bool shouldContinueIfPlayed, bool shouldStartFromBeginning)?
        start,
    TResult? Function(NextTutorialEventType action)? next,
    TResult? Function(TutorialCompleteAction action, TutorialUiItem? key,
            String stringValue, bool boolValue)?
        uiAction,
  }) {
    return uiAction?.call(action, key, stringValue, boolValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? complete,
    TResult Function(TutorialCollectionsProgressModel progress)?
        loadTutorialProgress,
    TResult Function(TutorialCollectionsName tutorialName,
            bool shouldContinueIfPlayed, bool shouldStartFromBeginning)?
        start,
    TResult Function(NextTutorialEventType action)? next,
    TResult Function(TutorialCompleteAction action, TutorialUiItem? key,
            String stringValue, bool boolValue)?
        uiAction,
    required TResult orElse(),
  }) {
    if (uiAction != null) {
      return uiAction(action, key, stringValue, boolValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompleteTutorialEvent value) complete,
    required TResult Function(LoadTutorialsProgressEvent value)
        loadTutorialProgress,
    required TResult Function(StartTutorialEvent value) start,
    required TResult Function(NextTutorialEvent value) next,
    required TResult Function(TutorialUiActionEvent value) uiAction,
  }) {
    return uiAction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CompleteTutorialEvent value)? complete,
    TResult? Function(LoadTutorialsProgressEvent value)? loadTutorialProgress,
    TResult? Function(StartTutorialEvent value)? start,
    TResult? Function(NextTutorialEvent value)? next,
    TResult? Function(TutorialUiActionEvent value)? uiAction,
  }) {
    return uiAction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompleteTutorialEvent value)? complete,
    TResult Function(LoadTutorialsProgressEvent value)? loadTutorialProgress,
    TResult Function(StartTutorialEvent value)? start,
    TResult Function(NextTutorialEvent value)? next,
    TResult Function(TutorialUiActionEvent value)? uiAction,
    required TResult orElse(),
  }) {
    if (uiAction != null) {
      return uiAction(this);
    }
    return orElse();
  }
}

abstract class TutorialUiActionEvent implements TutorialEvent {
  const factory TutorialUiActionEvent(
      {required final TutorialCompleteAction action,
      final TutorialUiItem? key,
      final String stringValue,
      final bool boolValue}) = _$TutorialUiActionEvent;

  TutorialCompleteAction get action;
  TutorialUiItem? get key;
  String get stringValue;
  bool get boolValue;
  @JsonKey(ignore: true)
  _$$TutorialUiActionEventCopyWith<_$TutorialUiActionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

TutorialBlocState _$TutorialBlocStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'empty':
      return TutorialBlocStateEmpty.fromJson(json);
    case 'pending':
      return TutorialBlocStatePending.fromJson(json);
    case 'live':
      return TutorialBlocStateLive.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'TutorialBlocState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$TutorialBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(TutorialCollectionsProgressModel progress)
        pending,
    required TResult Function(TutorialEventsCollectionModel tutorial,
            TutorialCollectionsProgressModel progress)
        live,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(TutorialCollectionsProgressModel progress)? pending,
    TResult? Function(TutorialEventsCollectionModel tutorial,
            TutorialCollectionsProgressModel progress)?
        live,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(TutorialCollectionsProgressModel progress)? pending,
    TResult Function(TutorialEventsCollectionModel tutorial,
            TutorialCollectionsProgressModel progress)?
        live,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TutorialBlocStateEmpty value) empty,
    required TResult Function(TutorialBlocStatePending value) pending,
    required TResult Function(TutorialBlocStateLive value) live,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TutorialBlocStateEmpty value)? empty,
    TResult? Function(TutorialBlocStatePending value)? pending,
    TResult? Function(TutorialBlocStateLive value)? live,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TutorialBlocStateEmpty value)? empty,
    TResult Function(TutorialBlocStatePending value)? pending,
    TResult Function(TutorialBlocStateLive value)? live,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorialBlocStateCopyWith<$Res> {
  factory $TutorialBlocStateCopyWith(
          TutorialBlocState value, $Res Function(TutorialBlocState) then) =
      _$TutorialBlocStateCopyWithImpl<$Res, TutorialBlocState>;
}

/// @nodoc
class _$TutorialBlocStateCopyWithImpl<$Res, $Val extends TutorialBlocState>
    implements $TutorialBlocStateCopyWith<$Res> {
  _$TutorialBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TutorialBlocStateEmptyCopyWith<$Res> {
  factory _$$TutorialBlocStateEmptyCopyWith(_$TutorialBlocStateEmpty value,
          $Res Function(_$TutorialBlocStateEmpty) then) =
      __$$TutorialBlocStateEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TutorialBlocStateEmptyCopyWithImpl<$Res>
    extends _$TutorialBlocStateCopyWithImpl<$Res, _$TutorialBlocStateEmpty>
    implements _$$TutorialBlocStateEmptyCopyWith<$Res> {
  __$$TutorialBlocStateEmptyCopyWithImpl(_$TutorialBlocStateEmpty _value,
      $Res Function(_$TutorialBlocStateEmpty) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$TutorialBlocStateEmpty implements TutorialBlocStateEmpty {
  const _$TutorialBlocStateEmpty({final String? $type})
      : $type = $type ?? 'empty';

  factory _$TutorialBlocStateEmpty.fromJson(Map<String, dynamic> json) =>
      _$$TutorialBlocStateEmptyFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TutorialBlocState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TutorialBlocStateEmpty);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(TutorialCollectionsProgressModel progress)
        pending,
    required TResult Function(TutorialEventsCollectionModel tutorial,
            TutorialCollectionsProgressModel progress)
        live,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(TutorialCollectionsProgressModel progress)? pending,
    TResult? Function(TutorialEventsCollectionModel tutorial,
            TutorialCollectionsProgressModel progress)?
        live,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(TutorialCollectionsProgressModel progress)? pending,
    TResult Function(TutorialEventsCollectionModel tutorial,
            TutorialCollectionsProgressModel progress)?
        live,
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
    required TResult Function(TutorialBlocStateEmpty value) empty,
    required TResult Function(TutorialBlocStatePending value) pending,
    required TResult Function(TutorialBlocStateLive value) live,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TutorialBlocStateEmpty value)? empty,
    TResult? Function(TutorialBlocStatePending value)? pending,
    TResult? Function(TutorialBlocStateLive value)? live,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TutorialBlocStateEmpty value)? empty,
    TResult Function(TutorialBlocStatePending value)? pending,
    TResult Function(TutorialBlocStateLive value)? live,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TutorialBlocStateEmptyToJson(
      this,
    );
  }
}

abstract class TutorialBlocStateEmpty implements TutorialBlocState {
  const factory TutorialBlocStateEmpty() = _$TutorialBlocStateEmpty;

  factory TutorialBlocStateEmpty.fromJson(Map<String, dynamic> json) =
      _$TutorialBlocStateEmpty.fromJson;
}

/// @nodoc
abstract class _$$TutorialBlocStatePendingCopyWith<$Res> {
  factory _$$TutorialBlocStatePendingCopyWith(_$TutorialBlocStatePending value,
          $Res Function(_$TutorialBlocStatePending) then) =
      __$$TutorialBlocStatePendingCopyWithImpl<$Res>;
  @useResult
  $Res call({TutorialCollectionsProgressModel progress});

  $TutorialCollectionsProgressModelCopyWith<$Res> get progress;
}

/// @nodoc
class __$$TutorialBlocStatePendingCopyWithImpl<$Res>
    extends _$TutorialBlocStateCopyWithImpl<$Res, _$TutorialBlocStatePending>
    implements _$$TutorialBlocStatePendingCopyWith<$Res> {
  __$$TutorialBlocStatePendingCopyWithImpl(_$TutorialBlocStatePending _value,
      $Res Function(_$TutorialBlocStatePending) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
  }) {
    return _then(_$TutorialBlocStatePending(
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as TutorialCollectionsProgressModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TutorialCollectionsProgressModelCopyWith<$Res> get progress {
    return $TutorialCollectionsProgressModelCopyWith<$Res>(_value.progress,
        (value) {
      return _then(_value.copyWith(progress: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$TutorialBlocStatePending implements TutorialBlocStatePending {
  const _$TutorialBlocStatePending(
      {required this.progress, final String? $type})
      : $type = $type ?? 'pending';

  factory _$TutorialBlocStatePending.fromJson(Map<String, dynamic> json) =>
      _$$TutorialBlocStatePendingFromJson(json);

  /// progress for all tutorials
  @override
  final TutorialCollectionsProgressModel progress;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TutorialBlocState.pending(progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TutorialBlocStatePending &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, progress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TutorialBlocStatePendingCopyWith<_$TutorialBlocStatePending>
      get copyWith =>
          __$$TutorialBlocStatePendingCopyWithImpl<_$TutorialBlocStatePending>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(TutorialCollectionsProgressModel progress)
        pending,
    required TResult Function(TutorialEventsCollectionModel tutorial,
            TutorialCollectionsProgressModel progress)
        live,
  }) {
    return pending(progress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(TutorialCollectionsProgressModel progress)? pending,
    TResult? Function(TutorialEventsCollectionModel tutorial,
            TutorialCollectionsProgressModel progress)?
        live,
  }) {
    return pending?.call(progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(TutorialCollectionsProgressModel progress)? pending,
    TResult Function(TutorialEventsCollectionModel tutorial,
            TutorialCollectionsProgressModel progress)?
        live,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TutorialBlocStateEmpty value) empty,
    required TResult Function(TutorialBlocStatePending value) pending,
    required TResult Function(TutorialBlocStateLive value) live,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TutorialBlocStateEmpty value)? empty,
    TResult? Function(TutorialBlocStatePending value)? pending,
    TResult? Function(TutorialBlocStateLive value)? live,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TutorialBlocStateEmpty value)? empty,
    TResult Function(TutorialBlocStatePending value)? pending,
    TResult Function(TutorialBlocStateLive value)? live,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TutorialBlocStatePendingToJson(
      this,
    );
  }
}

abstract class TutorialBlocStatePending implements TutorialBlocState {
  const factory TutorialBlocStatePending(
          {required final TutorialCollectionsProgressModel progress}) =
      _$TutorialBlocStatePending;

  factory TutorialBlocStatePending.fromJson(Map<String, dynamic> json) =
      _$TutorialBlocStatePending.fromJson;

  /// progress for all tutorials
  TutorialCollectionsProgressModel get progress;
  @JsonKey(ignore: true)
  _$$TutorialBlocStatePendingCopyWith<_$TutorialBlocStatePending>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TutorialBlocStateLiveCopyWith<$Res> {
  factory _$$TutorialBlocStateLiveCopyWith(_$TutorialBlocStateLive value,
          $Res Function(_$TutorialBlocStateLive) then) =
      __$$TutorialBlocStateLiveCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {TutorialEventsCollectionModel tutorial,
      TutorialCollectionsProgressModel progress});

  $TutorialEventsCollectionModelCopyWith<$Res> get tutorial;
  $TutorialCollectionsProgressModelCopyWith<$Res> get progress;
}

/// @nodoc
class __$$TutorialBlocStateLiveCopyWithImpl<$Res>
    extends _$TutorialBlocStateCopyWithImpl<$Res, _$TutorialBlocStateLive>
    implements _$$TutorialBlocStateLiveCopyWith<$Res> {
  __$$TutorialBlocStateLiveCopyWithImpl(_$TutorialBlocStateLive _value,
      $Res Function(_$TutorialBlocStateLive) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tutorial = null,
    Object? progress = null,
  }) {
    return _then(_$TutorialBlocStateLive(
      tutorial: null == tutorial
          ? _value.tutorial
          : tutorial // ignore: cast_nullable_to_non_nullable
              as TutorialEventsCollectionModel,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as TutorialCollectionsProgressModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TutorialEventsCollectionModelCopyWith<$Res> get tutorial {
    return $TutorialEventsCollectionModelCopyWith<$Res>(_value.tutorial,
        (value) {
      return _then(_value.copyWith(tutorial: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TutorialCollectionsProgressModelCopyWith<$Res> get progress {
    return $TutorialCollectionsProgressModelCopyWith<$Res>(_value.progress,
        (value) {
      return _then(_value.copyWith(progress: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$TutorialBlocStateLive implements TutorialBlocStateLive {
  const _$TutorialBlocStateLive(
      {required this.tutorial, required this.progress, final String? $type})
      : $type = $type ?? 'live';

  factory _$TutorialBlocStateLive.fromJson(Map<String, dynamic> json) =>
      _$$TutorialBlocStateLiveFromJson(json);

  @override
  final TutorialEventsCollectionModel tutorial;

  /// progress for all tutorials
  @override
  final TutorialCollectionsProgressModel progress;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TutorialBlocState.live(tutorial: $tutorial, progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TutorialBlocStateLive &&
            (identical(other.tutorial, tutorial) ||
                other.tutorial == tutorial) &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tutorial, progress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TutorialBlocStateLiveCopyWith<_$TutorialBlocStateLive> get copyWith =>
      __$$TutorialBlocStateLiveCopyWithImpl<_$TutorialBlocStateLive>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(TutorialCollectionsProgressModel progress)
        pending,
    required TResult Function(TutorialEventsCollectionModel tutorial,
            TutorialCollectionsProgressModel progress)
        live,
  }) {
    return live(tutorial, progress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(TutorialCollectionsProgressModel progress)? pending,
    TResult? Function(TutorialEventsCollectionModel tutorial,
            TutorialCollectionsProgressModel progress)?
        live,
  }) {
    return live?.call(tutorial, progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(TutorialCollectionsProgressModel progress)? pending,
    TResult Function(TutorialEventsCollectionModel tutorial,
            TutorialCollectionsProgressModel progress)?
        live,
    required TResult orElse(),
  }) {
    if (live != null) {
      return live(tutorial, progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TutorialBlocStateEmpty value) empty,
    required TResult Function(TutorialBlocStatePending value) pending,
    required TResult Function(TutorialBlocStateLive value) live,
  }) {
    return live(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TutorialBlocStateEmpty value)? empty,
    TResult? Function(TutorialBlocStatePending value)? pending,
    TResult? Function(TutorialBlocStateLive value)? live,
  }) {
    return live?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TutorialBlocStateEmpty value)? empty,
    TResult Function(TutorialBlocStatePending value)? pending,
    TResult Function(TutorialBlocStateLive value)? live,
    required TResult orElse(),
  }) {
    if (live != null) {
      return live(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TutorialBlocStateLiveToJson(
      this,
    );
  }
}

abstract class TutorialBlocStateLive implements TutorialBlocState {
  const factory TutorialBlocStateLive(
          {required final TutorialEventsCollectionModel tutorial,
          required final TutorialCollectionsProgressModel progress}) =
      _$TutorialBlocStateLive;

  factory TutorialBlocStateLive.fromJson(Map<String, dynamic> json) =
      _$TutorialBlocStateLive.fromJson;

  TutorialEventsCollectionModel get tutorial;

  /// progress for all tutorials
  TutorialCollectionsProgressModel get progress;
  @JsonKey(ignore: true)
  _$$TutorialBlocStateLiveCopyWith<_$TutorialBlocStateLive> get copyWith =>
      throw _privateConstructorUsedError;
}
