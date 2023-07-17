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

PendingTutorialBlocState _$PendingTutorialBlocStateFromJson(
    Map<String, dynamic> json) {
  return _PendingTutorialBlocState.fromJson(json);
}

/// @nodoc
mixin _$PendingTutorialBlocState {
  /// progress for all tutorials
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
      _$PendingTutorialBlocStateCopyWithImpl<$Res, PendingTutorialBlocState>;
  @useResult
  $Res call({TutorialCollectionsProgressModel progress});

  $TutorialCollectionsProgressModelCopyWith<$Res> get progress;
}

/// @nodoc
class _$PendingTutorialBlocStateCopyWithImpl<$Res,
        $Val extends PendingTutorialBlocState>
    implements $PendingTutorialBlocStateCopyWith<$Res> {
  _$PendingTutorialBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
  }) {
    return _then(_value.copyWith(
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as TutorialCollectionsProgressModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TutorialCollectionsProgressModelCopyWith<$Res> get progress {
    return $TutorialCollectionsProgressModelCopyWith<$Res>(_value.progress,
        (value) {
      return _then(_value.copyWith(progress: value) as $Val);
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
  @useResult
  $Res call({TutorialCollectionsProgressModel progress});

  @override
  $TutorialCollectionsProgressModelCopyWith<$Res> get progress;
}

/// @nodoc
class __$$_PendingTutorialBlocStateCopyWithImpl<$Res>
    extends _$PendingTutorialBlocStateCopyWithImpl<$Res,
        _$_PendingTutorialBlocState>
    implements _$$_PendingTutorialBlocStateCopyWith<$Res> {
  __$$_PendingTutorialBlocStateCopyWithImpl(_$_PendingTutorialBlocState _value,
      $Res Function(_$_PendingTutorialBlocState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
  }) {
    return _then(_$_PendingTutorialBlocState(
      progress: null == progress
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

  /// progress for all tutorials
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
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, progress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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

  /// progress for all tutorials
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

  /// progress for all tutorials
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
      _$LiveTutorialBlocStateCopyWithImpl<$Res, LiveTutorialBlocState>;
  @useResult
  $Res call(
      {TutorialEventsCollectionModel tutorial,
      TutorialCollectionsProgressModel progress});

  $TutorialEventsCollectionModelCopyWith<$Res> get tutorial;
  $TutorialCollectionsProgressModelCopyWith<$Res> get progress;
}

/// @nodoc
class _$LiveTutorialBlocStateCopyWithImpl<$Res,
        $Val extends LiveTutorialBlocState>
    implements $LiveTutorialBlocStateCopyWith<$Res> {
  _$LiveTutorialBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tutorial = null,
    Object? progress = null,
  }) {
    return _then(_value.copyWith(
      tutorial: null == tutorial
          ? _value.tutorial
          : tutorial // ignore: cast_nullable_to_non_nullable
              as TutorialEventsCollectionModel,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as TutorialCollectionsProgressModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TutorialEventsCollectionModelCopyWith<$Res> get tutorial {
    return $TutorialEventsCollectionModelCopyWith<$Res>(_value.tutorial,
        (value) {
      return _then(_value.copyWith(tutorial: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TutorialCollectionsProgressModelCopyWith<$Res> get progress {
    return $TutorialCollectionsProgressModelCopyWith<$Res>(_value.progress,
        (value) {
      return _then(_value.copyWith(progress: value) as $Val);
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
  @useResult
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
    extends _$LiveTutorialBlocStateCopyWithImpl<$Res, _$_LiveTutorialBlocState>
    implements _$$_LiveTutorialBlocStateCopyWith<$Res> {
  __$$_LiveTutorialBlocStateCopyWithImpl(_$_LiveTutorialBlocState _value,
      $Res Function(_$_LiveTutorialBlocState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tutorial = null,
    Object? progress = null,
  }) {
    return _then(_$_LiveTutorialBlocState(
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

  /// progress for all tutorials
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

  /// progress for all tutorials
  TutorialCollectionsProgressModel get progress;
  @override
  @JsonKey(ignore: true)
  _$$_LiveTutorialBlocStateCopyWith<_$_LiveTutorialBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}
