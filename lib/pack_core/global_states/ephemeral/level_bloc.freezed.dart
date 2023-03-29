// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'level_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LevelBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            String id,
            LocalizedMap name,
            CurrentWordModel currentWord,
            Map<String, String> words,
            String latestWord,
            GamePhaseType phaseType,
            EnergyMultiplierType actionMultiplier,
            WordWarning wordWarning)
        live,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            String id,
            LocalizedMap name,
            CurrentWordModel currentWord,
            Map<String, String> words,
            String latestWord,
            GamePhaseType phaseType,
            EnergyMultiplierType actionMultiplier,
            WordWarning wordWarning)?
        live,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            String id,
            LocalizedMap name,
            CurrentWordModel currentWord,
            Map<String, String> words,
            String latestWord,
            GamePhaseType phaseType,
            EnergyMultiplierType actionMultiplier,
            WordWarning wordWarning)?
        live,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyLevelBlocState value) empty,
    required TResult Function(LiveLevelBlocState value) live,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyLevelBlocState value)? empty,
    TResult? Function(LiveLevelBlocState value)? live,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyLevelBlocState value)? empty,
    TResult Function(LiveLevelBlocState value)? live,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LevelBlocStateCopyWith<$Res> {
  factory $LevelBlocStateCopyWith(
          LevelBlocState value, $Res Function(LevelBlocState) then) =
      _$LevelBlocStateCopyWithImpl<$Res, LevelBlocState>;
}

/// @nodoc
class _$LevelBlocStateCopyWithImpl<$Res, $Val extends LevelBlocState>
    implements $LevelBlocStateCopyWith<$Res> {
  _$LevelBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmptyLevelBlocStateCopyWith<$Res> {
  factory _$$EmptyLevelBlocStateCopyWith(_$EmptyLevelBlocState value,
          $Res Function(_$EmptyLevelBlocState) then) =
      __$$EmptyLevelBlocStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyLevelBlocStateCopyWithImpl<$Res>
    extends _$LevelBlocStateCopyWithImpl<$Res, _$EmptyLevelBlocState>
    implements _$$EmptyLevelBlocStateCopyWith<$Res> {
  __$$EmptyLevelBlocStateCopyWithImpl(
      _$EmptyLevelBlocState _value, $Res Function(_$EmptyLevelBlocState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyLevelBlocState implements EmptyLevelBlocState {
  const _$EmptyLevelBlocState();

  @override
  String toString() {
    return 'LevelBlocState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyLevelBlocState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            String id,
            LocalizedMap name,
            CurrentWordModel currentWord,
            Map<String, String> words,
            String latestWord,
            GamePhaseType phaseType,
            EnergyMultiplierType actionMultiplier,
            WordWarning wordWarning)
        live,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            String id,
            LocalizedMap name,
            CurrentWordModel currentWord,
            Map<String, String> words,
            String latestWord,
            GamePhaseType phaseType,
            EnergyMultiplierType actionMultiplier,
            WordWarning wordWarning)?
        live,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            String id,
            LocalizedMap name,
            CurrentWordModel currentWord,
            Map<String, String> words,
            String latestWord,
            GamePhaseType phaseType,
            EnergyMultiplierType actionMultiplier,
            WordWarning wordWarning)?
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
    required TResult Function(EmptyLevelBlocState value) empty,
    required TResult Function(LiveLevelBlocState value) live,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyLevelBlocState value)? empty,
    TResult? Function(LiveLevelBlocState value)? live,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyLevelBlocState value)? empty,
    TResult Function(LiveLevelBlocState value)? live,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyLevelBlocState implements LevelBlocState {
  const factory EmptyLevelBlocState() = _$EmptyLevelBlocState;
}

/// @nodoc
abstract class _$$LiveLevelBlocStateCopyWith<$Res> {
  factory _$$LiveLevelBlocStateCopyWith(_$LiveLevelBlocState value,
          $Res Function(_$LiveLevelBlocState) then) =
      __$$LiveLevelBlocStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String id,
      LocalizedMap name,
      CurrentWordModel currentWord,
      Map<String, String> words,
      String latestWord,
      GamePhaseType phaseType,
      EnergyMultiplierType actionMultiplier,
      WordWarning wordWarning});

  $LocalizedMapCopyWith<$Res> get name;
  $CurrentWordModelCopyWith<$Res> get currentWord;
}

