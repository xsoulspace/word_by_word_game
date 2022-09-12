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

LevelBlocState _$LevelBlocStateFromJson(Map<String, dynamic> json) {
  return _LevelBlocState.fromJson(json);
}

/// @nodoc
mixin _$LevelBlocState {
  CurrentWordModel get currentWord => throw _privateConstructorUsedError;
  Map<String, String> get words => throw _privateConstructorUsedError;
  String get latestWord => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LevelBlocStateCopyWith<LevelBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LevelBlocStateCopyWith<$Res> {
  factory $LevelBlocStateCopyWith(
          LevelBlocState value, $Res Function(LevelBlocState) then) =
      _$LevelBlocStateCopyWithImpl<$Res>;
  $Res call(
      {CurrentWordModel currentWord,
      Map<String, String> words,
      String latestWord});

  $CurrentWordModelCopyWith<$Res> get currentWord;
}

/// @nodoc
class _$LevelBlocStateCopyWithImpl<$Res>
    implements $LevelBlocStateCopyWith<$Res> {
  _$LevelBlocStateCopyWithImpl(this._value, this._then);

  final LevelBlocState _value;
  // ignore: unused_field
  final $Res Function(LevelBlocState) _then;

  @override
  $Res call({
    Object? currentWord = freezed,
    Object? words = freezed,
    Object? latestWord = freezed,
  }) {
    return _then(_value.copyWith(
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
    ));
  }

  @override
  $CurrentWordModelCopyWith<$Res> get currentWord {
    return $CurrentWordModelCopyWith<$Res>(_value.currentWord, (value) {
      return _then(_value.copyWith(currentWord: value));
    });
  }
}

/// @nodoc
abstract class _$$_LevelBlocStateCopyWith<$Res>
    implements $LevelBlocStateCopyWith<$Res> {
  factory _$$_LevelBlocStateCopyWith(
          _$_LevelBlocState value, $Res Function(_$_LevelBlocState) then) =
      __$$_LevelBlocStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {CurrentWordModel currentWord,
      Map<String, String> words,
      String latestWord});

  @override
  $CurrentWordModelCopyWith<$Res> get currentWord;
}

/// @nodoc
class __$$_LevelBlocStateCopyWithImpl<$Res>
    extends _$LevelBlocStateCopyWithImpl<$Res>
    implements _$$_LevelBlocStateCopyWith<$Res> {
  __$$_LevelBlocStateCopyWithImpl(
      _$_LevelBlocState _value, $Res Function(_$_LevelBlocState) _then)
      : super(_value, (v) => _then(v as _$_LevelBlocState));

  @override
  _$_LevelBlocState get _value => super._value as _$_LevelBlocState;

  @override
  $Res call({
    Object? currentWord = freezed,
    Object? words = freezed,
    Object? latestWord = freezed,
  }) {
    return _then(_$_LevelBlocState(
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
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_LevelBlocState extends _LevelBlocState {
  const _$_LevelBlocState(
      {this.currentWord = const CurrentWordModel(),
      final Map<String, String> words = const {},
      this.latestWord = ''})
      : _words = words,
        super._();

  factory _$_LevelBlocState.fromJson(Map<String, dynamic> json) =>
      _$$_LevelBlocStateFromJson(json);

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
  String toString() {
    return 'LevelBlocState(currentWord: $currentWord, words: $words, latestWord: $latestWord)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LevelBlocState &&
            const DeepCollectionEquality()
                .equals(other.currentWord, currentWord) &&
            const DeepCollectionEquality().equals(other._words, _words) &&
            const DeepCollectionEquality()
                .equals(other.latestWord, latestWord));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentWord),
      const DeepCollectionEquality().hash(_words),
      const DeepCollectionEquality().hash(latestWord));

  @JsonKey(ignore: true)
  @override
  _$$_LevelBlocStateCopyWith<_$_LevelBlocState> get copyWith =>
      __$$_LevelBlocStateCopyWithImpl<_$_LevelBlocState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LevelBlocStateToJson(
      this,
    );
  }
}

abstract class _LevelBlocState extends LevelBlocState {
  const factory _LevelBlocState(
      {final CurrentWordModel currentWord,
      final Map<String, String> words,
      final String latestWord}) = _$_LevelBlocState;
  const _LevelBlocState._() : super._();

  factory _LevelBlocState.fromJson(Map<String, dynamic> json) =
      _$_LevelBlocState.fromJson;

  @override
  CurrentWordModel get currentWord;
  @override
  Map<String, String> get words;
  @override
  String get latestWord;
  @override
  @JsonKey(ignore: true)
  _$$_LevelBlocStateCopyWith<_$_LevelBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}
