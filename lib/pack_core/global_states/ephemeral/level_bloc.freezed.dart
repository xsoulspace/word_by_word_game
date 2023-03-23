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
mixin _$LiveLevelBlocState {
  String get id => throw _privateConstructorUsedError;
  LocalizedMap get name => throw _privateConstructorUsedError;
  CurrentWordModel get currentWord => throw _privateConstructorUsedError;
  Map<String, String> get words => throw _privateConstructorUsedError;
  String get latestWord => throw _privateConstructorUsedError;
  LevelPlayerPhaseType get phaseType => throw _privateConstructorUsedError;
  LevelActionMultiplierType get actionMultiplier =>
      throw _privateConstructorUsedError;
  LevelPlayerActionType? get actionType => throw _privateConstructorUsedError;

  /// ********************************************
  /// *      NON PERSISTENT
  /// ********************************************
  WordWarning get wordWarning => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LiveLevelBlocStateCopyWith<LiveLevelBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveLevelBlocStateCopyWith<$Res> {
  factory $LiveLevelBlocStateCopyWith(
          LiveLevelBlocState value, $Res Function(LiveLevelBlocState) then) =
      _$LiveLevelBlocStateCopyWithImpl<$Res, LiveLevelBlocState>;
  @useResult
  $Res call(
      {String id,
      LocalizedMap name,
      CurrentWordModel currentWord,
      Map<String, String> words,
      String latestWord,
      LevelPlayerPhaseType phaseType,
      LevelActionMultiplierType actionMultiplier,
      LevelPlayerActionType? actionType,
      WordWarning wordWarning});

  $LocalizedMapCopyWith<$Res> get name;
  $CurrentWordModelCopyWith<$Res> get currentWord;
}

/// @nodoc
class _$LiveLevelBlocStateCopyWithImpl<$Res, $Val extends LiveLevelBlocState>
    implements $LiveLevelBlocStateCopyWith<$Res> {
  _$LiveLevelBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    Object? actionType = freezed,
    Object? wordWarning = null,
  }) {
    return _then(_value.copyWith(
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
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      latestWord: null == latestWord
          ? _value.latestWord
          : latestWord // ignore: cast_nullable_to_non_nullable
              as String,
      phaseType: null == phaseType
          ? _value.phaseType
          : phaseType // ignore: cast_nullable_to_non_nullable
              as LevelPlayerPhaseType,
      actionMultiplier: null == actionMultiplier
          ? _value.actionMultiplier
          : actionMultiplier // ignore: cast_nullable_to_non_nullable
              as LevelActionMultiplierType,
      actionType: freezed == actionType
          ? _value.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as LevelPlayerActionType?,
      wordWarning: null == wordWarning
          ? _value.wordWarning
          : wordWarning // ignore: cast_nullable_to_non_nullable
              as WordWarning,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocalizedMapCopyWith<$Res> get name {
    return $LocalizedMapCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentWordModelCopyWith<$Res> get currentWord {
    return $CurrentWordModelCopyWith<$Res>(_value.currentWord, (value) {
      return _then(_value.copyWith(currentWord: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LiveLevelBlocStateCopyWith<$Res>
    implements $LiveLevelBlocStateCopyWith<$Res> {
  factory _$$_LiveLevelBlocStateCopyWith(_$_LiveLevelBlocState value,
          $Res Function(_$_LiveLevelBlocState) then) =
      __$$_LiveLevelBlocStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      LocalizedMap name,
      CurrentWordModel currentWord,
      Map<String, String> words,
      String latestWord,
      LevelPlayerPhaseType phaseType,
      LevelActionMultiplierType actionMultiplier,
      LevelPlayerActionType? actionType,
      WordWarning wordWarning});

  @override
  $LocalizedMapCopyWith<$Res> get name;
  @override
  $CurrentWordModelCopyWith<$Res> get currentWord;
}

/// @nodoc
class __$$_LiveLevelBlocStateCopyWithImpl<$Res>
    extends _$LiveLevelBlocStateCopyWithImpl<$Res, _$_LiveLevelBlocState>
    implements _$$_LiveLevelBlocStateCopyWith<$Res> {
  __$$_LiveLevelBlocStateCopyWithImpl(
      _$_LiveLevelBlocState _value, $Res Function(_$_LiveLevelBlocState) _then)
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
    Object? actionType = freezed,
    Object? wordWarning = null,
  }) {
    return _then(_$_LiveLevelBlocState(
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
              as LevelPlayerPhaseType,
      actionMultiplier: null == actionMultiplier
          ? _value.actionMultiplier
          : actionMultiplier // ignore: cast_nullable_to_non_nullable
              as LevelActionMultiplierType,
      actionType: freezed == actionType
          ? _value.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as LevelPlayerActionType?,
      wordWarning: null == wordWarning
          ? _value.wordWarning
          : wordWarning // ignore: cast_nullable_to_non_nullable
              as WordWarning,
    ));
  }
}

/// @nodoc

class _$_LiveLevelBlocState extends _LiveLevelBlocState {
  const _$_LiveLevelBlocState(
      {required this.id,
      this.name = LocalizedMap.empty,
      this.currentWord = const CurrentWordModel(),
      final Map<String, String> words = const {},
      this.latestWord = '',
      this.phaseType = LevelPlayerPhaseType.entryWord,
      this.actionMultiplier = LevelActionMultiplierType.m1,
      this.actionType,
      this.wordWarning = WordWarning.none})
      : _words = words,
        super._();

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
  final LevelPlayerPhaseType phaseType;
  @override
  @JsonKey()
  final LevelActionMultiplierType actionMultiplier;
  @override
  final LevelPlayerActionType? actionType;

  /// ********************************************
  /// *      NON PERSISTENT
  /// ********************************************
  @override
  @JsonKey()
  final WordWarning wordWarning;

  @override
  String toString() {
    return 'LiveLevelBlocState(id: $id, name: $name, currentWord: $currentWord, words: $words, latestWord: $latestWord, phaseType: $phaseType, actionMultiplier: $actionMultiplier, actionType: $actionType, wordWarning: $wordWarning)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LiveLevelBlocState &&
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
            (identical(other.actionType, actionType) ||
                other.actionType == actionType) &&
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
      actionType,
      wordWarning);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LiveLevelBlocStateCopyWith<_$_LiveLevelBlocState> get copyWith =>
      __$$_LiveLevelBlocStateCopyWithImpl<_$_LiveLevelBlocState>(
          this, _$identity);
}

abstract class _LiveLevelBlocState extends LiveLevelBlocState
    implements LevelBlocState {
  const factory _LiveLevelBlocState(
      {required final String id,
      final LocalizedMap name,
      final CurrentWordModel currentWord,
      final Map<String, String> words,
      final String latestWord,
      final LevelPlayerPhaseType phaseType,
      final LevelActionMultiplierType actionMultiplier,
      final LevelPlayerActionType? actionType,
      final WordWarning wordWarning}) = _$_LiveLevelBlocState;
  const _LiveLevelBlocState._() : super._();

  @override
  String get id;
  @override
  LocalizedMap get name;
  @override
  CurrentWordModel get currentWord;
  @override
  Map<String, String> get words;
  @override
  String get latestWord;
  @override
  LevelPlayerPhaseType get phaseType;
  @override
  LevelActionMultiplierType get actionMultiplier;
  @override
  LevelPlayerActionType? get actionType;
  @override

  /// ********************************************
  /// *      NON PERSISTENT
  /// ********************************************
  WordWarning get wordWarning;
  @override
  @JsonKey(ignore: true)
  _$$_LiveLevelBlocStateCopyWith<_$_LiveLevelBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}
