// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tutorial_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TutorialEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TutorialEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TutorialEvent()';
}


}

/// @nodoc
class $TutorialEventCopyWith<$Res>  {
$TutorialEventCopyWith(TutorialEvent _, $Res Function(TutorialEvent) __);
}


/// Adds pattern-matching-related methods to [TutorialEvent].
extension TutorialEventPatterns on TutorialEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CompleteTutorialEvent value)?  complete,TResult Function( LoadTutorialsProgressEvent value)?  loadTutorialProgress,TResult Function( StartTutorialEvent value)?  start,TResult Function( NextTutorialEvent value)?  next,TResult Function( TutorialUiActionEvent value)?  uiAction,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CompleteTutorialEvent() when complete != null:
return complete(_that);case LoadTutorialsProgressEvent() when loadTutorialProgress != null:
return loadTutorialProgress(_that);case StartTutorialEvent() when start != null:
return start(_that);case NextTutorialEvent() when next != null:
return next(_that);case TutorialUiActionEvent() when uiAction != null:
return uiAction(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CompleteTutorialEvent value)  complete,required TResult Function( LoadTutorialsProgressEvent value)  loadTutorialProgress,required TResult Function( StartTutorialEvent value)  start,required TResult Function( NextTutorialEvent value)  next,required TResult Function( TutorialUiActionEvent value)  uiAction,}){
final _that = this;
switch (_that) {
case CompleteTutorialEvent():
return complete(_that);case LoadTutorialsProgressEvent():
return loadTutorialProgress(_that);case StartTutorialEvent():
return start(_that);case NextTutorialEvent():
return next(_that);case TutorialUiActionEvent():
return uiAction(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CompleteTutorialEvent value)?  complete,TResult? Function( LoadTutorialsProgressEvent value)?  loadTutorialProgress,TResult? Function( StartTutorialEvent value)?  start,TResult? Function( NextTutorialEvent value)?  next,TResult? Function( TutorialUiActionEvent value)?  uiAction,}){
final _that = this;
switch (_that) {
case CompleteTutorialEvent() when complete != null:
return complete(_that);case LoadTutorialsProgressEvent() when loadTutorialProgress != null:
return loadTutorialProgress(_that);case StartTutorialEvent() when start != null:
return start(_that);case NextTutorialEvent() when next != null:
return next(_that);case TutorialUiActionEvent() when uiAction != null:
return uiAction(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  complete,TResult Function( TutorialCollectionsProgressModel progress)?  loadTutorialProgress,TResult Function( TutorialCollectionsName tutorialName,  bool shouldContinueIfPlayed,  bool shouldStartFromBeginning)?  start,TResult Function( NextTutorialEventType action)?  next,TResult Function( TutorialCompleteAction action,  TutorialUiItem? key,  String stringValue,  bool boolValue)?  uiAction,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CompleteTutorialEvent() when complete != null:
return complete();case LoadTutorialsProgressEvent() when loadTutorialProgress != null:
return loadTutorialProgress(_that.progress);case StartTutorialEvent() when start != null:
return start(_that.tutorialName,_that.shouldContinueIfPlayed,_that.shouldStartFromBeginning);case NextTutorialEvent() when next != null:
return next(_that.action);case TutorialUiActionEvent() when uiAction != null:
return uiAction(_that.action,_that.key,_that.stringValue,_that.boolValue);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  complete,required TResult Function( TutorialCollectionsProgressModel progress)  loadTutorialProgress,required TResult Function( TutorialCollectionsName tutorialName,  bool shouldContinueIfPlayed,  bool shouldStartFromBeginning)  start,required TResult Function( NextTutorialEventType action)  next,required TResult Function( TutorialCompleteAction action,  TutorialUiItem? key,  String stringValue,  bool boolValue)  uiAction,}) {final _that = this;
switch (_that) {
case CompleteTutorialEvent():
return complete();case LoadTutorialsProgressEvent():
return loadTutorialProgress(_that.progress);case StartTutorialEvent():
return start(_that.tutorialName,_that.shouldContinueIfPlayed,_that.shouldStartFromBeginning);case NextTutorialEvent():
return next(_that.action);case TutorialUiActionEvent():
return uiAction(_that.action,_that.key,_that.stringValue,_that.boolValue);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  complete,TResult? Function( TutorialCollectionsProgressModel progress)?  loadTutorialProgress,TResult? Function( TutorialCollectionsName tutorialName,  bool shouldContinueIfPlayed,  bool shouldStartFromBeginning)?  start,TResult? Function( NextTutorialEventType action)?  next,TResult? Function( TutorialCompleteAction action,  TutorialUiItem? key,  String stringValue,  bool boolValue)?  uiAction,}) {final _that = this;
switch (_that) {
case CompleteTutorialEvent() when complete != null:
return complete();case LoadTutorialsProgressEvent() when loadTutorialProgress != null:
return loadTutorialProgress(_that.progress);case StartTutorialEvent() when start != null:
return start(_that.tutorialName,_that.shouldContinueIfPlayed,_that.shouldStartFromBeginning);case NextTutorialEvent() when next != null:
return next(_that.action);case TutorialUiActionEvent() when uiAction != null:
return uiAction(_that.action,_that.key,_that.stringValue,_that.boolValue);case _:
  return null;

}
}

}

