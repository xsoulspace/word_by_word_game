// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppSettingsModel _$AppSettingsModelFromJson(Map<String, dynamic> json) {
  return _AppSettingsModel.fromJson(json);
}

/// @nodoc
mixin _$AppSettingsModel {
  @JsonKey(fromJson: localeFromString, toJson: localeToString)
  Locale? get locale => throw _privateConstructorUsedError;
  BrightnessMode get brightnessMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppSettingsModelCopyWith<AppSettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingsModelCopyWith<$Res> {
  factory $AppSettingsModelCopyWith(
          AppSettingsModel value, $Res Function(AppSettingsModel) then) =
      _$AppSettingsModelCopyWithImpl<$Res, AppSettingsModel>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: localeFromString, toJson: localeToString)
      Locale? locale,
      BrightnessMode brightnessMode});
}

/// @nodoc
class _$AppSettingsModelCopyWithImpl<$Res, $Val extends AppSettingsModel>
    implements $AppSettingsModelCopyWith<$Res> {
  _$AppSettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = freezed,
    Object? brightnessMode = null,
  }) {
    return _then(_value.copyWith(
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
      brightnessMode: null == brightnessMode
          ? _value.brightnessMode
          : brightnessMode // ignore: cast_nullable_to_non_nullable
              as BrightnessMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppSettingsModelImplCopyWith<$Res>
    implements $AppSettingsModelCopyWith<$Res> {
  factory _$$AppSettingsModelImplCopyWith(_$AppSettingsModelImpl value,
          $Res Function(_$AppSettingsModelImpl) then) =
      __$$AppSettingsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: localeFromString, toJson: localeToString)
      Locale? locale,
      BrightnessMode brightnessMode});
}

