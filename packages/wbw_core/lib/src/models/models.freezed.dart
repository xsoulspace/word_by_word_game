// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_AppSettingsModelCopyWith<$Res>
    implements $AppSettingsModelCopyWith<$Res> {
  factory _$$_AppSettingsModelCopyWith(
          _$_AppSettingsModel value, $Res Function(_$_AppSettingsModel) then) =
      __$$_AppSettingsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: localeFromString, toJson: localeToString)
      Locale? locale,
      BrightnessMode brightnessMode});
}

/// @nodoc
class __$$_AppSettingsModelCopyWithImpl<$Res>
    extends _$AppSettingsModelCopyWithImpl<$Res, _$_AppSettingsModel>
    implements _$$_AppSettingsModelCopyWith<$Res> {
  __$$_AppSettingsModelCopyWithImpl(
      _$_AppSettingsModel _value, $Res Function(_$_AppSettingsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = freezed,
    Object? brightnessMode = null,
  }) {
    return _then(_$_AppSettingsModel(
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
class _$_AppSettingsModel extends _AppSettingsModel {
  const _$_AppSettingsModel(
      {@JsonKey(fromJson: localeFromString, toJson: localeToString) this.locale,
      this.brightnessMode = BrightnessMode.system})
      : super._();

  factory _$_AppSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$$_AppSettingsModelFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppSettingsModel &&
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
  _$$_AppSettingsModelCopyWith<_$_AppSettingsModel> get copyWith =>
      __$$_AppSettingsModelCopyWithImpl<_$_AppSettingsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppSettingsModelToJson(
      this,
    );
  }
}

abstract class _AppSettingsModel extends AppSettingsModel {
  const factory _AppSettingsModel(
      {@JsonKey(fromJson: localeFromString, toJson: localeToString)
      final Locale? locale,
      final BrightnessMode brightnessMode}) = _$_AppSettingsModel;
  const _AppSettingsModel._() : super._();

  factory _AppSettingsModel.fromJson(Map<String, dynamic> json) =
      _$_AppSettingsModel.fromJson;

  @override
  @JsonKey(fromJson: localeFromString, toJson: localeToString)
  Locale? get locale;
  @override
  BrightnessMode get brightnessMode;
  @override
  @JsonKey(ignore: true)
  _$$_AppSettingsModelCopyWith<_$_AppSettingsModel> get copyWith =>
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
abstract class _$$_CurrentWordModelCopyWith<$Res>
    implements $CurrentWordModelCopyWith<$Res> {
  factory _$$_CurrentWordModelCopyWith(
          _$_CurrentWordModel value, $Res Function(_$_CurrentWordModel) then) =
      __$$_CurrentWordModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> inactiveIndexes, String fullWord});
}

/// @nodoc
class __$$_CurrentWordModelCopyWithImpl<$Res>
    extends _$CurrentWordModelCopyWithImpl<$Res, _$_CurrentWordModel>
    implements _$$_CurrentWordModelCopyWith<$Res> {
  __$$_CurrentWordModelCopyWithImpl(
      _$_CurrentWordModel _value, $Res Function(_$_CurrentWordModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inactiveIndexes = null,
    Object? fullWord = null,
  }) {
    return _then(_$_CurrentWordModel(
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
class _$_CurrentWordModel extends _CurrentWordModel {
  const _$_CurrentWordModel(
      {final List<int> inactiveIndexes = const [], this.fullWord = ''})
      : _inactiveIndexes = inactiveIndexes,
        super._();

  factory _$_CurrentWordModel.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentWordModelFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentWordModel &&
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
  _$$_CurrentWordModelCopyWith<_$_CurrentWordModel> get copyWith =>
      __$$_CurrentWordModelCopyWithImpl<_$_CurrentWordModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrentWordModelToJson(
      this,
    );
  }
}

abstract class _CurrentWordModel extends CurrentWordModel {
  const factory _CurrentWordModel(
      {final List<int> inactiveIndexes,
      final String fullWord}) = _$_CurrentWordModel;
  const _CurrentWordModel._() : super._();

  factory _CurrentWordModel.fromJson(Map<String, dynamic> json) =
      _$_CurrentWordModel.fromJson;

  @override
  List<int> get inactiveIndexes;
  @override
  String get fullWord;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentWordModelCopyWith<_$_CurrentWordModel> get copyWith =>
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
abstract class _$$_GameModelCopyWith<$Res>
    implements $GameSaveModelCopyWith<$Res> {
  factory _$$_GameModelCopyWith(
          _$_GameModel value, $Res Function(_$_GameModel) then) =
      __$$_GameModelCopyWithImpl<$Res>;
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
class __$$_GameModelCopyWithImpl<$Res>
    extends _$GameSaveModelCopyWithImpl<$Res, _$_GameModel>
    implements _$$_GameModelCopyWith<$Res> {
  __$$_GameModelCopyWithImpl(
      _$_GameModel _value, $Res Function(_$_GameModel) _then)
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
    return _then(_$_GameModel(
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
class _$_GameModel extends _GameModel {
  const _$_GameModel(
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

  factory _$_GameModel.fromJson(Map<String, dynamic> json) =>
      _$$_GameModelFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameModel &&
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
  _$$_GameModelCopyWith<_$_GameModel> get copyWith =>
      __$$_GameModelCopyWithImpl<_$_GameModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameModelToJson(
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
      final Map<CanvasDataModelId, LevelModel> savedLevels}) = _$_GameModel;
  const _GameModel._() : super._();

  factory _GameModel.fromJson(Map<String, dynamic> json) =
      _$_GameModel.fromJson;

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
  _$$_GameModelCopyWith<_$_GameModel> get copyWith =>
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
abstract class _$$_LevelCharactersModelCopyWith<$Res>
    implements $LevelCharactersModelCopyWith<$Res> {
  factory _$$_LevelCharactersModelCopyWith(_$_LevelCharactersModel value,
          $Res Function(_$_LevelCharactersModel) then) =
      __$$_LevelCharactersModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlayerCharacterModel playerCharacter});

  @override
  $PlayerCharacterModelCopyWith<$Res> get playerCharacter;
}

/// @nodoc
class __$$_LevelCharactersModelCopyWithImpl<$Res>
    extends _$LevelCharactersModelCopyWithImpl<$Res, _$_LevelCharactersModel>
    implements _$$_LevelCharactersModelCopyWith<$Res> {
  __$$_LevelCharactersModelCopyWithImpl(_$_LevelCharactersModel _value,
      $Res Function(_$_LevelCharactersModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerCharacter = null,
  }) {
    return _then(_$_LevelCharactersModel(
      playerCharacter: null == playerCharacter
          ? _value.playerCharacter
          : playerCharacter // ignore: cast_nullable_to_non_nullable
              as PlayerCharacterModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_LevelCharactersModel extends _LevelCharactersModel {
  const _$_LevelCharactersModel({required this.playerCharacter}) : super._();

  factory _$_LevelCharactersModel.fromJson(Map<String, dynamic> json) =>
      _$$_LevelCharactersModelFromJson(json);

  @override
  final PlayerCharacterModel playerCharacter;

  @override
  String toString() {
    return 'LevelCharactersModel(playerCharacter: $playerCharacter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LevelCharactersModel &&
            (identical(other.playerCharacter, playerCharacter) ||
                other.playerCharacter == playerCharacter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, playerCharacter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LevelCharactersModelCopyWith<_$_LevelCharactersModel> get copyWith =>
      __$$_LevelCharactersModelCopyWithImpl<_$_LevelCharactersModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LevelCharactersModelToJson(
      this,
    );
  }
}

abstract class _LevelCharactersModel extends LevelCharactersModel {
  const factory _LevelCharactersModel(
          {required final PlayerCharacterModel playerCharacter}) =
      _$_LevelCharactersModel;
  const _LevelCharactersModel._() : super._();

  factory _LevelCharactersModel.fromJson(Map<String, dynamic> json) =
      _$_LevelCharactersModel.fromJson;

  @override
  PlayerCharacterModel get playerCharacter;
  @override
  @JsonKey(ignore: true)
  _$$_LevelCharactersModelCopyWith<_$_LevelCharactersModel> get copyWith =>
      throw _privateConstructorUsedError;
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
      TechnologyTreeProgressModel technologyTreeProgress});

  $LevelPlayersModelCopyWith<$Res> get players;
  $LevelCharactersModelCopyWith<$Res> get characters;
  $WindModelCopyWith<$Res> get wind;
  $CanvasDataModelIdCopyWith<$Res> get canvasDataId;
  $CurrentWordModelCopyWith<$Res> get currentWord;
  $WorldDateTimeModelCopyWith<$Res> get dateTime;
  $WorldDateTimeModelCopyWith<$Res> get lastDateTime;
  $TechnologyTreeProgressModelCopyWith<$Res> get technologyTreeProgress;
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
}

/// @nodoc
abstract class _$$_LevelModelCopyWith<$Res>
    implements $LevelModelCopyWith<$Res> {
  factory _$$_LevelModelCopyWith(
          _$_LevelModel value, $Res Function(_$_LevelModel) then) =
      __$$_LevelModelCopyWithImpl<$Res>;
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
      TechnologyTreeProgressModel technologyTreeProgress});

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
}

/// @nodoc
class __$$_LevelModelCopyWithImpl<$Res>
    extends _$LevelModelCopyWithImpl<$Res, _$_LevelModel>
    implements _$$_LevelModelCopyWith<$Res> {
  __$$_LevelModelCopyWithImpl(
      _$_LevelModel _value, $Res Function(_$_LevelModel) _then)
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
  }) {
    return _then(_$_LevelModel(
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
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_LevelModel extends _LevelModel {
  const _$_LevelModel(
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
      this.technologyTreeProgress = TechnologyTreeProgressModel.empty})
      : _weathers = weathers,
        _words = words,
        super._();

  factory _$_LevelModel.fromJson(Map<String, dynamic> json) =>
      _$$_LevelModelFromJson(json);

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
  String toString() {
    return 'LevelModel(players: $players, characters: $characters, tilesetType: $tilesetType, weathers: $weathers, wind: $wind, canvasDataId: $canvasDataId, currentWord: $currentWord, words: $words, latestWord: $latestWord, phaseType: $phaseType, actionMultiplier: $actionMultiplier, dateTime: $dateTime, lastDateTime: $lastDateTime, technologyTreeProgress: $technologyTreeProgress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LevelModel &&
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
                other.technologyTreeProgress == technologyTreeProgress));
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
      technologyTreeProgress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LevelModelCopyWith<_$_LevelModel> get copyWith =>
      __$$_LevelModelCopyWithImpl<_$_LevelModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LevelModelToJson(
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
          final TechnologyTreeProgressModel technologyTreeProgress}) =
      _$_LevelModel;
  const _LevelModel._() : super._();

  factory _LevelModel.fromJson(Map<String, dynamic> json) =
      _$_LevelModel.fromJson;

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
  @JsonKey(ignore: true)
  _$$_LevelModelCopyWith<_$_LevelModel> get copyWith =>
      throw _privateConstructorUsedError;
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
abstract class _$$_LevelPlayersModelCopyWith<$Res>
    implements $LevelPlayersModelCopyWith<$Res> {
  factory _$$_LevelPlayersModelCopyWith(_$_LevelPlayersModel value,
          $Res Function(_$_LevelPlayersModel) then) =
      __$$_LevelPlayersModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PlayerProfileModel> players, String currentPlayerId});
}

/// @nodoc
class __$$_LevelPlayersModelCopyWithImpl<$Res>
    extends _$LevelPlayersModelCopyWithImpl<$Res, _$_LevelPlayersModel>
    implements _$$_LevelPlayersModelCopyWith<$Res> {
  __$$_LevelPlayersModelCopyWithImpl(
      _$_LevelPlayersModel _value, $Res Function(_$_LevelPlayersModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? players = null,
    Object? currentPlayerId = null,
  }) {
    return _then(_$_LevelPlayersModel(
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
class _$_LevelPlayersModel extends _LevelPlayersModel {
  const _$_LevelPlayersModel(
      {required final List<PlayerProfileModel> players,
      required this.currentPlayerId})
      : _players = players,
        super._();

  factory _$_LevelPlayersModel.fromJson(Map<String, dynamic> json) =>
      _$$_LevelPlayersModelFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LevelPlayersModel &&
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
  _$$_LevelPlayersModelCopyWith<_$_LevelPlayersModel> get copyWith =>
      __$$_LevelPlayersModelCopyWithImpl<_$_LevelPlayersModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LevelPlayersModelToJson(
      this,
    );
  }
}

abstract class _LevelPlayersModel extends LevelPlayersModel {
  const factory _LevelPlayersModel(
      {required final List<PlayerProfileModel> players,
      required final String currentPlayerId}) = _$_LevelPlayersModel;
  const _LevelPlayersModel._() : super._();

  factory _LevelPlayersModel.fromJson(Map<String, dynamic> json) =
      _$_LevelPlayersModel.fromJson;

  @override
  List<PlayerProfileModel> get players;
  @override
  String get currentPlayerId;
  @override
  @JsonKey(ignore: true)
  _$$_LevelPlayersModelCopyWith<_$_LevelPlayersModel> get copyWith =>
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
abstract class _$$_LocalDictionaryModelCopyWith<$Res>
    implements $LocalDictionaryModelCopyWith<$Res> {
  factory _$$_LocalDictionaryModelCopyWith(_$_LocalDictionaryModel value,
          $Res Function(_$_LocalDictionaryModel) then) =
      __$$_LocalDictionaryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Set<String> words});
}

/// @nodoc
class __$$_LocalDictionaryModelCopyWithImpl<$Res>
    extends _$LocalDictionaryModelCopyWithImpl<$Res, _$_LocalDictionaryModel>
    implements _$$_LocalDictionaryModelCopyWith<$Res> {
  __$$_LocalDictionaryModelCopyWithImpl(_$_LocalDictionaryModel _value,
      $Res Function(_$_LocalDictionaryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? words = null,
  }) {
    return _then(_$_LocalDictionaryModel(
      words: null == words
          ? _value._words
          : words // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_LocalDictionaryModel implements _LocalDictionaryModel {
  const _$_LocalDictionaryModel({final Set<String> words = const {}})
      : _words = words;

  factory _$_LocalDictionaryModel.fromJson(Map<String, dynamic> json) =>
      _$$_LocalDictionaryModelFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalDictionaryModel &&
            const DeepCollectionEquality().equals(other._words, _words));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_words));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocalDictionaryModelCopyWith<_$_LocalDictionaryModel> get copyWith =>
      __$$_LocalDictionaryModelCopyWithImpl<_$_LocalDictionaryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocalDictionaryModelToJson(
      this,
    );
  }
}

abstract class _LocalDictionaryModel implements LocalDictionaryModel {
  const factory _LocalDictionaryModel({final Set<String> words}) =
      _$_LocalDictionaryModel;

  factory _LocalDictionaryModel.fromJson(Map<String, dynamic> json) =
      _$_LocalDictionaryModel.fromJson;

  @override
  Set<String> get words;
  @override
  @JsonKey(ignore: true)
  _$$_LocalDictionaryModelCopyWith<_$_LocalDictionaryModel> get copyWith =>
      throw _privateConstructorUsedError;
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
abstract class _$$_PlayerCharacterModelCopyWith<$Res>
    implements $PlayerCharacterModelCopyWith<$Res> {
  factory _$$_PlayerCharacterModelCopyWith(_$_PlayerCharacterModel value,
          $Res Function(_$_PlayerCharacterModel) then) =
      __$$_PlayerCharacterModelCopyWithImpl<$Res>;
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
class __$$_PlayerCharacterModelCopyWithImpl<$Res>
    extends _$PlayerCharacterModelCopyWithImpl<$Res, _$_PlayerCharacterModel>
    implements _$$_PlayerCharacterModelCopyWith<$Res> {
  __$$_PlayerCharacterModelCopyWithImpl(_$_PlayerCharacterModel _value,
      $Res Function(_$_PlayerCharacterModel) _then)
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
    return _then(_$_PlayerCharacterModel(
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
class _$_PlayerCharacterModel extends _PlayerCharacterModel {
  const _$_PlayerCharacterModel(
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

  factory _$_PlayerCharacterModel.fromJson(Map<String, dynamic> json) =>
      _$$_PlayerCharacterModelFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayerCharacterModel &&
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
  _$$_PlayerCharacterModelCopyWith<_$_PlayerCharacterModel> get copyWith =>
      __$$_PlayerCharacterModelCopyWithImpl<_$_PlayerCharacterModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlayerCharacterModelToJson(
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
      final bool isAnchored}) = _$_PlayerCharacterModel;
  const _PlayerCharacterModel._() : super._();

  factory _PlayerCharacterModel.fromJson(Map<String, dynamic> json) =
      _$_PlayerCharacterModel.fromJson;

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
  _$$_PlayerCharacterModelCopyWith<_$_PlayerCharacterModel> get copyWith =>
      throw _privateConstructorUsedError;
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
abstract class _$$_SerializedVector2CopyWith<$Res>
    implements $SerializedVector2CopyWith<$Res> {
  factory _$$_SerializedVector2CopyWith(_$_SerializedVector2 value,
          $Res Function(_$_SerializedVector2) then) =
      __$$_SerializedVector2CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double x, double y});
}

/// @nodoc
class __$$_SerializedVector2CopyWithImpl<$Res>
    extends _$SerializedVector2CopyWithImpl<$Res, _$_SerializedVector2>
    implements _$$_SerializedVector2CopyWith<$Res> {
  __$$_SerializedVector2CopyWithImpl(
      _$_SerializedVector2 _value, $Res Function(_$_SerializedVector2) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$_SerializedVector2(
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
class _$_SerializedVector2 extends _SerializedVector2 {
  const _$_SerializedVector2({this.x = 0, this.y = 0}) : super._();

  factory _$_SerializedVector2.fromJson(Map<String, dynamic> json) =>
      _$$_SerializedVector2FromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SerializedVector2 &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, x, y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SerializedVector2CopyWith<_$_SerializedVector2> get copyWith =>
      __$$_SerializedVector2CopyWithImpl<_$_SerializedVector2>(
          this, _$identity);
}

abstract class _SerializedVector2 extends SerializedVector2 {
  const factory _SerializedVector2({final double x, final double y}) =
      _$_SerializedVector2;
  const _SerializedVector2._() : super._();

  factory _SerializedVector2.fromJson(Map<String, dynamic> json) =
      _$_SerializedVector2.fromJson;

  @override
  double get x;
  @override
  double get y;
  @override
  @JsonKey(ignore: true)
  _$$_SerializedVector2CopyWith<_$_SerializedVector2> get copyWith =>
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
abstract class _$$_PlayerProfileModelCopyWith<$Res>
    implements $PlayerProfileModelCopyWith<$Res> {
  factory _$$_PlayerProfileModelCopyWith(_$_PlayerProfileModel value,
          $Res Function(_$_PlayerProfileModel) then) =
      __$$_PlayerProfileModelCopyWithImpl<$Res>;
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
class __$$_PlayerProfileModelCopyWithImpl<$Res>
    extends _$PlayerProfileModelCopyWithImpl<$Res, _$_PlayerProfileModel>
    implements _$$_PlayerProfileModelCopyWith<$Res> {
  __$$_PlayerProfileModelCopyWithImpl(
      _$_PlayerProfileModel _value, $Res Function(_$_PlayerProfileModel) _then)
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
    return _then(_$_PlayerProfileModel(
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
class _$_PlayerProfileModel extends _PlayerProfileModel {
  const _$_PlayerProfileModel(
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

  factory _$_PlayerProfileModel.fromJson(Map<String, dynamic> json) =>
      _$$_PlayerProfileModelFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayerProfileModel &&
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
  _$$_PlayerProfileModelCopyWith<_$_PlayerProfileModel> get copyWith =>
      __$$_PlayerProfileModelCopyWithImpl<_$_PlayerProfileModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlayerProfileModelToJson(
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
      final PlayerHighscoreModel highscore}) = _$_PlayerProfileModel;
  const _PlayerProfileModel._() : super._();

  factory _PlayerProfileModel.fromJson(Map<String, dynamic> json) =
      _$_PlayerProfileModel.fromJson;

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
  _$$_PlayerProfileModelCopyWith<_$_PlayerProfileModel> get copyWith =>
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
abstract class _$$_PlayerHighscoreModelCopyWith<$Res>
    implements $PlayerHighscoreModelCopyWith<$Res> {
  factory _$$_PlayerHighscoreModelCopyWith(_$_PlayerHighscoreModel value,
          $Res Function(_$_PlayerHighscoreModel) then) =
      __$$_PlayerHighscoreModelCopyWithImpl<$Res>;
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
class __$$_PlayerHighscoreModelCopyWithImpl<$Res>
    extends _$PlayerHighscoreModelCopyWithImpl<$Res, _$_PlayerHighscoreModel>
    implements _$$_PlayerHighscoreModelCopyWith<$Res> {
  __$$_PlayerHighscoreModelCopyWithImpl(_$_PlayerHighscoreModel _value,
      $Res Function(_$_PlayerHighscoreModel) _then)
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
    return _then(_$_PlayerHighscoreModel(
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
class _$_PlayerHighscoreModel extends _PlayerHighscoreModel {
  const _$_PlayerHighscoreModel(
      {this.maxWordsCount = 0,
      this.maxLettersCount = 0,
      this.totalWordsCount = 0,
      this.totalLettersCount = 0,
      this.score = ScoreModel.zero})
      : super._();

  factory _$_PlayerHighscoreModel.fromJson(Map<String, dynamic> json) =>
      _$$_PlayerHighscoreModelFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayerHighscoreModel &&
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
  _$$_PlayerHighscoreModelCopyWith<_$_PlayerHighscoreModel> get copyWith =>
      __$$_PlayerHighscoreModelCopyWithImpl<_$_PlayerHighscoreModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlayerHighscoreModelToJson(
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
      final ScoreModel score}) = _$_PlayerHighscoreModel;
  const _PlayerHighscoreModel._() : super._();

  factory _PlayerHighscoreModel.fromJson(Map<String, dynamic> json) =
      _$_PlayerHighscoreModel.fromJson;

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
  _$$_PlayerHighscoreModelCopyWith<_$_PlayerHighscoreModel> get copyWith =>
      throw _privateConstructorUsedError;
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
abstract class _$$_PlayerLevelHighscoreModelCopyWith<$Res>
    implements $PlayerLevelHighscoreModelCopyWith<$Res> {
  factory _$$_PlayerLevelHighscoreModelCopyWith(
          _$_PlayerLevelHighscoreModel value,
          $Res Function(_$_PlayerLevelHighscoreModel) then) =
      __$$_PlayerLevelHighscoreModelCopyWithImpl<$Res>;
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
class __$$_PlayerLevelHighscoreModelCopyWithImpl<$Res>
    extends _$PlayerLevelHighscoreModelCopyWithImpl<$Res,
        _$_PlayerLevelHighscoreModel>
    implements _$$_PlayerLevelHighscoreModelCopyWith<$Res> {
  __$$_PlayerLevelHighscoreModelCopyWithImpl(
      _$_PlayerLevelHighscoreModel _value,
      $Res Function(_$_PlayerLevelHighscoreModel) _then)
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
    return _then(_$_PlayerLevelHighscoreModel(
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
class _$_PlayerLevelHighscoreModel extends _PlayerLevelHighscoreModel {
  const _$_PlayerLevelHighscoreModel(
      {required this.levelId,
      this.maxDistance = 0,
      this.totalDistance = 0,
      this.landingsCount = 0,
      this.flightTime = 0})
      : super._();

  factory _$_PlayerLevelHighscoreModel.fromJson(Map<String, dynamic> json) =>
      _$$_PlayerLevelHighscoreModelFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayerLevelHighscoreModel &&
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
  _$$_PlayerLevelHighscoreModelCopyWith<_$_PlayerLevelHighscoreModel>
      get copyWith => __$$_PlayerLevelHighscoreModelCopyWithImpl<
          _$_PlayerLevelHighscoreModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlayerLevelHighscoreModelToJson(
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
      final double flightTime}) = _$_PlayerLevelHighscoreModel;
  const _PlayerLevelHighscoreModel._() : super._();

  factory _PlayerLevelHighscoreModel.fromJson(Map<String, dynamic> json) =
      _$_PlayerLevelHighscoreModel.fromJson;

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
  _$$_PlayerLevelHighscoreModelCopyWith<_$_PlayerLevelHighscoreModel>
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
abstract class _$$_ScoreModelCopyWith<$Res>
    implements $ScoreModelCopyWith<$Res> {
  factory _$$_ScoreModelCopyWith(
          _$_ScoreModel value, $Res Function(_$_ScoreModel) then) =
      __$$_ScoreModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value});
}

/// @nodoc
class __$$_ScoreModelCopyWithImpl<$Res>
    extends _$ScoreModelCopyWithImpl<$Res, _$_ScoreModel>
    implements _$$_ScoreModelCopyWith<$Res> {
  __$$_ScoreModelCopyWithImpl(
      _$_ScoreModel _value, $Res Function(_$_ScoreModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_ScoreModel(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScoreModel extends _ScoreModel {
  const _$_ScoreModel({required this.value}) : super._();

  factory _$_ScoreModel.fromJson(Map<String, dynamic> json) =>
      _$$_ScoreModelFromJson(json);

  @override
  final double value;

  @override
  String toString() {
    return 'ScoreModel(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScoreModel &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScoreModelCopyWith<_$_ScoreModel> get copyWith =>
      __$$_ScoreModelCopyWithImpl<_$_ScoreModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScoreModelToJson(
      this,
    );
  }
}

abstract class _ScoreModel extends ScoreModel {
  const factory _ScoreModel({required final double value}) = _$_ScoreModel;
  const _ScoreModel._() : super._();

  factory _ScoreModel.fromJson(Map<String, dynamic> json) =
      _$_ScoreModel.fromJson;

  @override
  double get value;
  @override
  @JsonKey(ignore: true)
  _$$_ScoreModelCopyWith<_$_ScoreModel> get copyWith =>
      throw _privateConstructorUsedError;
}

TechnologyModelId _$TechnologyModelIdFromJson(Map<String, dynamic> json) {
  return _TechnologyModelId.fromJson(json);
}

/// @nodoc
mixin _$TechnologyModelId {
  TechnologyType get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TechnologyModelIdCopyWith<TechnologyModelId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TechnologyModelIdCopyWith<$Res> {
  factory $TechnologyModelIdCopyWith(
          TechnologyModelId value, $Res Function(TechnologyModelId) then) =
      _$TechnologyModelIdCopyWithImpl<$Res, TechnologyModelId>;
  @useResult
  $Res call({TechnologyType value});
}

/// @nodoc
class _$TechnologyModelIdCopyWithImpl<$Res, $Val extends TechnologyModelId>
    implements $TechnologyModelIdCopyWith<$Res> {
  _$TechnologyModelIdCopyWithImpl(this._value, this._then);

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
              as TechnologyType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TechnologyModelIdCopyWith<$Res>
    implements $TechnologyModelIdCopyWith<$Res> {
  factory _$$_TechnologyModelIdCopyWith(_$_TechnologyModelId value,
          $Res Function(_$_TechnologyModelId) then) =
      __$$_TechnologyModelIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TechnologyType value});
}

/// @nodoc
class __$$_TechnologyModelIdCopyWithImpl<$Res>
    extends _$TechnologyModelIdCopyWithImpl<$Res, _$_TechnologyModelId>
    implements _$$_TechnologyModelIdCopyWith<$Res> {
  __$$_TechnologyModelIdCopyWithImpl(
      _$_TechnologyModelId _value, $Res Function(_$_TechnologyModelId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_TechnologyModelId(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as TechnologyType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TechnologyModelId extends _TechnologyModelId {
  const _$_TechnologyModelId({required this.value}) : super._();

  factory _$_TechnologyModelId.fromJson(Map<String, dynamic> json) =>
      _$$_TechnologyModelIdFromJson(json);

  @override
  final TechnologyType value;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TechnologyModelIdCopyWith<_$_TechnologyModelId> get copyWith =>
      __$$_TechnologyModelIdCopyWithImpl<_$_TechnologyModelId>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TechnologyModelIdToJson(
      this,
    );
  }
}

abstract class _TechnologyModelId extends TechnologyModelId {
  const factory _TechnologyModelId({required final TechnologyType value}) =
      _$_TechnologyModelId;
  const _TechnologyModelId._() : super._();

  factory _TechnologyModelId.fromJson(Map<String, dynamic> json) =
      _$_TechnologyModelId.fromJson;

  @override
  TechnologyType get value;
  @override
  @JsonKey(ignore: true)
  _$$_TechnologyModelIdCopyWith<_$_TechnologyModelId> get copyWith =>
      throw _privateConstructorUsedError;
}

TechnologyTreeModel _$TechnologyTreeModelFromJson(Map<String, dynamic> json) {
  return _TechnologyTreeModel.fromJson(json);
}

/// @nodoc
mixin _$TechnologyTreeModel {
  @JsonKey(
      fromJson: TechnologyTreeModel._technologiesFromJson,
      toJson: TechnologyTreeModel._technologiesToJson)
  Map<TechnologyModelId, TechnologyModel> get technologies =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TechnologyTreeModelCopyWith<TechnologyTreeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TechnologyTreeModelCopyWith<$Res> {
  factory $TechnologyTreeModelCopyWith(
          TechnologyTreeModel value, $Res Function(TechnologyTreeModel) then) =
      _$TechnologyTreeModelCopyWithImpl<$Res, TechnologyTreeModel>;
  @useResult
  $Res call(
      {@JsonKey(
          fromJson: TechnologyTreeModel._technologiesFromJson,
          toJson: TechnologyTreeModel._technologiesToJson)
      Map<TechnologyModelId, TechnologyModel> technologies});
}

/// @nodoc
class _$TechnologyTreeModelCopyWithImpl<$Res, $Val extends TechnologyTreeModel>
    implements $TechnologyTreeModelCopyWith<$Res> {
  _$TechnologyTreeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? technologies = null,
  }) {
    return _then(_value.copyWith(
      technologies: null == technologies
          ? _value.technologies
          : technologies // ignore: cast_nullable_to_non_nullable
              as Map<TechnologyModelId, TechnologyModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TechnologyTreeModelCopyWith<$Res>
    implements $TechnologyTreeModelCopyWith<$Res> {
  factory _$$_TechnologyTreeModelCopyWith(_$_TechnologyTreeModel value,
          $Res Function(_$_TechnologyTreeModel) then) =
      __$$_TechnologyTreeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          fromJson: TechnologyTreeModel._technologiesFromJson,
          toJson: TechnologyTreeModel._technologiesToJson)
      Map<TechnologyModelId, TechnologyModel> technologies});
}

/// @nodoc
class __$$_TechnologyTreeModelCopyWithImpl<$Res>
    extends _$TechnologyTreeModelCopyWithImpl<$Res, _$_TechnologyTreeModel>
    implements _$$_TechnologyTreeModelCopyWith<$Res> {
  __$$_TechnologyTreeModelCopyWithImpl(_$_TechnologyTreeModel _value,
      $Res Function(_$_TechnologyTreeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? technologies = null,
  }) {
    return _then(_$_TechnologyTreeModel(
      technologies: null == technologies
          ? _value._technologies
          : technologies // ignore: cast_nullable_to_non_nullable
              as Map<TechnologyModelId, TechnologyModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TechnologyTreeModel extends _TechnologyTreeModel {
  const _$_TechnologyTreeModel(
      {@JsonKey(
          fromJson: TechnologyTreeModel._technologiesFromJson,
          toJson: TechnologyTreeModel._technologiesToJson)
      final Map<TechnologyModelId, TechnologyModel> technologies = const {}})
      : _technologies = technologies,
        super._();

  factory _$_TechnologyTreeModel.fromJson(Map<String, dynamic> json) =>
      _$$_TechnologyTreeModelFromJson(json);

  final Map<TechnologyModelId, TechnologyModel> _technologies;
  @override
  @JsonKey(
      fromJson: TechnologyTreeModel._technologiesFromJson,
      toJson: TechnologyTreeModel._technologiesToJson)
  Map<TechnologyModelId, TechnologyModel> get technologies {
    if (_technologies is EqualUnmodifiableMapView) return _technologies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_technologies);
  }

  @override
  String toString() {
    return 'TechnologyTreeModel(technologies: $technologies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TechnologyTreeModel &&
            const DeepCollectionEquality()
                .equals(other._technologies, _technologies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_technologies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TechnologyTreeModelCopyWith<_$_TechnologyTreeModel> get copyWith =>
      __$$_TechnologyTreeModelCopyWithImpl<_$_TechnologyTreeModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TechnologyTreeModelToJson(
      this,
    );
  }
}

abstract class _TechnologyTreeModel extends TechnologyTreeModel {
  const factory _TechnologyTreeModel(
          {@JsonKey(
              fromJson: TechnologyTreeModel._technologiesFromJson,
              toJson: TechnologyTreeModel._technologiesToJson)
          final Map<TechnologyModelId, TechnologyModel> technologies}) =
      _$_TechnologyTreeModel;
  const _TechnologyTreeModel._() : super._();

  factory _TechnologyTreeModel.fromJson(Map<String, dynamic> json) =
      _$_TechnologyTreeModel.fromJson;

  @override
  @JsonKey(
      fromJson: TechnologyTreeModel._technologiesFromJson,
      toJson: TechnologyTreeModel._technologiesToJson)
  Map<TechnologyModelId, TechnologyModel> get technologies;
  @override
  @JsonKey(ignore: true)
  _$$_TechnologyTreeModelCopyWith<_$_TechnologyTreeModel> get copyWith =>
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
      Map<TechnologyModelId, TechnologyProgressModel> technologies});
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
  }) {
    return _then(_value.copyWith(
      technologies: null == technologies
          ? _value.technologies
          : technologies // ignore: cast_nullable_to_non_nullable
              as Map<TechnologyModelId, TechnologyProgressModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TechnologyTreeProgressModelCopyWith<$Res>
    implements $TechnologyTreeProgressModelCopyWith<$Res> {
  factory _$$_TechnologyTreeProgressModelCopyWith(
          _$_TechnologyTreeProgressModel value,
          $Res Function(_$_TechnologyTreeProgressModel) then) =
      __$$_TechnologyTreeProgressModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          fromJson: TechnologyTreeProgressModel._technologiesFromJson,
          toJson: TechnologyTreeProgressModel._technologiesToJson)
      Map<TechnologyModelId, TechnologyProgressModel> technologies});
}

/// @nodoc
class __$$_TechnologyTreeProgressModelCopyWithImpl<$Res>
    extends _$TechnologyTreeProgressModelCopyWithImpl<$Res,
        _$_TechnologyTreeProgressModel>
    implements _$$_TechnologyTreeProgressModelCopyWith<$Res> {
  __$$_TechnologyTreeProgressModelCopyWithImpl(
      _$_TechnologyTreeProgressModel _value,
      $Res Function(_$_TechnologyTreeProgressModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? technologies = null,
  }) {
    return _then(_$_TechnologyTreeProgressModel(
      technologies: null == technologies
          ? _value._technologies
          : technologies // ignore: cast_nullable_to_non_nullable
              as Map<TechnologyModelId, TechnologyProgressModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TechnologyTreeProgressModel extends _TechnologyTreeProgressModel {
  const _$_TechnologyTreeProgressModel(
      {@JsonKey(
          fromJson: TechnologyTreeProgressModel._technologiesFromJson,
          toJson: TechnologyTreeProgressModel._technologiesToJson)
      final Map<TechnologyModelId, TechnologyProgressModel> technologies =
          const {}})
      : _technologies = technologies,
        super._();

  factory _$_TechnologyTreeProgressModel.fromJson(Map<String, dynamic> json) =>
      _$$_TechnologyTreeProgressModelFromJson(json);

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
  String toString() {
    return 'TechnologyTreeProgressModel(technologies: $technologies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TechnologyTreeProgressModel &&
            const DeepCollectionEquality()
                .equals(other._technologies, _technologies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_technologies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TechnologyTreeProgressModelCopyWith<_$_TechnologyTreeProgressModel>
      get copyWith => __$$_TechnologyTreeProgressModelCopyWithImpl<
          _$_TechnologyTreeProgressModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TechnologyTreeProgressModelToJson(
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
          final Map<TechnologyModelId, TechnologyProgressModel> technologies}) =
      _$_TechnologyTreeProgressModel;
  const _TechnologyTreeProgressModel._() : super._();

  factory _TechnologyTreeProgressModel.fromJson(Map<String, dynamic> json) =
      _$_TechnologyTreeProgressModel.fromJson;

  @override
  @JsonKey(
      fromJson: TechnologyTreeProgressModel._technologiesFromJson,
      toJson: TechnologyTreeProgressModel._technologiesToJson)
  Map<TechnologyModelId, TechnologyProgressModel> get technologies;
  @override
  @JsonKey(ignore: true)
  _$$_TechnologyTreeProgressModelCopyWith<_$_TechnologyTreeProgressModel>
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

  $TechnologyModelIdCopyWith<$Res> get id;
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
  $TechnologyModelIdCopyWith<$Res> get id {
    return $TechnologyModelIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
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
abstract class _$$_TechnologyProgressModelCopyWith<$Res>
    implements $TechnologyProgressModelCopyWith<$Res> {
  factory _$$_TechnologyProgressModelCopyWith(_$_TechnologyProgressModel value,
          $Res Function(_$_TechnologyProgressModel) then) =
      __$$_TechnologyProgressModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TechnologyModelId id, TechnologyUnlockConditionModel unlockCondition});

  @override
  $TechnologyModelIdCopyWith<$Res> get id;
  @override
  $TechnologyUnlockConditionModelCopyWith<$Res> get unlockCondition;
}

/// @nodoc
class __$$_TechnologyProgressModelCopyWithImpl<$Res>
    extends _$TechnologyProgressModelCopyWithImpl<$Res,
        _$_TechnologyProgressModel>
    implements _$$_TechnologyProgressModelCopyWith<$Res> {
  __$$_TechnologyProgressModelCopyWithImpl(_$_TechnologyProgressModel _value,
      $Res Function(_$_TechnologyProgressModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? unlockCondition = null,
  }) {
    return _then(_$_TechnologyProgressModel(
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
@JsonSerializable()
class _$_TechnologyProgressModel extends _TechnologyProgressModel {
  const _$_TechnologyProgressModel(
      {required this.id, required this.unlockCondition})
      : super._();

  factory _$_TechnologyProgressModel.fromJson(Map<String, dynamic> json) =>
      _$$_TechnologyProgressModelFromJson(json);

  @override
  final TechnologyModelId id;
  @override
  final TechnologyUnlockConditionModel unlockCondition;

  @override
  String toString() {
    return 'TechnologyProgressModel(id: $id, unlockCondition: $unlockCondition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TechnologyProgressModel &&
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
  _$$_TechnologyProgressModelCopyWith<_$_TechnologyProgressModel>
      get copyWith =>
          __$$_TechnologyProgressModelCopyWithImpl<_$_TechnologyProgressModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TechnologyProgressModelToJson(
      this,
    );
  }
}

abstract class _TechnologyProgressModel extends TechnologyProgressModel {
  const factory _TechnologyProgressModel(
          {required final TechnologyModelId id,
          required final TechnologyUnlockConditionModel unlockCondition}) =
      _$_TechnologyProgressModel;
  const _TechnologyProgressModel._() : super._();

  factory _TechnologyProgressModel.fromJson(Map<String, dynamic> json) =
      _$_TechnologyProgressModel.fromJson;

  @override
  TechnologyModelId get id;
  @override
  TechnologyUnlockConditionModel get unlockCondition;
  @override
  @JsonKey(ignore: true)
  _$$_TechnologyProgressModelCopyWith<_$_TechnologyProgressModel>
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
  TechnologyUnlockConditionModel get unlockCondition =>
      throw _privateConstructorUsedError;
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
      TechnologyModelId? parentTechnologyId});

  $TechnologyModelIdCopyWith<$Res> get id;
  $LocalizedMapCopyWith<$Res> get title;
  $TechnologyUnlockConditionModelCopyWith<$Res> get unlockCondition;
  $TechnologyModelIdCopyWith<$Res>? get parentTechnologyId;
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
      parentTechnologyId: freezed == parentTechnologyId
          ? _value.parentTechnologyId
          : parentTechnologyId // ignore: cast_nullable_to_non_nullable
              as TechnologyModelId?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TechnologyModelIdCopyWith<$Res> get id {
    return $TechnologyModelIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
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

  @override
  @pragma('vm:prefer-inline')
  $TechnologyModelIdCopyWith<$Res>? get parentTechnologyId {
    if (_value.parentTechnologyId == null) {
      return null;
    }

    return $TechnologyModelIdCopyWith<$Res>(_value.parentTechnologyId!,
        (value) {
      return _then(_value.copyWith(parentTechnologyId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TechnologyModelCopyWith<$Res>
    implements $TechnologyModelCopyWith<$Res> {
  factory _$$_TechnologyModelCopyWith(
          _$_TechnologyModel value, $Res Function(_$_TechnologyModel) then) =
      __$$_TechnologyModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TechnologyModelId id,
      LocalizedMap title,
      TechnologyUnlockConditionModel unlockCondition,
      TechnologyModelId? parentTechnologyId});

  @override
  $TechnologyModelIdCopyWith<$Res> get id;
  @override
  $LocalizedMapCopyWith<$Res> get title;
  @override
  $TechnologyUnlockConditionModelCopyWith<$Res> get unlockCondition;
  @override
  $TechnologyModelIdCopyWith<$Res>? get parentTechnologyId;
}

/// @nodoc
class __$$_TechnologyModelCopyWithImpl<$Res>
    extends _$TechnologyModelCopyWithImpl<$Res, _$_TechnologyModel>
    implements _$$_TechnologyModelCopyWith<$Res> {
  __$$_TechnologyModelCopyWithImpl(
      _$_TechnologyModel _value, $Res Function(_$_TechnologyModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? unlockCondition = null,
    Object? parentTechnologyId = freezed,
  }) {
    return _then(_$_TechnologyModel(
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
      parentTechnologyId: freezed == parentTechnologyId
          ? _value.parentTechnologyId
          : parentTechnologyId // ignore: cast_nullable_to_non_nullable
              as TechnologyModelId?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TechnologyModel extends _TechnologyModel {
  const _$_TechnologyModel(
      {required this.id,
      required this.title,
      required this.unlockCondition,
      this.parentTechnologyId})
      : super._();

  factory _$_TechnologyModel.fromJson(Map<String, dynamic> json) =>
      _$$_TechnologyModelFromJson(json);

  @override
  final TechnologyModelId id;
  @override
  final LocalizedMap title;
// TODO(antmalofeev): add icon?
  @override
  final TechnologyUnlockConditionModel unlockCondition;
  @override
  final TechnologyModelId? parentTechnologyId;

  @override
  String toString() {
    return 'TechnologyModel(id: $id, title: $title, unlockCondition: $unlockCondition, parentTechnologyId: $parentTechnologyId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TechnologyModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.unlockCondition, unlockCondition) ||
                other.unlockCondition == unlockCondition) &&
            (identical(other.parentTechnologyId, parentTechnologyId) ||
                other.parentTechnologyId == parentTechnologyId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, unlockCondition, parentTechnologyId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TechnologyModelCopyWith<_$_TechnologyModel> get copyWith =>
      __$$_TechnologyModelCopyWithImpl<_$_TechnologyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TechnologyModelToJson(
      this,
    );
  }
}

abstract class _TechnologyModel extends TechnologyModel {
  const factory _TechnologyModel(
      {required final TechnologyModelId id,
      required final LocalizedMap title,
      required final TechnologyUnlockConditionModel unlockCondition,
      final TechnologyModelId? parentTechnologyId}) = _$_TechnologyModel;
  const _TechnologyModel._() : super._();

  factory _TechnologyModel.fromJson(Map<String, dynamic> json) =
      _$_TechnologyModel.fromJson;

  @override
  TechnologyModelId get id;
  @override
  LocalizedMap get title;
  @override // TODO(antmalofeev): add icon?
  TechnologyUnlockConditionModel get unlockCondition;
  @override
  TechnologyModelId? get parentTechnologyId;
  @override
  @JsonKey(ignore: true)
  _$$_TechnologyModelCopyWith<_$_TechnologyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

TechnologyUnlockConditionModel _$TechnologyUnlockConditionModelFromJson(
    Map<String, dynamic> json) {
  return _TechnologyUnlockConditionModel.fromJson(json);
}

/// @nodoc
mixin _$TechnologyUnlockConditionModel {
  Map<Languages, List<UsefulWordModel>> get languageWords =>
      throw _privateConstructorUsedError;

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
  $Res call({Map<Languages, List<UsefulWordModel>> languageWords});
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
  }) {
    return _then(_value.copyWith(
      languageWords: null == languageWords
          ? _value.languageWords
          : languageWords // ignore: cast_nullable_to_non_nullable
              as Map<Languages, List<UsefulWordModel>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TechnologyUnlockConditionModelCopyWith<$Res>
    implements $TechnologyUnlockConditionModelCopyWith<$Res> {
  factory _$$_TechnologyUnlockConditionModelCopyWith(
          _$_TechnologyUnlockConditionModel value,
          $Res Function(_$_TechnologyUnlockConditionModel) then) =
      __$$_TechnologyUnlockConditionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<Languages, List<UsefulWordModel>> languageWords});
}

/// @nodoc
class __$$_TechnologyUnlockConditionModelCopyWithImpl<$Res>
    extends _$TechnologyUnlockConditionModelCopyWithImpl<$Res,
        _$_TechnologyUnlockConditionModel>
    implements _$$_TechnologyUnlockConditionModelCopyWith<$Res> {
  __$$_TechnologyUnlockConditionModelCopyWithImpl(
      _$_TechnologyUnlockConditionModel _value,
      $Res Function(_$_TechnologyUnlockConditionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageWords = null,
  }) {
    return _then(_$_TechnologyUnlockConditionModel(
      languageWords: null == languageWords
          ? _value._languageWords
          : languageWords // ignore: cast_nullable_to_non_nullable
              as Map<Languages, List<UsefulWordModel>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TechnologyUnlockConditionModel
    extends _TechnologyUnlockConditionModel {
  const _$_TechnologyUnlockConditionModel(
      {required final Map<Languages, List<UsefulWordModel>> languageWords})
      : _languageWords = languageWords,
        super._();

  factory _$_TechnologyUnlockConditionModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_TechnologyUnlockConditionModelFromJson(json);

  final Map<Languages, List<UsefulWordModel>> _languageWords;
  @override
  Map<Languages, List<UsefulWordModel>> get languageWords {
    if (_languageWords is EqualUnmodifiableMapView) return _languageWords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_languageWords);
  }

  @override
  String toString() {
    return 'TechnologyUnlockConditionModel(languageWords: $languageWords)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TechnologyUnlockConditionModel &&
            const DeepCollectionEquality()
                .equals(other._languageWords, _languageWords));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_languageWords));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TechnologyUnlockConditionModelCopyWith<_$_TechnologyUnlockConditionModel>
      get copyWith => __$$_TechnologyUnlockConditionModelCopyWithImpl<
          _$_TechnologyUnlockConditionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TechnologyUnlockConditionModelToJson(
      this,
    );
  }
}

abstract class _TechnologyUnlockConditionModel
    extends TechnologyUnlockConditionModel {
  const factory _TechnologyUnlockConditionModel(
      {required final Map<Languages, List<UsefulWordModel>>
          languageWords}) = _$_TechnologyUnlockConditionModel;
  const _TechnologyUnlockConditionModel._() : super._();

  factory _TechnologyUnlockConditionModel.fromJson(Map<String, dynamic> json) =
      _$_TechnologyUnlockConditionModel.fromJson;

  @override
  Map<Languages, List<UsefulWordModel>> get languageWords;
  @override
  @JsonKey(ignore: true)
  _$$_TechnologyUnlockConditionModelCopyWith<_$_TechnologyUnlockConditionModel>
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
abstract class _$$_UsefulWordModelCopyWith<$Res>
    implements $UsefulWordModelCopyWith<$Res> {
  factory _$$_UsefulWordModelCopyWith(
          _$_UsefulWordModel value, $Res Function(_$_UsefulWordModel) then) =
      __$$_UsefulWordModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String word, bool isUsed});
}

/// @nodoc
class __$$_UsefulWordModelCopyWithImpl<$Res>
    extends _$UsefulWordModelCopyWithImpl<$Res, _$_UsefulWordModel>
    implements _$$_UsefulWordModelCopyWith<$Res> {
  __$$_UsefulWordModelCopyWithImpl(
      _$_UsefulWordModel _value, $Res Function(_$_UsefulWordModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? isUsed = null,
  }) {
    return _then(_$_UsefulWordModel(
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
@JsonSerializable()
class _$_UsefulWordModel extends _UsefulWordModel {
  const _$_UsefulWordModel({required this.word, this.isUsed = false})
      : super._();

  factory _$_UsefulWordModel.fromJson(Map<String, dynamic> json) =>
      _$$_UsefulWordModelFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsefulWordModel &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.isUsed, isUsed) || other.isUsed == isUsed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, word, isUsed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsefulWordModelCopyWith<_$_UsefulWordModel> get copyWith =>
      __$$_UsefulWordModelCopyWithImpl<_$_UsefulWordModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UsefulWordModelToJson(
      this,
    );
  }
}

abstract class _UsefulWordModel extends UsefulWordModel {
  const factory _UsefulWordModel(
      {required final String word, final bool isUsed}) = _$_UsefulWordModel;
  const _UsefulWordModel._() : super._();

  factory _UsefulWordModel.fromJson(Map<String, dynamic> json) =
      _$_UsefulWordModel.fromJson;

  @override
  String get word;
  @override
  bool get isUsed;
  @override
  @JsonKey(ignore: true)
  _$$_UsefulWordModelCopyWith<_$_UsefulWordModel> get copyWith =>
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
abstract class _$$_TutorialEventModelCopyWith<$Res>
    implements $TutorialEventModelCopyWith<$Res> {
  factory _$$_TutorialEventModelCopyWith(_$_TutorialEventModel value,
          $Res Function(_$_TutorialEventModel) then) =
      __$$_TutorialEventModelCopyWithImpl<$Res>;
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
class __$$_TutorialEventModelCopyWithImpl<$Res>
    extends _$TutorialEventModelCopyWithImpl<$Res, _$_TutorialEventModel>
    implements _$$_TutorialEventModelCopyWith<$Res> {
  __$$_TutorialEventModelCopyWithImpl(
      _$_TutorialEventModel _value, $Res Function(_$_TutorialEventModel) _then)
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
    return _then(_$_TutorialEventModel(
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
class _$_TutorialEventModel extends _TutorialEventModel {
  const _$_TutorialEventModel(
      {required this.localizedMap,
      required final List<TutorialUiActionEventModel> completeActions,
      final List<TutorialGameEffectModel> gamePreEffects = const [],
      final List<TutorialGameEffectModel> gamePostEffects = const [],
      this.anchorUiItem})
      : _completeActions = completeActions,
        _gamePreEffects = gamePreEffects,
        _gamePostEffects = gamePostEffects,
        super._();

  factory _$_TutorialEventModel.fromJson(Map<String, dynamic> json) =>
      _$$_TutorialEventModelFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TutorialEventModel &&
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
  _$$_TutorialEventModelCopyWith<_$_TutorialEventModel> get copyWith =>
      __$$_TutorialEventModelCopyWithImpl<_$_TutorialEventModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TutorialEventModelToJson(
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
      final TutorialUiItem? anchorUiItem}) = _$_TutorialEventModel;
  const _TutorialEventModel._() : super._();

  factory _TutorialEventModel.fromJson(Map<String, dynamic> json) =
      _$_TutorialEventModel.fromJson;

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
  _$$_TutorialEventModelCopyWith<_$_TutorialEventModel> get copyWith =>
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
abstract class _$$_TutorialGameEffectModelCopyWith<$Res>
    implements $TutorialGameEffectModelCopyWith<$Res> {
  factory _$$_TutorialGameEffectModelCopyWith(_$_TutorialGameEffectModel value,
          $Res Function(_$_TutorialGameEffectModel) then) =
      __$$_TutorialGameEffectModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TutorialGameEffectName name});
}

/// @nodoc
class __$$_TutorialGameEffectModelCopyWithImpl<$Res>
    extends _$TutorialGameEffectModelCopyWithImpl<$Res,
        _$_TutorialGameEffectModel>
    implements _$$_TutorialGameEffectModelCopyWith<$Res> {
  __$$_TutorialGameEffectModelCopyWithImpl(_$_TutorialGameEffectModel _value,
      $Res Function(_$_TutorialGameEffectModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_TutorialGameEffectModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as TutorialGameEffectName,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_TutorialGameEffectModel extends _TutorialGameEffectModel {
  const _$_TutorialGameEffectModel({required this.name}) : super._();

  factory _$_TutorialGameEffectModel.fromJson(Map<String, dynamic> json) =>
      _$$_TutorialGameEffectModelFromJson(json);

  @override
  final TutorialGameEffectName name;

  @override
  String toString() {
    return 'TutorialGameEffectModel(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TutorialGameEffectModel &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TutorialGameEffectModelCopyWith<_$_TutorialGameEffectModel>
      get copyWith =>
          __$$_TutorialGameEffectModelCopyWithImpl<_$_TutorialGameEffectModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TutorialGameEffectModelToJson(
      this,
    );
  }
}

abstract class _TutorialGameEffectModel extends TutorialGameEffectModel {
  const factory _TutorialGameEffectModel(
          {required final TutorialGameEffectName name}) =
      _$_TutorialGameEffectModel;
  const _TutorialGameEffectModel._() : super._();

  factory _TutorialGameEffectModel.fromJson(Map<String, dynamic> json) =
      _$_TutorialGameEffectModel.fromJson;

  @override
  TutorialGameEffectName get name;
  @override
  @JsonKey(ignore: true)
  _$$_TutorialGameEffectModelCopyWith<_$_TutorialGameEffectModel>
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
abstract class _$$_TutorialUiActionEventModelCopyWith<$Res>
    implements $TutorialUiActionEventModelCopyWith<$Res> {
  factory _$$_TutorialUiActionEventModelCopyWith(
          _$_TutorialUiActionEventModel value,
          $Res Function(_$_TutorialUiActionEventModel) then) =
      __$$_TutorialUiActionEventModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TutorialCompleteAction action,
      TutorialUiItem? uiItem,
      bool isCompleted,
      Map<PrimitiveBool, List<TutorialGameEffectModel>> boolConsquenses});
}

/// @nodoc
class __$$_TutorialUiActionEventModelCopyWithImpl<$Res>
    extends _$TutorialUiActionEventModelCopyWithImpl<$Res,
        _$_TutorialUiActionEventModel>
    implements _$$_TutorialUiActionEventModelCopyWith<$Res> {
  __$$_TutorialUiActionEventModelCopyWithImpl(
      _$_TutorialUiActionEventModel _value,
      $Res Function(_$_TutorialUiActionEventModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? uiItem = freezed,
    Object? isCompleted = null,
    Object? boolConsquenses = null,
  }) {
    return _then(_$_TutorialUiActionEventModel(
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
class _$_TutorialUiActionEventModel extends _TutorialUiActionEventModel {
  const _$_TutorialUiActionEventModel(
      {required this.action,
      this.uiItem,
      this.isCompleted = false,
      final Map<PrimitiveBool, List<TutorialGameEffectModel>> boolConsquenses =
          const {}})
      : _boolConsquenses = boolConsquenses,
        super._();

  factory _$_TutorialUiActionEventModel.fromJson(Map<String, dynamic> json) =>
      _$$_TutorialUiActionEventModelFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TutorialUiActionEventModel &&
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
  _$$_TutorialUiActionEventModelCopyWith<_$_TutorialUiActionEventModel>
      get copyWith => __$$_TutorialUiActionEventModelCopyWithImpl<
          _$_TutorialUiActionEventModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TutorialUiActionEventModelToJson(
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
          boolConsquenses}) = _$_TutorialUiActionEventModel;
  const _TutorialUiActionEventModel._() : super._();

  factory _TutorialUiActionEventModel.fromJson(Map<String, dynamic> json) =
      _$_TutorialUiActionEventModel.fromJson;

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
  _$$_TutorialUiActionEventModelCopyWith<_$_TutorialUiActionEventModel>
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
abstract class _$$_TutorialEventsCollectionModelCopyWith<$Res>
    implements $TutorialEventsCollectionModelCopyWith<$Res> {
  factory _$$_TutorialEventsCollectionModelCopyWith(
          _$_TutorialEventsCollectionModel value,
          $Res Function(_$_TutorialEventsCollectionModel) then) =
      __$$_TutorialEventsCollectionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TutorialEventModel> events,
      TutorialCollectionsName name,
      int currentIndex});
}

/// @nodoc
class __$$_TutorialEventsCollectionModelCopyWithImpl<$Res>
    extends _$TutorialEventsCollectionModelCopyWithImpl<$Res,
        _$_TutorialEventsCollectionModel>
    implements _$$_TutorialEventsCollectionModelCopyWith<$Res> {
  __$$_TutorialEventsCollectionModelCopyWithImpl(
      _$_TutorialEventsCollectionModel _value,
      $Res Function(_$_TutorialEventsCollectionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? name = null,
    Object? currentIndex = null,
  }) {
    return _then(_$_TutorialEventsCollectionModel(
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
class _$_TutorialEventsCollectionModel extends _TutorialEventsCollectionModel {
  const _$_TutorialEventsCollectionModel(
      {required final List<TutorialEventModel> events,
      required this.name,
      required this.currentIndex})
      : _events = events,
        super._();

  factory _$_TutorialEventsCollectionModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_TutorialEventsCollectionModelFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TutorialEventsCollectionModel &&
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
  _$$_TutorialEventsCollectionModelCopyWith<_$_TutorialEventsCollectionModel>
      get copyWith => __$$_TutorialEventsCollectionModelCopyWithImpl<
          _$_TutorialEventsCollectionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TutorialEventsCollectionModelToJson(
      this,
    );
  }
}

abstract class _TutorialEventsCollectionModel
    extends TutorialEventsCollectionModel {
  const factory _TutorialEventsCollectionModel(
      {required final List<TutorialEventModel> events,
      required final TutorialCollectionsName name,
      required final int currentIndex}) = _$_TutorialEventsCollectionModel;
  const _TutorialEventsCollectionModel._() : super._();

  factory _TutorialEventsCollectionModel.fromJson(Map<String, dynamic> json) =
      _$_TutorialEventsCollectionModel.fromJson;

  @override
  List<TutorialEventModel> get events;
  @override
  TutorialCollectionsName get name;
  @override
  int get currentIndex;
  @override
  @JsonKey(ignore: true)
  _$$_TutorialEventsCollectionModelCopyWith<_$_TutorialEventsCollectionModel>
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
abstract class _$$_TutorialCollectionsProgressModelCopyWith<$Res>
    implements $TutorialCollectionsProgressModelCopyWith<$Res> {
  factory _$$_TutorialCollectionsProgressModelCopyWith(
          _$_TutorialCollectionsProgressModel value,
          $Res Function(_$_TutorialCollectionsProgressModel) then) =
      __$$_TutorialCollectionsProgressModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<TutorialCollectionsName, int> indexes});
}

/// @nodoc
class __$$_TutorialCollectionsProgressModelCopyWithImpl<$Res>
    extends _$TutorialCollectionsProgressModelCopyWithImpl<$Res,
        _$_TutorialCollectionsProgressModel>
    implements _$$_TutorialCollectionsProgressModelCopyWith<$Res> {
  __$$_TutorialCollectionsProgressModelCopyWithImpl(
      _$_TutorialCollectionsProgressModel _value,
      $Res Function(_$_TutorialCollectionsProgressModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indexes = null,
  }) {
    return _then(_$_TutorialCollectionsProgressModel(
      indexes: null == indexes
          ? _value._indexes
          : indexes // ignore: cast_nullable_to_non_nullable
              as Map<TutorialCollectionsName, int>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_TutorialCollectionsProgressModel
    extends _TutorialCollectionsProgressModel {
  const _$_TutorialCollectionsProgressModel(
      {required final Map<TutorialCollectionsName, int> indexes})
      : _indexes = indexes,
        super._();

  factory _$_TutorialCollectionsProgressModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_TutorialCollectionsProgressModelFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TutorialCollectionsProgressModel &&
            const DeepCollectionEquality().equals(other._indexes, _indexes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_indexes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TutorialCollectionsProgressModelCopyWith<
          _$_TutorialCollectionsProgressModel>
      get copyWith => __$$_TutorialCollectionsProgressModelCopyWithImpl<
          _$_TutorialCollectionsProgressModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TutorialCollectionsProgressModelToJson(
      this,
    );
  }
}

abstract class _TutorialCollectionsProgressModel
    extends TutorialCollectionsProgressModel {
  const factory _TutorialCollectionsProgressModel(
          {required final Map<TutorialCollectionsName, int> indexes}) =
      _$_TutorialCollectionsProgressModel;
  const _TutorialCollectionsProgressModel._() : super._();

  factory _TutorialCollectionsProgressModel.fromJson(
      Map<String, dynamic> json) = _$_TutorialCollectionsProgressModel.fromJson;

  @override

  /// Key - [TutorialCollectionsName]
  /// Value - int index from [TutorialEventsCollectionModel.events]
  Map<TutorialCollectionsName, int> get indexes;
  @override
  @JsonKey(ignore: true)
  _$$_TutorialCollectionsProgressModelCopyWith<
          _$_TutorialCollectionsProgressModel>
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
abstract class _$$_TutorialCollectionsDataModelCopyWith<$Res>
    implements $TutorialCollectionsDataModelCopyWith<$Res> {
  factory _$$_TutorialCollectionsDataModelCopyWith(
          _$_TutorialCollectionsDataModel value,
          $Res Function(_$_TutorialCollectionsDataModel) then) =
      __$$_TutorialCollectionsDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<TutorialCollectionsName, List<TutorialEventModel>> events});
}

/// @nodoc
class __$$_TutorialCollectionsDataModelCopyWithImpl<$Res>
    extends _$TutorialCollectionsDataModelCopyWithImpl<$Res,
        _$_TutorialCollectionsDataModel>
    implements _$$_TutorialCollectionsDataModelCopyWith<$Res> {
  __$$_TutorialCollectionsDataModelCopyWithImpl(
      _$_TutorialCollectionsDataModel _value,
      $Res Function(_$_TutorialCollectionsDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_$_TutorialCollectionsDataModel(
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as Map<TutorialCollectionsName, List<TutorialEventModel>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TutorialCollectionsDataModel extends _TutorialCollectionsDataModel {
  const _$_TutorialCollectionsDataModel(
      {required final Map<TutorialCollectionsName, List<TutorialEventModel>>
          events})
      : _events = events,
        super._();

  factory _$_TutorialCollectionsDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_TutorialCollectionsDataModelFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TutorialCollectionsDataModel &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_events));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TutorialCollectionsDataModelCopyWith<_$_TutorialCollectionsDataModel>
      get copyWith => __$$_TutorialCollectionsDataModelCopyWithImpl<
          _$_TutorialCollectionsDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TutorialCollectionsDataModelToJson(
      this,
    );
  }
}

abstract class _TutorialCollectionsDataModel
    extends TutorialCollectionsDataModel {
  const factory _TutorialCollectionsDataModel(
      {required final Map<TutorialCollectionsName, List<TutorialEventModel>>
          events}) = _$_TutorialCollectionsDataModel;
  const _TutorialCollectionsDataModel._() : super._();

  factory _TutorialCollectionsDataModel.fromJson(Map<String, dynamic> json) =
      _$_TutorialCollectionsDataModel.fromJson;

  @override
  Map<TutorialCollectionsName, List<TutorialEventModel>> get events;
  @override
  @JsonKey(ignore: true)
  _$$_TutorialCollectionsDataModelCopyWith<_$_TutorialCollectionsDataModel>
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
abstract class _$$_WorldDateTimeCopyWith<$Res>
    implements $WorldDateTimeModelCopyWith<$Res> {
  factory _$$_WorldDateTimeCopyWith(
          _$_WorldDateTime value, $Res Function(_$_WorldDateTime) then) =
      __$$_WorldDateTimeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int second});
}

/// @nodoc
class __$$_WorldDateTimeCopyWithImpl<$Res>
    extends _$WorldDateTimeModelCopyWithImpl<$Res, _$_WorldDateTime>
    implements _$$_WorldDateTimeCopyWith<$Res> {
  __$$_WorldDateTimeCopyWithImpl(
      _$_WorldDateTime _value, $Res Function(_$_WorldDateTime) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? second = null,
  }) {
    return _then(_$_WorldDateTime(
      second: null == second
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_WorldDateTime extends _WorldDateTime {
  const _$_WorldDateTime({this.second = 0}) : super._();

  factory _$_WorldDateTime.fromJson(Map<String, dynamic> json) =>
      _$$_WorldDateTimeFromJson(json);

  @override
  @JsonKey()
  final int second;

  @override
  String toString() {
    return 'WorldDateTimeModel(second: $second)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorldDateTime &&
            (identical(other.second, second) || other.second == second));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, second);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorldDateTimeCopyWith<_$_WorldDateTime> get copyWith =>
      __$$_WorldDateTimeCopyWithImpl<_$_WorldDateTime>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorldDateTimeToJson(
      this,
    );
  }
}

abstract class _WorldDateTime extends WorldDateTimeModel {
  const factory _WorldDateTime({final int second}) = _$_WorldDateTime;
  const _WorldDateTime._() : super._();

  factory _WorldDateTime.fromJson(Map<String, dynamic> json) =
      _$_WorldDateTime.fromJson;

  @override
  int get second;
  @override
  @JsonKey(ignore: true)
  _$$_WorldDateTimeCopyWith<_$_WorldDateTime> get copyWith =>
      throw _privateConstructorUsedError;
}
