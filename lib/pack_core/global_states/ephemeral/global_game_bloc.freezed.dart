// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'global_game_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LiveGlobalGameBlocState {
  /// ********************************************
  /// *      RESTORABLE FROM MODEL
  /// ********************************************
  String get id => throw _privateConstructorUsedError;
  CanvasDataModelId get currentLevelId => throw _privateConstructorUsedError;

  /// Current Level Model is a model with all level configurations
  /// chosen by the user (players, characters, etc).
  /// It should not be update or changed during the playing the level.
  /// It should be set during the level first initialization
  /// (When the player clicks play button).
  LevelModel? get currentLevelModel => throw _privateConstructorUsedError;
  WorldDateTimeModel get dateTime => throw _privateConstructorUsedError;
  WorldDateTimeModel get lastDateTime => throw _privateConstructorUsedError;
  Map<CanvasDataModelId, LevelModel> get levels =>
      throw _privateConstructorUsedError;
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

  @JsonKey(ignore: true)
  $LiveGlobalGameBlocStateCopyWith<LiveGlobalGameBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveGlobalGameBlocStateCopyWith<$Res> {
  factory $LiveGlobalGameBlocStateCopyWith(LiveGlobalGameBlocState value,
          $Res Function(LiveGlobalGameBlocState) then) =
      _$LiveGlobalGameBlocStateCopyWithImpl<$Res, LiveGlobalGameBlocState>;
  @useResult
  $Res call(
      {String id,
      CanvasDataModelId currentLevelId,
      LevelModel? currentLevelModel,
      WorldDateTimeModel dateTime,
      WorldDateTimeModel lastDateTime,
      Map<CanvasDataModelId, LevelModel> levels,
      List<TemplateLevelModel> templateLevels,
      List<PlayerProfileModel> playersCollection,
      List<PlayerCharacterModel> playersCharacters,
      int dateTimeDelta,
      Set<LevelPartStates> loadedLevelParts});

  $CanvasDataModelIdCopyWith<$Res> get currentLevelId;
  $LevelModelCopyWith<$Res>? get currentLevelModel;
  $WorldDateTimeModelCopyWith<$Res> get dateTime;
  $WorldDateTimeModelCopyWith<$Res> get lastDateTime;
}

