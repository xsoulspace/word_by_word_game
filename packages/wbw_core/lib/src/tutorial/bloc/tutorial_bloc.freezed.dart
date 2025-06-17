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
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TutorialEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() complete,
    required TResult Function(TutorialCollectionsProgressModel progress)
    loadTutorialProgress,
    required TResult Function(
      TutorialCollectionsName tutorialName,
      bool shouldContinueIfPlayed,
      bool shouldStartFromBeginning,
    )
    start,
    required TResult Function(NextTutorialEventType action) next,
    required TResult Function(
      TutorialCompleteAction action,
      TutorialUiItem? key,
      String stringValue,
      bool boolValue,
    )
    uiAction,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? complete,
    TResult? Function(TutorialCollectionsProgressModel progress)?
    loadTutorialProgress,
    TResult? Function(
      TutorialCollectionsName tutorialName,
      bool shouldContinueIfPlayed,
      bool shouldStartFromBeginning,
    )?
    start,
    TResult? Function(NextTutorialEventType action)? next,
    TResult? Function(
      TutorialCompleteAction action,
      TutorialUiItem? key,
      String stringValue,
      bool boolValue,
    )?
    uiAction,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? complete,
    TResult Function(TutorialCollectionsProgressModel progress)?
    loadTutorialProgress,
    TResult Function(
      TutorialCollectionsName tutorialName,
      bool shouldContinueIfPlayed,
      bool shouldStartFromBeginning,
    )?
    start,
    TResult Function(NextTutorialEventType action)? next,
    TResult Function(
      TutorialCompleteAction action,
      TutorialUiItem? key,
      String stringValue,
      bool boolValue,
    )?
    uiAction,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompleteTutorialEvent value) complete,
    required TResult Function(LoadTutorialsProgressEvent value)
    loadTutorialProgress,
    required TResult Function(StartTutorialEvent value) start,
    required TResult Function(NextTutorialEvent value) next,
    required TResult Function(TutorialUiActionEvent value) uiAction,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CompleteTutorialEvent value)? complete,
    TResult? Function(LoadTutorialsProgressEvent value)? loadTutorialProgress,
    TResult? Function(StartTutorialEvent value)? start,
    TResult? Function(NextTutorialEvent value)? next,
    TResult? Function(TutorialUiActionEvent value)? uiAction,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompleteTutorialEvent value)? complete,
    TResult Function(LoadTutorialsProgressEvent value)? loadTutorialProgress,
    TResult Function(StartTutorialEvent value)? start,
    TResult Function(NextTutorialEvent value)? next,
    TResult Function(TutorialUiActionEvent value)? uiAction,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorialEventCopyWith<$Res> {
  factory $TutorialEventCopyWith(
    TutorialEvent value,
    $Res Function(TutorialEvent) then,
  ) = _$TutorialEventCopyWithImpl<$Res, TutorialEvent>;
}

