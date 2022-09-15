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
  CurrentWordModel get currentWord => throw _privateConstructorUsedError;
  Map<String, String> get words => throw _privateConstructorUsedError;
  String get latestWord => throw _privateConstructorUsedError;
  FuelStorageModel get fuelStorage => throw _privateConstructorUsedError;

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
      CurrentWordModel currentWord,
      Map<String, String> words,
      String latestWord,
      FuelStorageModel fuelStorage});

  $CurrentWordModelCopyWith<$Res> get currentWord;
  $FuelStorageModelCopyWith<$Res> get fuelStorage;
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
    Object? currentWord = freezed,
    Object? words = freezed,
    Object? latestWord = freezed,
    Object? fuelStorage = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      fuelStorage: fuelStorage == freezed
          ? _value.fuelStorage
          : fuelStorage // ignore: cast_nullable_to_non_nullable
              as FuelStorageModel,
    ));
  }

  @override
  $CurrentWordModelCopyWith<$Res> get currentWord {
    return $CurrentWordModelCopyWith<$Res>(_value.currentWord, (value) {
      return _then(_value.copyWith(currentWord: value));
    });
  }

  @override
  $FuelStorageModelCopyWith<$Res> get fuelStorage {
    return $FuelStorageModelCopyWith<$Res>(_value.fuelStorage, (value) {
      return _then(_value.copyWith(fuelStorage: value));
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
      CurrentWordModel currentWord,
      Map<String, String> words,
      String latestWord,
      FuelStorageModel fuelStorage});

  @override
  $CurrentWordModelCopyWith<$Res> get currentWord;
  @override
  $FuelStorageModelCopyWith<$Res> get fuelStorage;
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
    Object? currentWord = freezed,
    Object? words = freezed,
    Object? latestWord = freezed,
    Object? fuelStorage = freezed,
  }) {
    return _then(_$_LiveLevelBlocState(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      fuelStorage: fuelStorage == freezed
          ? _value.fuelStorage
          : fuelStorage // ignore: cast_nullable_to_non_nullable
              as FuelStorageModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_LiveLevelBlocState extends _LiveLevelBlocState {
  const _$_LiveLevelBlocState(
      {required this.id,
      this.currentWord = const CurrentWordModel(),
      final Map<String, String> words = const {},
      this.latestWord = '',
      this.fuelStorage = const FuelStorageModel()})
      : _words = words,
        super._();

  factory _$_LiveLevelBlocState.fromJson(Map<String, dynamic> json) =>
      _$$_LiveLevelBlocStateFromJson(json);

  @override
  final String id;
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
  final FuelStorageModel fuelStorage;

  @override
  String toString() {
    return 'LiveLevelBlocState(id: $id, currentWord: $currentWord, words: $words, latestWord: $latestWord, fuelStorage: $fuelStorage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LiveLevelBlocState &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.currentWord, currentWord) &&
            const DeepCollectionEquality().equals(other._words, _words) &&
            const DeepCollectionEquality()
                .equals(other.latestWord, latestWord) &&
            const DeepCollectionEquality()
                .equals(other.fuelStorage, fuelStorage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(currentWord),
      const DeepCollectionEquality().hash(_words),
      const DeepCollectionEquality().hash(latestWord),
      const DeepCollectionEquality().hash(fuelStorage));

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
      final CurrentWordModel currentWord,
      final Map<String, String> words,
      final String latestWord,
      final FuelStorageModel fuelStorage}) = _$_LiveLevelBlocState;
  const _LiveLevelBlocState._() : super._();

  factory _LiveLevelBlocState.fromJson(Map<String, dynamic> json) =
      _$_LiveLevelBlocState.fromJson;

  @override
  String get id;
  @override
  CurrentWordModel get currentWord;
  @override
  Map<String, String> get words;
  @override
  String get latestWord;
  @override
  FuelStorageModel get fuelStorage;
  @override
  @JsonKey(ignore: true)
  _$$_LiveLevelBlocStateCopyWith<_$_LiveLevelBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}
