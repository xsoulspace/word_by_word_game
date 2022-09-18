// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'global_game_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LiveGlobalGameBlocState _$LiveGlobalGameBlocStateFromJson(
    Map<String, dynamic> json) {
  return _LiveGlobalGameBlocState.fromJson(json);
}

/// @nodoc
mixin _$LiveGlobalGameBlocState {
  /// ********************************************
  /// *      RESTORABLE FROM MODEL
  /// ********************************************
  String get id => throw _privateConstructorUsedError;
  String get currentLevelId => throw _privateConstructorUsedError;
  WorldDateTimeModel get dateTime => throw _privateConstructorUsedError;
  WorldDateTimeModel get lastDateTime => throw _privateConstructorUsedError;
  Map<String, LevelModel> get levels => throw _privateConstructorUsedError;
  List<TemplateLevelModel> get templateLevels =>
      throw _privateConstructorUsedError;

  /// The [playersCollection] is the collection of players characters,
  /// which will be available for user to playe and progress through the game.
  List<PlayerProfileModel> get playersCollection =>
      throw _privateConstructorUsedError;
  List<PlayerCharacterModel> get playersCharacters =>
      throw _privateConstructorUsedError;

  /// ********************************************
  /// *      NON-RESTORABLE
  /// ********************************************
  int get dateTimeDelta => throw _privateConstructorUsedError;
  Set<LevelPartStates> get loadedLevelParts =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LiveGlobalGameBlocStateCopyWith<LiveGlobalGameBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveGlobalGameBlocStateCopyWith<$Res> {
  factory $LiveGlobalGameBlocStateCopyWith(LiveGlobalGameBlocState value,
          $Res Function(LiveGlobalGameBlocState) then) =
      _$LiveGlobalGameBlocStateCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String currentLevelId,
      WorldDateTimeModel dateTime,
      WorldDateTimeModel lastDateTime,
      Map<String, LevelModel> levels,
      List<TemplateLevelModel> templateLevels,
      List<PlayerProfileModel> playersCollection,
      List<PlayerCharacterModel> playersCharacters,
      int dateTimeDelta,
      Set<LevelPartStates> loadedLevelParts});

  $WorldDateTimeModelCopyWith<$Res> get dateTime;
  $WorldDateTimeModelCopyWith<$Res> get lastDateTime;
}

/// @nodoc
class _$LiveGlobalGameBlocStateCopyWithImpl<$Res>
    implements $LiveGlobalGameBlocStateCopyWith<$Res> {
  _$LiveGlobalGameBlocStateCopyWithImpl(this._value, this._then);

  final LiveGlobalGameBlocState _value;
  // ignore: unused_field
  final $Res Function(LiveGlobalGameBlocState) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? currentLevelId = freezed,
    Object? dateTime = freezed,
    Object? lastDateTime = freezed,
    Object? levels = freezed,
    Object? templateLevels = freezed,
    Object? playersCollection = freezed,
    Object? playersCharacters = freezed,
    Object? dateTimeDelta = freezed,
    Object? loadedLevelParts = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      currentLevelId: currentLevelId == freezed
          ? _value.currentLevelId
          : currentLevelId // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as WorldDateTimeModel,
      lastDateTime: lastDateTime == freezed
          ? _value.lastDateTime
          : lastDateTime // ignore: cast_nullable_to_non_nullable
              as WorldDateTimeModel,
      levels: levels == freezed
          ? _value.levels
          : levels // ignore: cast_nullable_to_non_nullable
              as Map<String, LevelModel>,
      templateLevels: templateLevels == freezed
          ? _value.templateLevels
          : templateLevels // ignore: cast_nullable_to_non_nullable
              as List<TemplateLevelModel>,
      playersCollection: playersCollection == freezed
          ? _value.playersCollection
          : playersCollection // ignore: cast_nullable_to_non_nullable
              as List<PlayerProfileModel>,
      playersCharacters: playersCharacters == freezed
          ? _value.playersCharacters
          : playersCharacters // ignore: cast_nullable_to_non_nullable
              as List<PlayerCharacterModel>,
      dateTimeDelta: dateTimeDelta == freezed
          ? _value.dateTimeDelta
          : dateTimeDelta // ignore: cast_nullable_to_non_nullable
              as int,
      loadedLevelParts: loadedLevelParts == freezed
          ? _value.loadedLevelParts
          : loadedLevelParts // ignore: cast_nullable_to_non_nullable
              as Set<LevelPartStates>,
    ));
  }

  @override
  $WorldDateTimeModelCopyWith<$Res> get dateTime {
    return $WorldDateTimeModelCopyWith<$Res>(_value.dateTime, (value) {
      return _then(_value.copyWith(dateTime: value));
    });
  }

  @override
  $WorldDateTimeModelCopyWith<$Res> get lastDateTime {
    return $WorldDateTimeModelCopyWith<$Res>(_value.lastDateTime, (value) {
      return _then(_value.copyWith(lastDateTime: value));
    });
  }
}