/// @nodoc
class _$TutorialEventCopyWithImpl<$Res, $Val extends TutorialEvent>
    implements $TutorialEventCopyWith<$Res> {
  _$TutorialEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TutorialEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CompleteTutorialEventImplCopyWith<$Res> {
  factory _$$CompleteTutorialEventImplCopyWith(
    _$CompleteTutorialEventImpl value,
    $Res Function(_$CompleteTutorialEventImpl) then,
  ) = __$$CompleteTutorialEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompleteTutorialEventImplCopyWithImpl<$Res>
    extends _$TutorialEventCopyWithImpl<$Res, _$CompleteTutorialEventImpl>
    implements _$$CompleteTutorialEventImplCopyWith<$Res> {
  __$$CompleteTutorialEventImplCopyWithImpl(
    _$CompleteTutorialEventImpl _value,
    $Res Function(_$CompleteTutorialEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TutorialEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CompleteTutorialEventImpl implements CompleteTutorialEvent {
  const _$CompleteTutorialEventImpl();

  @override
  String toString() {
    return 'TutorialEvent.complete()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteTutorialEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() complete,
    required TResult Function(TutorialCollectionsProgressModel progress)
    loadTutorialProgress,
    required TResult Function(
      TutorialCollectionsName tutorialName,
      bool shouldContinueIfPlayed,
      bool shouldStartFromBeginning,
    )
    start,
    required TResult Function(NextTutorialEventType action) next,
    required TResult Function(
      TutorialCompleteAction action,
      TutorialUiItem? key,
      String stringValue,
      bool boolValue,
    )
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
    TResult? Function(
      TutorialCollectionsName tutorialName,
      bool shouldContinueIfPlayed,
      bool shouldStartFromBeginning,
    )?
    start,
    TResult? Function(NextTutorialEventType action)? next,
    TResult? Function(
      TutorialCompleteAction action,
      TutorialUiItem? key,
      String stringValue,
      bool boolValue,
    )?
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
    TResult Function(
      TutorialCollectionsName tutorialName,
      bool shouldContinueIfPlayed,
      bool shouldStartFromBeginning,
    )?
    start,
    TResult Function(NextTutorialEventType action)? next,
    TResult Function(
      TutorialCompleteAction action,
      TutorialUiItem? key,
      String stringValue,
      bool boolValue,
    )?
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
  const factory CompleteTutorialEvent() = _$CompleteTutorialEventImpl;
}

/// @nodoc
abstract class _$$LoadTutorialsProgressEventImplCopyWith<$Res> {
  factory _$$LoadTutorialsProgressEventImplCopyWith(
    _$LoadTutorialsProgressEventImpl value,
    $Res Function(_$LoadTutorialsProgressEventImpl) then,
  ) = __$$LoadTutorialsProgressEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TutorialCollectionsProgressModel progress});

  $TutorialCollectionsProgressModelCopyWith<$Res> get progress;
}

/// @nodoc
class __$$LoadTutorialsProgressEventImplCopyWithImpl<$Res>
    extends _$TutorialEventCopyWithImpl<$Res, _$LoadTutorialsProgressEventImpl>
    implements _$$LoadTutorialsProgressEventImplCopyWith<$Res> {
  __$$LoadTutorialsProgressEventImplCopyWithImpl(
    _$LoadTutorialsProgressEventImpl _value,
    $Res Function(_$LoadTutorialsProgressEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TutorialEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? progress = null}) {
    return _then(
      _$LoadTutorialsProgressEventImpl(
        progress: null == progress
            ? _value.progress
            : progress // ignore: cast_nullable_to_non_nullable
                  as TutorialCollectionsProgressModel,
      ),
    );
  }

  /// Create a copy of TutorialEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TutorialCollectionsProgressModelCopyWith<$Res> get progress {
    return $TutorialCollectionsProgressModelCopyWith<$Res>(_value.progress, (
      value,
    ) {
      return _then(_value.copyWith(progress: value));
    });
  }
}

/// @nodoc

class _$LoadTutorialsProgressEventImpl implements LoadTutorialsProgressEvent {
  const _$LoadTutorialsProgressEventImpl({required this.progress});

  @override
  final TutorialCollectionsProgressModel progress;

  @override
  String toString() {
    return 'TutorialEvent.loadTutorialProgress(progress: $progress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadTutorialsProgressEventImpl &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progress);

  /// Create a copy of TutorialEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadTutorialsProgressEventImplCopyWith<_$LoadTutorialsProgressEventImpl>
  get copyWith =>
      __$$LoadTutorialsProgressEventImplCopyWithImpl<
        _$LoadTutorialsProgressEventImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() complete,
    required TResult Function(TutorialCollectionsProgressModel progress)
    loadTutorialProgress,
    required TResult Function(
      TutorialCollectionsName tutorialName,
      bool shouldContinueIfPlayed,
      bool shouldStartFromBeginning,
    )
    start,
    required TResult Function(NextTutorialEventType action) next,
    required TResult Function(
      TutorialCompleteAction action,
      TutorialUiItem? key,
      String stringValue,
      bool boolValue,
    )
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
    TResult? Function(
      TutorialCollectionsName tutorialName,
      bool shouldContinueIfPlayed,
      bool shouldStartFromBeginning,
    )?
    start,
    TResult? Function(NextTutorialEventType action)? next,
    TResult? Function(
      TutorialCompleteAction action,
      TutorialUiItem? key,
      String stringValue,
      bool boolValue,
    )?
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
    TResult Function(
      TutorialCollectionsName tutorialName,
      bool shouldContinueIfPlayed,
      bool shouldStartFromBeginning,
    )?
    start,
    TResult Function(NextTutorialEventType action)? next,
    TResult Function(
      TutorialCompleteAction action,
      TutorialUiItem? key,
      String stringValue,
      bool boolValue,
    )?
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
  const factory LoadTutorialsProgressEvent({
    required final TutorialCollectionsProgressModel progress,
  }) = _$LoadTutorialsProgressEventImpl;

  TutorialCollectionsProgressModel get progress;

  /// Create a copy of TutorialEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadTutorialsProgressEventImplCopyWith<_$LoadTutorialsProgressEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartTutorialEventImplCopyWith<$Res> {
  factory _$$StartTutorialEventImplCopyWith(
    _$StartTutorialEventImpl value,
    $Res Function(_$StartTutorialEventImpl) then,
  ) = __$$StartTutorialEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    TutorialCollectionsName tutorialName,
    bool shouldContinueIfPlayed,
    bool shouldStartFromBeginning,
  });
}

/// @nodoc
class __$$StartTutorialEventImplCopyWithImpl<$Res>
    extends _$TutorialEventCopyWithImpl<$Res, _$StartTutorialEventImpl>
    implements _$$StartTutorialEventImplCopyWith<$Res> {
  __$$StartTutorialEventImplCopyWithImpl(
    _$StartTutorialEventImpl _value,
    $Res Function(_$StartTutorialEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TutorialEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tutorialName = null,
    Object? shouldContinueIfPlayed = null,
    Object? shouldStartFromBeginning = null,
  }) {
    return _then(
      _$StartTutorialEventImpl(
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
      ),
    );
  }
}

/// @nodoc

class _$StartTutorialEventImpl implements StartTutorialEvent {
  const _$StartTutorialEventImpl({
    required this.tutorialName,
    required this.shouldContinueIfPlayed,
    required this.shouldStartFromBeginning,
  });

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartTutorialEventImpl &&
            (identical(other.tutorialName, tutorialName) ||
                other.tutorialName == tutorialName) &&
            (identical(other.shouldContinueIfPlayed, shouldContinueIfPlayed) ||
                other.shouldContinueIfPlayed == shouldContinueIfPlayed) &&
            (identical(
                  other.shouldStartFromBeginning,
                  shouldStartFromBeginning,
                ) ||
                other.shouldStartFromBeginning == shouldStartFromBeginning));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    tutorialName,
    shouldContinueIfPlayed,
    shouldStartFromBeginning,
  );

  /// Create a copy of TutorialEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartTutorialEventImplCopyWith<_$StartTutorialEventImpl> get copyWith =>
      __$$StartTutorialEventImplCopyWithImpl<_$StartTutorialEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() complete,
    required TResult Function(TutorialCollectionsProgressModel progress)
    loadTutorialProgress,
    required TResult Function(
      TutorialCollectionsName tutorialName,
      bool shouldContinueIfPlayed,
      bool shouldStartFromBeginning,
    )
    start,
    required TResult Function(NextTutorialEventType action) next,
    required TResult Function(
      TutorialCompleteAction action,
      TutorialUiItem? key,
      String stringValue,
      bool boolValue,
    )
    uiAction,
  }) {
    return start(
      tutorialName,
      shouldContinueIfPlayed,
      shouldStartFromBeginning,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? complete,
    TResult? Function(TutorialCollectionsProgressModel progress)?
    loadTutorialProgress,
    TResult? Function(
      TutorialCollectionsName tutorialName,
      bool shouldContinueIfPlayed,
      bool shouldStartFromBeginning,
    )?
    start,
    TResult? Function(NextTutorialEventType action)? next,
    TResult? Function(
      TutorialCompleteAction action,
      TutorialUiItem? key,
      String stringValue,
      bool boolValue,
    )?
    uiAction,
  }) {
    return start?.call(
      tutorialName,
      shouldContinueIfPlayed,
      shouldStartFromBeginning,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? complete,
    TResult Function(TutorialCollectionsProgressModel progress)?
    loadTutorialProgress,
    TResult Function(
      TutorialCollectionsName tutorialName,
      bool shouldContinueIfPlayed,
      bool shouldStartFromBeginning,
    )?
    start,
    TResult Function(NextTutorialEventType action)? next,
    TResult Function(
      TutorialCompleteAction action,
      TutorialUiItem? key,
      String stringValue,
      bool boolValue,
    )?
    uiAction,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(
        tutorialName,
        shouldContinueIfPlayed,
        shouldStartFromBeginning,
      );
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
  const factory StartTutorialEvent({
    required final TutorialCollectionsName tutorialName,
    required final bool shouldContinueIfPlayed,
    required final bool shouldStartFromBeginning,
  }) = _$StartTutorialEventImpl;

  TutorialCollectionsName get tutorialName;
  bool get shouldContinueIfPlayed;
  bool get shouldStartFromBeginning;

  /// Create a copy of TutorialEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartTutorialEventImplCopyWith<_$StartTutorialEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NextTutorialEventImplCopyWith<$Res> {
  factory _$$NextTutorialEventImplCopyWith(
    _$NextTutorialEventImpl value,
    $Res Function(_$NextTutorialEventImpl) then,
  ) = __$$NextTutorialEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NextTutorialEventType action});
}