/// @nodoc


class CompleteTutorialEvent implements TutorialEvent {
  const CompleteTutorialEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompleteTutorialEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TutorialEvent.complete()';
}


}




/// @nodoc


class LoadTutorialsProgressEvent implements TutorialEvent {
  const LoadTutorialsProgressEvent({required this.progress});
  

 final  TutorialCollectionsProgressModel progress;

/// Create a copy of TutorialEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadTutorialsProgressEventCopyWith<LoadTutorialsProgressEvent> get copyWith => _$LoadTutorialsProgressEventCopyWithImpl<LoadTutorialsProgressEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadTutorialsProgressEvent&&(identical(other.progress, progress) || other.progress == progress));
}


@override
int get hashCode => Object.hash(runtimeType,progress);

@override
String toString() {
  return 'TutorialEvent.loadTutorialProgress(progress: $progress)';
}


}

/// @nodoc
abstract mixin class $LoadTutorialsProgressEventCopyWith<$Res> implements $TutorialEventCopyWith<$Res> {
  factory $LoadTutorialsProgressEventCopyWith(LoadTutorialsProgressEvent value, $Res Function(LoadTutorialsProgressEvent) _then) = _$LoadTutorialsProgressEventCopyWithImpl;
@useResult
$Res call({
 TutorialCollectionsProgressModel progress
});


$TutorialCollectionsProgressModelCopyWith<$Res> get progress;

}
/// @nodoc
class _$LoadTutorialsProgressEventCopyWithImpl<$Res>
    implements $LoadTutorialsProgressEventCopyWith<$Res> {
  _$LoadTutorialsProgressEventCopyWithImpl(this._self, this._then);

  final LoadTutorialsProgressEvent _self;
  final $Res Function(LoadTutorialsProgressEvent) _then;

/// Create a copy of TutorialEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? progress = null,}) {
  return _then(LoadTutorialsProgressEvent(
progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as TutorialCollectionsProgressModel,
  ));
}

/// Create a copy of TutorialEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TutorialCollectionsProgressModelCopyWith<$Res> get progress {
  
  return $TutorialCollectionsProgressModelCopyWith<$Res>(_self.progress, (value) {
    return _then(_self.copyWith(progress: value));
  });
}
}

/// @nodoc


class StartTutorialEvent implements TutorialEvent {
  const StartTutorialEvent({required this.tutorialName, required this.shouldContinueIfPlayed, required this.shouldStartFromBeginning});
  

 final  TutorialCollectionsName tutorialName;
 final  bool shouldContinueIfPlayed;
 final  bool shouldStartFromBeginning;

/// Create a copy of TutorialEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StartTutorialEventCopyWith<StartTutorialEvent> get copyWith => _$StartTutorialEventCopyWithImpl<StartTutorialEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StartTutorialEvent&&(identical(other.tutorialName, tutorialName) || other.tutorialName == tutorialName)&&(identical(other.shouldContinueIfPlayed, shouldContinueIfPlayed) || other.shouldContinueIfPlayed == shouldContinueIfPlayed)&&(identical(other.shouldStartFromBeginning, shouldStartFromBeginning) || other.shouldStartFromBeginning == shouldStartFromBeginning));
}


@override
int get hashCode => Object.hash(runtimeType,tutorialName,shouldContinueIfPlayed,shouldStartFromBeginning);

@override
String toString() {
  return 'TutorialEvent.start(tutorialName: $tutorialName, shouldContinueIfPlayed: $shouldContinueIfPlayed, shouldStartFromBeginning: $shouldStartFromBeginning)';
}


}