/// @nodoc
abstract class _$$_LiveGlobalGameBlocStateCopyWith<$Res>
    implements $LiveGlobalGameBlocStateCopyWith<$Res> {
  factory _$$_LiveGlobalGameBlocStateCopyWith(_$_LiveGlobalGameBlocState value,
          $Res Function(_$_LiveGlobalGameBlocState) then) =
      __$$_LiveGlobalGameBlocStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String currentLevelId,
      WorldDateTimeModel dateTime,
      WorldDateTimeModel lastDateTime,
      Map<String, LevelModel> levels,
      List<TemplateLevelModel> templateLevels,
      List<PlayerProfileModel> playersCollection,
      List<PlayerCharacterModel> playersCharacters,
      int dateTimeDelta,
      Set<LevelPartStates> loadedLevelParts});

  @override
  $WorldDateTimeModelCopyWith<$Res> get dateTime;
  @override
  $WorldDateTimeModelCopyWith<$Res> get lastDateTime;
}

/// @nodoc
class __$$_LiveGlobalGameBlocStateCopyWithImpl<$Res>
    extends _$LiveGlobalGameBlocStateCopyWithImpl<$Res>
    implements _$$_LiveGlobalGameBlocStateCopyWith<$Res> {
  __$$_LiveGlobalGameBlocStateCopyWithImpl(_$_LiveGlobalGameBlocState _value,
      $Res Function(_$_LiveGlobalGameBlocState) _then)
      : super(_value, (v) => _then(v as _$_LiveGlobalGameBlocState));

  @override
  _$_LiveGlobalGameBlocState get _value =>
      super._value as _$_LiveGlobalGameBlocState;

  @override
  $Res call({
    Object? id = freezed,
    Object? currentLevelId = freezed,
    Object? dateTime = freezed,
    Object? lastDateTime = freezed,
    Object? levels = freezed,
    Object? templateLevels = freezed,
    Object? playersCollection = freezed,
    Object? playersCharacters = freezed,
    Object? dateTimeDelta = freezed,
    Object? loadedLevelParts = freezed,
  }) {
    return _then(_$_LiveGlobalGameBlocState(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      currentLevelId: currentLevelId == freezed
          ? _value.currentLevelId
          : currentLevelId // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as WorldDateTimeModel,
      lastDateTime: lastDateTime == freezed
          ? _value.lastDateTime
          : lastDateTime // ignore: cast_nullable_to_non_nullable
              as WorldDateTimeModel,
      levels: levels == freezed
          ? _value._levels
          : levels // ignore: cast_nullable_to_non_nullable
              as Map<String, LevelModel>,
      templateLevels: templateLevels == freezed
          ? _value._templateLevels
          : templateLevels // ignore: cast_nullable_to_non_nullable
              as List<TemplateLevelModel>,
      playersCollection: playersCollection == freezed
          ? _value._playersCollection
          : playersCollection // ignore: cast_nullable_to_non_nullable
              as List<PlayerProfileModel>,
      playersCharacters: playersCharacters == freezed
          ? _value._playersCharacters
          : playersCharacters // ignore: cast_nullable_to_non_nullable
              as List<PlayerCharacterModel>,
      dateTimeDelta: dateTimeDelta == freezed
          ? _value.dateTimeDelta
          : dateTimeDelta // ignore: cast_nullable_to_non_nullable
              as int,
      loadedLevelParts: loadedLevelParts == freezed
          ? _value._loadedLevelParts
          : loadedLevelParts // ignore: cast_nullable_to_non_nullable
              as Set<LevelPartStates>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_LiveGlobalGameBlocState extends _LiveGlobalGameBlocState {
  const _$_LiveGlobalGameBlocState(
      {required this.id,
      this.currentLevelId = '',
      this.dateTime = const WorldDateTimeModel(),
      this.lastDateTime = const WorldDateTimeModel(),
      final Map<String, LevelModel> levels = const {},
      final List<TemplateLevelModel> templateLevels = const [],
      final List<PlayerProfileModel> playersCollection = const [],
      final List<PlayerCharacterModel> playersCharacters = const [],
      this.dateTimeDelta = 0,
      final Set<LevelPartStates> loadedLevelParts = const {}})
      : _levels = levels,
        _templateLevels = templateLevels,
        _playersCollection = playersCollection,
        _playersCharacters = playersCharacters,
        _loadedLevelParts = loadedLevelParts,
        super._();

  factory _$_LiveGlobalGameBlocState.fromJson(Map<String, dynamic> json) =>
      _$$_LiveGlobalGameBlocStateFromJson(json);

  /// ********************************************
  /// *      RESTORABLE FROM MODEL
  /// ********************************************
  @override
  final String id;
  @override
  @JsonKey()
  final String currentLevelId;
  @override
  @JsonKey()
  final WorldDateTimeModel dateTime;
  @override
  @JsonKey()
  final WorldDateTimeModel lastDateTime;
  final Map<String, LevelModel> _levels;
  @override
  @JsonKey()
  Map<String, LevelModel> get levels {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_levels);
  }

  final List<TemplateLevelModel> _templateLevels;
  @override
  @JsonKey()
  List<TemplateLevelModel> get templateLevels {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_templateLevels);
  }

  /// The [playersCollection] is the collection of players characters,
  /// which will be available for user to playe and progress through the game.
  final List<PlayerProfileModel> _playersCollection;

  /// The [playersCollection] is the collection of players characters,
  /// which will be available for user to playe and progress through the game.
  @override
  @JsonKey()
  List<PlayerProfileModel> get playersCollection {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playersCollection);
  }

  final List<PlayerCharacterModel> _playersCharacters;
  @override
  @JsonKey()
  List<PlayerCharacterModel> get playersCharacters {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playersCharacters);
  }

  /// ********************************************
  /// *      NON-RESTORABLE
  /// ********************************************
  @override
  @JsonKey()
  final int dateTimeDelta;
  final Set<LevelPartStates> _loadedLevelParts;
  @override
  @JsonKey()
  Set<LevelPartStates> get loadedLevelParts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_loadedLevelParts);
  }

  @override
  String toString() {
    return 'LiveGlobalGameBlocState(id: $id, currentLevelId: $currentLevelId, dateTime: $dateTime, lastDateTime: $lastDateTime, levels: $levels, templateLevels: $templateLevels, playersCollection: $playersCollection, playersCharacters: $playersCharacters, dateTimeDelta: $dateTimeDelta, loadedLevelParts: $loadedLevelParts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LiveGlobalGameBlocState &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.currentLevelId, currentLevelId) &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime) &&
            const DeepCollectionEquality()
                .equals(other.lastDateTime, lastDateTime) &&
            const DeepCollectionEquality().equals(other._levels, _levels) &&
            const DeepCollectionEquality()
                .equals(other._templateLevels, _templateLevels) &&
            const DeepCollectionEquality()
                .equals(other._playersCollection, _playersCollection) &&
            const DeepCollectionEquality()
                .equals(other._playersCharacters, _playersCharacters) &&
            const DeepCollectionEquality()
                .equals(other.dateTimeDelta, dateTimeDelta) &&
            const DeepCollectionEquality()
                .equals(other._loadedLevelParts, _loadedLevelParts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(currentLevelId),
      const DeepCollectionEquality().hash(dateTime),
      const DeepCollectionEquality().hash(lastDateTime),
      const DeepCollectionEquality().hash(_levels),
      const DeepCollectionEquality().hash(_templateLevels),
      const DeepCollectionEquality().hash(_playersCollection),
      const DeepCollectionEquality().hash(_playersCharacters),
      const DeepCollectionEquality().hash(dateTimeDelta),
      const DeepCollectionEquality().hash(_loadedLevelParts));

  @JsonKey(ignore: true)
  @override
  _$$_LiveGlobalGameBlocStateCopyWith<_$_LiveGlobalGameBlocState>
      get copyWith =>
          __$$_LiveGlobalGameBlocStateCopyWithImpl<_$_LiveGlobalGameBlocState>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LiveGlobalGameBlocStateToJson(
      this,
    );
  }
}