/// @nodoc
class __$$NextTutorialEventImplCopyWithImpl<$Res>
    extends _$TutorialEventCopyWithImpl<$Res, _$NextTutorialEventImpl>
    implements _$$NextTutorialEventImplCopyWith<$Res> {
  __$$NextTutorialEventImplCopyWithImpl(
    _$NextTutorialEventImpl _value,
    $Res Function(_$NextTutorialEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TutorialEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? action = null}) {
    return _then(
      _$NextTutorialEventImpl(
        action: null == action
            ? _value.action
            : action // ignore: cast_nullable_to_non_nullable
                  as NextTutorialEventType,
      ),
    );
  }
}

/// @nodoc

class _$NextTutorialEventImpl implements NextTutorialEvent {
  const _$NextTutorialEventImpl({this.action = NextTutorialEventType.next});

  @override
  @JsonKey()
  final NextTutorialEventType action;

  @override
  String toString() {
    return 'TutorialEvent.next(action: $action)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NextTutorialEventImpl &&
            (identical(other.action, action) || other.action == action));
  }

  @override
  int get hashCode => Object.hash(runtimeType, action);

  /// Create a copy of TutorialEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NextTutorialEventImplCopyWith<_$NextTutorialEventImpl> get copyWith =>
      __$$NextTutorialEventImplCopyWithImpl<_$NextTutorialEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() complete,
    required TResult Function(TutorialCollectionsProgressModel progress)
    loadTutorialProgress,
    required TResult Function(
      TutorialCollectionsName tutorialName,
      bool shouldContinueIfPlayed,
      bool shouldStartFromBeginning,
    )
    start,
    required TResult Function(NextTutorialEventType action) next,
    required TResult Function(
      TutorialCompleteAction action,
      TutorialUiItem? key,
      String stringValue,
      bool boolValue,
    )
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
    TResult? Function(
      TutorialCollectionsName tutorialName,
      bool shouldContinueIfPlayed,
      bool shouldStartFromBeginning,
    )?
    start,
    TResult? Function(NextTutorialEventType action)? next,
    TResult? Function(
      TutorialCompleteAction action,
      TutorialUiItem? key,
      String stringValue,
      bool boolValue,
    )?
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
    TResult Function(
      TutorialCollectionsName tutorialName,
      bool shouldContinueIfPlayed,
      bool shouldStartFromBeginning,
    )?
    start,
    TResult Function(NextTutorialEventType action)? next,
    TResult Function(
      TutorialCompleteAction action,
      TutorialUiItem? key,
      String stringValue,
      bool boolValue,
    )?
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
      _$NextTutorialEventImpl;

  NextTutorialEventType get action;

  /// Create a copy of TutorialEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NextTutorialEventImplCopyWith<_$NextTutorialEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TutorialUiActionEventImplCopyWith<$Res> {
  factory _$$TutorialUiActionEventImplCopyWith(
    _$TutorialUiActionEventImpl value,
    $Res Function(_$TutorialUiActionEventImpl) then,
  ) = __$$TutorialUiActionEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    TutorialCompleteAction action,
    TutorialUiItem? key,
    String stringValue,
    bool boolValue,
  });
}