/// @nodoc
abstract mixin class $StartTutorialEventCopyWith<$Res> implements $TutorialEventCopyWith<$Res> {
  factory $StartTutorialEventCopyWith(StartTutorialEvent value, $Res Function(StartTutorialEvent) _then) = _$StartTutorialEventCopyWithImpl;
@useResult
$Res call({
 TutorialCollectionsName tutorialName, bool shouldContinueIfPlayed, bool shouldStartFromBeginning
});




}
/// @nodoc
class _$StartTutorialEventCopyWithImpl<$Res>
    implements $StartTutorialEventCopyWith<$Res> {
  _$StartTutorialEventCopyWithImpl(this._self, this._then);

  final StartTutorialEvent _self;
  final $Res Function(StartTutorialEvent) _then;

/// Create a copy of TutorialEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tutorialName = null,Object? shouldContinueIfPlayed = null,Object? shouldStartFromBeginning = null,}) {
  return _then(StartTutorialEvent(
tutorialName: null == tutorialName ? _self.tutorialName : tutorialName // ignore: cast_nullable_to_non_nullable
as TutorialCollectionsName,shouldContinueIfPlayed: null == shouldContinueIfPlayed ? _self.shouldContinueIfPlayed : shouldContinueIfPlayed // ignore: cast_nullable_to_non_nullable
as bool,shouldStartFromBeginning: null == shouldStartFromBeginning ? _self.shouldStartFromBeginning : shouldStartFromBeginning // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class NextTutorialEvent implements TutorialEvent {
  const NextTutorialEvent({this.action = NextTutorialEventType.next});
  

@JsonKey() final  NextTutorialEventType action;

/// Create a copy of TutorialEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NextTutorialEventCopyWith<NextTutorialEvent> get copyWith => _$NextTutorialEventCopyWithImpl<NextTutorialEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NextTutorialEvent&&(identical(other.action, action) || other.action == action));
}


@override
int get hashCode => Object.hash(runtimeType,action);

@override
String toString() {
  return 'TutorialEvent.next(action: $action)';
}


}

/// @nodoc
abstract mixin class $NextTutorialEventCopyWith<$Res> implements $TutorialEventCopyWith<$Res> {
  factory $NextTutorialEventCopyWith(NextTutorialEvent value, $Res Function(NextTutorialEvent) _then) = _$NextTutorialEventCopyWithImpl;
@useResult
$Res call({
 NextTutorialEventType action
});




}
/// @nodoc
class _$NextTutorialEventCopyWithImpl<$Res>
    implements $NextTutorialEventCopyWith<$Res> {
  _$NextTutorialEventCopyWithImpl(this._self, this._then);

  final NextTutorialEvent _self;
  final $Res Function(NextTutorialEvent) _then;

/// Create a copy of TutorialEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? action = null,}) {
  return _then(NextTutorialEvent(
action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as NextTutorialEventType,
  ));
}


}

/// @nodoc


class TutorialUiActionEvent implements TutorialEvent {
  const TutorialUiActionEvent({required this.action, this.key, this.stringValue = '', this.boolValue = false});
  

 final  TutorialCompleteAction action;
 final  TutorialUiItem? key;
@JsonKey() final  String stringValue;
@JsonKey() final  bool boolValue;

/// Create a copy of TutorialEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TutorialUiActionEventCopyWith<TutorialUiActionEvent> get copyWith => _$TutorialUiActionEventCopyWithImpl<TutorialUiActionEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TutorialUiActionEvent&&(identical(other.action, action) || other.action == action)&&(identical(other.key, key) || other.key == key)&&(identical(other.stringValue, stringValue) || other.stringValue == stringValue)&&(identical(other.boolValue, boolValue) || other.boolValue == boolValue));
}


@override
int get hashCode => Object.hash(runtimeType,action,key,stringValue,boolValue);

@override
String toString() {
  return 'TutorialEvent.uiAction(action: $action, key: $key, stringValue: $stringValue, boolValue: $boolValue)';
}


}