abstract class _LiveGlobalGameBlocState extends LiveGlobalGameBlocState
    implements GlobalGameBlocState {
  const factory _LiveGlobalGameBlocState(
          {required final String id,
          final String currentLevelId,
          final WorldDateTimeModel dateTime,
          final WorldDateTimeModel lastDateTime,
          final Map<String, LevelModel> levels,
          final List<TemplateLevelModel> templateLevels,
          final List<PlayerProfileModel> playersCollection,
          final List<PlayerCharacterModel> playersCharacters,
          final int dateTimeDelta,
          final Set<LevelPartStates> loadedLevelParts}) =
      _$_LiveGlobalGameBlocState;
  const _LiveGlobalGameBlocState._() : super._();

  factory _LiveGlobalGameBlocState.fromJson(Map<String, dynamic> json) =
      _$_LiveGlobalGameBlocState.fromJson;

  @override

  /// ********************************************
  /// *      RESTORABLE FROM MODEL
  /// ********************************************
  String get id;
  @override
  String get currentLevelId;
  @override
  WorldDateTimeModel get dateTime;
  @override
  WorldDateTimeModel get lastDateTime;
  @override
  Map<String, LevelModel> get levels;
  @override
  List<TemplateLevelModel> get templateLevels;
  @override

  /// The [playersCollection] is the collection of players characters,
  /// which will be available for user to playe and progress through the game.
  List<PlayerProfileModel> get playersCollection;
  @override
  List<PlayerCharacterModel> get playersCharacters;
  @override

  /// ********************************************
  /// *      NON-RESTORABLE
  /// ********************************************
  int get dateTimeDelta;
  @override
  Set<LevelPartStates> get loadedLevelParts;
  @override
  @JsonKey(ignore: true)
  _$$_LiveGlobalGameBlocStateCopyWith<_$_LiveGlobalGameBlocState>
      get copyWith => throw _privateConstructorUsedError;
}