/// @nodoc
class __$$TutorialUiActionEventImplCopyWithImpl<$Res>
    extends _$TutorialEventCopyWithImpl<$Res, _$TutorialUiActionEventImpl>
    implements _$$TutorialUiActionEventImplCopyWith<$Res> {
  __$$TutorialUiActionEventImplCopyWithImpl(
    _$TutorialUiActionEventImpl _value,
    $Res Function(_$TutorialUiActionEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TutorialEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? key = freezed,
    Object? stringValue = null,
    Object? boolValue = null,
  }) {
    return _then(
      _$TutorialUiActionEventImpl(
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
      ),
    );
  }
}

/// @nodoc

class _$TutorialUiActionEventImpl implements TutorialUiActionEvent {
  const _$TutorialUiActionEventImpl({
    required this.action,
    this.key,
    this.stringValue = '',
    this.boolValue = false,
  });

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TutorialUiActionEventImpl &&
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

  /// Create a copy of TutorialEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TutorialUiActionEventImplCopyWith<_$TutorialUiActionEventImpl>
  get copyWith =>
      __$$TutorialUiActionEventImplCopyWithImpl<_$TutorialUiActionEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() complete,
    required TResult Function(TutorialCollectionsProgressModel progress)
    loadTutorialProgress,
    required TResult Function(
      TutorialCollectionsName tutorialName,
      bool shouldContinueIfPlayed,
      bool shouldStartFromBeginning,
    )
    start,
    required TResult Function(NextTutorialEventType action) next,
    required TResult Function(
      TutorialCompleteAction action,
      TutorialUiItem? key,
      String stringValue,
      bool boolValue,
    )
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
    TResult? Function(
      TutorialCollectionsName tutorialName,
      bool shouldContinueIfPlayed,
      bool shouldStartFromBeginning,
    )?
    start,
    TResult? Function(NextTutorialEventType action)? next,
    TResult? Function(
      TutorialCompleteAction action,
      TutorialUiItem? key,
      String stringValue,
      bool boolValue,
    )?
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
    TResult Function(
      TutorialCollectionsName tutorialName,
      bool shouldContinueIfPlayed,
      bool shouldStartFromBeginning,
    )?
    start,
    TResult Function(NextTutorialEventType action)? next,
    TResult Function(
      TutorialCompleteAction action,
      TutorialUiItem? key,
      String stringValue,
      bool boolValue,
    )?
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
  const factory TutorialUiActionEvent({
    required final TutorialCompleteAction action,
    final TutorialUiItem? key,
    final String stringValue,
    final bool boolValue,
  }) = _$TutorialUiActionEventImpl;

