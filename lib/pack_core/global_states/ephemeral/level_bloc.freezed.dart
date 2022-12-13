// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'level_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LiveLevelBlocState _$LiveLevelBlocStateFromJson(Map<String, dynamic> json) {
  return _LiveLevelBlocState.fromJson(json);
}

/// @nodoc
mixin _$LiveLevelBlocState {
  String get id => throw _privateConstructorUsedError;
  LocalizedMap get name => throw _privateConstructorUsedError;
  CurrentWordModel get currentWord => throw _privateConstructorUsedError;
  Map<String, String> get words => throw _privateConstructorUsedError;
  String get latestWord => throw _privateConstructorUsedError;
  LevelPlayerPhaseType get phaseType => throw _privateConstructorUsedError;

  /// ********************************************
  /// *      NON PERSISTENT
  /// ********************************************
  WordWarning get wordWarning => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LiveLevelBlocStateCopyWith<LiveLevelBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveLevelBlocStateCopyWith<$Res> {
  factory $LiveLevelBlocStateCopyWith(
          LiveLevelBlocState value, $Res Function(LiveLevelBlocState) then) =
      _$LiveLevelBlocStateCopyWithImpl<$Res>;
  $Res call(
      {String id,
      LocalizedMap name,
      CurrentWordModel currentWord,
      Map<String, String> words,
      String latestWord,
      LevelPlayerPhaseType phaseType,
      WordWarning wordWarning});

  $LocalizedMapCopyWith<$Res> get name;
  $CurrentWordModelCopyWith<$Res> get currentWord;
}

/// @nodoc
class _$LiveLevelBlocStateCopyWithImpl<$Res>
    implements $LiveLevelBlocStateCopyWith<$Res> {
  _$LiveLevelBlocStateCopyWithImpl(this._value, this._then);

  final LiveLevelBlocState _value;
  // ignore: unused_field
  final $Res Function(LiveLevelBlocState) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? currentWord = freezed,
    Object? words = freezed,
    Object? latestWord = freezed,
    Object? phaseType = freezed,
    Object? wordWarning = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as LocalizedMap,
      currentWord: currentWord == freezed
          ? _value.currentWord
          : currentWord // ignore: cast_nullable_to_non_nullable
              as CurrentWordModel,
      words: words == freezed
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      latestWord: latestWord == freezed
          ? _value.latestWord
          : latestWord // ignore: cast_nullable_to_non_nullable
              as String,
      phaseType: phaseType == freezed
          ? _value.phaseType
          : phaseType // ignore: cast_nullable_to_non_nullable
              as LevelPlayerPhaseType,
      wordWarning: wordWarning == freezed
          ? _value.wordWarning
          : wordWarning // ignore: cast_nullable_to_non_nullable
              as WordWarning,
    ));
  }

  @override
  $LocalizedMapCopyWith<$Res> get name {
    return $LocalizedMapCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value));
    });
  }

  @override
  $CurrentWordModelCopyWith<$Res> get currentWord {
    return $CurrentWordModelCopyWith<$Res>(_value.currentWord, (value) {
      return _then(_value.copyWith(currentWord: value));
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
  $Res call(
      {String id,
      LocalizedMap name,
      CurrentWordModel currentWord,
      Map<String, String> words,
      String latestWord,
      LevelPlayerPhaseType phaseType,
      WordWarning wordWarning});

  @override
  $LocalizedMapCopyWith<$Res> get name;
  @override
  $CurrentWordModelCopyWith<$Res> get currentWord;
}

/// @nodoc
class __$$_LiveLevelBlocStateCopyWithImpl<$Res>
    extends _$LiveLevelBlocStateCopyWithImpl<$Res>
    implements _$$_LiveLevelBlocStateCopyWith<$Res> {
  __$$_LiveLevelBlocStateCopyWithImpl(
      _$_LiveLevelBlocState _value, $Res Function(_$_LiveLevelBlocState) _then)
      : super(_value, (v) => _then(v as _$_LiveLevelBlocState));

  @override
  _$_LiveLevelBlocState get _value => super._value as _$_LiveLevelBlocState;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? currentWord = freezed,
    Object? words = freezed,
    Object? latestWord = freezed,
    Object? phaseType = freezed,
    Object? wordWarning = freezed,
  }) {
    return _then(_$_LiveLevelBlocState(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as LocalizedMap,
      currentWord: currentWord == freezed
          ? _value.currentWord
          : currentWord // ignore: cast_nullable_to_non_nullable
              as CurrentWordModel,
      words: words == freezed
          ? _value._words
          : words // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      latestWord: latestWord == freezed
          ? _value.latestWord
          : latestWord // ignore: cast_nullable_to_non_nullable
              as String,
      phaseType: phaseType == freezed
          ? _value.phaseType
          : phaseType // ignore: cast_nullable_to_non_nullable
              as LevelPlayerPhaseType,
      wordWarning: wordWarning == freezed
          ? _value.wordWarning
          : wordWarning // ignore: cast_nullable_to_non_nullable
              as WordWarning,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_LiveLevelBlocState extends _LiveLevelBlocState {
  const _$_LiveLevelBlocState(
      {required this.id,
      this.name = LocalizedMap.empty,
      this.currentWord = const CurrentWordModel(),
      final Map<String, String> words = const {},
      this.latestWord = '',
      this.phaseType = LevelPlayerPhaseType.entryWord,
      this.wordWarning = WordWarning.none})
      : _words = words,
        super._();

  factory _$_LiveLevelBlocState.fromJson(Map<String, dynamic> json) =>
      _$$_LiveLevelBlocStateFromJson(json);

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
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_words);
  }

  @override
  @JsonKey()
  final String latestWord;
  @override
  @JsonKey()
  final LevelPlayerPhaseType phaseType;

  /// ********************************************
  /// *      NON PERSISTENT
  /// ********************************************
  @override
  @JsonKey()
  final WordWarning wordWarning;

  @override
  String toString() {
    return 'LiveLevelBlocState(id: $id, name: $name, currentWord: $currentWord, words: $words, latestWord: $latestWord, phaseType: $phaseType, wordWarning: $wordWarning)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LiveLevelBlocState &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.currentWord, currentWord) &&
            const DeepCollectionEquality().equals(other._words, _words) &&
            const DeepCollectionEquality()
                .equals(other.latestWord, latestWord) &&
            const DeepCollectionEquality().equals(other.phaseType, phaseType) &&
            const DeepCollectionEquality()
                .equals(other.wordWarning, wordWarning));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(currentWord),
      const DeepCollectionEquality().hash(_words),
      const DeepCollectionEquality().hash(latestWord),
      const DeepCollectionEquality().hash(phaseType),
      const DeepCollectionEquality().hash(wordWarning));

  @JsonKey(ignore: true)
  @override
  _$$_LiveLevelBlocStateCopyWith<_$_LiveLevelBlocState> get copyWith =>
      __$$_LiveLevelBlocStateCopyWithImpl<_$_LiveLevelBlocState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LiveLevelBlocStateToJson(
      this,
    );
  }
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
      final WordWarning wordWarning}) = _$_LiveLevelBlocState;
  const _LiveLevelBlocState._() : super._();

  factory _LiveLevelBlocState.fromJson(Map<String, dynamic> json) =
      _$_LiveLevelBlocState.fromJson;

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

  /// ********************************************
  /// *      NON PERSISTENT
  /// ********************************************
  WordWarning get wordWarning;
  @override
  @JsonKey(ignore: true)
  _$$_LiveLevelBlocStateCopyWith<_$_LiveLevelBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}