/// @nodoc
class __$$LiveLevelBlocStateCopyWithImpl<$Res>
    extends _$LevelBlocStateCopyWithImpl<$Res, _$LiveLevelBlocState>
    implements _$$LiveLevelBlocStateCopyWith<$Res> {
  __$$LiveLevelBlocStateCopyWithImpl(
      _$LiveLevelBlocState _value, $Res Function(_$LiveLevelBlocState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? currentWord = null,
    Object? words = null,
    Object? latestWord = null,
    Object? phaseType = null,
    Object? actionMultiplier = null,
    Object? wordWarning = null,
  }) {
    return _then(_$LiveLevelBlocState(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as LocalizedMap,
      currentWord: null == currentWord
          ? _value.currentWord
          : currentWord // ignore: cast_nullable_to_non_nullable
              as CurrentWordModel,
      words: null == words
          ? _value._words
          : words // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      latestWord: null == latestWord
          ? _value.latestWord
          : latestWord // ignore: cast_nullable_to_non_nullable
              as String,
      phaseType: null == phaseType
          ? _value.phaseType
          : phaseType // ignore: cast_nullable_to_non_nullable
              as GamePhaseType,
      actionMultiplier: null == actionMultiplier
          ? _value.actionMultiplier
          : actionMultiplier // ignore: cast_nullable_to_non_nullable
              as EnergyMultiplierType,
      wordWarning: null == wordWarning
          ? _value.wordWarning
          : wordWarning // ignore: cast_nullable_to_non_nullable
              as WordWarning,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LocalizedMapCopyWith<$Res> get name {
    return $LocalizedMapCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentWordModelCopyWith<$Res> get currentWord {
    return $CurrentWordModelCopyWith<$Res>(_value.currentWord, (value) {
      return _then(_value.copyWith(currentWord: value));
    });
  }
}

/// @nodoc

class _$LiveLevelBlocState implements LiveLevelBlocState {
  const _$LiveLevelBlocState(
      {required this.id,
      this.name = LocalizedMap.empty,
      this.currentWord = const CurrentWordModel(),
      final Map<String, String> words = const {},
      this.latestWord = '',
      this.phaseType = GamePhaseType.entryWord,
      this.actionMultiplier = EnergyMultiplierType.m1,
      this.wordWarning = WordWarning.none})
      : _words = words;

  @override
  final String id;
  @override
  @JsonKey()
  final LocalizedMap name;
  @override
  @JsonKey()
  final CurrentWordModel currentWord;
  final Map<String, String> _words;
  @override
  @JsonKey()
  Map<String, String> get words {
    if (_words is EqualUnmodifiableMapView) return _words;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_words);
  }

  @override
  @JsonKey()
  final String latestWord;
  @override
  @JsonKey()
  final GamePhaseType phaseType;
  @override
  @JsonKey()
  final EnergyMultiplierType actionMultiplier;

  /// ********************************************
  /// *      NON PERSISTENT
  /// ********************************************
  @override
  @JsonKey()
  final WordWarning wordWarning;

  @override
  String toString() {
    return 'LevelBlocState.live(id: $id, name: $name, currentWord: $currentWord, words: $words, latestWord: $latestWord, phaseType: $phaseType, actionMultiplier: $actionMultiplier, wordWarning: $wordWarning)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LiveLevelBlocState &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.currentWord, currentWord) ||
                other.currentWord == currentWord) &&
            const DeepCollectionEquality().equals(other._words, _words) &&
            (identical(other.latestWord, latestWord) ||
                other.latestWord == latestWord) &&
            (identical(other.phaseType, phaseType) ||
                other.phaseType == phaseType) &&
            (identical(other.actionMultiplier, actionMultiplier) ||
                other.actionMultiplier == actionMultiplier) &&
            (identical(other.wordWarning, wordWarning) ||
                other.wordWarning == wordWarning));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      currentWord,
      const DeepCollectionEquality().hash(_words),
      latestWord,
      phaseType,
      actionMultiplier,
      wordWarning);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LiveLevelBlocStateCopyWith<_$LiveLevelBlocState> get copyWith =>
      __$$LiveLevelBlocStateCopyWithImpl<_$LiveLevelBlocState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            String id,
            LocalizedMap name,
            CurrentWordModel currentWord,
            Map<String, String> words,
            String latestWord,
            GamePhaseType phaseType,
            EnergyMultiplierType actionMultiplier,
            WordWarning wordWarning)
        live,
  }) {
    return live(id, name, currentWord, words, latestWord, phaseType,
        actionMultiplier, wordWarning);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            String id,
            LocalizedMap name,
            CurrentWordModel currentWord,
            Map<String, String> words,
            String latestWord,
            GamePhaseType phaseType,
            EnergyMultiplierType actionMultiplier,
            WordWarning wordWarning)?
        live,
  }) {
    return live?.call(id, name, currentWord, words, latestWord, phaseType,
        actionMultiplier, wordWarning);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            String id,
            LocalizedMap name,
            CurrentWordModel currentWord,
            Map<String, String> words,
            String latestWord,
            GamePhaseType phaseType,
            EnergyMultiplierType actionMultiplier,
            WordWarning wordWarning)?
        live,
    required TResult orElse(),
  }) {
    if (live != null) {
      return live(id, name, currentWord, words, latestWord, phaseType,
          actionMultiplier, wordWarning);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyLevelBlocState value) empty,
    required TResult Function(LiveLevelBlocState value) live,
  }) {
    return live(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyLevelBlocState value)? empty,
    TResult? Function(LiveLevelBlocState value)? live,
  }) {
    return live?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyLevelBlocState value)? empty,
    TResult Function(LiveLevelBlocState value)? live,
    required TResult orElse(),
  }) {
    if (live != null) {
      return live(this);
    }
    return orElse();
  }
}

abstract class LiveLevelBlocState implements LevelBlocState {
  const factory LiveLevelBlocState(
      {required final String id,
      final LocalizedMap name,
      final CurrentWordModel currentWord,
      final Map<String, String> words,
      final String latestWord,
      final GamePhaseType phaseType,
      final EnergyMultiplierType actionMultiplier,
      final WordWarning wordWarning}) = _$LiveLevelBlocState;

  String get id;
  LocalizedMap get name;
  CurrentWordModel get currentWord;
  Map<String, String> get words;
  String get latestWord;
  GamePhaseType get phaseType;
  EnergyMultiplierType get actionMultiplier;

  /// ********************************************
  /// *      NON PERSISTENT
  /// ********************************************
  WordWarning get wordWarning;
  @JsonKey(ignore: true)
  _$$LiveLevelBlocStateCopyWith<_$LiveLevelBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}