  TutorialCompleteAction get action;
  TutorialUiItem? get key;
  String get stringValue;
  bool get boolValue;

  /// Create a copy of TutorialEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TutorialUiActionEventImplCopyWith<_$TutorialUiActionEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TutorialBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(TutorialCollectionsProgressModel progress)
    pending,
    required TResult Function(
      TutorialEventsCollectionModel tutorial,
      TutorialCollectionsProgressModel progress,
    )
    live,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(TutorialCollectionsProgressModel progress)? pending,
    TResult? Function(
      TutorialEventsCollectionModel tutorial,
      TutorialCollectionsProgressModel progress,
    )?
    live,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(TutorialCollectionsProgressModel progress)? pending,
    TResult Function(
      TutorialEventsCollectionModel tutorial,
      TutorialCollectionsProgressModel progress,
    )?
    live,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TutorialBlocStateEmpty value) empty,
    required TResult Function(TutorialBlocStatePending value) pending,
    required TResult Function(TutorialBlocStateLive value) live,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TutorialBlocStateEmpty value)? empty,
    TResult? Function(TutorialBlocStatePending value)? pending,
    TResult? Function(TutorialBlocStateLive value)? live,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TutorialBlocStateEmpty value)? empty,
    TResult Function(TutorialBlocStatePending value)? pending,
    TResult Function(TutorialBlocStateLive value)? live,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorialBlocStateCopyWith<$Res> {
  factory $TutorialBlocStateCopyWith(
    TutorialBlocState value,
    $Res Function(TutorialBlocState) then,
  ) = _$TutorialBlocStateCopyWithImpl<$Res, TutorialBlocState>;
}