/// @nodoc
class _$LiveGlobalGameBlocStateCopyWithImpl<$Res,
        $Val extends LiveGlobalGameBlocState>
    implements $LiveGlobalGameBlocStateCopyWith<$Res> {
  _$LiveGlobalGameBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? currentLevelId = null,
    Object? currentLevelModel = freezed,
    Object? dateTime = null,
    Object? lastDateTime = null,
    Object? levels = null,
    Object? templateLevels = null,
    Object? playersCollection = null,
    Object? playersCharacters = null,
    Object? dateTimeDelta = null,
    Object? loadedLevelParts = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      currentLevelId: null == currentLevelId
          ? _value.currentLevelId
          : currentLevelId // ignore: cast_nullable_to_non_nullable
              as CanvasDataModelId,
      currentLevelModel: freezed == currentLevelModel
          ? _value.currentLevelModel
          : currentLevelModel // ignore: cast_nullable_to_non_nullable
              as LevelModel?,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as WorldDateTimeModel,
      lastDateTime: null == lastDateTime
          ? _value.lastDateTime
          : lastDateTime // ignore: cast_nullable_to_non_nullable
              as WorldDateTimeModel,
      levels: null == levels
          ? _value.levels
          : levels // ignore: cast_nullable_to_non_nullable
              as Map<CanvasDataModelId, LevelModel>,
      templateLevels: null == templateLevels
          ? _value.templateLevels
          : templateLevels // ignore: cast_nullable_to_non_nullable
              as List<TemplateLevelModel>,
      playersCollection: null == playersCollection
          ? _value.playersCollection
          : playersCollection // ignore: cast_nullable_to_non_nullable
              as List<PlayerProfileModel>,
      playersCharacters: null == playersCharacters
          ? _value.playersCharacters
          : playersCharacters // ignore: cast_nullable_to_non_nullable
              as List<PlayerCharacterModel>,
      dateTimeDelta: null == dateTimeDelta
          ? _value.dateTimeDelta
          : dateTimeDelta // ignore: cast_nullable_to_non_nullable
              as int,
      loadedLevelParts: null == loadedLevelParts
          ? _value.loadedLevelParts
          : loadedLevelParts // ignore: cast_nullable_to_non_nullable
              as Set<LevelPartStates>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CanvasDataModelIdCopyWith<$Res> get currentLevelId {
    return $CanvasDataModelIdCopyWith<$Res>(_value.currentLevelId, (value) {
      return _then(_value.copyWith(currentLevelId: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LevelModelCopyWith<$Res>? get currentLevelModel {
    if (_value.currentLevelModel == null) {
      return null;
    }

    return $LevelModelCopyWith<$Res>(_value.currentLevelModel!, (value) {
      return _then(_value.copyWith(currentLevelModel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WorldDateTimeModelCopyWith<$Res> get dateTime {
    return $WorldDateTimeModelCopyWith<$Res>(_value.dateTime, (value) {
      return _then(_value.copyWith(dateTime: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WorldDateTimeModelCopyWith<$Res> get lastDateTime {
    return $WorldDateTimeModelCopyWith<$Res>(_value.lastDateTime, (value) {
      return _then(_value.copyWith(lastDateTime: value) as $Val);
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
  @useResult
  $Res call(
      {String id,
      CanvasDataModelId currentLevelId,
      LevelModel? currentLevelModel,
      WorldDateTimeModel dateTime,
      WorldDateTimeModel lastDateTime,
      Map<CanvasDataModelId, LevelModel> levels,
      List<TemplateLevelModel> templateLevels,
      List<PlayerProfileModel> playersCollection,
      List<PlayerCharacterModel> playersCharacters,
      int dateTimeDelta,
      Set<LevelPartStates> loadedLevelParts});

  @override
  $CanvasDataModelIdCopyWith<$Res> get currentLevelId;
  @override
  $LevelModelCopyWith<$Res>? get currentLevelModel;
  @override
  $WorldDateTimeModelCopyWith<$Res> get dateTime;
  @override
  $WorldDateTimeModelCopyWith<$Res> get lastDateTime;
}

/// @nodoc
class __$$_LiveGlobalGameBlocStateCopyWithImpl<$Res>
    extends _$LiveGlobalGameBlocStateCopyWithImpl<$Res,
        _$_LiveGlobalGameBlocState>
    implements _$$_LiveGlobalGameBlocStateCopyWith<$Res> {
  __$$_LiveGlobalGameBlocStateCopyWithImpl(_$_LiveGlobalGameBlocState _value,
      $Res Function(_$_LiveGlobalGameBlocState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? currentLevelId = null,
    Object? currentLevelModel = freezed,
    Object? dateTime = null,
    Object? lastDateTime = null,
    Object? levels = null,
    Object? templateLevels = null,
    Object? playersCollection = null,
    Object? playersCharacters = null,
    Object? dateTimeDelta = null,
    Object? loadedLevelParts = null,
  }) {
    return _then(_$_LiveGlobalGameBlocState(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      currentLevelId: null == currentLevelId
          ? _value.currentLevelId
          : currentLevelId // ignore: cast_nullable_to_non_nullable
              as CanvasDataModelId,
      currentLevelModel: freezed == currentLevelModel
          ? _value.currentLevelModel
          : currentLevelModel // ignore: cast_nullable_to_non_nullable
              as LevelModel?,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as WorldDateTimeModel,
      lastDateTime: null == lastDateTime
          ? _value.lastDateTime
          : lastDateTime // ignore: cast_nullable_to_non_nullable
              as WorldDateTimeModel,
      levels: null == levels
          ? _value._levels
          : levels // ignore: cast_nullable_to_non_nullable
              as Map<CanvasDataModelId, LevelModel>,
      templateLevels: null == templateLevels
          ? _value._templateLevels
          : templateLevels // ignore: cast_nullable_to_non_nullable
              as List<TemplateLevelModel>,
      playersCollection: null == playersCollection
          ? _value._playersCollection
          : playersCollection // ignore: cast_nullable_to_non_nullable
              as List<PlayerProfileModel>,
      playersCharacters: null == playersCharacters
          ? _value._playersCharacters
          : playersCharacters // ignore: cast_nullable_to_non_nullable
              as List<PlayerCharacterModel>,
      dateTimeDelta: null == dateTimeDelta
          ? _value.dateTimeDelta
          : dateTimeDelta // ignore: cast_nullable_to_non_nullable
              as int,
      loadedLevelParts: null == loadedLevelParts
          ? _value._loadedLevelParts
          : loadedLevelParts // ignore: cast_nullable_to_non_nullable
              as Set<LevelPartStates>,
    ));
  }
}

/// @nodoc

class _$_LiveGlobalGameBlocState extends _LiveGlobalGameBlocState {
  const _$_LiveGlobalGameBlocState(
      {required this.id,
      this.currentLevelId = '',
      this.currentLevelModel,
      this.dateTime = const WorldDateTimeModel(),
      this.lastDateTime = const WorldDateTimeModel(),
      final Map<CanvasDataModelId, LevelModel> levels = const {},
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

  /// ********************************************
  /// *      RESTORABLE FROM MODEL
  /// ********************************************
  @override
  final String id;
  @override
  @JsonKey()
  final CanvasDataModelId currentLevelId;

  /// Current Level Model is a model with all level configurations
  /// chosen by the user (players, characters, etc).
  /// It should not be update or changed during the playing the level.
  /// It should be set during the level first initialization
  /// (When the player clicks play button).
  @override
  final LevelModel? currentLevelModel;
  @override
  @JsonKey()
  final WorldDateTimeModel dateTime;
  @override
  @JsonKey()
  final WorldDateTimeModel lastDateTime;
  final Map<CanvasDataModelId, LevelModel> _levels;
  @override
  @JsonKey()
  Map<CanvasDataModelId, LevelModel> get levels {
    if (_levels is EqualUnmodifiableMapView) return _levels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_levels);
  }

  final List<TemplateLevelModel> _templateLevels;
  @override
  @JsonKey()
  List<TemplateLevelModel> get templateLevels {
    if (_templateLevels is EqualUnmodifiableListView) return _templateLevels;
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
    if (_playersCollection is EqualUnmodifiableListView)
      return _playersCollection;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playersCollection);
  }

  final List<PlayerCharacterModel> _playersCharacters;
  @override
  @JsonKey()
  List<PlayerCharacterModel> get playersCharacters {
    if (_playersCharacters is EqualUnmodifiableListView)
      return _playersCharacters;
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
    if (_loadedLevelParts is EqualUnmodifiableSetView) return _loadedLevelParts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_loadedLevelParts);
  }

  @override
  String toString() {
    return 'LiveGlobalGameBlocState(id: $id, currentLevelId: $currentLevelId, currentLevelModel: $currentLevelModel, dateTime: $dateTime, lastDateTime: $lastDateTime, levels: $levels, templateLevels: $templateLevels, playersCollection: $playersCollection, playersCharacters: $playersCharacters, dateTimeDelta: $dateTimeDelta, loadedLevelParts: $loadedLevelParts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LiveGlobalGameBlocState &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.currentLevelId, currentLevelId) ||
                other.currentLevelId == currentLevelId) &&
            (identical(other.currentLevelModel, currentLevelModel) ||
                other.currentLevelModel == currentLevelModel) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.lastDateTime, lastDateTime) ||
                other.lastDateTime == lastDateTime) &&
            const DeepCollectionEquality().equals(other._levels, _levels) &&
            const DeepCollectionEquality()
                .equals(other._templateLevels, _templateLevels) &&
            const DeepCollectionEquality()
                .equals(other._playersCollection, _playersCollection) &&
            const DeepCollectionEquality()
                .equals(other._playersCharacters, _playersCharacters) &&
            (identical(other.dateTimeDelta, dateTimeDelta) ||
                other.dateTimeDelta == dateTimeDelta) &&
            const DeepCollectionEquality()
                .equals(other._loadedLevelParts, _loadedLevelParts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      currentLevelId,
      currentLevelModel,
      dateTime,
      lastDateTime,
      const DeepCollectionEquality().hash(_levels),
      const DeepCollectionEquality().hash(_templateLevels),
      const DeepCollectionEquality().hash(_playersCollection),
      const DeepCollectionEquality().hash(_playersCharacters),
      dateTimeDelta,
      const DeepCollectionEquality().hash(_loadedLevelParts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LiveGlobalGameBlocStateCopyWith<_$_LiveGlobalGameBlocState>
      get copyWith =>
          __$$_LiveGlobalGameBlocStateCopyWithImpl<_$_LiveGlobalGameBlocState>(
              this, _$identity);
}

abstract class _LiveGlobalGameBlocState extends LiveGlobalGameBlocState
    implements GlobalGameBlocState {
  const factory _LiveGlobalGameBlocState(
          {required final String id,
          final CanvasDataModelId currentLevelId,
          final LevelModel? currentLevelModel,
          final WorldDateTimeModel dateTime,
          final WorldDateTimeModel lastDateTime,
          final Map<CanvasDataModelId, LevelModel> levels,
          final List<TemplateLevelModel> templateLevels,
          final List<PlayerProfileModel> playersCollection,
          final List<PlayerCharacterModel> playersCharacters,
          final int dateTimeDelta,
          final Set<LevelPartStates> loadedLevelParts}) =
      _$_LiveGlobalGameBlocState;
  const _LiveGlobalGameBlocState._() : super._();

  @override

  /// ********************************************
  /// *      RESTORABLE FROM MODEL
  /// ********************************************
  String get id;
  @override
  CanvasDataModelId get currentLevelId;
  @override

  /// Current Level Model is a model with all level configurations
  /// chosen by the user (players, characters, etc).
  /// It should not be update or changed during the playing the level.
  /// It should be set during the level first initialization
  /// (When the player clicks play button).
  LevelModel? get currentLevelModel;
  @override
  WorldDateTimeModel get dateTime;
  @override
  WorldDateTimeModel get lastDateTime;
  @override
  Map<CanvasDataModelId, LevelModel> get levels;
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