/// @nodoc
abstract mixin class $TutorialUiActionEventCopyWith<$Res> implements $TutorialEventCopyWith<$Res> {
  factory $TutorialUiActionEventCopyWith(TutorialUiActionEvent value, $Res Function(TutorialUiActionEvent) _then) = _$TutorialUiActionEventCopyWithImpl;
@useResult
$Res call({
 TutorialCompleteAction action, TutorialUiItem? key, String stringValue, bool boolValue
});




}
/// @nodoc
class _$TutorialUiActionEventCopyWithImpl<$Res>
    implements $TutorialUiActionEventCopyWith<$Res> {
  _$TutorialUiActionEventCopyWithImpl(this._self, this._then);

  final TutorialUiActionEvent _self;
  final $Res Function(TutorialUiActionEvent) _then;

/// Create a copy of TutorialEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? action = null,Object? key = freezed,Object? stringValue = null,Object? boolValue = null,}) {
  return _then(TutorialUiActionEvent(
action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as TutorialCompleteAction,key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as TutorialUiItem?,stringValue: null == stringValue ? _self.stringValue : stringValue // ignore: cast_nullable_to_non_nullable
as String,boolValue: null == boolValue ? _self.boolValue : boolValue // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$TutorialBlocState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TutorialBlocState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TutorialBlocState()';
}


}

/// @nodoc
class $TutorialBlocStateCopyWith<$Res>  {
$TutorialBlocStateCopyWith(TutorialBlocState _, $Res Function(TutorialBlocState) __);
}


/// Adds pattern-matching-related methods to [TutorialBlocState].
extension TutorialBlocStatePatterns on TutorialBlocState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TutorialBlocStateEmpty value)?  empty,TResult Function( TutorialBlocStatePending value)?  pending,TResult Function( TutorialBlocStateLive value)?  live,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TutorialBlocStateEmpty() when empty != null:
return empty(_that);case TutorialBlocStatePending() when pending != null:
return pending(_that);case TutorialBlocStateLive() when live != null:
return live(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TutorialBlocStateEmpty value)  empty,required TResult Function( TutorialBlocStatePending value)  pending,required TResult Function( TutorialBlocStateLive value)  live,}){
final _that = this;
switch (_that) {
case TutorialBlocStateEmpty():
return empty(_that);case TutorialBlocStatePending():
return pending(_that);case TutorialBlocStateLive():
return live(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TutorialBlocStateEmpty value)?  empty,TResult? Function( TutorialBlocStatePending value)?  pending,TResult? Function( TutorialBlocStateLive value)?  live,}){
final _that = this;
switch (_that) {
case TutorialBlocStateEmpty() when empty != null:
return empty(_that);case TutorialBlocStatePending() when pending != null:
return pending(_that);case TutorialBlocStateLive() when live != null:
return live(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  empty,TResult Function( TutorialCollectionsProgressModel progress)?  pending,TResult Function( TutorialEventsCollectionModel tutorial,  TutorialCollectionsProgressModel progress)?  live,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TutorialBlocStateEmpty() when empty != null:
return empty();case TutorialBlocStatePending() when pending != null:
return pending(_that.progress);case TutorialBlocStateLive() when live != null:
return live(_that.tutorial,_that.progress);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  empty,required TResult Function( TutorialCollectionsProgressModel progress)  pending,required TResult Function( TutorialEventsCollectionModel tutorial,  TutorialCollectionsProgressModel progress)  live,}) {final _that = this;
switch (_that) {
case TutorialBlocStateEmpty():
return empty();case TutorialBlocStatePending():
return pending(_that.progress);case TutorialBlocStateLive():
return live(_that.tutorial,_that.progress);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  empty,TResult? Function( TutorialCollectionsProgressModel progress)?  pending,TResult? Function( TutorialEventsCollectionModel tutorial,  TutorialCollectionsProgressModel progress)?  live,}) {final _that = this;
switch (_that) {
case TutorialBlocStateEmpty() when empty != null:
return empty();case TutorialBlocStatePending() when pending != null:
return pending(_that.progress);case TutorialBlocStateLive() when live != null:
return live(_that.tutorial,_that.progress);case _:
  return null;

}
}

}

/// @nodoc


class TutorialBlocStateEmpty implements TutorialBlocState {
  const TutorialBlocStateEmpty();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TutorialBlocStateEmpty);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TutorialBlocState.empty()';
}


}




/// @nodoc


class TutorialBlocStatePending implements TutorialBlocState {
  const TutorialBlocStatePending({required this.progress});
  

/// progress for all tutorials
 final  TutorialCollectionsProgressModel progress;

/// Create a copy of TutorialBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TutorialBlocStatePendingCopyWith<TutorialBlocStatePending> get copyWith => _$TutorialBlocStatePendingCopyWithImpl<TutorialBlocStatePending>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TutorialBlocStatePending&&(identical(other.progress, progress) || other.progress == progress));
}