/// @nodoc
class _$TutorialBlocStateCopyWithImpl<$Res, $Val extends TutorialBlocState>
    implements $TutorialBlocStateCopyWith<$Res> {
  _$TutorialBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TutorialBlocState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TutorialBlocStateEmptyImplCopyWith<$Res> {
  factory _$$TutorialBlocStateEmptyImplCopyWith(
    _$TutorialBlocStateEmptyImpl value,
    $Res Function(_$TutorialBlocStateEmptyImpl) then,
  ) = __$$TutorialBlocStateEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TutorialBlocStateEmptyImplCopyWithImpl<$Res>
    extends _$TutorialBlocStateCopyWithImpl<$Res, _$TutorialBlocStateEmptyImpl>
    implements _$$TutorialBlocStateEmptyImplCopyWith<$Res> {
  __$$TutorialBlocStateEmptyImplCopyWithImpl(
    _$TutorialBlocStateEmptyImpl _value,
    $Res Function(_$TutorialBlocStateEmptyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TutorialBlocState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TutorialBlocStateEmptyImpl implements TutorialBlocStateEmpty {
  const _$TutorialBlocStateEmptyImpl();

  @override
  String toString() {
    return 'TutorialBlocState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TutorialBlocStateEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(TutorialCollectionsProgressModel progress)
    pending,
    required TResult Function(
      TutorialEventsCollectionModel tutorial,
      TutorialCollectionsProgressModel progress,
    )
    live,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(TutorialCollectionsProgressModel progress)? pending,
    TResult? Function(
      TutorialEventsCollectionModel tutorial,
      TutorialCollectionsProgressModel progress,
    )?
    live,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(TutorialCollectionsProgressModel progress)? pending,
    TResult Function(
      TutorialEventsCollectionModel tutorial,
      TutorialCollectionsProgressModel progress,
    )?
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
}

abstract class TutorialBlocStateEmpty implements TutorialBlocState {
  const factory TutorialBlocStateEmpty() = _$TutorialBlocStateEmptyImpl;
}

/// @nodoc
abstract class _$$TutorialBlocStatePendingImplCopyWith<$Res> {
  factory _$$TutorialBlocStatePendingImplCopyWith(
    _$TutorialBlocStatePendingImpl value,
    $Res Function(_$TutorialBlocStatePendingImpl) then,
  ) = __$$TutorialBlocStatePendingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TutorialCollectionsProgressModel progress});

  $TutorialCollectionsProgressModelCopyWith<$Res> get progress;
}

/// @nodoc
class __$$TutorialBlocStatePendingImplCopyWithImpl<$Res>
    extends
        _$TutorialBlocStateCopyWithImpl<$Res, _$TutorialBlocStatePendingImpl>
    implements _$$TutorialBlocStatePendingImplCopyWith<$Res> {
  __$$TutorialBlocStatePendingImplCopyWithImpl(
    _$TutorialBlocStatePendingImpl _value,
    $Res Function(_$TutorialBlocStatePendingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TutorialBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? progress = null}) {
    return _then(
      _$TutorialBlocStatePendingImpl(
        progress: null == progress
            ? _value.progress
            : progress // ignore: cast_nullable_to_non_nullable
                  as TutorialCollectionsProgressModel,
      ),
    );
  }

  /// Create a copy of TutorialBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TutorialCollectionsProgressModelCopyWith<$Res> get progress {
    return $TutorialCollectionsProgressModelCopyWith<$Res>(_value.progress, (
      value,
    ) {
      return _then(_value.copyWith(progress: value));
    });
  }
}

/// @nodoc

class _$TutorialBlocStatePendingImpl implements TutorialBlocStatePending {
  const _$TutorialBlocStatePendingImpl({required this.progress});

  /// progress for all tutorials
  @override
  final TutorialCollectionsProgressModel progress;

  @override
  String toString() {
    return 'TutorialBlocState.pending(progress: $progress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TutorialBlocStatePendingImpl &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progress);

  /// Create a copy of TutorialBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TutorialBlocStatePendingImplCopyWith<_$TutorialBlocStatePendingImpl>
  get copyWith =>
      __$$TutorialBlocStatePendingImplCopyWithImpl<
        _$TutorialBlocStatePendingImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(TutorialCollectionsProgressModel progress)
    pending,
    required TResult Function(
      TutorialEventsCollectionModel tutorial,
      TutorialCollectionsProgressModel progress,
    )
    live,
  }) {
    return pending(progress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(TutorialCollectionsProgressModel progress)? pending,
    TResult? Function(
      TutorialEventsCollectionModel tutorial,
      TutorialCollectionsProgressModel progress,
    )?
    live,
  }) {
    return pending?.call(progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(TutorialCollectionsProgressModel progress)? pending,
    TResult Function(
      TutorialEventsCollectionModel tutorial,
      TutorialCollectionsProgressModel progress,
    )?
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
}

abstract class TutorialBlocStatePending implements TutorialBlocState {
  const factory TutorialBlocStatePending({
    required final TutorialCollectionsProgressModel progress,
  }) = _$TutorialBlocStatePendingImpl;

  /// progress for all tutorials
  TutorialCollectionsProgressModel get progress;

  /// Create a copy of TutorialBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TutorialBlocStatePendingImplCopyWith<_$TutorialBlocStatePendingImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TutorialBlocStateLiveImplCopyWith<$Res> {
  factory _$$TutorialBlocStateLiveImplCopyWith(
    _$TutorialBlocStateLiveImpl value,
    $Res Function(_$TutorialBlocStateLiveImpl) then,
  ) = __$$TutorialBlocStateLiveImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    TutorialEventsCollectionModel tutorial,
    TutorialCollectionsProgressModel progress,
  });

  $TutorialEventsCollectionModelCopyWith<$Res> get tutorial;
  $TutorialCollectionsProgressModelCopyWith<$Res> get progress;
}

/// @nodoc
class __$$TutorialBlocStateLiveImplCopyWithImpl<$Res>
    extends _$TutorialBlocStateCopyWithImpl<$Res, _$TutorialBlocStateLiveImpl>
    implements _$$TutorialBlocStateLiveImplCopyWith<$Res> {
  __$$TutorialBlocStateLiveImplCopyWithImpl(
    _$TutorialBlocStateLiveImpl _value,
    $Res Function(_$TutorialBlocStateLiveImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TutorialBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? tutorial = null, Object? progress = null}) {
    return _then(
      _$TutorialBlocStateLiveImpl(
        tutorial: null == tutorial
            ? _value.tutorial
            : tutorial // ignore: cast_nullable_to_non_nullable
                  as TutorialEventsCollectionModel,
        progress: null == progress
            ? _value.progress
            : progress // ignore: cast_nullable_to_non_nullable
                  as TutorialCollectionsProgressModel,
      ),
    );
  }

  /// Create a copy of TutorialBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TutorialEventsCollectionModelCopyWith<$Res> get tutorial {
    return $TutorialEventsCollectionModelCopyWith<$Res>(_value.tutorial, (
      value,
    ) {
      return _then(_value.copyWith(tutorial: value));
    });
  }

  /// Create a copy of TutorialBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TutorialCollectionsProgressModelCopyWith<$Res> get progress {
    return $TutorialCollectionsProgressModelCopyWith<$Res>(_value.progress, (
      value,
    ) {
      return _then(_value.copyWith(progress: value));
    });
  }
}