/// @nodoc
class __$$AppSettingsModelImplCopyWithImpl<$Res>
    extends _$AppSettingsModelCopyWithImpl<$Res, _$AppSettingsModelImpl>
    implements _$$AppSettingsModelImplCopyWith<$Res> {
  __$$AppSettingsModelImplCopyWithImpl(_$AppSettingsModelImpl _value,
      $Res Function(_$AppSettingsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = freezed,
    Object? brightnessMode = null,
  }) {
    return _then(_$AppSettingsModelImpl(
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
      brightnessMode: null == brightnessMode
          ? _value.brightnessMode
          : brightnessMode // ignore: cast_nullable_to_non_nullable
              as BrightnessMode,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AppSettingsModelImpl extends _AppSettingsModel {
  const _$AppSettingsModelImpl(
      {@JsonKey(fromJson: localeFromString, toJson: localeToString) this.locale,
      this.brightnessMode = BrightnessMode.system})
      : super._();

  factory _$AppSettingsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppSettingsModelImplFromJson(json);

  @override
  @JsonKey(fromJson: localeFromString, toJson: localeToString)
  final Locale? locale;
  @override
  @JsonKey()
  final BrightnessMode brightnessMode;

  @override
  String toString() {
    return 'AppSettingsModel(locale: $locale, brightnessMode: $brightnessMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSettingsModelImpl &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.brightnessMode, brightnessMode) ||
                other.brightnessMode == brightnessMode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, locale, brightnessMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingsModelImplCopyWith<_$AppSettingsModelImpl> get copyWith =>
      __$$AppSettingsModelImplCopyWithImpl<_$AppSettingsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppSettingsModelImplToJson(
      this,
    );
  }
}

abstract class _AppSettingsModel extends AppSettingsModel {
  const factory _AppSettingsModel(
      {@JsonKey(fromJson: localeFromString, toJson: localeToString)
      final Locale? locale,
      final BrightnessMode brightnessMode}) = _$AppSettingsModelImpl;
  const _AppSettingsModel._() : super._();

  factory _AppSettingsModel.fromJson(Map<String, dynamic> json) =
      _$AppSettingsModelImpl.fromJson;

  @override
  @JsonKey(fromJson: localeFromString, toJson: localeToString)
  Locale? get locale;
  @override
  BrightnessMode get brightnessMode;
  @override
  @JsonKey(ignore: true)
  _$$AppSettingsModelImplCopyWith<_$AppSettingsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CurrentWordModel _$CurrentWordModelFromJson(Map<String, dynamic> json) {
  return _CurrentWordModel.fromJson(json);
}

/// @nodoc
mixin _$CurrentWordModel {
  List<int> get inactiveIndexes => throw _privateConstructorUsedError;
  String get fullWord => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentWordModelCopyWith<CurrentWordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWordModelCopyWith<$Res> {
  factory $CurrentWordModelCopyWith(
          CurrentWordModel value, $Res Function(CurrentWordModel) then) =
      _$CurrentWordModelCopyWithImpl<$Res, CurrentWordModel>;
  @useResult
  $Res call({List<int> inactiveIndexes, String fullWord});
}

/// @nodoc
class _$CurrentWordModelCopyWithImpl<$Res, $Val extends CurrentWordModel>
    implements $CurrentWordModelCopyWith<$Res> {
  _$CurrentWordModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inactiveIndexes = null,
    Object? fullWord = null,
  }) {
    return _then(_value.copyWith(
      inactiveIndexes: null == inactiveIndexes
          ? _value.inactiveIndexes
          : inactiveIndexes // ignore: cast_nullable_to_non_nullable
              as List<int>,
      fullWord: null == fullWord
          ? _value.fullWord
          : fullWord // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentWordModelImplCopyWith<$Res>
    implements $CurrentWordModelCopyWith<$Res> {
  factory _$$CurrentWordModelImplCopyWith(_$CurrentWordModelImpl value,
          $Res Function(_$CurrentWordModelImpl) then) =
      __$$CurrentWordModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> inactiveIndexes, String fullWord});
}

/// @nodoc
class __$$CurrentWordModelImplCopyWithImpl<$Res>
    extends _$CurrentWordModelCopyWithImpl<$Res, _$CurrentWordModelImpl>
    implements _$$CurrentWordModelImplCopyWith<$Res> {
  __$$CurrentWordModelImplCopyWithImpl(_$CurrentWordModelImpl _value,
      $Res Function(_$CurrentWordModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inactiveIndexes = null,
    Object? fullWord = null,
  }) {
    return _then(_$CurrentWordModelImpl(
      inactiveIndexes: null == inactiveIndexes
          ? _value._inactiveIndexes
          : inactiveIndexes // ignore: cast_nullable_to_non_nullable
              as List<int>,
      fullWord: null == fullWord
          ? _value.fullWord
          : fullWord // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CurrentWordModelImpl extends _CurrentWordModel {
  const _$CurrentWordModelImpl(
      {final List<int> inactiveIndexes = const [], this.fullWord = ''})
      : _inactiveIndexes = inactiveIndexes,
        super._();

  factory _$CurrentWordModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentWordModelImplFromJson(json);

  final List<int> _inactiveIndexes;
  @override
  @JsonKey()
  List<int> get inactiveIndexes {
    if (_inactiveIndexes is EqualUnmodifiableListView) return _inactiveIndexes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inactiveIndexes);
  }

  @override
  @JsonKey()
  final String fullWord;

  @override
  String toString() {
    return 'CurrentWordModel(inactiveIndexes: $inactiveIndexes, fullWord: $fullWord)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentWordModelImpl &&
            const DeepCollectionEquality()
                .equals(other._inactiveIndexes, _inactiveIndexes) &&
            (identical(other.fullWord, fullWord) ||
                other.fullWord == fullWord));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_inactiveIndexes), fullWord);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentWordModelImplCopyWith<_$CurrentWordModelImpl> get copyWith =>
      __$$CurrentWordModelImplCopyWithImpl<_$CurrentWordModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentWordModelImplToJson(
      this,
    );
  }
}

abstract class _CurrentWordModel extends CurrentWordModel {
  const factory _CurrentWordModel(
      {final List<int> inactiveIndexes,
      final String fullWord}) = _$CurrentWordModelImpl;
  const _CurrentWordModel._() : super._();

  factory _CurrentWordModel.fromJson(Map<String, dynamic> json) =
      _$CurrentWordModelImpl.fromJson;

  @override
  List<int> get inactiveIndexes;
  @override
  String get fullWord;
  @override
  @JsonKey(ignore: true)
  _$$CurrentWordModelImplCopyWith<_$CurrentWordModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GameSaveModel _$GameSaveModelFromJson(Map<String, dynamic> json) {
  return _GameModel.fromJson(json);
}

/// @nodoc
mixin _$GameSaveModel {
  String get id => throw _privateConstructorUsedError;

  /// Id of current level
  CanvasDataModelId get currentLevelId => throw _privateConstructorUsedError;

  /// Saved level configuration to get player an option to restart a level
  LevelModel? get currentLevel => throw _privateConstructorUsedError;
  GameVersion get version => throw _privateConstructorUsedError;

  /// Global players statistics and data.
  List<PlayerProfileModel> get playersCollection =>
      throw _privateConstructorUsedError;
  List<PlayerCharacterModel> get playersCharacters =>
      throw _privateConstructorUsedError;
  TutorialCollectionsProgressModel get tutorialProgress =>
      throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: GameSaveModel._savedLevelsFromJson,
      toJson: GameSaveModel._savedLevelsToJson)
  Map<CanvasDataModelId, LevelModel> get savedLevels =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameSaveModelCopyWith<GameSaveModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameSaveModelCopyWith<$Res> {
  factory $GameSaveModelCopyWith(
          GameSaveModel value, $Res Function(GameSaveModel) then) =
      _$GameSaveModelCopyWithImpl<$Res, GameSaveModel>;
  @useResult
  $Res call(
      {String id,
      CanvasDataModelId currentLevelId,
      LevelModel? currentLevel,
      GameVersion version,
      List<PlayerProfileModel> playersCollection,
      List<PlayerCharacterModel> playersCharacters,
      TutorialCollectionsProgressModel tutorialProgress,
      @JsonKey(
          fromJson: GameSaveModel._savedLevelsFromJson,
          toJson: GameSaveModel._savedLevelsToJson)
      Map<CanvasDataModelId, LevelModel> savedLevels});

  $CanvasDataModelIdCopyWith<$Res> get currentLevelId;
  $LevelModelCopyWith<$Res>? get currentLevel;
  $TutorialCollectionsProgressModelCopyWith<$Res> get tutorialProgress;
}

/// @nodoc
class _$GameSaveModelCopyWithImpl<$Res, $Val extends GameSaveModel>
    implements $GameSaveModelCopyWith<$Res> {
  _$GameSaveModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? currentLevelId = null,
    Object? currentLevel = freezed,
    Object? version = null,
    Object? playersCollection = null,
    Object? playersCharacters = null,
    Object? tutorialProgress = null,
    Object? savedLevels = null,
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
      currentLevel: freezed == currentLevel
          ? _value.currentLevel
          : currentLevel // ignore: cast_nullable_to_non_nullable
              as LevelModel?,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as GameVersion,
      playersCollection: null == playersCollection
          ? _value.playersCollection
          : playersCollection // ignore: cast_nullable_to_non_nullable
              as List<PlayerProfileModel>,
      playersCharacters: null == playersCharacters
          ? _value.playersCharacters
          : playersCharacters // ignore: cast_nullable_to_non_nullable
              as List<PlayerCharacterModel>,
      tutorialProgress: null == tutorialProgress
          ? _value.tutorialProgress
          : tutorialProgress // ignore: cast_nullable_to_non_nullable
              as TutorialCollectionsProgressModel,
      savedLevels: null == savedLevels
          ? _value.savedLevels
          : savedLevels // ignore: cast_nullable_to_non_nullable
              as Map<CanvasDataModelId, LevelModel>,
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
  $LevelModelCopyWith<$Res>? get currentLevel {
    if (_value.currentLevel == null) {
      return null;
    }

    return $LevelModelCopyWith<$Res>(_value.currentLevel!, (value) {
      return _then(_value.copyWith(currentLevel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TutorialCollectionsProgressModelCopyWith<$Res> get tutorialProgress {
    return $TutorialCollectionsProgressModelCopyWith<$Res>(
        _value.tutorialProgress, (value) {
      return _then(_value.copyWith(tutorialProgress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameModelImplCopyWith<$Res>
    implements $GameSaveModelCopyWith<$Res> {
  factory _$$GameModelImplCopyWith(
          _$GameModelImpl value, $Res Function(_$GameModelImpl) then) =
      __$$GameModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      CanvasDataModelId currentLevelId,
      LevelModel? currentLevel,
      GameVersion version,
      List<PlayerProfileModel> playersCollection,
      List<PlayerCharacterModel> playersCharacters,
      TutorialCollectionsProgressModel tutorialProgress,
      @JsonKey(
          fromJson: GameSaveModel._savedLevelsFromJson,
          toJson: GameSaveModel._savedLevelsToJson)
      Map<CanvasDataModelId, LevelModel> savedLevels});

  @override
  $CanvasDataModelIdCopyWith<$Res> get currentLevelId;
  @override
  $LevelModelCopyWith<$Res>? get currentLevel;
  @override
  $TutorialCollectionsProgressModelCopyWith<$Res> get tutorialProgress;
}

/// @nodoc
class __$$GameModelImplCopyWithImpl<$Res>
    extends _$GameSaveModelCopyWithImpl<$Res, _$GameModelImpl>
    implements _$$GameModelImplCopyWith<$Res> {
  __$$GameModelImplCopyWithImpl(
      _$GameModelImpl _value, $Res Function(_$GameModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? currentLevelId = null,
    Object? currentLevel = freezed,
    Object? version = null,
    Object? playersCollection = null,
    Object? playersCharacters = null,
    Object? tutorialProgress = null,
    Object? savedLevels = null,
  }) {
    return _then(_$GameModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      currentLevelId: null == currentLevelId
          ? _value.currentLevelId
          : currentLevelId // ignore: cast_nullable_to_non_nullable
              as CanvasDataModelId,
      currentLevel: freezed == currentLevel
          ? _value.currentLevel
          : currentLevel // ignore: cast_nullable_to_non_nullable
              as LevelModel?,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as GameVersion,
      playersCollection: null == playersCollection
          ? _value._playersCollection
          : playersCollection // ignore: cast_nullable_to_non_nullable
              as List<PlayerProfileModel>,
      playersCharacters: null == playersCharacters
          ? _value._playersCharacters
          : playersCharacters // ignore: cast_nullable_to_non_nullable
              as List<PlayerCharacterModel>,
      tutorialProgress: null == tutorialProgress
          ? _value.tutorialProgress
          : tutorialProgress // ignore: cast_nullable_to_non_nullable
              as TutorialCollectionsProgressModel,
      savedLevels: null == savedLevels
          ? _value._savedLevels
          : savedLevels // ignore: cast_nullable_to_non_nullable
              as Map<CanvasDataModelId, LevelModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$GameModelImpl extends _GameModel {
  const _$GameModelImpl(
      {required this.id,
      required this.currentLevelId,
      this.currentLevel,
      this.version = kLatestGameVersion,
      final List<PlayerProfileModel> playersCollection = const [],
      final List<PlayerCharacterModel> playersCharacters = const [],
      this.tutorialProgress = TutorialCollectionsProgressModel.empty,
      @JsonKey(
          fromJson: GameSaveModel._savedLevelsFromJson,
          toJson: GameSaveModel._savedLevelsToJson)
      final Map<CanvasDataModelId, LevelModel> savedLevels = const {}})
      : _playersCollection = playersCollection,
        _playersCharacters = playersCharacters,
        _savedLevels = savedLevels,
        super._();

  factory _$GameModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameModelImplFromJson(json);

  @override
  final String id;

  /// Id of current level
  @override
  final CanvasDataModelId currentLevelId;

  /// Saved level configuration to get player an option to restart a level
  @override
  final LevelModel? currentLevel;
  @override
  @JsonKey()
  final GameVersion version;

  /// Global players statistics and data.
  final List<PlayerProfileModel> _playersCollection;

  /// Global players statistics and data.
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

  @override
  @JsonKey()
  final TutorialCollectionsProgressModel tutorialProgress;
  final Map<CanvasDataModelId, LevelModel> _savedLevels;
  @override
  @JsonKey(
      fromJson: GameSaveModel._savedLevelsFromJson,
      toJson: GameSaveModel._savedLevelsToJson)
  Map<CanvasDataModelId, LevelModel> get savedLevels {
    if (_savedLevels is EqualUnmodifiableMapView) return _savedLevels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_savedLevels);
  }

  @override
  String toString() {
    return 'GameSaveModel(id: $id, currentLevelId: $currentLevelId, currentLevel: $currentLevel, version: $version, playersCollection: $playersCollection, playersCharacters: $playersCharacters, tutorialProgress: $tutorialProgress, savedLevels: $savedLevels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.currentLevelId, currentLevelId) ||
                other.currentLevelId == currentLevelId) &&
            (identical(other.currentLevel, currentLevel) ||
                other.currentLevel == currentLevel) &&
            (identical(other.version, version) || other.version == version) &&
            const DeepCollectionEquality()
                .equals(other._playersCollection, _playersCollection) &&
            const DeepCollectionEquality()
                .equals(other._playersCharacters, _playersCharacters) &&
            (identical(other.tutorialProgress, tutorialProgress) ||
                other.tutorialProgress == tutorialProgress) &&
            const DeepCollectionEquality()
                .equals(other._savedLevels, _savedLevels));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      currentLevelId,
      currentLevel,
      version,
      const DeepCollectionEquality().hash(_playersCollection),
      const DeepCollectionEquality().hash(_playersCharacters),
      tutorialProgress,
      const DeepCollectionEquality().hash(_savedLevels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameModelImplCopyWith<_$GameModelImpl> get copyWith =>
      __$$GameModelImplCopyWithImpl<_$GameModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameModelImplToJson(
      this,
    );
  }
}

abstract class _GameModel extends GameSaveModel {
  const factory _GameModel(
      {required final String id,
      required final CanvasDataModelId currentLevelId,
      final LevelModel? currentLevel,
      final GameVersion version,
      final List<PlayerProfileModel> playersCollection,
      final List<PlayerCharacterModel> playersCharacters,
      final TutorialCollectionsProgressModel tutorialProgress,
      @JsonKey(
          fromJson: GameSaveModel._savedLevelsFromJson,
          toJson: GameSaveModel._savedLevelsToJson)
      final Map<CanvasDataModelId, LevelModel> savedLevels}) = _$GameModelImpl;
  const _GameModel._() : super._();

  factory _GameModel.fromJson(Map<String, dynamic> json) =
      _$GameModelImpl.fromJson;

  @override
  String get id;
  @override

  /// Id of current level
  CanvasDataModelId get currentLevelId;
  @override

  /// Saved level configuration to get player an option to restart a level
  LevelModel? get currentLevel;
  @override
  GameVersion get version;
  @override

  /// Global players statistics and data.
  List<PlayerProfileModel> get playersCollection;
  @override
  List<PlayerCharacterModel> get playersCharacters;
  @override
  TutorialCollectionsProgressModel get tutorialProgress;
  @override
  @JsonKey(
      fromJson: GameSaveModel._savedLevelsFromJson,
      toJson: GameSaveModel._savedLevelsToJson)
  Map<CanvasDataModelId, LevelModel> get savedLevels;
  @override
  @JsonKey(ignore: true)
  _$$GameModelImplCopyWith<_$GameModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LevelCharactersModel _$LevelCharactersModelFromJson(Map<String, dynamic> json) {
  return _LevelCharactersModel.fromJson(json);
}

/// @nodoc
mixin _$LevelCharactersModel {
  PlayerCharacterModel get playerCharacter =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LevelCharactersModelCopyWith<LevelCharactersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LevelCharactersModelCopyWith<$Res> {
  factory $LevelCharactersModelCopyWith(LevelCharactersModel value,
          $Res Function(LevelCharactersModel) then) =
      _$LevelCharactersModelCopyWithImpl<$Res, LevelCharactersModel>;
  @useResult
  $Res call({PlayerCharacterModel playerCharacter});

  $PlayerCharacterModelCopyWith<$Res> get playerCharacter;
}

/// @nodoc
class _$LevelCharactersModelCopyWithImpl<$Res,
        $Val extends LevelCharactersModel>
    implements $LevelCharactersModelCopyWith<$Res> {
  _$LevelCharactersModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerCharacter = null,
  }) {
    return _then(_value.copyWith(
      playerCharacter: null == playerCharacter
          ? _value.playerCharacter
          : playerCharacter // ignore: cast_nullable_to_non_nullable
              as PlayerCharacterModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlayerCharacterModelCopyWith<$Res> get playerCharacter {
    return $PlayerCharacterModelCopyWith<$Res>(_value.playerCharacter, (value) {
      return _then(_value.copyWith(playerCharacter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LevelCharactersModelImplCopyWith<$Res>
    implements $LevelCharactersModelCopyWith<$Res> {
  factory _$$LevelCharactersModelImplCopyWith(_$LevelCharactersModelImpl value,
          $Res Function(_$LevelCharactersModelImpl) then) =
      __$$LevelCharactersModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlayerCharacterModel playerCharacter});

  @override
  $PlayerCharacterModelCopyWith<$Res> get playerCharacter;
}

/// @nodoc
class __$$LevelCharactersModelImplCopyWithImpl<$Res>
    extends _$LevelCharactersModelCopyWithImpl<$Res, _$LevelCharactersModelImpl>
    implements _$$LevelCharactersModelImplCopyWith<$Res> {
  __$$LevelCharactersModelImplCopyWithImpl(_$LevelCharactersModelImpl _value,
      $Res Function(_$LevelCharactersModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerCharacter = null,
  }) {
    return _then(_$LevelCharactersModelImpl(
      playerCharacter: null == playerCharacter
          ? _value.playerCharacter
          : playerCharacter // ignore: cast_nullable_to_non_nullable
              as PlayerCharacterModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$LevelCharactersModelImpl extends _LevelCharactersModel {
  const _$LevelCharactersModelImpl({required this.playerCharacter}) : super._();

  factory _$LevelCharactersModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LevelCharactersModelImplFromJson(json);

  @override
  final PlayerCharacterModel playerCharacter;

  @override
  String toString() {
    return 'LevelCharactersModel(playerCharacter: $playerCharacter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LevelCharactersModelImpl &&
            (identical(other.playerCharacter, playerCharacter) ||
                other.playerCharacter == playerCharacter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, playerCharacter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LevelCharactersModelImplCopyWith<_$LevelCharactersModelImpl>
      get copyWith =>
          __$$LevelCharactersModelImplCopyWithImpl<_$LevelCharactersModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LevelCharactersModelImplToJson(
      this,
    );
  }
}

abstract class _LevelCharactersModel extends LevelCharactersModel {
  const factory _LevelCharactersModel(
          {required final PlayerCharacterModel playerCharacter}) =
      _$LevelCharactersModelImpl;
  const _LevelCharactersModel._() : super._();

  factory _LevelCharactersModel.fromJson(Map<String, dynamic> json) =
      _$LevelCharactersModelImpl.fromJson;

  @override
  PlayerCharacterModel get playerCharacter;
  @override
  @JsonKey(ignore: true)
  _$$LevelCharactersModelImplCopyWith<_$LevelCharactersModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LevelModel _$LevelModelFromJson(Map<String, dynamic> json) {
  return _LevelModel.fromJson(json);
}

/// @nodoc
mixin _$LevelModel {
  LevelPlayersModel get players => throw _privateConstructorUsedError;
  LevelCharactersModel get characters => throw _privateConstructorUsedError;
  TilesetType get tilesetType => throw _privateConstructorUsedError;
  List<WeatherModel> get weathers => throw _privateConstructorUsedError;
  WindModel get wind => throw _privateConstructorUsedError;

  /// To get [CanvasDataModel] use [TemplateLevelModel.canvasData]
  /// comparing [LevelModel.canvasDataId] with [TemplateLevelModel.id]
  CanvasDataModelId get canvasDataId => throw _privateConstructorUsedError;
  CurrentWordModel get currentWord => throw _privateConstructorUsedError;
  Map<String, String> get words => throw _privateConstructorUsedError;
  String get latestWord => throw _privateConstructorUsedError;
  GamePhaseType get phaseType => throw _privateConstructorUsedError;
  EnergyMultiplierType get actionMultiplier =>
      throw _privateConstructorUsedError;
  WorldDateTimeModel get dateTime => throw _privateConstructorUsedError;
  WorldDateTimeModel get lastDateTime => throw _privateConstructorUsedError;
  TechnologyTreeProgressModel get technologyTreeProgress =>
      throw _privateConstructorUsedError;
  LevelFeaturesSettingsModel get featuresSettings =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LevelModelCopyWith<LevelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LevelModelCopyWith<$Res> {
  factory $LevelModelCopyWith(
          LevelModel value, $Res Function(LevelModel) then) =
      _$LevelModelCopyWithImpl<$Res, LevelModel>;
  @useResult
  $Res call(
      {LevelPlayersModel players,
      LevelCharactersModel characters,
      TilesetType tilesetType,
      List<WeatherModel> weathers,
      WindModel wind,
      CanvasDataModelId canvasDataId,
      CurrentWordModel currentWord,
      Map<String, String> words,
      String latestWord,
      GamePhaseType phaseType,
      EnergyMultiplierType actionMultiplier,
      WorldDateTimeModel dateTime,
      WorldDateTimeModel lastDateTime,
      TechnologyTreeProgressModel technologyTreeProgress,
      LevelFeaturesSettingsModel featuresSettings});

  $LevelPlayersModelCopyWith<$Res> get players;
  $LevelCharactersModelCopyWith<$Res> get characters;
  $WindModelCopyWith<$Res> get wind;
  $CanvasDataModelIdCopyWith<$Res> get canvasDataId;
  $CurrentWordModelCopyWith<$Res> get currentWord;
  $WorldDateTimeModelCopyWith<$Res> get dateTime;
  $WorldDateTimeModelCopyWith<$Res> get lastDateTime;
  $TechnologyTreeProgressModelCopyWith<$Res> get technologyTreeProgress;
  $LevelFeaturesSettingsModelCopyWith<$Res> get featuresSettings;
}

/// @nodoc
class _$LevelModelCopyWithImpl<$Res, $Val extends LevelModel>
    implements $LevelModelCopyWith<$Res> {
  _$LevelModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? players = null,
    Object? characters = null,
    Object? tilesetType = null,
    Object? weathers = null,
    Object? wind = null,
    Object? canvasDataId = null,
    Object? currentWord = null,
    Object? words = null,
    Object? latestWord = null,
    Object? phaseType = null,
    Object? actionMultiplier = null,
    Object? dateTime = null,
    Object? lastDateTime = null,
    Object? technologyTreeProgress = null,
    Object? featuresSettings = null,
  }) {
    return _then(_value.copyWith(
      players: null == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as LevelPlayersModel,
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as LevelCharactersModel,
      tilesetType: null == tilesetType
          ? _value.tilesetType
          : tilesetType // ignore: cast_nullable_to_non_nullable
              as TilesetType,
      weathers: null == weathers
          ? _value.weathers
          : weathers // ignore: cast_nullable_to_non_nullable
              as List<WeatherModel>,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WindModel,
      canvasDataId: null == canvasDataId
          ? _value.canvasDataId
          : canvasDataId // ignore: cast_nullable_to_non_nullable
              as CanvasDataModelId,
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
              as GamePhaseType,
      actionMultiplier: null == actionMultiplier
          ? _value.actionMultiplier
          : actionMultiplier // ignore: cast_nullable_to_non_nullable
              as EnergyMultiplierType,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as WorldDateTimeModel,
      lastDateTime: null == lastDateTime
          ? _value.lastDateTime
          : lastDateTime // ignore: cast_nullable_to_non_nullable
              as WorldDateTimeModel,
      technologyTreeProgress: null == technologyTreeProgress
          ? _value.technologyTreeProgress
          : technologyTreeProgress // ignore: cast_nullable_to_non_nullable
              as TechnologyTreeProgressModel,
      featuresSettings: null == featuresSettings
          ? _value.featuresSettings
          : featuresSettings // ignore: cast_nullable_to_non_nullable
              as LevelFeaturesSettingsModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LevelPlayersModelCopyWith<$Res> get players {
    return $LevelPlayersModelCopyWith<$Res>(_value.players, (value) {
      return _then(_value.copyWith(players: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LevelCharactersModelCopyWith<$Res> get characters {
    return $LevelCharactersModelCopyWith<$Res>(_value.characters, (value) {
      return _then(_value.copyWith(characters: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WindModelCopyWith<$Res> get wind {
    return $WindModelCopyWith<$Res>(_value.wind, (value) {
      return _then(_value.copyWith(wind: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CanvasDataModelIdCopyWith<$Res> get canvasDataId {
    return $CanvasDataModelIdCopyWith<$Res>(_value.canvasDataId, (value) {
      return _then(_value.copyWith(canvasDataId: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentWordModelCopyWith<$Res> get currentWord {
    return $CurrentWordModelCopyWith<$Res>(_value.currentWord, (value) {
      return _then(_value.copyWith(currentWord: value) as $Val);
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

  @override
  @pragma('vm:prefer-inline')
  $TechnologyTreeProgressModelCopyWith<$Res> get technologyTreeProgress {
    return $TechnologyTreeProgressModelCopyWith<$Res>(
        _value.technologyTreeProgress, (value) {
      return _then(_value.copyWith(technologyTreeProgress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LevelFeaturesSettingsModelCopyWith<$Res> get featuresSettings {
    return $LevelFeaturesSettingsModelCopyWith<$Res>(_value.featuresSettings,
        (value) {
      return _then(_value.copyWith(featuresSettings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LevelModelImplCopyWith<$Res>
    implements $LevelModelCopyWith<$Res> {
  factory _$$LevelModelImplCopyWith(
          _$LevelModelImpl value, $Res Function(_$LevelModelImpl) then) =
      __$$LevelModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LevelPlayersModel players,
      LevelCharactersModel characters,
      TilesetType tilesetType,
      List<WeatherModel> weathers,
      WindModel wind,
      CanvasDataModelId canvasDataId,
      CurrentWordModel currentWord,
      Map<String, String> words,
      String latestWord,
      GamePhaseType phaseType,
      EnergyMultiplierType actionMultiplier,
      WorldDateTimeModel dateTime,
      WorldDateTimeModel lastDateTime,
      TechnologyTreeProgressModel technologyTreeProgress,
      LevelFeaturesSettingsModel featuresSettings});

  @override
  $LevelPlayersModelCopyWith<$Res> get players;
  @override
  $LevelCharactersModelCopyWith<$Res> get characters;
  @override
  $WindModelCopyWith<$Res> get wind;
  @override
  $CanvasDataModelIdCopyWith<$Res> get canvasDataId;
  @override
  $CurrentWordModelCopyWith<$Res> get currentWord;
  @override
  $WorldDateTimeModelCopyWith<$Res> get dateTime;
  @override
  $WorldDateTimeModelCopyWith<$Res> get lastDateTime;
  @override
  $TechnologyTreeProgressModelCopyWith<$Res> get technologyTreeProgress;
  @override
  $LevelFeaturesSettingsModelCopyWith<$Res> get featuresSettings;
}

/// @nodoc
class __$$LevelModelImplCopyWithImpl<$Res>
    extends _$LevelModelCopyWithImpl<$Res, _$LevelModelImpl>
    implements _$$LevelModelImplCopyWith<$Res> {
  __$$LevelModelImplCopyWithImpl(
      _$LevelModelImpl _value, $Res Function(_$LevelModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? players = null,
    Object? characters = null,
    Object? tilesetType = null,
    Object? weathers = null,
    Object? wind = null,
    Object? canvasDataId = null,
    Object? currentWord = null,
    Object? words = null,
    Object? latestWord = null,
    Object? phaseType = null,
    Object? actionMultiplier = null,
    Object? dateTime = null,
    Object? lastDateTime = null,
    Object? technologyTreeProgress = null,
    Object? featuresSettings = null,
  }) {
    return _then(_$LevelModelImpl(
      players: null == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as LevelPlayersModel,
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as LevelCharactersModel,
      tilesetType: null == tilesetType
          ? _value.tilesetType
          : tilesetType // ignore: cast_nullable_to_non_nullable
              as TilesetType,
      weathers: null == weathers
          ? _value._weathers
          : weathers // ignore: cast_nullable_to_non_nullable
              as List<WeatherModel>,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WindModel,
      canvasDataId: null == canvasDataId
          ? _value.canvasDataId
          : canvasDataId // ignore: cast_nullable_to_non_nullable
              as CanvasDataModelId,
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
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as WorldDateTimeModel,
      lastDateTime: null == lastDateTime
          ? _value.lastDateTime
          : lastDateTime // ignore: cast_nullable_to_non_nullable
              as WorldDateTimeModel,
      technologyTreeProgress: null == technologyTreeProgress
          ? _value.technologyTreeProgress
          : technologyTreeProgress // ignore: cast_nullable_to_non_nullable
              as TechnologyTreeProgressModel,
      featuresSettings: null == featuresSettings
          ? _value.featuresSettings
          : featuresSettings // ignore: cast_nullable_to_non_nullable
              as LevelFeaturesSettingsModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$LevelModelImpl extends _LevelModel {
  const _$LevelModelImpl(
      {required this.players,
      required this.characters,
      this.tilesetType = TilesetType.colourful,
      final List<WeatherModel> weathers = const [],
      this.wind = WindModel.zero,
      this.canvasDataId = CanvasDataModelId.empty,
      this.currentWord = const CurrentWordModel(),
      final Map<String, String> words = const {},
      this.latestWord = '',
      this.phaseType = GamePhaseType.entryWord,
      this.actionMultiplier = EnergyMultiplierType.m1,
      this.dateTime = WorldDateTimeModel.zero,
      this.lastDateTime = WorldDateTimeModel.zero,
      this.technologyTreeProgress = TechnologyTreeProgressModel.empty,
      this.featuresSettings = LevelFeaturesSettingsModel.empty})
      : _weathers = weathers,
        _words = words,
        super._();

  factory _$LevelModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LevelModelImplFromJson(json);

  @override
  final LevelPlayersModel players;
  @override
  final LevelCharactersModel characters;
  @override
  @JsonKey()
  final TilesetType tilesetType;
  final List<WeatherModel> _weathers;
  @override
  @JsonKey()
  List<WeatherModel> get weathers {
    if (_weathers is EqualUnmodifiableListView) return _weathers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weathers);
  }

  @override
  @JsonKey()
  final WindModel wind;

  /// To get [CanvasDataModel] use [TemplateLevelModel.canvasData]
  /// comparing [LevelModel.canvasDataId] with [TemplateLevelModel.id]
  @override
  @JsonKey()
  final CanvasDataModelId canvasDataId;
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
  @override
  @JsonKey()
  final WorldDateTimeModel dateTime;
  @override
  @JsonKey()
  final WorldDateTimeModel lastDateTime;
  @override
  @JsonKey()
  final TechnologyTreeProgressModel technologyTreeProgress;
  @override
  @JsonKey()
  final LevelFeaturesSettingsModel featuresSettings;

  @override
  String toString() {
    return 'LevelModel(players: $players, characters: $characters, tilesetType: $tilesetType, weathers: $weathers, wind: $wind, canvasDataId: $canvasDataId, currentWord: $currentWord, words: $words, latestWord: $latestWord, phaseType: $phaseType, actionMultiplier: $actionMultiplier, dateTime: $dateTime, lastDateTime: $lastDateTime, technologyTreeProgress: $technologyTreeProgress, featuresSettings: $featuresSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LevelModelImpl &&
            (identical(other.players, players) || other.players == players) &&
            (identical(other.characters, characters) ||
                other.characters == characters) &&
            (identical(other.tilesetType, tilesetType) ||
                other.tilesetType == tilesetType) &&
            const DeepCollectionEquality().equals(other._weathers, _weathers) &&
            (identical(other.wind, wind) || other.wind == wind) &&
            (identical(other.canvasDataId, canvasDataId) ||
                other.canvasDataId == canvasDataId) &&
            (identical(other.currentWord, currentWord) ||
                other.currentWord == currentWord) &&
            const DeepCollectionEquality().equals(other._words, _words) &&
            (identical(other.latestWord, latestWord) ||
                other.latestWord == latestWord) &&
            (identical(other.phaseType, phaseType) ||
                other.phaseType == phaseType) &&
            (identical(other.actionMultiplier, actionMultiplier) ||
                other.actionMultiplier == actionMultiplier) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.lastDateTime, lastDateTime) ||
                other.lastDateTime == lastDateTime) &&
            (identical(other.technologyTreeProgress, technologyTreeProgress) ||
                other.technologyTreeProgress == technologyTreeProgress) &&
            (identical(other.featuresSettings, featuresSettings) ||
                other.featuresSettings == featuresSettings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      players,
      characters,
      tilesetType,
      const DeepCollectionEquality().hash(_weathers),
      wind,
      canvasDataId,
      currentWord,
      const DeepCollectionEquality().hash(_words),
      latestWord,
      phaseType,
      actionMultiplier,
      dateTime,
      lastDateTime,
      technologyTreeProgress,
      featuresSettings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LevelModelImplCopyWith<_$LevelModelImpl> get copyWith =>
      __$$LevelModelImplCopyWithImpl<_$LevelModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LevelModelImplToJson(
      this,
    );
  }
}

abstract class _LevelModel extends LevelModel {
  const factory _LevelModel(
      {required final LevelPlayersModel players,
      required final LevelCharactersModel characters,
      final TilesetType tilesetType,
      final List<WeatherModel> weathers,
      final WindModel wind,
      final CanvasDataModelId canvasDataId,
      final CurrentWordModel currentWord,
      final Map<String, String> words,
      final String latestWord,
      final GamePhaseType phaseType,
      final EnergyMultiplierType actionMultiplier,
      final WorldDateTimeModel dateTime,
      final WorldDateTimeModel lastDateTime,
      final TechnologyTreeProgressModel technologyTreeProgress,
      final LevelFeaturesSettingsModel featuresSettings}) = _$LevelModelImpl;
  const _LevelModel._() : super._();

  factory _LevelModel.fromJson(Map<String, dynamic> json) =
      _$LevelModelImpl.fromJson;

  @override
  LevelPlayersModel get players;
  @override
  LevelCharactersModel get characters;
  @override
  TilesetType get tilesetType;
  @override
  List<WeatherModel> get weathers;
  @override
  WindModel get wind;
  @override

  /// To get [CanvasDataModel] use [TemplateLevelModel.canvasData]
  /// comparing [LevelModel.canvasDataId] with [TemplateLevelModel.id]
  CanvasDataModelId get canvasDataId;
  @override
  CurrentWordModel get currentWord;
  @override
  Map<String, String> get words;
  @override
  String get latestWord;
  @override
  GamePhaseType get phaseType;
  @override
  EnergyMultiplierType get actionMultiplier;
  @override
  WorldDateTimeModel get dateTime;
  @override
  WorldDateTimeModel get lastDateTime;
  @override
  TechnologyTreeProgressModel get technologyTreeProgress;
  @override
  LevelFeaturesSettingsModel get featuresSettings;
  @override
  @JsonKey(ignore: true)
  _$$LevelModelImplCopyWith<_$LevelModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LevelFeaturesSettingsModel _$LevelFeaturesSettingsModelFromJson(
    Map<String, dynamic> json) {
  return _LevelFeaturesSettingsModel.fromJson(json);
}

/// @nodoc
mixin _$LevelFeaturesSettingsModel {
  bool get isTechnologiesEnabled => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LevelFeaturesSettingsModelCopyWith<LevelFeaturesSettingsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LevelFeaturesSettingsModelCopyWith<$Res> {
  factory $LevelFeaturesSettingsModelCopyWith(LevelFeaturesSettingsModel value,
          $Res Function(LevelFeaturesSettingsModel) then) =
      _$LevelFeaturesSettingsModelCopyWithImpl<$Res,
          LevelFeaturesSettingsModel>;
  @useResult
  $Res call({bool isTechnologiesEnabled});
}

/// @nodoc
class _$LevelFeaturesSettingsModelCopyWithImpl<$Res,
        $Val extends LevelFeaturesSettingsModel>
    implements $LevelFeaturesSettingsModelCopyWith<$Res> {
  _$LevelFeaturesSettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isTechnologiesEnabled = null,
  }) {
    return _then(_value.copyWith(
      isTechnologiesEnabled: null == isTechnologiesEnabled
          ? _value.isTechnologiesEnabled
          : isTechnologiesEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LevelFeaturesSettingsModelImplCopyWith<$Res>
    implements $LevelFeaturesSettingsModelCopyWith<$Res> {
  factory _$$LevelFeaturesSettingsModelImplCopyWith(
          _$LevelFeaturesSettingsModelImpl value,
          $Res Function(_$LevelFeaturesSettingsModelImpl) then) =
      __$$LevelFeaturesSettingsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isTechnologiesEnabled});
}

/// @nodoc
class __$$LevelFeaturesSettingsModelImplCopyWithImpl<$Res>
    extends _$LevelFeaturesSettingsModelCopyWithImpl<$Res,
        _$LevelFeaturesSettingsModelImpl>
    implements _$$LevelFeaturesSettingsModelImplCopyWith<$Res> {
  __$$LevelFeaturesSettingsModelImplCopyWithImpl(
      _$LevelFeaturesSettingsModelImpl _value,
      $Res Function(_$LevelFeaturesSettingsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isTechnologiesEnabled = null,
  }) {
    return _then(_$LevelFeaturesSettingsModelImpl(
      isTechnologiesEnabled: null == isTechnologiesEnabled
          ? _value.isTechnologiesEnabled
          : isTechnologiesEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LevelFeaturesSettingsModelImpl implements _LevelFeaturesSettingsModel {
  const _$LevelFeaturesSettingsModelImpl({this.isTechnologiesEnabled = false});

  factory _$LevelFeaturesSettingsModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$LevelFeaturesSettingsModelImplFromJson(json);

  @override
  @JsonKey()
  final bool isTechnologiesEnabled;

  @override
  String toString() {
    return 'LevelFeaturesSettingsModel(isTechnologiesEnabled: $isTechnologiesEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LevelFeaturesSettingsModelImpl &&
            (identical(other.isTechnologiesEnabled, isTechnologiesEnabled) ||
                other.isTechnologiesEnabled == isTechnologiesEnabled));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isTechnologiesEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LevelFeaturesSettingsModelImplCopyWith<_$LevelFeaturesSettingsModelImpl>
      get copyWith => __$$LevelFeaturesSettingsModelImplCopyWithImpl<
          _$LevelFeaturesSettingsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LevelFeaturesSettingsModelImplToJson(
      this,
    );
  }
}

abstract class _LevelFeaturesSettingsModel
    implements LevelFeaturesSettingsModel {
  const factory _LevelFeaturesSettingsModel(
      {final bool isTechnologiesEnabled}) = _$LevelFeaturesSettingsModelImpl;

  factory _LevelFeaturesSettingsModel.fromJson(Map<String, dynamic> json) =
      _$LevelFeaturesSettingsModelImpl.fromJson;

  @override
  bool get isTechnologiesEnabled;
  @override
  @JsonKey(ignore: true)
  _$$LevelFeaturesSettingsModelImplCopyWith<_$LevelFeaturesSettingsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LevelPlayersModel _$LevelPlayersModelFromJson(Map<String, dynamic> json) {
  return _LevelPlayersModel.fromJson(json);
}

/// @nodoc
mixin _$LevelPlayersModel {
  List<PlayerProfileModel> get players => throw _privateConstructorUsedError;
  String get currentPlayerId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LevelPlayersModelCopyWith<LevelPlayersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LevelPlayersModelCopyWith<$Res> {
  factory $LevelPlayersModelCopyWith(
          LevelPlayersModel value, $Res Function(LevelPlayersModel) then) =
      _$LevelPlayersModelCopyWithImpl<$Res, LevelPlayersModel>;
  @useResult
  $Res call({List<PlayerProfileModel> players, String currentPlayerId});
}

/// @nodoc
class _$LevelPlayersModelCopyWithImpl<$Res, $Val extends LevelPlayersModel>
    implements $LevelPlayersModelCopyWith<$Res> {
  _$LevelPlayersModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? players = null,
    Object? currentPlayerId = null,
  }) {
    return _then(_value.copyWith(
      players: null == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<PlayerProfileModel>,
      currentPlayerId: null == currentPlayerId
          ? _value.currentPlayerId
          : currentPlayerId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LevelPlayersModelImplCopyWith<$Res>
    implements $LevelPlayersModelCopyWith<$Res> {
  factory _$$LevelPlayersModelImplCopyWith(_$LevelPlayersModelImpl value,
          $Res Function(_$LevelPlayersModelImpl) then) =
      __$$LevelPlayersModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PlayerProfileModel> players, String currentPlayerId});
}

/// @nodoc
class __$$LevelPlayersModelImplCopyWithImpl<$Res>
    extends _$LevelPlayersModelCopyWithImpl<$Res, _$LevelPlayersModelImpl>
    implements _$$LevelPlayersModelImplCopyWith<$Res> {
  __$$LevelPlayersModelImplCopyWithImpl(_$LevelPlayersModelImpl _value,
      $Res Function(_$LevelPlayersModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? players = null,
    Object? currentPlayerId = null,
  }) {
    return _then(_$LevelPlayersModelImpl(
      players: null == players
          ? _value._players
          : players // ignore: cast_nullable_to_non_nullable
              as List<PlayerProfileModel>,
      currentPlayerId: null == currentPlayerId
          ? _value.currentPlayerId
          : currentPlayerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$LevelPlayersModelImpl extends _LevelPlayersModel {
  const _$LevelPlayersModelImpl(
      {required final List<PlayerProfileModel> players,
      required this.currentPlayerId})
      : _players = players,
        super._();

  factory _$LevelPlayersModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LevelPlayersModelImplFromJson(json);

  final List<PlayerProfileModel> _players;
  @override
  List<PlayerProfileModel> get players {
    if (_players is EqualUnmodifiableListView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_players);
  }

  @override
  final String currentPlayerId;

  @override
  String toString() {
    return 'LevelPlayersModel(players: $players, currentPlayerId: $currentPlayerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LevelPlayersModelImpl &&
            const DeepCollectionEquality().equals(other._players, _players) &&
            (identical(other.currentPlayerId, currentPlayerId) ||
                other.currentPlayerId == currentPlayerId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_players), currentPlayerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LevelPlayersModelImplCopyWith<_$LevelPlayersModelImpl> get copyWith =>
      __$$LevelPlayersModelImplCopyWithImpl<_$LevelPlayersModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LevelPlayersModelImplToJson(
      this,
    );
  }
}

abstract class _LevelPlayersModel extends LevelPlayersModel {
  const factory _LevelPlayersModel(
      {required final List<PlayerProfileModel> players,
      required final String currentPlayerId}) = _$LevelPlayersModelImpl;
  const _LevelPlayersModel._() : super._();

  factory _LevelPlayersModel.fromJson(Map<String, dynamic> json) =
      _$LevelPlayersModelImpl.fromJson;

  @override
  List<PlayerProfileModel> get players;
  @override
  String get currentPlayerId;
  @override
  @JsonKey(ignore: true)
  _$$LevelPlayersModelImplCopyWith<_$LevelPlayersModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocalDictionaryModel _$LocalDictionaryModelFromJson(Map<String, dynamic> json) {
  return _LocalDictionaryModel.fromJson(json);
}

/// @nodoc
mixin _$LocalDictionaryModel {
  Set<String> get words => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalDictionaryModelCopyWith<LocalDictionaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalDictionaryModelCopyWith<$Res> {
  factory $LocalDictionaryModelCopyWith(LocalDictionaryModel value,
          $Res Function(LocalDictionaryModel) then) =
      _$LocalDictionaryModelCopyWithImpl<$Res, LocalDictionaryModel>;
  @useResult
  $Res call({Set<String> words});
}

/// @nodoc
class _$LocalDictionaryModelCopyWithImpl<$Res,
        $Val extends LocalDictionaryModel>
    implements $LocalDictionaryModelCopyWith<$Res> {
  _$LocalDictionaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? words = null,
  }) {
    return _then(_value.copyWith(
      words: null == words
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalDictionaryModelImplCopyWith<$Res>
    implements $LocalDictionaryModelCopyWith<$Res> {
  factory _$$LocalDictionaryModelImplCopyWith(_$LocalDictionaryModelImpl value,
          $Res Function(_$LocalDictionaryModelImpl) then) =
      __$$LocalDictionaryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Set<String> words});
}

/// @nodoc
class __$$LocalDictionaryModelImplCopyWithImpl<$Res>
    extends _$LocalDictionaryModelCopyWithImpl<$Res, _$LocalDictionaryModelImpl>
    implements _$$LocalDictionaryModelImplCopyWith<$Res> {
  __$$LocalDictionaryModelImplCopyWithImpl(_$LocalDictionaryModelImpl _value,
      $Res Function(_$LocalDictionaryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? words = null,
  }) {
    return _then(_$LocalDictionaryModelImpl(
      words: null == words
          ? _value._words
          : words // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$LocalDictionaryModelImpl implements _LocalDictionaryModel {
  const _$LocalDictionaryModelImpl({final Set<String> words = const {}})
      : _words = words;

  factory _$LocalDictionaryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalDictionaryModelImplFromJson(json);

  final Set<String> _words;
  @override
  @JsonKey()
  Set<String> get words {
    if (_words is EqualUnmodifiableSetView) return _words;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_words);
  }

  @override
  String toString() {
    return 'LocalDictionaryModel(words: $words)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalDictionaryModelImpl &&
            const DeepCollectionEquality().equals(other._words, _words));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_words));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalDictionaryModelImplCopyWith<_$LocalDictionaryModelImpl>
      get copyWith =>
          __$$LocalDictionaryModelImplCopyWithImpl<_$LocalDictionaryModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalDictionaryModelImplToJson(
      this,
    );
  }
}

abstract class _LocalDictionaryModel implements LocalDictionaryModel {
  const factory _LocalDictionaryModel({final Set<String> words}) =
      _$LocalDictionaryModelImpl;

  factory _LocalDictionaryModel.fromJson(Map<String, dynamic> json) =
      _$LocalDictionaryModelImpl.fromJson;

  @override
  Set<String> get words;
  @override
  @JsonKey(ignore: true)
  _$$LocalDictionaryModelImplCopyWith<_$LocalDictionaryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PlayerCharacterModel _$PlayerCharacterModelFromJson(Map<String, dynamic> json) {
  return _PlayerCharacterModel.fromJson(json);
}

/// @nodoc
mixin _$PlayerCharacterModel {
  /// unique id which used to identify unqiue set of following params:
  /// [balloonPowers] [balloonParams] [color] [localizedName] etc
  Gid get id => throw _privateConstructorUsedError;

  /// is assigning during game start to pick required tileId's
  /// reference from the canvasCubit
  Gid get gid => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;
  LocalizedMap get localizedName => throw _privateConstructorUsedError;
  String get characterIcon => throw _privateConstructorUsedError;
  SerializedVector2 get distanceToOrigin => throw _privateConstructorUsedError;
  BalloonLiftPowersModel get balloonPowers =>
      throw _privateConstructorUsedError;
  BalloonLiftParamsModel get balloonParams =>
      throw _privateConstructorUsedError;

  /// If is true, then it means that the balloon is on the ground and
  /// cannot be moved.
  bool get isAnchored => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerCharacterModelCopyWith<PlayerCharacterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerCharacterModelCopyWith<$Res> {
  factory $PlayerCharacterModelCopyWith(PlayerCharacterModel value,
          $Res Function(PlayerCharacterModel) then) =
      _$PlayerCharacterModelCopyWithImpl<$Res, PlayerCharacterModel>;
  @useResult
  $Res call(
      {Gid id,
      Gid gid,
      String description,
      int color,
      LocalizedMap localizedName,
      String characterIcon,
      SerializedVector2 distanceToOrigin,
      BalloonLiftPowersModel balloonPowers,
      BalloonLiftParamsModel balloonParams,
      bool isAnchored});

  $GidCopyWith<$Res> get id;
  $GidCopyWith<$Res> get gid;
  $LocalizedMapCopyWith<$Res> get localizedName;
  $SerializedVector2CopyWith<$Res> get distanceToOrigin;
  $BalloonLiftPowersModelCopyWith<$Res> get balloonPowers;
  $BalloonLiftParamsModelCopyWith<$Res> get balloonParams;
}

/// @nodoc
class _$PlayerCharacterModelCopyWithImpl<$Res,
        $Val extends PlayerCharacterModel>
    implements $PlayerCharacterModelCopyWith<$Res> {
  _$PlayerCharacterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? gid = null,
    Object? description = null,
    Object? color = null,
    Object? localizedName = null,
    Object? characterIcon = null,
    Object? distanceToOrigin = null,
    Object? balloonPowers = null,
    Object? balloonParams = null,
    Object? isAnchored = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Gid,
      gid: null == gid
          ? _value.gid
          : gid // ignore: cast_nullable_to_non_nullable
              as Gid,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      localizedName: null == localizedName
          ? _value.localizedName
          : localizedName // ignore: cast_nullable_to_non_nullable
              as LocalizedMap,
      characterIcon: null == characterIcon
          ? _value.characterIcon
          : characterIcon // ignore: cast_nullable_to_non_nullable
              as String,
      distanceToOrigin: null == distanceToOrigin
          ? _value.distanceToOrigin
          : distanceToOrigin // ignore: cast_nullable_to_non_nullable
              as SerializedVector2,
      balloonPowers: null == balloonPowers
          ? _value.balloonPowers
          : balloonPowers // ignore: cast_nullable_to_non_nullable
              as BalloonLiftPowersModel,
      balloonParams: null == balloonParams
          ? _value.balloonParams
          : balloonParams // ignore: cast_nullable_to_non_nullable
              as BalloonLiftParamsModel,
      isAnchored: null == isAnchored
          ? _value.isAnchored
          : isAnchored // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GidCopyWith<$Res> get id {
    return $GidCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GidCopyWith<$Res> get gid {
    return $GidCopyWith<$Res>(_value.gid, (value) {
      return _then(_value.copyWith(gid: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocalizedMapCopyWith<$Res> get localizedName {
    return $LocalizedMapCopyWith<$Res>(_value.localizedName, (value) {
      return _then(_value.copyWith(localizedName: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SerializedVector2CopyWith<$Res> get distanceToOrigin {
    return $SerializedVector2CopyWith<$Res>(_value.distanceToOrigin, (value) {
      return _then(_value.copyWith(distanceToOrigin: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BalloonLiftPowersModelCopyWith<$Res> get balloonPowers {
    return $BalloonLiftPowersModelCopyWith<$Res>(_value.balloonPowers, (value) {
      return _then(_value.copyWith(balloonPowers: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BalloonLiftParamsModelCopyWith<$Res> get balloonParams {
    return $BalloonLiftParamsModelCopyWith<$Res>(_value.balloonParams, (value) {
      return _then(_value.copyWith(balloonParams: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlayerCharacterModelImplCopyWith<$Res>
    implements $PlayerCharacterModelCopyWith<$Res> {
  factory _$$PlayerCharacterModelImplCopyWith(_$PlayerCharacterModelImpl value,
          $Res Function(_$PlayerCharacterModelImpl) then) =
      __$$PlayerCharacterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Gid id,
      Gid gid,
      String description,
      int color,
      LocalizedMap localizedName,
      String characterIcon,
      SerializedVector2 distanceToOrigin,
      BalloonLiftPowersModel balloonPowers,
      BalloonLiftParamsModel balloonParams,
      bool isAnchored});

  @override
  $GidCopyWith<$Res> get id;
  @override
  $GidCopyWith<$Res> get gid;
  @override
  $LocalizedMapCopyWith<$Res> get localizedName;
  @override
  $SerializedVector2CopyWith<$Res> get distanceToOrigin;
  @override
  $BalloonLiftPowersModelCopyWith<$Res> get balloonPowers;
  @override
  $BalloonLiftParamsModelCopyWith<$Res> get balloonParams;
}

/// @nodoc
class __$$PlayerCharacterModelImplCopyWithImpl<$Res>
    extends _$PlayerCharacterModelCopyWithImpl<$Res, _$PlayerCharacterModelImpl>
    implements _$$PlayerCharacterModelImplCopyWith<$Res> {
  __$$PlayerCharacterModelImplCopyWithImpl(_$PlayerCharacterModelImpl _value,
      $Res Function(_$PlayerCharacterModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? gid = null,
    Object? description = null,
    Object? color = null,
    Object? localizedName = null,
    Object? characterIcon = null,
    Object? distanceToOrigin = null,
    Object? balloonPowers = null,
    Object? balloonParams = null,
    Object? isAnchored = null,
  }) {
    return _then(_$PlayerCharacterModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Gid,
      gid: null == gid
          ? _value.gid
          : gid // ignore: cast_nullable_to_non_nullable
              as Gid,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      localizedName: null == localizedName
          ? _value.localizedName
          : localizedName // ignore: cast_nullable_to_non_nullable
              as LocalizedMap,
      characterIcon: null == characterIcon
          ? _value.characterIcon
          : characterIcon // ignore: cast_nullable_to_non_nullable
              as String,
      distanceToOrigin: null == distanceToOrigin
          ? _value.distanceToOrigin
          : distanceToOrigin // ignore: cast_nullable_to_non_nullable
              as SerializedVector2,
      balloonPowers: null == balloonPowers
          ? _value.balloonPowers
          : balloonPowers // ignore: cast_nullable_to_non_nullable
              as BalloonLiftPowersModel,
      balloonParams: null == balloonParams
          ? _value.balloonParams
          : balloonParams // ignore: cast_nullable_to_non_nullable
              as BalloonLiftParamsModel,
      isAnchored: null == isAnchored
          ? _value.isAnchored
          : isAnchored // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PlayerCharacterModelImpl extends _PlayerCharacterModel {
  const _$PlayerCharacterModelImpl(
      {this.id = Gid.empty,
      this.gid = Gid.empty,
      this.description = '',
      this.color = 0,
      this.localizedName = LocalizedMap.empty,
      this.characterIcon = '',
      this.distanceToOrigin = SerializedVector2.zero,
      this.balloonPowers = BalloonLiftPowersModel.initial,
      this.balloonParams = BalloonLiftParamsModel.initial,
      this.isAnchored = true})
      : super._();

  factory _$PlayerCharacterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerCharacterModelImplFromJson(json);

  /// unique id which used to identify unqiue set of following params:
  /// [balloonPowers] [balloonParams] [color] [localizedName] etc
  @override
  @JsonKey()
  final Gid id;

  /// is assigning during game start to pick required tileId's
  /// reference from the canvasCubit
  @override
  @JsonKey()
  final Gid gid;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final int color;
  @override
  @JsonKey()
  final LocalizedMap localizedName;
  @override
  @JsonKey()
  final String characterIcon;
  @override
  @JsonKey()
  final SerializedVector2 distanceToOrigin;
  @override
  @JsonKey()
  final BalloonLiftPowersModel balloonPowers;
  @override
  @JsonKey()
  final BalloonLiftParamsModel balloonParams;

  /// If is true, then it means that the balloon is on the ground and
  /// cannot be moved.
  @override
  @JsonKey()
  final bool isAnchored;

  @override
  String toString() {
    return 'PlayerCharacterModel(id: $id, gid: $gid, description: $description, color: $color, localizedName: $localizedName, characterIcon: $characterIcon, distanceToOrigin: $distanceToOrigin, balloonPowers: $balloonPowers, balloonParams: $balloonParams, isAnchored: $isAnchored)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerCharacterModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.gid, gid) || other.gid == gid) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.localizedName, localizedName) ||
                other.localizedName == localizedName) &&
            (identical(other.characterIcon, characterIcon) ||
                other.characterIcon == characterIcon) &&
            (identical(other.distanceToOrigin, distanceToOrigin) ||
                other.distanceToOrigin == distanceToOrigin) &&
            (identical(other.balloonPowers, balloonPowers) ||
                other.balloonPowers == balloonPowers) &&
            (identical(other.balloonParams, balloonParams) ||
                other.balloonParams == balloonParams) &&
            (identical(other.isAnchored, isAnchored) ||
                other.isAnchored == isAnchored));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      gid,
      description,
      color,
      localizedName,
      characterIcon,
      distanceToOrigin,
      balloonPowers,
      balloonParams,
      isAnchored);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerCharacterModelImplCopyWith<_$PlayerCharacterModelImpl>
      get copyWith =>
          __$$PlayerCharacterModelImplCopyWithImpl<_$PlayerCharacterModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerCharacterModelImplToJson(
      this,
    );
  }
}

abstract class _PlayerCharacterModel extends PlayerCharacterModel {
  const factory _PlayerCharacterModel(
      {final Gid id,
      final Gid gid,
      final String description,
      final int color,
      final LocalizedMap localizedName,
      final String characterIcon,
      final SerializedVector2 distanceToOrigin,
      final BalloonLiftPowersModel balloonPowers,
      final BalloonLiftParamsModel balloonParams,
      final bool isAnchored}) = _$PlayerCharacterModelImpl;
  const _PlayerCharacterModel._() : super._();

  factory _PlayerCharacterModel.fromJson(Map<String, dynamic> json) =
      _$PlayerCharacterModelImpl.fromJson;

  @override

  /// unique id which used to identify unqiue set of following params:
  /// [balloonPowers] [balloonParams] [color] [localizedName] etc
  Gid get id;
  @override

  /// is assigning during game start to pick required tileId's
  /// reference from the canvasCubit
  Gid get gid;
  @override
  String get description;
  @override
  int get color;
  @override
  LocalizedMap get localizedName;
  @override
  String get characterIcon;
  @override
  SerializedVector2 get distanceToOrigin;
  @override
  BalloonLiftPowersModel get balloonPowers;
  @override
  BalloonLiftParamsModel get balloonParams;
  @override

  /// If is true, then it means that the balloon is on the ground and
  /// cannot be moved.
  bool get isAnchored;
  @override
  @JsonKey(ignore: true)
  _$$PlayerCharacterModelImplCopyWith<_$PlayerCharacterModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SerializedVector2 _$SerializedVector2FromJson(Map<String, dynamic> json) {
  return _SerializedVector2.fromJson(json);
}

/// @nodoc
mixin _$SerializedVector2 {
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SerializedVector2CopyWith<SerializedVector2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SerializedVector2CopyWith<$Res> {
  factory $SerializedVector2CopyWith(
          SerializedVector2 value, $Res Function(SerializedVector2) then) =
      _$SerializedVector2CopyWithImpl<$Res, SerializedVector2>;
  @useResult
  $Res call({double x, double y});
}

/// @nodoc
class _$SerializedVector2CopyWithImpl<$Res, $Val extends SerializedVector2>
    implements $SerializedVector2CopyWith<$Res> {
  _$SerializedVector2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_value.copyWith(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SerializedVector2ImplCopyWith<$Res>
    implements $SerializedVector2CopyWith<$Res> {
  factory _$$SerializedVector2ImplCopyWith(_$SerializedVector2Impl value,
          $Res Function(_$SerializedVector2Impl) then) =
      __$$SerializedVector2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double x, double y});
}

/// @nodoc
class __$$SerializedVector2ImplCopyWithImpl<$Res>
    extends _$SerializedVector2CopyWithImpl<$Res, _$SerializedVector2Impl>
    implements _$$SerializedVector2ImplCopyWith<$Res> {
  __$$SerializedVector2ImplCopyWithImpl(_$SerializedVector2Impl _value,
      $Res Function(_$SerializedVector2Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$SerializedVector2Impl(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SerializedVector2Impl extends _SerializedVector2 {
  const _$SerializedVector2Impl({this.x = 0, this.y = 0}) : super._();

  factory _$SerializedVector2Impl.fromJson(Map<String, dynamic> json) =>
      _$$SerializedVector2ImplFromJson(json);

  @override
  @JsonKey()
  final double x;
  @override
  @JsonKey()
  final double y;

  @override
  String toString() {
    return 'SerializedVector2(x: $x, y: $y)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SerializedVector2Impl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, x, y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SerializedVector2ImplCopyWith<_$SerializedVector2Impl> get copyWith =>
      __$$SerializedVector2ImplCopyWithImpl<_$SerializedVector2Impl>(
          this, _$identity);
}

abstract class _SerializedVector2 extends SerializedVector2 {
  const factory _SerializedVector2({final double x, final double y}) =
      _$SerializedVector2Impl;
  const _SerializedVector2._() : super._();

  factory _SerializedVector2.fromJson(Map<String, dynamic> json) =
      _$SerializedVector2Impl.fromJson;

  @override
  double get x;
  @override
  double get y;
  @override
  @JsonKey(ignore: true)
  _$$SerializedVector2ImplCopyWith<_$SerializedVector2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlayerProfileModel _$PlayerProfileModelFromJson(Map<String, dynamic> json) {
  return _PlayerProfileModel.fromJson(json);
}

/// @nodoc
mixin _$PlayerProfileModel {
  String get id => throw _privateConstructorUsedError;
  int get colorValue => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: PlayerProfileModel._highscoreFromJson,
      toJson: PlayerProfileModel._highscoreToJson)
  Map<CanvasDataModelId, PlayerLevelHighscoreModel> get levelsHighscores =>
      throw _privateConstructorUsedError;
  PlayerHighscoreModel get highscore => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerProfileModelCopyWith<PlayerProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerProfileModelCopyWith<$Res> {
  factory $PlayerProfileModelCopyWith(
          PlayerProfileModel value, $Res Function(PlayerProfileModel) then) =
      _$PlayerProfileModelCopyWithImpl<$Res, PlayerProfileModel>;
  @useResult
  $Res call(
      {String id,
      int colorValue,
      String name,
      @JsonKey(
          fromJson: PlayerProfileModel._highscoreFromJson,
          toJson: PlayerProfileModel._highscoreToJson)
      Map<CanvasDataModelId, PlayerLevelHighscoreModel> levelsHighscores,
      PlayerHighscoreModel highscore});

  $PlayerHighscoreModelCopyWith<$Res> get highscore;
}

/// @nodoc
class _$PlayerProfileModelCopyWithImpl<$Res, $Val extends PlayerProfileModel>
    implements $PlayerProfileModelCopyWith<$Res> {
  _$PlayerProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? colorValue = null,
    Object? name = null,
    Object? levelsHighscores = null,
    Object? highscore = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      colorValue: null == colorValue
          ? _value.colorValue
          : colorValue // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      levelsHighscores: null == levelsHighscores
          ? _value.levelsHighscores
          : levelsHighscores // ignore: cast_nullable_to_non_nullable
              as Map<CanvasDataModelId, PlayerLevelHighscoreModel>,
      highscore: null == highscore
          ? _value.highscore
          : highscore // ignore: cast_nullable_to_non_nullable
              as PlayerHighscoreModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlayerHighscoreModelCopyWith<$Res> get highscore {
    return $PlayerHighscoreModelCopyWith<$Res>(_value.highscore, (value) {
      return _then(_value.copyWith(highscore: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlayerProfileModelImplCopyWith<$Res>
    implements $PlayerProfileModelCopyWith<$Res> {
  factory _$$PlayerProfileModelImplCopyWith(_$PlayerProfileModelImpl value,
          $Res Function(_$PlayerProfileModelImpl) then) =
      __$$PlayerProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int colorValue,
      String name,
      @JsonKey(
          fromJson: PlayerProfileModel._highscoreFromJson,
          toJson: PlayerProfileModel._highscoreToJson)
      Map<CanvasDataModelId, PlayerLevelHighscoreModel> levelsHighscores,
      PlayerHighscoreModel highscore});

  @override
  $PlayerHighscoreModelCopyWith<$Res> get highscore;
}

/// @nodoc
class __$$PlayerProfileModelImplCopyWithImpl<$Res>
    extends _$PlayerProfileModelCopyWithImpl<$Res, _$PlayerProfileModelImpl>
    implements _$$PlayerProfileModelImplCopyWith<$Res> {
  __$$PlayerProfileModelImplCopyWithImpl(_$PlayerProfileModelImpl _value,
      $Res Function(_$PlayerProfileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? colorValue = null,
    Object? name = null,
    Object? levelsHighscores = null,
    Object? highscore = null,
  }) {
    return _then(_$PlayerProfileModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      colorValue: null == colorValue
          ? _value.colorValue
          : colorValue // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      levelsHighscores: null == levelsHighscores
          ? _value._levelsHighscores
          : levelsHighscores // ignore: cast_nullable_to_non_nullable
              as Map<CanvasDataModelId, PlayerLevelHighscoreModel>,
      highscore: null == highscore
          ? _value.highscore
          : highscore // ignore: cast_nullable_to_non_nullable
              as PlayerHighscoreModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PlayerProfileModelImpl extends _PlayerProfileModel {
  const _$PlayerProfileModelImpl(
      {required this.id,
      required this.colorValue,
      required this.name,
      @JsonKey(
          fromJson: PlayerProfileModel._highscoreFromJson,
          toJson: PlayerProfileModel._highscoreToJson)
      final Map<CanvasDataModelId, PlayerLevelHighscoreModel> levelsHighscores =
          const {},
      this.highscore = PlayerHighscoreModel.empty})
      : _levelsHighscores = levelsHighscores,
        super._();

  factory _$PlayerProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerProfileModelImplFromJson(json);

  @override
  final String id;
  @override
  final int colorValue;
  @override
  final String name;
  final Map<CanvasDataModelId, PlayerLevelHighscoreModel> _levelsHighscores;
  @override
  @JsonKey(
      fromJson: PlayerProfileModel._highscoreFromJson,
      toJson: PlayerProfileModel._highscoreToJson)
  Map<CanvasDataModelId, PlayerLevelHighscoreModel> get levelsHighscores {
    if (_levelsHighscores is EqualUnmodifiableMapView) return _levelsHighscores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_levelsHighscores);
  }

  @override
  @JsonKey()
  final PlayerHighscoreModel highscore;

  @override
  String toString() {
    return 'PlayerProfileModel(id: $id, colorValue: $colorValue, name: $name, levelsHighscores: $levelsHighscores, highscore: $highscore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerProfileModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.colorValue, colorValue) ||
                other.colorValue == colorValue) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._levelsHighscores, _levelsHighscores) &&
            (identical(other.highscore, highscore) ||
                other.highscore == highscore));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, colorValue, name,
      const DeepCollectionEquality().hash(_levelsHighscores), highscore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerProfileModelImplCopyWith<_$PlayerProfileModelImpl> get copyWith =>
      __$$PlayerProfileModelImplCopyWithImpl<_$PlayerProfileModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerProfileModelImplToJson(
      this,
    );
  }
}

abstract class _PlayerProfileModel extends PlayerProfileModel {
  const factory _PlayerProfileModel(
      {required final String id,
      required final int colorValue,
      required final String name,
      @JsonKey(
          fromJson: PlayerProfileModel._highscoreFromJson,
          toJson: PlayerProfileModel._highscoreToJson)
      final Map<CanvasDataModelId, PlayerLevelHighscoreModel> levelsHighscores,
      final PlayerHighscoreModel highscore}) = _$PlayerProfileModelImpl;
  const _PlayerProfileModel._() : super._();

  factory _PlayerProfileModel.fromJson(Map<String, dynamic> json) =
      _$PlayerProfileModelImpl.fromJson;

  @override
  String get id;
  @override
  int get colorValue;
  @override
  String get name;
  @override
  @JsonKey(
      fromJson: PlayerProfileModel._highscoreFromJson,
      toJson: PlayerProfileModel._highscoreToJson)
  Map<CanvasDataModelId, PlayerLevelHighscoreModel> get levelsHighscores;
  @override
  PlayerHighscoreModel get highscore;
  @override
  @JsonKey(ignore: true)
  _$$PlayerProfileModelImplCopyWith<_$PlayerProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlayerHighscoreModel _$PlayerHighscoreModelFromJson(Map<String, dynamic> json) {
  return _PlayerHighscoreModel.fromJson(json);
}

/// @nodoc
mixin _$PlayerHighscoreModel {
  int get maxWordsCount => throw _privateConstructorUsedError;
  int get maxLettersCount => throw _privateConstructorUsedError;
  int get totalWordsCount => throw _privateConstructorUsedError;
  int get totalLettersCount => throw _privateConstructorUsedError;
  ScoreModel get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerHighscoreModelCopyWith<PlayerHighscoreModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerHighscoreModelCopyWith<$Res> {
  factory $PlayerHighscoreModelCopyWith(PlayerHighscoreModel value,
          $Res Function(PlayerHighscoreModel) then) =
      _$PlayerHighscoreModelCopyWithImpl<$Res, PlayerHighscoreModel>;
  @useResult
  $Res call(
      {int maxWordsCount,
      int maxLettersCount,
      int totalWordsCount,
      int totalLettersCount,
      ScoreModel score});

  $ScoreModelCopyWith<$Res> get score;
}

/// @nodoc
class _$PlayerHighscoreModelCopyWithImpl<$Res,
        $Val extends PlayerHighscoreModel>
    implements $PlayerHighscoreModelCopyWith<$Res> {
  _$PlayerHighscoreModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxWordsCount = null,
    Object? maxLettersCount = null,
    Object? totalWordsCount = null,
    Object? totalLettersCount = null,
    Object? score = null,
  }) {
    return _then(_value.copyWith(
      maxWordsCount: null == maxWordsCount
          ? _value.maxWordsCount
          : maxWordsCount // ignore: cast_nullable_to_non_nullable
              as int,
      maxLettersCount: null == maxLettersCount
          ? _value.maxLettersCount
          : maxLettersCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalWordsCount: null == totalWordsCount
          ? _value.totalWordsCount
          : totalWordsCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalLettersCount: null == totalLettersCount
          ? _value.totalLettersCount
          : totalLettersCount // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as ScoreModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ScoreModelCopyWith<$Res> get score {
    return $ScoreModelCopyWith<$Res>(_value.score, (value) {
      return _then(_value.copyWith(score: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlayerHighscoreModelImplCopyWith<$Res>
    implements $PlayerHighscoreModelCopyWith<$Res> {
  factory _$$PlayerHighscoreModelImplCopyWith(_$PlayerHighscoreModelImpl value,
          $Res Function(_$PlayerHighscoreModelImpl) then) =
      __$$PlayerHighscoreModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int maxWordsCount,
      int maxLettersCount,
      int totalWordsCount,
      int totalLettersCount,
      ScoreModel score});

  @override
  $ScoreModelCopyWith<$Res> get score;
}

/// @nodoc
class __$$PlayerHighscoreModelImplCopyWithImpl<$Res>
    extends _$PlayerHighscoreModelCopyWithImpl<$Res, _$PlayerHighscoreModelImpl>
    implements _$$PlayerHighscoreModelImplCopyWith<$Res> {
  __$$PlayerHighscoreModelImplCopyWithImpl(_$PlayerHighscoreModelImpl _value,
      $Res Function(_$PlayerHighscoreModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxWordsCount = null,
    Object? maxLettersCount = null,
    Object? totalWordsCount = null,
    Object? totalLettersCount = null,
    Object? score = null,
  }) {
    return _then(_$PlayerHighscoreModelImpl(
      maxWordsCount: null == maxWordsCount
          ? _value.maxWordsCount
          : maxWordsCount // ignore: cast_nullable_to_non_nullable
              as int,
      maxLettersCount: null == maxLettersCount
          ? _value.maxLettersCount
          : maxLettersCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalWordsCount: null == totalWordsCount
          ? _value.totalWordsCount
          : totalWordsCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalLettersCount: null == totalLettersCount
          ? _value.totalLettersCount
          : totalLettersCount // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as ScoreModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PlayerHighscoreModelImpl extends _PlayerHighscoreModel {
  const _$PlayerHighscoreModelImpl(
      {this.maxWordsCount = 0,
      this.maxLettersCount = 0,
      this.totalWordsCount = 0,
      this.totalLettersCount = 0,
      this.score = ScoreModel.zero})
      : super._();

  factory _$PlayerHighscoreModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerHighscoreModelImplFromJson(json);

  @override
  @JsonKey()
  final int maxWordsCount;
  @override
  @JsonKey()
  final int maxLettersCount;
  @override
  @JsonKey()
  final int totalWordsCount;
  @override
  @JsonKey()
  final int totalLettersCount;
  @override
  @JsonKey()
  final ScoreModel score;

  @override
  String toString() {
    return 'PlayerHighscoreModel(maxWordsCount: $maxWordsCount, maxLettersCount: $maxLettersCount, totalWordsCount: $totalWordsCount, totalLettersCount: $totalLettersCount, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerHighscoreModelImpl &&
            (identical(other.maxWordsCount, maxWordsCount) ||
                other.maxWordsCount == maxWordsCount) &&
            (identical(other.maxLettersCount, maxLettersCount) ||
                other.maxLettersCount == maxLettersCount) &&
            (identical(other.totalWordsCount, totalWordsCount) ||
                other.totalWordsCount == totalWordsCount) &&
            (identical(other.totalLettersCount, totalLettersCount) ||
                other.totalLettersCount == totalLettersCount) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, maxWordsCount, maxLettersCount,
      totalWordsCount, totalLettersCount, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerHighscoreModelImplCopyWith<_$PlayerHighscoreModelImpl>
      get copyWith =>
          __$$PlayerHighscoreModelImplCopyWithImpl<_$PlayerHighscoreModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerHighscoreModelImplToJson(
      this,
    );
  }
}

abstract class _PlayerHighscoreModel extends PlayerHighscoreModel {
  const factory _PlayerHighscoreModel(
      {final int maxWordsCount,
      final int maxLettersCount,
      final int totalWordsCount,
      final int totalLettersCount,
      final ScoreModel score}) = _$PlayerHighscoreModelImpl;
  const _PlayerHighscoreModel._() : super._();

  factory _PlayerHighscoreModel.fromJson(Map<String, dynamic> json) =
      _$PlayerHighscoreModelImpl.fromJson;

  @override
  int get maxWordsCount;
  @override
  int get maxLettersCount;
  @override
  int get totalWordsCount;
  @override
  int get totalLettersCount;
  @override
  ScoreModel get score;
  @override
  @JsonKey(ignore: true)
  _$$PlayerHighscoreModelImplCopyWith<_$PlayerHighscoreModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PlayerLevelHighscoreModel _$PlayerLevelHighscoreModelFromJson(
    Map<String, dynamic> json) {
  return _PlayerLevelHighscoreModel.fromJson(json);
}

/// @nodoc
mixin _$PlayerLevelHighscoreModel {
  CanvasDataModelId get levelId => throw _privateConstructorUsedError;
  double get maxDistance => throw _privateConstructorUsedError;
  double get totalDistance => throw _privateConstructorUsedError;
  double get landingsCount => throw _privateConstructorUsedError;
  double get flightTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerLevelHighscoreModelCopyWith<PlayerLevelHighscoreModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerLevelHighscoreModelCopyWith<$Res> {
  factory $PlayerLevelHighscoreModelCopyWith(PlayerLevelHighscoreModel value,
          $Res Function(PlayerLevelHighscoreModel) then) =
      _$PlayerLevelHighscoreModelCopyWithImpl<$Res, PlayerLevelHighscoreModel>;
  @useResult
  $Res call(
      {CanvasDataModelId levelId,
      double maxDistance,
      double totalDistance,
      double landingsCount,
      double flightTime});

  $CanvasDataModelIdCopyWith<$Res> get levelId;
}

/// @nodoc
class _$PlayerLevelHighscoreModelCopyWithImpl<$Res,
        $Val extends PlayerLevelHighscoreModel>
    implements $PlayerLevelHighscoreModelCopyWith<$Res> {
  _$PlayerLevelHighscoreModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? levelId = null,
    Object? maxDistance = null,
    Object? totalDistance = null,
    Object? landingsCount = null,
    Object? flightTime = null,
  }) {
    return _then(_value.copyWith(
      levelId: null == levelId
          ? _value.levelId
          : levelId // ignore: cast_nullable_to_non_nullable
              as CanvasDataModelId,
      maxDistance: null == maxDistance
          ? _value.maxDistance
          : maxDistance // ignore: cast_nullable_to_non_nullable
              as double,
      totalDistance: null == totalDistance
          ? _value.totalDistance
          : totalDistance // ignore: cast_nullable_to_non_nullable
              as double,
      landingsCount: null == landingsCount
          ? _value.landingsCount
          : landingsCount // ignore: cast_nullable_to_non_nullable
              as double,
      flightTime: null == flightTime
          ? _value.flightTime
          : flightTime // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CanvasDataModelIdCopyWith<$Res> get levelId {
    return $CanvasDataModelIdCopyWith<$Res>(_value.levelId, (value) {
      return _then(_value.copyWith(levelId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlayerLevelHighscoreModelImplCopyWith<$Res>
    implements $PlayerLevelHighscoreModelCopyWith<$Res> {
  factory _$$PlayerLevelHighscoreModelImplCopyWith(
          _$PlayerLevelHighscoreModelImpl value,
          $Res Function(_$PlayerLevelHighscoreModelImpl) then) =
      __$$PlayerLevelHighscoreModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CanvasDataModelId levelId,
      double maxDistance,
      double totalDistance,
      double landingsCount,
      double flightTime});

  @override
  $CanvasDataModelIdCopyWith<$Res> get levelId;
}

/// @nodoc
class __$$PlayerLevelHighscoreModelImplCopyWithImpl<$Res>
    extends _$PlayerLevelHighscoreModelCopyWithImpl<$Res,
        _$PlayerLevelHighscoreModelImpl>
    implements _$$PlayerLevelHighscoreModelImplCopyWith<$Res> {
  __$$PlayerLevelHighscoreModelImplCopyWithImpl(
      _$PlayerLevelHighscoreModelImpl _value,
      $Res Function(_$PlayerLevelHighscoreModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? levelId = null,
    Object? maxDistance = null,
    Object? totalDistance = null,
    Object? landingsCount = null,
    Object? flightTime = null,
  }) {
    return _then(_$PlayerLevelHighscoreModelImpl(
      levelId: null == levelId
          ? _value.levelId
          : levelId // ignore: cast_nullable_to_non_nullable
              as CanvasDataModelId,
      maxDistance: null == maxDistance
          ? _value.maxDistance
          : maxDistance // ignore: cast_nullable_to_non_nullable
              as double,
      totalDistance: null == totalDistance
          ? _value.totalDistance
          : totalDistance // ignore: cast_nullable_to_non_nullable
              as double,
      landingsCount: null == landingsCount
          ? _value.landingsCount
          : landingsCount // ignore: cast_nullable_to_non_nullable
              as double,
      flightTime: null == flightTime
          ? _value.flightTime
          : flightTime // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PlayerLevelHighscoreModelImpl extends _PlayerLevelHighscoreModel {
  const _$PlayerLevelHighscoreModelImpl(
      {required this.levelId,
      this.maxDistance = 0,
      this.totalDistance = 0,
      this.landingsCount = 0,
      this.flightTime = 0})
      : super._();

  factory _$PlayerLevelHighscoreModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerLevelHighscoreModelImplFromJson(json);

  @override
  final CanvasDataModelId levelId;
  @override
  @JsonKey()
  final double maxDistance;
  @override
  @JsonKey()
  final double totalDistance;
  @override
  @JsonKey()
  final double landingsCount;
  @override
  @JsonKey()
  final double flightTime;

  @override
  String toString() {
    return 'PlayerLevelHighscoreModel(levelId: $levelId, maxDistance: $maxDistance, totalDistance: $totalDistance, landingsCount: $landingsCount, flightTime: $flightTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerLevelHighscoreModelImpl &&
            (identical(other.levelId, levelId) || other.levelId == levelId) &&
            (identical(other.maxDistance, maxDistance) ||
                other.maxDistance == maxDistance) &&
            (identical(other.totalDistance, totalDistance) ||
                other.totalDistance == totalDistance) &&
            (identical(other.landingsCount, landingsCount) ||
                other.landingsCount == landingsCount) &&
            (identical(other.flightTime, flightTime) ||
                other.flightTime == flightTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, levelId, maxDistance,
      totalDistance, landingsCount, flightTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerLevelHighscoreModelImplCopyWith<_$PlayerLevelHighscoreModelImpl>
      get copyWith => __$$PlayerLevelHighscoreModelImplCopyWithImpl<
          _$PlayerLevelHighscoreModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerLevelHighscoreModelImplToJson(
      this,
    );
  }
}

abstract class _PlayerLevelHighscoreModel extends PlayerLevelHighscoreModel {
  const factory _PlayerLevelHighscoreModel(
      {required final CanvasDataModelId levelId,
      final double maxDistance,
      final double totalDistance,
      final double landingsCount,
      final double flightTime}) = _$PlayerLevelHighscoreModelImpl;
  const _PlayerLevelHighscoreModel._() : super._();

  factory _PlayerLevelHighscoreModel.fromJson(Map<String, dynamic> json) =
      _$PlayerLevelHighscoreModelImpl.fromJson;

  @override
  CanvasDataModelId get levelId;
  @override
  double get maxDistance;
  @override
  double get totalDistance;
  @override
  double get landingsCount;
  @override
  double get flightTime;
  @override
  @JsonKey(ignore: true)
  _$$PlayerLevelHighscoreModelImplCopyWith<_$PlayerLevelHighscoreModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ScoreModel _$ScoreModelFromJson(Map<String, dynamic> json) {
  return _ScoreModel.fromJson(json);
}

/// @nodoc
mixin _$ScoreModel {
  double get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScoreModelCopyWith<ScoreModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreModelCopyWith<$Res> {
  factory $ScoreModelCopyWith(
          ScoreModel value, $Res Function(ScoreModel) then) =
      _$ScoreModelCopyWithImpl<$Res, ScoreModel>;
  @useResult
  $Res call({double value});
}

/// @nodoc
class _$ScoreModelCopyWithImpl<$Res, $Val extends ScoreModel>
    implements $ScoreModelCopyWith<$Res> {
  _$ScoreModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScoreModelImplCopyWith<$Res>
    implements $ScoreModelCopyWith<$Res> {
  factory _$$ScoreModelImplCopyWith(
          _$ScoreModelImpl value, $Res Function(_$ScoreModelImpl) then) =
      __$$ScoreModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value});
}

/// @nodoc
class __$$ScoreModelImplCopyWithImpl<$Res>
    extends _$ScoreModelCopyWithImpl<$Res, _$ScoreModelImpl>
    implements _$$ScoreModelImplCopyWith<$Res> {
  __$$ScoreModelImplCopyWithImpl(
      _$ScoreModelImpl _value, $Res Function(_$ScoreModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ScoreModelImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScoreModelImpl extends _ScoreModel {
  const _$ScoreModelImpl({required this.value}) : super._();

  factory _$ScoreModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScoreModelImplFromJson(json);

  @override
  final double value;

  @override
  String toString() {
    return 'ScoreModel(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoreModelImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScoreModelImplCopyWith<_$ScoreModelImpl> get copyWith =>
      __$$ScoreModelImplCopyWithImpl<_$ScoreModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScoreModelImplToJson(
      this,
    );
  }
}

abstract class _ScoreModel extends ScoreModel {
  const factory _ScoreModel({required final double value}) = _$ScoreModelImpl;
  const _ScoreModel._() : super._();

  factory _ScoreModel.fromJson(Map<String, dynamic> json) =
      _$ScoreModelImpl.fromJson;

  @override
  double get value;
  @override
  @JsonKey(ignore: true)
  _$$ScoreModelImplCopyWith<_$ScoreModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TechnologyTreeProgressModel _$TechnologyTreeProgressModelFromJson(
    Map<String, dynamic> json) {
  return _TechnologyTreeProgressModel.fromJson(json);
}

/// @nodoc
mixin _$TechnologyTreeProgressModel {
  @JsonKey(
      fromJson: TechnologyTreeProgressModel._technologiesFromJson,
      toJson: TechnologyTreeProgressModel._technologiesToJson)
  Map<TechnologyModelId, TechnologyProgressModel> get technologies =>
      throw _privateConstructorUsedError;
  TechnologyModelId? get researchingTechnologyId =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TechnologyTreeProgressModelCopyWith<TechnologyTreeProgressModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TechnologyTreeProgressModelCopyWith<$Res> {
  factory $TechnologyTreeProgressModelCopyWith(
          TechnologyTreeProgressModel value,
          $Res Function(TechnologyTreeProgressModel) then) =
      _$TechnologyTreeProgressModelCopyWithImpl<$Res,
          TechnologyTreeProgressModel>;
  @useResult
  $Res call(
      {@JsonKey(
          fromJson: TechnologyTreeProgressModel._technologiesFromJson,
          toJson: TechnologyTreeProgressModel._technologiesToJson)
      Map<TechnologyModelId, TechnologyProgressModel> technologies,
      TechnologyModelId? researchingTechnologyId});
}

/// @nodoc
class _$TechnologyTreeProgressModelCopyWithImpl<$Res,
        $Val extends TechnologyTreeProgressModel>
    implements $TechnologyTreeProgressModelCopyWith<$Res> {
  _$TechnologyTreeProgressModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? technologies = null,
    Object? researchingTechnologyId = freezed,
  }) {
    return _then(_value.copyWith(
      technologies: null == technologies
          ? _value.technologies
          : technologies // ignore: cast_nullable_to_non_nullable
              as Map<TechnologyModelId, TechnologyProgressModel>,
      researchingTechnologyId: freezed == researchingTechnologyId
          ? _value.researchingTechnologyId
          : researchingTechnologyId // ignore: cast_nullable_to_non_nullable
              as TechnologyModelId?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TechnologyTreeProgressModelImplCopyWith<$Res>
    implements $TechnologyTreeProgressModelCopyWith<$Res> {
  factory _$$TechnologyTreeProgressModelImplCopyWith(
          _$TechnologyTreeProgressModelImpl value,
          $Res Function(_$TechnologyTreeProgressModelImpl) then) =
      __$$TechnologyTreeProgressModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          fromJson: TechnologyTreeProgressModel._technologiesFromJson,
          toJson: TechnologyTreeProgressModel._technologiesToJson)
      Map<TechnologyModelId, TechnologyProgressModel> technologies,
      TechnologyModelId? researchingTechnologyId});
}

/// @nodoc
class __$$TechnologyTreeProgressModelImplCopyWithImpl<$Res>
    extends _$TechnologyTreeProgressModelCopyWithImpl<$Res,
        _$TechnologyTreeProgressModelImpl>
    implements _$$TechnologyTreeProgressModelImplCopyWith<$Res> {
  __$$TechnologyTreeProgressModelImplCopyWithImpl(
      _$TechnologyTreeProgressModelImpl _value,
      $Res Function(_$TechnologyTreeProgressModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? technologies = null,
    Object? researchingTechnologyId = freezed,
  }) {
    return _then(_$TechnologyTreeProgressModelImpl(
      technologies: null == technologies
          ? _value._technologies
          : technologies // ignore: cast_nullable_to_non_nullable
              as Map<TechnologyModelId, TechnologyProgressModel>,
      researchingTechnologyId: freezed == researchingTechnologyId
          ? _value.researchingTechnologyId
          : researchingTechnologyId // ignore: cast_nullable_to_non_nullable
              as TechnologyModelId?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TechnologyTreeProgressModelImpl extends _TechnologyTreeProgressModel {
  const _$TechnologyTreeProgressModelImpl(
      {@JsonKey(
          fromJson: TechnologyTreeProgressModel._technologiesFromJson,
          toJson: TechnologyTreeProgressModel._technologiesToJson)
      final Map<TechnologyModelId, TechnologyProgressModel> technologies =
          const {},
      this.researchingTechnologyId})
      : _technologies = technologies,
        super._();

  factory _$TechnologyTreeProgressModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TechnologyTreeProgressModelImplFromJson(json);

  final Map<TechnologyModelId, TechnologyProgressModel> _technologies;
  @override
  @JsonKey(
      fromJson: TechnologyTreeProgressModel._technologiesFromJson,
      toJson: TechnologyTreeProgressModel._technologiesToJson)
  Map<TechnologyModelId, TechnologyProgressModel> get technologies {
    if (_technologies is EqualUnmodifiableMapView) return _technologies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_technologies);
  }

  @override
  final TechnologyModelId? researchingTechnologyId;

  @override
  String toString() {
    return 'TechnologyTreeProgressModel(technologies: $technologies, researchingTechnologyId: $researchingTechnologyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TechnologyTreeProgressModelImpl &&
            const DeepCollectionEquality()
                .equals(other._technologies, _technologies) &&
            (identical(
                    other.researchingTechnologyId, researchingTechnologyId) ||
                other.researchingTechnologyId == researchingTechnologyId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_technologies),
      researchingTechnologyId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TechnologyTreeProgressModelImplCopyWith<_$TechnologyTreeProgressModelImpl>
      get copyWith => __$$TechnologyTreeProgressModelImplCopyWithImpl<
          _$TechnologyTreeProgressModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TechnologyTreeProgressModelImplToJson(
      this,
    );
  }
}

abstract class _TechnologyTreeProgressModel
    extends TechnologyTreeProgressModel {
  const factory _TechnologyTreeProgressModel(
          {@JsonKey(
              fromJson: TechnologyTreeProgressModel._technologiesFromJson,
              toJson: TechnologyTreeProgressModel._technologiesToJson)
          final Map<TechnologyModelId, TechnologyProgressModel> technologies,
          final TechnologyModelId? researchingTechnologyId}) =
      _$TechnologyTreeProgressModelImpl;
  const _TechnologyTreeProgressModel._() : super._();

  factory _TechnologyTreeProgressModel.fromJson(Map<String, dynamic> json) =
      _$TechnologyTreeProgressModelImpl.fromJson;

  @override
  @JsonKey(
      fromJson: TechnologyTreeProgressModel._technologiesFromJson,
      toJson: TechnologyTreeProgressModel._technologiesToJson)
  Map<TechnologyModelId, TechnologyProgressModel> get technologies;
  @override
  TechnologyModelId? get researchingTechnologyId;
  @override
  @JsonKey(ignore: true)
  _$$TechnologyTreeProgressModelImplCopyWith<_$TechnologyTreeProgressModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TechnologyProgressModel _$TechnologyProgressModelFromJson(
    Map<String, dynamic> json) {
  return _TechnologyProgressModel.fromJson(json);
}

/// @nodoc
mixin _$TechnologyProgressModel {
  TechnologyModelId get id => throw _privateConstructorUsedError;
  TechnologyUnlockConditionModel get unlockCondition =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TechnologyProgressModelCopyWith<TechnologyProgressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TechnologyProgressModelCopyWith<$Res> {
  factory $TechnologyProgressModelCopyWith(TechnologyProgressModel value,
          $Res Function(TechnologyProgressModel) then) =
      _$TechnologyProgressModelCopyWithImpl<$Res, TechnologyProgressModel>;
  @useResult
  $Res call(
      {TechnologyModelId id, TechnologyUnlockConditionModel unlockCondition});

  $TechnologyUnlockConditionModelCopyWith<$Res> get unlockCondition;
}

/// @nodoc
class _$TechnologyProgressModelCopyWithImpl<$Res,
        $Val extends TechnologyProgressModel>
    implements $TechnologyProgressModelCopyWith<$Res> {
  _$TechnologyProgressModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? unlockCondition = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as TechnologyModelId,
      unlockCondition: null == unlockCondition
          ? _value.unlockCondition
          : unlockCondition // ignore: cast_nullable_to_non_nullable
              as TechnologyUnlockConditionModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TechnologyUnlockConditionModelCopyWith<$Res> get unlockCondition {
    return $TechnologyUnlockConditionModelCopyWith<$Res>(_value.unlockCondition,
        (value) {
      return _then(_value.copyWith(unlockCondition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TechnologyProgressModelImplCopyWith<$Res>
    implements $TechnologyProgressModelCopyWith<$Res> {
  factory _$$TechnologyProgressModelImplCopyWith(
          _$TechnologyProgressModelImpl value,
          $Res Function(_$TechnologyProgressModelImpl) then) =
      __$$TechnologyProgressModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TechnologyModelId id, TechnologyUnlockConditionModel unlockCondition});

  @override
  $TechnologyUnlockConditionModelCopyWith<$Res> get unlockCondition;
}

/// @nodoc
class __$$TechnologyProgressModelImplCopyWithImpl<$Res>
    extends _$TechnologyProgressModelCopyWithImpl<$Res,
        _$TechnologyProgressModelImpl>
    implements _$$TechnologyProgressModelImplCopyWith<$Res> {
  __$$TechnologyProgressModelImplCopyWithImpl(
      _$TechnologyProgressModelImpl _value,
      $Res Function(_$TechnologyProgressModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? unlockCondition = null,
  }) {
    return _then(_$TechnologyProgressModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as TechnologyModelId,
      unlockCondition: null == unlockCondition
          ? _value.unlockCondition
          : unlockCondition // ignore: cast_nullable_to_non_nullable
              as TechnologyUnlockConditionModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TechnologyProgressModelImpl extends _TechnologyProgressModel {
  const _$TechnologyProgressModelImpl(
      {required this.id, required this.unlockCondition})
      : super._();

  factory _$TechnologyProgressModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TechnologyProgressModelImplFromJson(json);

  @override
  final TechnologyModelId id;
  @override
  final TechnologyUnlockConditionModel unlockCondition;

  @override
  String toString() {
    return 'TechnologyProgressModel(id: $id, unlockCondition: $unlockCondition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TechnologyProgressModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.unlockCondition, unlockCondition) ||
                other.unlockCondition == unlockCondition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, unlockCondition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TechnologyProgressModelImplCopyWith<_$TechnologyProgressModelImpl>
      get copyWith => __$$TechnologyProgressModelImplCopyWithImpl<
          _$TechnologyProgressModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TechnologyProgressModelImplToJson(
      this,
    );
  }
}

abstract class _TechnologyProgressModel extends TechnologyProgressModel {
  const factory _TechnologyProgressModel(
          {required final TechnologyModelId id,
          required final TechnologyUnlockConditionModel unlockCondition}) =
      _$TechnologyProgressModelImpl;
  const _TechnologyProgressModel._() : super._();

  factory _TechnologyProgressModel.fromJson(Map<String, dynamic> json) =
      _$TechnologyProgressModelImpl.fromJson;

  @override
  TechnologyModelId get id;
  @override
  TechnologyUnlockConditionModel get unlockCondition;
  @override
  @JsonKey(ignore: true)
  _$$TechnologyProgressModelImplCopyWith<_$TechnologyProgressModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TechnologyModel _$TechnologyModelFromJson(Map<String, dynamic> json) {
  return _TechnologyModel.fromJson(json);
}

/// @nodoc
mixin _$TechnologyModel {
  TechnologyModelId get id => throw _privateConstructorUsedError;
  LocalizedMap get title =>
      throw _privateConstructorUsedError; // TODO(antmalofeev): add icon?
  /// use [TechnologyProgressModel] to store/retrieve actual progress
  TechnologyUnlockConditionModel get unlockCondition =>
      throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  TechnologyModelId? get parentTechnologyId =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TechnologyModelCopyWith<TechnologyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TechnologyModelCopyWith<$Res> {
  factory $TechnologyModelCopyWith(
          TechnologyModel value, $Res Function(TechnologyModel) then) =
      _$TechnologyModelCopyWithImpl<$Res, TechnologyModel>;
  @useResult
  $Res call(
      {TechnologyModelId id,
      LocalizedMap title,
      TechnologyUnlockConditionModel unlockCondition,
      int index,
      TechnologyModelId? parentTechnologyId});

  $LocalizedMapCopyWith<$Res> get title;
  $TechnologyUnlockConditionModelCopyWith<$Res> get unlockCondition;
}

/// @nodoc
class _$TechnologyModelCopyWithImpl<$Res, $Val extends TechnologyModel>
    implements $TechnologyModelCopyWith<$Res> {
  _$TechnologyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? unlockCondition = null,
    Object? index = null,
    Object? parentTechnologyId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as TechnologyModelId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as LocalizedMap,
      unlockCondition: null == unlockCondition
          ? _value.unlockCondition
          : unlockCondition // ignore: cast_nullable_to_non_nullable
              as TechnologyUnlockConditionModel,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      parentTechnologyId: freezed == parentTechnologyId
          ? _value.parentTechnologyId
          : parentTechnologyId // ignore: cast_nullable_to_non_nullable
              as TechnologyModelId?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocalizedMapCopyWith<$Res> get title {
    return $LocalizedMapCopyWith<$Res>(_value.title, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TechnologyUnlockConditionModelCopyWith<$Res> get unlockCondition {
    return $TechnologyUnlockConditionModelCopyWith<$Res>(_value.unlockCondition,
        (value) {
      return _then(_value.copyWith(unlockCondition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TechnologyModelImplCopyWith<$Res>
    implements $TechnologyModelCopyWith<$Res> {
  factory _$$TechnologyModelImplCopyWith(_$TechnologyModelImpl value,
          $Res Function(_$TechnologyModelImpl) then) =
      __$$TechnologyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TechnologyModelId id,
      LocalizedMap title,
      TechnologyUnlockConditionModel unlockCondition,
      int index,
      TechnologyModelId? parentTechnologyId});

  @override
  $LocalizedMapCopyWith<$Res> get title;
  @override
  $TechnologyUnlockConditionModelCopyWith<$Res> get unlockCondition;
}

/// @nodoc
class __$$TechnologyModelImplCopyWithImpl<$Res>
    extends _$TechnologyModelCopyWithImpl<$Res, _$TechnologyModelImpl>
    implements _$$TechnologyModelImplCopyWith<$Res> {
  __$$TechnologyModelImplCopyWithImpl(
      _$TechnologyModelImpl _value, $Res Function(_$TechnologyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? unlockCondition = null,
    Object? index = null,
    Object? parentTechnologyId = freezed,
  }) {
    return _then(_$TechnologyModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as TechnologyModelId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as LocalizedMap,
      unlockCondition: null == unlockCondition
          ? _value.unlockCondition
          : unlockCondition // ignore: cast_nullable_to_non_nullable
              as TechnologyUnlockConditionModel,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      parentTechnologyId: freezed == parentTechnologyId
          ? _value.parentTechnologyId
          : parentTechnologyId // ignore: cast_nullable_to_non_nullable
              as TechnologyModelId?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TechnologyModelImpl extends _TechnologyModel {
  const _$TechnologyModelImpl(
      {required this.id,
      required this.title,
      required this.unlockCondition,
      this.index = 0,
      this.parentTechnologyId})
      : super._();

  factory _$TechnologyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TechnologyModelImplFromJson(json);

  @override
  final TechnologyModelId id;
  @override
  final LocalizedMap title;
// TODO(antmalofeev): add icon?
  /// use [TechnologyProgressModel] to store/retrieve actual progress
  @override
  final TechnologyUnlockConditionModel unlockCondition;
  @override
  @JsonKey()
  final int index;
  @override
  final TechnologyModelId? parentTechnologyId;

  @override
  String toString() {
    return 'TechnologyModel(id: $id, title: $title, unlockCondition: $unlockCondition, index: $index, parentTechnologyId: $parentTechnologyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TechnologyModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.unlockCondition, unlockCondition) ||
                other.unlockCondition == unlockCondition) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.parentTechnologyId, parentTechnologyId) ||
                other.parentTechnologyId == parentTechnologyId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, unlockCondition, index, parentTechnologyId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TechnologyModelImplCopyWith<_$TechnologyModelImpl> get copyWith =>
      __$$TechnologyModelImplCopyWithImpl<_$TechnologyModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TechnologyModelImplToJson(
      this,
    );
  }
}

abstract class _TechnologyModel extends TechnologyModel {
  const factory _TechnologyModel(
      {required final TechnologyModelId id,
      required final LocalizedMap title,
      required final TechnologyUnlockConditionModel unlockCondition,
      final int index,
      final TechnologyModelId? parentTechnologyId}) = _$TechnologyModelImpl;
  const _TechnologyModel._() : super._();

  factory _TechnologyModel.fromJson(Map<String, dynamic> json) =
      _$TechnologyModelImpl.fromJson;

  @override
  TechnologyModelId get id;
  @override
  LocalizedMap get title;
  @override // TODO(antmalofeev): add icon?
  /// use [TechnologyProgressModel] to store/retrieve actual progress
  TechnologyUnlockConditionModel get unlockCondition;
  @override
  int get index;
  @override
  TechnologyModelId? get parentTechnologyId;
  @override
  @JsonKey(ignore: true)
  _$$TechnologyModelImplCopyWith<_$TechnologyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TechnologyUnlockConditionModel _$TechnologyUnlockConditionModelFromJson(
    Map<String, dynamic> json) {
  return _TechnologyUnlockConditionModel.fromJson(json);
}

/// @nodoc
mixin _$TechnologyUnlockConditionModel {
  /// Principle: if several words for one language in [languageWords] are used
  /// then [TechnologyModel] is unlocked
  /// for that certain language.
  Map<Languages, List<UsefulWordModel>> get languageWords =>
      throw _privateConstructorUsedError;

  /// one idea is to have minimum words to unlock the technology
  int get wordsUnlockThreshold => throw _privateConstructorUsedError;

  /// total amount of research points invested by user
  /// when he decided to research this technology
  double get investedResearchPoints => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TechnologyUnlockConditionModelCopyWith<TechnologyUnlockConditionModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TechnologyUnlockConditionModelCopyWith<$Res> {
  factory $TechnologyUnlockConditionModelCopyWith(
          TechnologyUnlockConditionModel value,
          $Res Function(TechnologyUnlockConditionModel) then) =
      _$TechnologyUnlockConditionModelCopyWithImpl<$Res,
          TechnologyUnlockConditionModel>;
  @useResult
  $Res call(
      {Map<Languages, List<UsefulWordModel>> languageWords,
      int wordsUnlockThreshold,
      double investedResearchPoints});
}

/// @nodoc
class _$TechnologyUnlockConditionModelCopyWithImpl<$Res,
        $Val extends TechnologyUnlockConditionModel>
    implements $TechnologyUnlockConditionModelCopyWith<$Res> {
  _$TechnologyUnlockConditionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageWords = null,
    Object? wordsUnlockThreshold = null,
    Object? investedResearchPoints = null,
  }) {
    return _then(_value.copyWith(
      languageWords: null == languageWords
          ? _value.languageWords
          : languageWords // ignore: cast_nullable_to_non_nullable
              as Map<Languages, List<UsefulWordModel>>,
      wordsUnlockThreshold: null == wordsUnlockThreshold
          ? _value.wordsUnlockThreshold
          : wordsUnlockThreshold // ignore: cast_nullable_to_non_nullable
              as int,
      investedResearchPoints: null == investedResearchPoints
          ? _value.investedResearchPoints
          : investedResearchPoints // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TechnologyUnlockConditionModelImplCopyWith<$Res>
    implements $TechnologyUnlockConditionModelCopyWith<$Res> {
  factory _$$TechnologyUnlockConditionModelImplCopyWith(
          _$TechnologyUnlockConditionModelImpl value,
          $Res Function(_$TechnologyUnlockConditionModelImpl) then) =
      __$$TechnologyUnlockConditionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<Languages, List<UsefulWordModel>> languageWords,
      int wordsUnlockThreshold,
      double investedResearchPoints});
}

/// @nodoc
class __$$TechnologyUnlockConditionModelImplCopyWithImpl<$Res>
    extends _$TechnologyUnlockConditionModelCopyWithImpl<$Res,
        _$TechnologyUnlockConditionModelImpl>
    implements _$$TechnologyUnlockConditionModelImplCopyWith<$Res> {
  __$$TechnologyUnlockConditionModelImplCopyWithImpl(
      _$TechnologyUnlockConditionModelImpl _value,
      $Res Function(_$TechnologyUnlockConditionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageWords = null,
    Object? wordsUnlockThreshold = null,
    Object? investedResearchPoints = null,
  }) {
    return _then(_$TechnologyUnlockConditionModelImpl(
      languageWords: null == languageWords
          ? _value._languageWords
          : languageWords // ignore: cast_nullable_to_non_nullable
              as Map<Languages, List<UsefulWordModel>>,
      wordsUnlockThreshold: null == wordsUnlockThreshold
          ? _value.wordsUnlockThreshold
          : wordsUnlockThreshold // ignore: cast_nullable_to_non_nullable
              as int,
      investedResearchPoints: null == investedResearchPoints
          ? _value.investedResearchPoints
          : investedResearchPoints // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TechnologyUnlockConditionModelImpl
    extends _TechnologyUnlockConditionModel {
  const _$TechnologyUnlockConditionModelImpl(
      {required final Map<Languages, List<UsefulWordModel>> languageWords,
      this.wordsUnlockThreshold = 0,
      this.investedResearchPoints = 0.0})
      : _languageWords = languageWords,
        super._();

  factory _$TechnologyUnlockConditionModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TechnologyUnlockConditionModelImplFromJson(json);

  /// Principle: if several words for one language in [languageWords] are used
  /// then [TechnologyModel] is unlocked
  /// for that certain language.
  final Map<Languages, List<UsefulWordModel>> _languageWords;

  /// Principle: if several words for one language in [languageWords] are used
  /// then [TechnologyModel] is unlocked
  /// for that certain language.
  @override
  Map<Languages, List<UsefulWordModel>> get languageWords {
    if (_languageWords is EqualUnmodifiableMapView) return _languageWords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_languageWords);
  }

  /// one idea is to have minimum words to unlock the technology
  @override
  @JsonKey()
  final int wordsUnlockThreshold;

  /// total amount of research points invested by user
  /// when he decided to research this technology
  @override
  @JsonKey()
  final double investedResearchPoints;

  @override
  String toString() {
    return 'TechnologyUnlockConditionModel(languageWords: $languageWords, wordsUnlockThreshold: $wordsUnlockThreshold, investedResearchPoints: $investedResearchPoints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TechnologyUnlockConditionModelImpl &&
            const DeepCollectionEquality()
                .equals(other._languageWords, _languageWords) &&
            (identical(other.wordsUnlockThreshold, wordsUnlockThreshold) ||
                other.wordsUnlockThreshold == wordsUnlockThreshold) &&
            (identical(other.investedResearchPoints, investedResearchPoints) ||
                other.investedResearchPoints == investedResearchPoints));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_languageWords),
      wordsUnlockThreshold,
      investedResearchPoints);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TechnologyUnlockConditionModelImplCopyWith<
          _$TechnologyUnlockConditionModelImpl>
      get copyWith => __$$TechnologyUnlockConditionModelImplCopyWithImpl<
          _$TechnologyUnlockConditionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TechnologyUnlockConditionModelImplToJson(
      this,
    );
  }
}

abstract class _TechnologyUnlockConditionModel
    extends TechnologyUnlockConditionModel {
  const factory _TechnologyUnlockConditionModel(
          {required final Map<Languages, List<UsefulWordModel>> languageWords,
          final int wordsUnlockThreshold,
          final double investedResearchPoints}) =
      _$TechnologyUnlockConditionModelImpl;
  const _TechnologyUnlockConditionModel._() : super._();

  factory _TechnologyUnlockConditionModel.fromJson(Map<String, dynamic> json) =
      _$TechnologyUnlockConditionModelImpl.fromJson;

  @override

  /// Principle: if several words for one language in [languageWords] are used
  /// then [TechnologyModel] is unlocked
  /// for that certain language.
  Map<Languages, List<UsefulWordModel>> get languageWords;
  @override

  /// one idea is to have minimum words to unlock the technology
  int get wordsUnlockThreshold;
  @override

  /// total amount of research points invested by user
  /// when he decided to research this technology
  double get investedResearchPoints;
  @override
  @JsonKey(ignore: true)
  _$$TechnologyUnlockConditionModelImplCopyWith<
          _$TechnologyUnlockConditionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UsefulWordModel _$UsefulWordModelFromJson(Map<String, dynamic> json) {
  return _UsefulWordModel.fromJson(json);
}

/// @nodoc
mixin _$UsefulWordModel {
  String get word => throw _privateConstructorUsedError;
  bool get isUsed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsefulWordModelCopyWith<UsefulWordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsefulWordModelCopyWith<$Res> {
  factory $UsefulWordModelCopyWith(
          UsefulWordModel value, $Res Function(UsefulWordModel) then) =
      _$UsefulWordModelCopyWithImpl<$Res, UsefulWordModel>;
  @useResult
  $Res call({String word, bool isUsed});
}

/// @nodoc
class _$UsefulWordModelCopyWithImpl<$Res, $Val extends UsefulWordModel>
    implements $UsefulWordModelCopyWith<$Res> {
  _$UsefulWordModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? isUsed = null,
  }) {
    return _then(_value.copyWith(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      isUsed: null == isUsed
          ? _value.isUsed
          : isUsed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsefulWordModelImplCopyWith<$Res>
    implements $UsefulWordModelCopyWith<$Res> {
  factory _$$UsefulWordModelImplCopyWith(_$UsefulWordModelImpl value,
          $Res Function(_$UsefulWordModelImpl) then) =
      __$$UsefulWordModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String word, bool isUsed});
}

/// @nodoc
class __$$UsefulWordModelImplCopyWithImpl<$Res>
    extends _$UsefulWordModelCopyWithImpl<$Res, _$UsefulWordModelImpl>
    implements _$$UsefulWordModelImplCopyWith<$Res> {
  __$$UsefulWordModelImplCopyWithImpl(
      _$UsefulWordModelImpl _value, $Res Function(_$UsefulWordModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? isUsed = null,
  }) {
    return _then(_$UsefulWordModelImpl(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      isUsed: null == isUsed
          ? _value.isUsed
          : isUsed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UsefulWordModelImpl extends _UsefulWordModel {
  const _$UsefulWordModelImpl({required this.word, this.isUsed = false})
      : super._();

  factory _$UsefulWordModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsefulWordModelImplFromJson(json);

  @override
  final String word;
  @override
  @JsonKey()
  final bool isUsed;

  @override
  String toString() {
    return 'UsefulWordModel(word: $word, isUsed: $isUsed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsefulWordModelImpl &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.isUsed, isUsed) || other.isUsed == isUsed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, word, isUsed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsefulWordModelImplCopyWith<_$UsefulWordModelImpl> get copyWith =>
      __$$UsefulWordModelImplCopyWithImpl<_$UsefulWordModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsefulWordModelImplToJson(
      this,
    );
  }
}

abstract class _UsefulWordModel extends UsefulWordModel {
  const factory _UsefulWordModel(
      {required final String word, final bool isUsed}) = _$UsefulWordModelImpl;
  const _UsefulWordModel._() : super._();

  factory _UsefulWordModel.fromJson(Map<String, dynamic> json) =
      _$UsefulWordModelImpl.fromJson;

  @override
  String get word;
  @override
  bool get isUsed;
  @override
  @JsonKey(ignore: true)
  _$$UsefulWordModelImplCopyWith<_$UsefulWordModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TutorialEventModel _$TutorialEventModelFromJson(Map<String, dynamic> json) {
  return _TutorialEventModel.fromJson(json);
}

/// @nodoc
mixin _$TutorialEventModel {
  LocalizedMap get localizedMap => throw _privateConstructorUsedError;

  /// what will switch this event to the next
  List<TutorialUiActionEventModel> get completeActions =>
      throw _privateConstructorUsedError;

  /// Effects for the game which applied when this event fired
  List<TutorialGameEffectModel> get gamePreEffects =>
      throw _privateConstructorUsedError;

  /// Effects for the game which applied after this event
  /// [completeActions] resolved.
  List<TutorialGameEffectModel> get gamePostEffects =>
      throw _privateConstructorUsedError;

  /// The ui item for which the event should be attached and
  /// highlight is shown
  TutorialUiItem? get anchorUiItem => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TutorialEventModelCopyWith<TutorialEventModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorialEventModelCopyWith<$Res> {
  factory $TutorialEventModelCopyWith(
          TutorialEventModel value, $Res Function(TutorialEventModel) then) =
      _$TutorialEventModelCopyWithImpl<$Res, TutorialEventModel>;
  @useResult
  $Res call(
      {LocalizedMap localizedMap,
      List<TutorialUiActionEventModel> completeActions,
      List<TutorialGameEffectModel> gamePreEffects,
      List<TutorialGameEffectModel> gamePostEffects,
      TutorialUiItem? anchorUiItem});

  $LocalizedMapCopyWith<$Res> get localizedMap;
}

/// @nodoc
class _$TutorialEventModelCopyWithImpl<$Res, $Val extends TutorialEventModel>
    implements $TutorialEventModelCopyWith<$Res> {
  _$TutorialEventModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localizedMap = null,
    Object? completeActions = null,
    Object? gamePreEffects = null,
    Object? gamePostEffects = null,
    Object? anchorUiItem = freezed,
  }) {
    return _then(_value.copyWith(
      localizedMap: null == localizedMap
          ? _value.localizedMap
          : localizedMap // ignore: cast_nullable_to_non_nullable
              as LocalizedMap,
      completeActions: null == completeActions
          ? _value.completeActions
          : completeActions // ignore: cast_nullable_to_non_nullable
              as List<TutorialUiActionEventModel>,
      gamePreEffects: null == gamePreEffects
          ? _value.gamePreEffects
          : gamePreEffects // ignore: cast_nullable_to_non_nullable
              as List<TutorialGameEffectModel>,
      gamePostEffects: null == gamePostEffects
          ? _value.gamePostEffects
          : gamePostEffects // ignore: cast_nullable_to_non_nullable
              as List<TutorialGameEffectModel>,
      anchorUiItem: freezed == anchorUiItem
          ? _value.anchorUiItem
          : anchorUiItem // ignore: cast_nullable_to_non_nullable
              as TutorialUiItem?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocalizedMapCopyWith<$Res> get localizedMap {
    return $LocalizedMapCopyWith<$Res>(_value.localizedMap, (value) {
      return _then(_value.copyWith(localizedMap: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TutorialEventModelImplCopyWith<$Res>
    implements $TutorialEventModelCopyWith<$Res> {
  factory _$$TutorialEventModelImplCopyWith(_$TutorialEventModelImpl value,
          $Res Function(_$TutorialEventModelImpl) then) =
      __$$TutorialEventModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LocalizedMap localizedMap,
      List<TutorialUiActionEventModel> completeActions,
      List<TutorialGameEffectModel> gamePreEffects,
      List<TutorialGameEffectModel> gamePostEffects,
      TutorialUiItem? anchorUiItem});

  @override
  $LocalizedMapCopyWith<$Res> get localizedMap;
}

/// @nodoc
class __$$TutorialEventModelImplCopyWithImpl<$Res>
    extends _$TutorialEventModelCopyWithImpl<$Res, _$TutorialEventModelImpl>
    implements _$$TutorialEventModelImplCopyWith<$Res> {
  __$$TutorialEventModelImplCopyWithImpl(_$TutorialEventModelImpl _value,
      $Res Function(_$TutorialEventModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localizedMap = null,
    Object? completeActions = null,
    Object? gamePreEffects = null,
    Object? gamePostEffects = null,
    Object? anchorUiItem = freezed,
  }) {
    return _then(_$TutorialEventModelImpl(
      localizedMap: null == localizedMap
          ? _value.localizedMap
          : localizedMap // ignore: cast_nullable_to_non_nullable
              as LocalizedMap,
      completeActions: null == completeActions
          ? _value._completeActions
          : completeActions // ignore: cast_nullable_to_non_nullable
              as List<TutorialUiActionEventModel>,
      gamePreEffects: null == gamePreEffects
          ? _value._gamePreEffects
          : gamePreEffects // ignore: cast_nullable_to_non_nullable
              as List<TutorialGameEffectModel>,
      gamePostEffects: null == gamePostEffects
          ? _value._gamePostEffects
          : gamePostEffects // ignore: cast_nullable_to_non_nullable
              as List<TutorialGameEffectModel>,
      anchorUiItem: freezed == anchorUiItem
          ? _value.anchorUiItem
          : anchorUiItem // ignore: cast_nullable_to_non_nullable
              as TutorialUiItem?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TutorialEventModelImpl extends _TutorialEventModel {
  const _$TutorialEventModelImpl(
      {required this.localizedMap,
      required final List<TutorialUiActionEventModel> completeActions,
      final List<TutorialGameEffectModel> gamePreEffects = const [],
      final List<TutorialGameEffectModel> gamePostEffects = const [],
      this.anchorUiItem})
      : _completeActions = completeActions,
        _gamePreEffects = gamePreEffects,
        _gamePostEffects = gamePostEffects,
        super._();

  factory _$TutorialEventModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TutorialEventModelImplFromJson(json);

  @override
  final LocalizedMap localizedMap;

  /// what will switch this event to the next
  final List<TutorialUiActionEventModel> _completeActions;

  /// what will switch this event to the next
  @override
  List<TutorialUiActionEventModel> get completeActions {
    if (_completeActions is EqualUnmodifiableListView) return _completeActions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_completeActions);
  }

  /// Effects for the game which applied when this event fired
  final List<TutorialGameEffectModel> _gamePreEffects;

  /// Effects for the game which applied when this event fired
  @override
  @JsonKey()
  List<TutorialGameEffectModel> get gamePreEffects {
    if (_gamePreEffects is EqualUnmodifiableListView) return _gamePreEffects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gamePreEffects);
  }

  /// Effects for the game which applied after this event
  /// [completeActions] resolved.
  final List<TutorialGameEffectModel> _gamePostEffects;

  /// Effects for the game which applied after this event
  /// [completeActions] resolved.
  @override
  @JsonKey()
  List<TutorialGameEffectModel> get gamePostEffects {
    if (_gamePostEffects is EqualUnmodifiableListView) return _gamePostEffects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gamePostEffects);
  }

  /// The ui item for which the event should be attached and
  /// highlight is shown
  @override
  final TutorialUiItem? anchorUiItem;

  @override
  String toString() {
    return 'TutorialEventModel(localizedMap: $localizedMap, completeActions: $completeActions, gamePreEffects: $gamePreEffects, gamePostEffects: $gamePostEffects, anchorUiItem: $anchorUiItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TutorialEventModelImpl &&
            (identical(other.localizedMap, localizedMap) ||
                other.localizedMap == localizedMap) &&
            const DeepCollectionEquality()
                .equals(other._completeActions, _completeActions) &&
            const DeepCollectionEquality()
                .equals(other._gamePreEffects, _gamePreEffects) &&
            const DeepCollectionEquality()
                .equals(other._gamePostEffects, _gamePostEffects) &&
            (identical(other.anchorUiItem, anchorUiItem) ||
                other.anchorUiItem == anchorUiItem));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      localizedMap,
      const DeepCollectionEquality().hash(_completeActions),
      const DeepCollectionEquality().hash(_gamePreEffects),
      const DeepCollectionEquality().hash(_gamePostEffects),
      anchorUiItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TutorialEventModelImplCopyWith<_$TutorialEventModelImpl> get copyWith =>
      __$$TutorialEventModelImplCopyWithImpl<_$TutorialEventModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TutorialEventModelImplToJson(
      this,
    );
  }
}

abstract class _TutorialEventModel extends TutorialEventModel {
  const factory _TutorialEventModel(
      {required final LocalizedMap localizedMap,
      required final List<TutorialUiActionEventModel> completeActions,
      final List<TutorialGameEffectModel> gamePreEffects,
      final List<TutorialGameEffectModel> gamePostEffects,
      final TutorialUiItem? anchorUiItem}) = _$TutorialEventModelImpl;
  const _TutorialEventModel._() : super._();

  factory _TutorialEventModel.fromJson(Map<String, dynamic> json) =
      _$TutorialEventModelImpl.fromJson;

  @override
  LocalizedMap get localizedMap;
  @override

  /// what will switch this event to the next
  List<TutorialUiActionEventModel> get completeActions;
  @override

  /// Effects for the game which applied when this event fired
  List<TutorialGameEffectModel> get gamePreEffects;
  @override

  /// Effects for the game which applied after this event
  /// [completeActions] resolved.
  List<TutorialGameEffectModel> get gamePostEffects;
  @override

  /// The ui item for which the event should be attached and
  /// highlight is shown
  TutorialUiItem? get anchorUiItem;
  @override
  @JsonKey(ignore: true)
  _$$TutorialEventModelImplCopyWith<_$TutorialEventModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TutorialGameEffectModel _$TutorialGameEffectModelFromJson(
    Map<String, dynamic> json) {
  return _TutorialGameEffectModel.fromJson(json);
}

/// @nodoc
mixin _$TutorialGameEffectModel {
  TutorialGameEffectName get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TutorialGameEffectModelCopyWith<TutorialGameEffectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorialGameEffectModelCopyWith<$Res> {
  factory $TutorialGameEffectModelCopyWith(TutorialGameEffectModel value,
          $Res Function(TutorialGameEffectModel) then) =
      _$TutorialGameEffectModelCopyWithImpl<$Res, TutorialGameEffectModel>;
  @useResult
  $Res call({TutorialGameEffectName name});
}

/// @nodoc
class _$TutorialGameEffectModelCopyWithImpl<$Res,
        $Val extends TutorialGameEffectModel>
    implements $TutorialGameEffectModelCopyWith<$Res> {
  _$TutorialGameEffectModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as TutorialGameEffectName,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TutorialGameEffectModelImplCopyWith<$Res>
    implements $TutorialGameEffectModelCopyWith<$Res> {
  factory _$$TutorialGameEffectModelImplCopyWith(
          _$TutorialGameEffectModelImpl value,
          $Res Function(_$TutorialGameEffectModelImpl) then) =
      __$$TutorialGameEffectModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TutorialGameEffectName name});
}

/// @nodoc
class __$$TutorialGameEffectModelImplCopyWithImpl<$Res>
    extends _$TutorialGameEffectModelCopyWithImpl<$Res,
        _$TutorialGameEffectModelImpl>
    implements _$$TutorialGameEffectModelImplCopyWith<$Res> {
  __$$TutorialGameEffectModelImplCopyWithImpl(
      _$TutorialGameEffectModelImpl _value,
      $Res Function(_$TutorialGameEffectModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$TutorialGameEffectModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as TutorialGameEffectName,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TutorialGameEffectModelImpl extends _TutorialGameEffectModel {
  const _$TutorialGameEffectModelImpl({required this.name}) : super._();

  factory _$TutorialGameEffectModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TutorialGameEffectModelImplFromJson(json);

  @override
  final TutorialGameEffectName name;

  @override
  String toString() {
    return 'TutorialGameEffectModel(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TutorialGameEffectModelImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TutorialGameEffectModelImplCopyWith<_$TutorialGameEffectModelImpl>
      get copyWith => __$$TutorialGameEffectModelImplCopyWithImpl<
          _$TutorialGameEffectModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TutorialGameEffectModelImplToJson(
      this,
    );
  }
}

abstract class _TutorialGameEffectModel extends TutorialGameEffectModel {
  const factory _TutorialGameEffectModel(
          {required final TutorialGameEffectName name}) =
      _$TutorialGameEffectModelImpl;
  const _TutorialGameEffectModel._() : super._();

  factory _TutorialGameEffectModel.fromJson(Map<String, dynamic> json) =
      _$TutorialGameEffectModelImpl.fromJson;

  @override
  TutorialGameEffectName get name;
  @override
  @JsonKey(ignore: true)
  _$$TutorialGameEffectModelImplCopyWith<_$TutorialGameEffectModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TutorialUiActionEventModel _$TutorialUiActionEventModelFromJson(
    Map<String, dynamic> json) {
  return _TutorialUiActionEventModel.fromJson(json);
}

/// @nodoc
mixin _$TutorialUiActionEventModel {
  /// If [uiItem] is set null and the action
  /// is [TutorialCompleteAction.onClick] then
  /// it means that the action is click on anything
  /// on screen
  TutorialCompleteAction get action => throw _privateConstructorUsedError;
  TutorialUiItem? get uiItem => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  Map<PrimitiveBool, List<TutorialGameEffectModel>> get boolConsquenses =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TutorialUiActionEventModelCopyWith<TutorialUiActionEventModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorialUiActionEventModelCopyWith<$Res> {
  factory $TutorialUiActionEventModelCopyWith(TutorialUiActionEventModel value,
          $Res Function(TutorialUiActionEventModel) then) =
      _$TutorialUiActionEventModelCopyWithImpl<$Res,
          TutorialUiActionEventModel>;
  @useResult
  $Res call(
      {TutorialCompleteAction action,
      TutorialUiItem? uiItem,
      bool isCompleted,
      Map<PrimitiveBool, List<TutorialGameEffectModel>> boolConsquenses});
}

/// @nodoc
class _$TutorialUiActionEventModelCopyWithImpl<$Res,
        $Val extends TutorialUiActionEventModel>
    implements $TutorialUiActionEventModelCopyWith<$Res> {
  _$TutorialUiActionEventModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? uiItem = freezed,
    Object? isCompleted = null,
    Object? boolConsquenses = null,
  }) {
    return _then(_value.copyWith(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as TutorialCompleteAction,
      uiItem: freezed == uiItem
          ? _value.uiItem
          : uiItem // ignore: cast_nullable_to_non_nullable
              as TutorialUiItem?,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      boolConsquenses: null == boolConsquenses
          ? _value.boolConsquenses
          : boolConsquenses // ignore: cast_nullable_to_non_nullable
              as Map<PrimitiveBool, List<TutorialGameEffectModel>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TutorialUiActionEventModelImplCopyWith<$Res>
    implements $TutorialUiActionEventModelCopyWith<$Res> {
  factory _$$TutorialUiActionEventModelImplCopyWith(
          _$TutorialUiActionEventModelImpl value,
          $Res Function(_$TutorialUiActionEventModelImpl) then) =
      __$$TutorialUiActionEventModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TutorialCompleteAction action,
      TutorialUiItem? uiItem,
      bool isCompleted,
      Map<PrimitiveBool, List<TutorialGameEffectModel>> boolConsquenses});
}

/// @nodoc
class __$$TutorialUiActionEventModelImplCopyWithImpl<$Res>
    extends _$TutorialUiActionEventModelCopyWithImpl<$Res,
        _$TutorialUiActionEventModelImpl>
    implements _$$TutorialUiActionEventModelImplCopyWith<$Res> {
  __$$TutorialUiActionEventModelImplCopyWithImpl(
      _$TutorialUiActionEventModelImpl _value,
      $Res Function(_$TutorialUiActionEventModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? uiItem = freezed,
    Object? isCompleted = null,
    Object? boolConsquenses = null,
  }) {
    return _then(_$TutorialUiActionEventModelImpl(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as TutorialCompleteAction,
      uiItem: freezed == uiItem
          ? _value.uiItem
          : uiItem // ignore: cast_nullable_to_non_nullable
              as TutorialUiItem?,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      boolConsquenses: null == boolConsquenses
          ? _value._boolConsquenses
          : boolConsquenses // ignore: cast_nullable_to_non_nullable
              as Map<PrimitiveBool, List<TutorialGameEffectModel>>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TutorialUiActionEventModelImpl extends _TutorialUiActionEventModel {
  const _$TutorialUiActionEventModelImpl(
      {required this.action,
      this.uiItem,
      this.isCompleted = false,
      final Map<PrimitiveBool, List<TutorialGameEffectModel>> boolConsquenses =
          const {}})
      : _boolConsquenses = boolConsquenses,
        super._();

  factory _$TutorialUiActionEventModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TutorialUiActionEventModelImplFromJson(json);

  /// If [uiItem] is set null and the action
  /// is [TutorialCompleteAction.onClick] then
  /// it means that the action is click on anything
  /// on screen
  @override
  final TutorialCompleteAction action;
  @override
  final TutorialUiItem? uiItem;
  @override
  @JsonKey()
  final bool isCompleted;
  final Map<PrimitiveBool, List<TutorialGameEffectModel>> _boolConsquenses;
  @override
  @JsonKey()
  Map<PrimitiveBool, List<TutorialGameEffectModel>> get boolConsquenses {
    if (_boolConsquenses is EqualUnmodifiableMapView) return _boolConsquenses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_boolConsquenses);
  }

  @override
  String toString() {
    return 'TutorialUiActionEventModel(action: $action, uiItem: $uiItem, isCompleted: $isCompleted, boolConsquenses: $boolConsquenses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TutorialUiActionEventModelImpl &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.uiItem, uiItem) || other.uiItem == uiItem) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            const DeepCollectionEquality()
                .equals(other._boolConsquenses, _boolConsquenses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, action, uiItem, isCompleted,
      const DeepCollectionEquality().hash(_boolConsquenses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TutorialUiActionEventModelImplCopyWith<_$TutorialUiActionEventModelImpl>
      get copyWith => __$$TutorialUiActionEventModelImplCopyWithImpl<
          _$TutorialUiActionEventModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TutorialUiActionEventModelImplToJson(
      this,
    );
  }
}

abstract class _TutorialUiActionEventModel extends TutorialUiActionEventModel {
  const factory _TutorialUiActionEventModel(
      {required final TutorialCompleteAction action,
      final TutorialUiItem? uiItem,
      final bool isCompleted,
      final Map<PrimitiveBool, List<TutorialGameEffectModel>>
          boolConsquenses}) = _$TutorialUiActionEventModelImpl;
  const _TutorialUiActionEventModel._() : super._();

  factory _TutorialUiActionEventModel.fromJson(Map<String, dynamic> json) =
      _$TutorialUiActionEventModelImpl.fromJson;

  @override

  /// If [uiItem] is set null and the action
  /// is [TutorialCompleteAction.onClick] then
  /// it means that the action is click on anything
  /// on screen
  TutorialCompleteAction get action;
  @override
  TutorialUiItem? get uiItem;
  @override
  bool get isCompleted;
  @override
  Map<PrimitiveBool, List<TutorialGameEffectModel>> get boolConsquenses;
  @override
  @JsonKey(ignore: true)
  _$$TutorialUiActionEventModelImplCopyWith<_$TutorialUiActionEventModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TutorialEventsCollectionModel _$TutorialEventsCollectionModelFromJson(
    Map<String, dynamic> json) {
  return _TutorialEventsCollectionModel.fromJson(json);
}

/// @nodoc
mixin _$TutorialEventsCollectionModel {
  List<TutorialEventModel> get events => throw _privateConstructorUsedError;
  TutorialCollectionsName get name => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TutorialEventsCollectionModelCopyWith<TutorialEventsCollectionModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorialEventsCollectionModelCopyWith<$Res> {
  factory $TutorialEventsCollectionModelCopyWith(
          TutorialEventsCollectionModel value,
          $Res Function(TutorialEventsCollectionModel) then) =
      _$TutorialEventsCollectionModelCopyWithImpl<$Res,
          TutorialEventsCollectionModel>;
  @useResult
  $Res call(
      {List<TutorialEventModel> events,
      TutorialCollectionsName name,
      int currentIndex});
}

/// @nodoc
class _$TutorialEventsCollectionModelCopyWithImpl<$Res,
        $Val extends TutorialEventsCollectionModel>
    implements $TutorialEventsCollectionModelCopyWith<$Res> {
  _$TutorialEventsCollectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? name = null,
    Object? currentIndex = null,
  }) {
    return _then(_value.copyWith(
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<TutorialEventModel>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as TutorialCollectionsName,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TutorialEventsCollectionModelImplCopyWith<$Res>
    implements $TutorialEventsCollectionModelCopyWith<$Res> {
  factory _$$TutorialEventsCollectionModelImplCopyWith(
          _$TutorialEventsCollectionModelImpl value,
          $Res Function(_$TutorialEventsCollectionModelImpl) then) =
      __$$TutorialEventsCollectionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TutorialEventModel> events,
      TutorialCollectionsName name,
      int currentIndex});
}

/// @nodoc
class __$$TutorialEventsCollectionModelImplCopyWithImpl<$Res>
    extends _$TutorialEventsCollectionModelCopyWithImpl<$Res,
        _$TutorialEventsCollectionModelImpl>
    implements _$$TutorialEventsCollectionModelImplCopyWith<$Res> {
  __$$TutorialEventsCollectionModelImplCopyWithImpl(
      _$TutorialEventsCollectionModelImpl _value,
      $Res Function(_$TutorialEventsCollectionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? name = null,
    Object? currentIndex = null,
  }) {
    return _then(_$TutorialEventsCollectionModelImpl(
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<TutorialEventModel>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as TutorialCollectionsName,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TutorialEventsCollectionModelImpl
    extends _TutorialEventsCollectionModel {
  const _$TutorialEventsCollectionModelImpl(
      {required final List<TutorialEventModel> events,
      required this.name,
      required this.currentIndex})
      : _events = events,
        super._();

  factory _$TutorialEventsCollectionModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TutorialEventsCollectionModelImplFromJson(json);

  final List<TutorialEventModel> _events;
  @override
  List<TutorialEventModel> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  final TutorialCollectionsName name;
  @override
  final int currentIndex;

  @override
  String toString() {
    return 'TutorialEventsCollectionModel(events: $events, name: $name, currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TutorialEventsCollectionModelImpl &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_events), name, currentIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TutorialEventsCollectionModelImplCopyWith<
          _$TutorialEventsCollectionModelImpl>
      get copyWith => __$$TutorialEventsCollectionModelImplCopyWithImpl<
          _$TutorialEventsCollectionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TutorialEventsCollectionModelImplToJson(
      this,
    );
  }
}

abstract class _TutorialEventsCollectionModel
    extends TutorialEventsCollectionModel {
  const factory _TutorialEventsCollectionModel(
      {required final List<TutorialEventModel> events,
      required final TutorialCollectionsName name,
      required final int currentIndex}) = _$TutorialEventsCollectionModelImpl;
  const _TutorialEventsCollectionModel._() : super._();

  factory _TutorialEventsCollectionModel.fromJson(Map<String, dynamic> json) =
      _$TutorialEventsCollectionModelImpl.fromJson;

  @override
  List<TutorialEventModel> get events;
  @override
  TutorialCollectionsName get name;
  @override
  int get currentIndex;
  @override
  @JsonKey(ignore: true)
  _$$TutorialEventsCollectionModelImplCopyWith<
          _$TutorialEventsCollectionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TutorialCollectionsProgressModel _$TutorialCollectionsProgressModelFromJson(
    Map<String, dynamic> json) {
  return _TutorialCollectionsProgressModel.fromJson(json);
}

/// @nodoc
mixin _$TutorialCollectionsProgressModel {
  /// Key - [TutorialCollectionsName]
  /// Value - int index from [TutorialEventsCollectionModel.events]
  Map<TutorialCollectionsName, int> get indexes =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TutorialCollectionsProgressModelCopyWith<TutorialCollectionsProgressModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorialCollectionsProgressModelCopyWith<$Res> {
  factory $TutorialCollectionsProgressModelCopyWith(
          TutorialCollectionsProgressModel value,
          $Res Function(TutorialCollectionsProgressModel) then) =
      _$TutorialCollectionsProgressModelCopyWithImpl<$Res,
          TutorialCollectionsProgressModel>;
  @useResult
  $Res call({Map<TutorialCollectionsName, int> indexes});
}

/// @nodoc
class _$TutorialCollectionsProgressModelCopyWithImpl<$Res,
        $Val extends TutorialCollectionsProgressModel>
    implements $TutorialCollectionsProgressModelCopyWith<$Res> {
  _$TutorialCollectionsProgressModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indexes = null,
  }) {
    return _then(_value.copyWith(
      indexes: null == indexes
          ? _value.indexes
          : indexes // ignore: cast_nullable_to_non_nullable
              as Map<TutorialCollectionsName, int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TutorialCollectionsProgressModelImplCopyWith<$Res>
    implements $TutorialCollectionsProgressModelCopyWith<$Res> {
  factory _$$TutorialCollectionsProgressModelImplCopyWith(
          _$TutorialCollectionsProgressModelImpl value,
          $Res Function(_$TutorialCollectionsProgressModelImpl) then) =
      __$$TutorialCollectionsProgressModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<TutorialCollectionsName, int> indexes});
}

/// @nodoc
class __$$TutorialCollectionsProgressModelImplCopyWithImpl<$Res>
    extends _$TutorialCollectionsProgressModelCopyWithImpl<$Res,
        _$TutorialCollectionsProgressModelImpl>
    implements _$$TutorialCollectionsProgressModelImplCopyWith<$Res> {
  __$$TutorialCollectionsProgressModelImplCopyWithImpl(
      _$TutorialCollectionsProgressModelImpl _value,
      $Res Function(_$TutorialCollectionsProgressModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indexes = null,
  }) {
    return _then(_$TutorialCollectionsProgressModelImpl(
      indexes: null == indexes
          ? _value._indexes
          : indexes // ignore: cast_nullable_to_non_nullable
              as Map<TutorialCollectionsName, int>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TutorialCollectionsProgressModelImpl
    extends _TutorialCollectionsProgressModel {
  const _$TutorialCollectionsProgressModelImpl(
      {required final Map<TutorialCollectionsName, int> indexes})
      : _indexes = indexes,
        super._();

  factory _$TutorialCollectionsProgressModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TutorialCollectionsProgressModelImplFromJson(json);

  /// Key - [TutorialCollectionsName]
  /// Value - int index from [TutorialEventsCollectionModel.events]
  final Map<TutorialCollectionsName, int> _indexes;

  /// Key - [TutorialCollectionsName]
  /// Value - int index from [TutorialEventsCollectionModel.events]
  @override
  Map<TutorialCollectionsName, int> get indexes {
    if (_indexes is EqualUnmodifiableMapView) return _indexes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_indexes);
  }

  @override
  String toString() {
    return 'TutorialCollectionsProgressModel(indexes: $indexes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TutorialCollectionsProgressModelImpl &&
            const DeepCollectionEquality().equals(other._indexes, _indexes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_indexes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TutorialCollectionsProgressModelImplCopyWith<
          _$TutorialCollectionsProgressModelImpl>
      get copyWith => __$$TutorialCollectionsProgressModelImplCopyWithImpl<
          _$TutorialCollectionsProgressModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TutorialCollectionsProgressModelImplToJson(
      this,
    );
  }
}

abstract class _TutorialCollectionsProgressModel
    extends TutorialCollectionsProgressModel {
  const factory _TutorialCollectionsProgressModel(
          {required final Map<TutorialCollectionsName, int> indexes}) =
      _$TutorialCollectionsProgressModelImpl;
  const _TutorialCollectionsProgressModel._() : super._();

  factory _TutorialCollectionsProgressModel.fromJson(
          Map<String, dynamic> json) =
      _$TutorialCollectionsProgressModelImpl.fromJson;

  @override

  /// Key - [TutorialCollectionsName]
  /// Value - int index from [TutorialEventsCollectionModel.events]
  Map<TutorialCollectionsName, int> get indexes;
  @override
  @JsonKey(ignore: true)
  _$$TutorialCollectionsProgressModelImplCopyWith<
          _$TutorialCollectionsProgressModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TutorialCollectionsDataModel _$TutorialCollectionsDataModelFromJson(
    Map<String, dynamic> json) {
  return _TutorialCollectionsDataModel.fromJson(json);
}

/// @nodoc
mixin _$TutorialCollectionsDataModel {
  Map<TutorialCollectionsName, List<TutorialEventModel>> get events =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TutorialCollectionsDataModelCopyWith<TutorialCollectionsDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorialCollectionsDataModelCopyWith<$Res> {
  factory $TutorialCollectionsDataModelCopyWith(
          TutorialCollectionsDataModel value,
          $Res Function(TutorialCollectionsDataModel) then) =
      _$TutorialCollectionsDataModelCopyWithImpl<$Res,
          TutorialCollectionsDataModel>;
  @useResult
  $Res call({Map<TutorialCollectionsName, List<TutorialEventModel>> events});
}

/// @nodoc
class _$TutorialCollectionsDataModelCopyWithImpl<$Res,
        $Val extends TutorialCollectionsDataModel>
    implements $TutorialCollectionsDataModelCopyWith<$Res> {
  _$TutorialCollectionsDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_value.copyWith(
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as Map<TutorialCollectionsName, List<TutorialEventModel>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TutorialCollectionsDataModelImplCopyWith<$Res>
    implements $TutorialCollectionsDataModelCopyWith<$Res> {
  factory _$$TutorialCollectionsDataModelImplCopyWith(
          _$TutorialCollectionsDataModelImpl value,
          $Res Function(_$TutorialCollectionsDataModelImpl) then) =
      __$$TutorialCollectionsDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<TutorialCollectionsName, List<TutorialEventModel>> events});
}

/// @nodoc
class __$$TutorialCollectionsDataModelImplCopyWithImpl<$Res>
    extends _$TutorialCollectionsDataModelCopyWithImpl<$Res,
        _$TutorialCollectionsDataModelImpl>
    implements _$$TutorialCollectionsDataModelImplCopyWith<$Res> {
  __$$TutorialCollectionsDataModelImplCopyWithImpl(
      _$TutorialCollectionsDataModelImpl _value,
      $Res Function(_$TutorialCollectionsDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_$TutorialCollectionsDataModelImpl(
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as Map<TutorialCollectionsName, List<TutorialEventModel>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TutorialCollectionsDataModelImpl extends _TutorialCollectionsDataModel {
  const _$TutorialCollectionsDataModelImpl(
      {required final Map<TutorialCollectionsName, List<TutorialEventModel>>
          events})
      : _events = events,
        super._();

  factory _$TutorialCollectionsDataModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TutorialCollectionsDataModelImplFromJson(json);

  final Map<TutorialCollectionsName, List<TutorialEventModel>> _events;
  @override
  Map<TutorialCollectionsName, List<TutorialEventModel>> get events {
    if (_events is EqualUnmodifiableMapView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_events);
  }

  @override
  String toString() {
    return 'TutorialCollectionsDataModel(events: $events)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TutorialCollectionsDataModelImpl &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_events));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TutorialCollectionsDataModelImplCopyWith<
          _$TutorialCollectionsDataModelImpl>
      get copyWith => __$$TutorialCollectionsDataModelImplCopyWithImpl<
          _$TutorialCollectionsDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TutorialCollectionsDataModelImplToJson(
      this,
    );
  }
}

abstract class _TutorialCollectionsDataModel
    extends TutorialCollectionsDataModel {
  const factory _TutorialCollectionsDataModel(
      {required final Map<TutorialCollectionsName, List<TutorialEventModel>>
          events}) = _$TutorialCollectionsDataModelImpl;
  const _TutorialCollectionsDataModel._() : super._();

  factory _TutorialCollectionsDataModel.fromJson(Map<String, dynamic> json) =
      _$TutorialCollectionsDataModelImpl.fromJson;

  @override
  Map<TutorialCollectionsName, List<TutorialEventModel>> get events;
  @override
  @JsonKey(ignore: true)
  _$$TutorialCollectionsDataModelImplCopyWith<
          _$TutorialCollectionsDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WorldDateTimeModel _$WorldDateTimeModelFromJson(Map<String, dynamic> json) {
  return _WorldDateTime.fromJson(json);
}

/// @nodoc
mixin _$WorldDateTimeModel {
  int get second => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorldDateTimeModelCopyWith<WorldDateTimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorldDateTimeModelCopyWith<$Res> {
  factory $WorldDateTimeModelCopyWith(
          WorldDateTimeModel value, $Res Function(WorldDateTimeModel) then) =
      _$WorldDateTimeModelCopyWithImpl<$Res, WorldDateTimeModel>;
  @useResult
  $Res call({int second});
}

/// @nodoc
class _$WorldDateTimeModelCopyWithImpl<$Res, $Val extends WorldDateTimeModel>
    implements $WorldDateTimeModelCopyWith<$Res> {
  _$WorldDateTimeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? second = null,
  }) {
    return _then(_value.copyWith(
      second: null == second
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorldDateTimeImplCopyWith<$Res>
    implements $WorldDateTimeModelCopyWith<$Res> {
  factory _$$WorldDateTimeImplCopyWith(
          _$WorldDateTimeImpl value, $Res Function(_$WorldDateTimeImpl) then) =
      __$$WorldDateTimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int second});
}

/// @nodoc
class __$$WorldDateTimeImplCopyWithImpl<$Res>
    extends _$WorldDateTimeModelCopyWithImpl<$Res, _$WorldDateTimeImpl>
    implements _$$WorldDateTimeImplCopyWith<$Res> {
  __$$WorldDateTimeImplCopyWithImpl(
      _$WorldDateTimeImpl _value, $Res Function(_$WorldDateTimeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? second = null,
  }) {
    return _then(_$WorldDateTimeImpl(
      second: null == second
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WorldDateTimeImpl extends _WorldDateTime {
  const _$WorldDateTimeImpl({this.second = 0}) : super._();

  factory _$WorldDateTimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorldDateTimeImplFromJson(json);

  @override
  @JsonKey()
  final int second;

  @override
  String toString() {
    return 'WorldDateTimeModel(second: $second)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorldDateTimeImpl &&
            (identical(other.second, second) || other.second == second));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, second);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorldDateTimeImplCopyWith<_$WorldDateTimeImpl> get copyWith =>
      __$$WorldDateTimeImplCopyWithImpl<_$WorldDateTimeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorldDateTimeImplToJson(
      this,
    );
  }
}

abstract class _WorldDateTime extends WorldDateTimeModel {
  const factory _WorldDateTime({final int second}) = _$WorldDateTimeImpl;
  const _WorldDateTime._() : super._();

  factory _WorldDateTime.fromJson(Map<String, dynamic> json) =
      _$WorldDateTimeImpl.fromJson;

  @override
  int get second;
  @override
  @JsonKey(ignore: true)
  _$$WorldDateTimeImplCopyWith<_$WorldDateTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