@override
int get hashCode => Object.hash(runtimeType,progress);

@override
String toString() {
  return 'TutorialBlocState.pending(progress: $progress)';
}


}

/// @nodoc
abstract mixin class $TutorialBlocStatePendingCopyWith<$Res> implements $TutorialBlocStateCopyWith<$Res> {
  factory $TutorialBlocStatePendingCopyWith(TutorialBlocStatePending value, $Res Function(TutorialBlocStatePending) _then) = _$TutorialBlocStatePendingCopyWithImpl;
@useResult
$Res call({
 TutorialCollectionsProgressModel progress
});


$TutorialCollectionsProgressModelCopyWith<$Res> get progress;

}
/// @nodoc
class _$TutorialBlocStatePendingCopyWithImpl<$Res>
    implements $TutorialBlocStatePendingCopyWith<$Res> {
  _$TutorialBlocStatePendingCopyWithImpl(this._self, this._then);

  final TutorialBlocStatePending _self;
  final $Res Function(TutorialBlocStatePending) _then;

/// Create a copy of TutorialBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? progress = null,}) {
  return _then(TutorialBlocStatePending(
progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as TutorialCollectionsProgressModel,
  ));
}

/// Create a copy of TutorialBlocState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TutorialCollectionsProgressModelCopyWith<$Res> get progress {
  
  return $TutorialCollectionsProgressModelCopyWith<$Res>(_self.progress, (value) {
    return _then(_self.copyWith(progress: value));
  });
}
}

/// @nodoc


class TutorialBlocStateLive implements TutorialBlocState {
  const TutorialBlocStateLive({required this.tutorial, required this.progress});
  

 final  TutorialEventsCollectionModel tutorial;
/// progress for all tutorials
 final  TutorialCollectionsProgressModel progress;

/// Create a copy of TutorialBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TutorialBlocStateLiveCopyWith<TutorialBlocStateLive> get copyWith => _$TutorialBlocStateLiveCopyWithImpl<TutorialBlocStateLive>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TutorialBlocStateLive&&(identical(other.tutorial, tutorial) || other.tutorial == tutorial)&&(identical(other.progress, progress) || other.progress == progress));
}


@override
int get hashCode => Object.hash(runtimeType,tutorial,progress);

@override
String toString() {
  return 'TutorialBlocState.live(tutorial: $tutorial, progress: $progress)';
}


}

/// @nodoc
abstract mixin class $TutorialBlocStateLiveCopyWith<$Res> implements $TutorialBlocStateCopyWith<$Res> {
  factory $TutorialBlocStateLiveCopyWith(TutorialBlocStateLive value, $Res Function(TutorialBlocStateLive) _then) = _$TutorialBlocStateLiveCopyWithImpl;
@useResult
$Res call({
 TutorialEventsCollectionModel tutorial, TutorialCollectionsProgressModel progress
});


$TutorialEventsCollectionModelCopyWith<$Res> get tutorial;$TutorialCollectionsProgressModelCopyWith<$Res> get progress;

}
/// @nodoc
class _$TutorialBlocStateLiveCopyWithImpl<$Res>
    implements $TutorialBlocStateLiveCopyWith<$Res> {
  _$TutorialBlocStateLiveCopyWithImpl(this._self, this._then);

  final TutorialBlocStateLive _self;
  final $Res Function(TutorialBlocStateLive) _then;

/// Create a copy of TutorialBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tutorial = null,Object? progress = null,}) {
  return _then(TutorialBlocStateLive(
tutorial: null == tutorial ? _self.tutorial : tutorial // ignore: cast_nullable_to_non_nullable
as TutorialEventsCollectionModel,progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as TutorialCollectionsProgressModel,
  ));
}

/// Create a copy of TutorialBlocState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TutorialEventsCollectionModelCopyWith<$Res> get tutorial {
  
  return $TutorialEventsCollectionModelCopyWith<$Res>(_self.tutorial, (value) {
    return _then(_self.copyWith(tutorial: value));
  });
}/// Create a copy of TutorialBlocState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TutorialCollectionsProgressModelCopyWith<$Res> get progress {
  
  return $TutorialCollectionsProgressModelCopyWith<$Res>(_self.progress, (value) {
    return _then(_self.copyWith(progress: value));
  });
}
}

// dart format on