/// @nodoc

class _$TutorialBlocStateLiveImpl implements TutorialBlocStateLive {
  const _$TutorialBlocStateLiveImpl({
    required this.tutorial,
    required this.progress,
  });

  @override
  final TutorialEventsCollectionModel tutorial;

  /// progress for all tutorials
  @override
  final TutorialCollectionsProgressModel progress;

  @override
  String toString() {
    return 'TutorialBlocState.live(tutorial: $tutorial, progress: $progress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TutorialBlocStateLiveImpl &&
            (identical(other.tutorial, tutorial) ||
                other.tutorial == tutorial) &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tutorial, progress);

  /// Create a copy of TutorialBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TutorialBlocStateLiveImplCopyWith<_$TutorialBlocStateLiveImpl>
  get copyWith =>
      __$$TutorialBlocStateLiveImplCopyWithImpl<_$TutorialBlocStateLiveImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(TutorialCollectionsProgressModel progress)
    pending,
    required TResult Function(
      TutorialEventsCollectionModel tutorial,
      TutorialCollectionsProgressModel progress,
    )
    live,
  }) {
    return live(tutorial, progress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(TutorialCollectionsProgressModel progress)? pending,
    TResult? Function(
      TutorialEventsCollectionModel tutorial,
      TutorialCollectionsProgressModel progress,
    )?
    live,
  }) {
    return live?.call(tutorial, progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(TutorialCollectionsProgressModel progress)? pending,
    TResult Function(
      TutorialEventsCollectionModel tutorial,
      TutorialCollectionsProgressModel progress,
    )?
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
}

abstract class TutorialBlocStateLive implements TutorialBlocState {
  const factory TutorialBlocStateLive({
    required final TutorialEventsCollectionModel tutorial,
    required final TutorialCollectionsProgressModel progress,
  }) = _$TutorialBlocStateLiveImpl;

  TutorialEventsCollectionModel get tutorial;

  /// progress for all tutorials
  TutorialCollectionsProgressModel get progress;

  /// Create a copy of TutorialBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TutorialBlocStateLiveImplCopyWith<_$TutorialBlocStateLiveImpl>
  get copyWith => throw _privateConstructorUsedError;
}
