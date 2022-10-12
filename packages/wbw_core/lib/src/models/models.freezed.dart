// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
  @JsonKey(fromJson: _localeFromString, toJson: _localeToString)
  Locale get locale => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppSettingsModelCopyWith<AppSettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingsModelCopyWith<$Res> {
  factory $AppSettingsModelCopyWith(
          AppSettingsModel value, $Res Function(AppSettingsModel) then) =
      _$AppSettingsModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(fromJson: _localeFromString, toJson: _localeToString)
          Locale locale});
}

/// @nodoc
class _$AppSettingsModelCopyWithImpl<$Res>
    implements $AppSettingsModelCopyWith<$Res> {
  _$AppSettingsModelCopyWithImpl(this._value, this._then);

  final AppSettingsModel _value;
  // ignore: unused_field
  final $Res Function(AppSettingsModel) _then;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_value.copyWith(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc
abstract class _$$_AppSettingsModelCopyWith<$Res>
    implements $AppSettingsModelCopyWith<$Res> {
  factory _$$_AppSettingsModelCopyWith(
          _$_AppSettingsModel value, $Res Function(_$_AppSettingsModel) then) =
      __$$_AppSettingsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(fromJson: _localeFromString, toJson: _localeToString)
          Locale locale});
}

/// @nodoc
class __$$_AppSettingsModelCopyWithImpl<$Res>
    extends _$AppSettingsModelCopyWithImpl<$Res>
    implements _$$_AppSettingsModelCopyWith<$Res> {
  __$$_AppSettingsModelCopyWithImpl(
      _$_AppSettingsModel _value, $Res Function(_$_AppSettingsModel) _then)
      : super(_value, (v) => _then(v as _$_AppSettingsModel));

  @override
  _$_AppSettingsModel get _value => super._value as _$_AppSettingsModel;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_$_AppSettingsModel(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_AppSettingsModel extends _AppSettingsModel {
  const _$_AppSettingsModel(
      {@JsonKey(fromJson: _localeFromString, toJson: _localeToString)
          this.locale = Locales.en})
      : super._();

  factory _$_AppSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$$_AppSettingsModelFromJson(json);

  @override
  @JsonKey(fromJson: _localeFromString, toJson: _localeToString)
  final Locale locale;

  @override
  String toString() {
    return 'AppSettingsModel(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppSettingsModel &&
            const DeepCollectionEquality().equals(other.locale, locale));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(locale));

  @JsonKey(ignore: true)
  @override
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
      {@JsonKey(fromJson: _localeFromString, toJson: _localeToString)
          final Locale locale}) = _$_AppSettingsModel;
  const _AppSettingsModel._() : super._();

  factory _AppSettingsModel.fromJson(Map<String, dynamic> json) =
      _$_AppSettingsModel.fromJson;

  @override
  @JsonKey(fromJson: _localeFromString, toJson: _localeToString)
  Locale get locale;
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
  String get leftPart => throw _privateConstructorUsedError;
  String get middlePart => throw _privateConstructorUsedError;
  String get rightPart => throw _privateConstructorUsedError;
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
      _$CurrentWordModelCopyWithImpl<$Res>;
  $Res call(
      {String leftPart, String middlePart, String rightPart, String fullWord});
}

/// @nodoc
class _$CurrentWordModelCopyWithImpl<$Res>
    implements $CurrentWordModelCopyWith<$Res> {
  _$CurrentWordModelCopyWithImpl(this._value, this._then);

  final CurrentWordModel _value;
  // ignore: unused_field
  final $Res Function(CurrentWordModel) _then;

  @override
  $Res call({
    Object? leftPart = freezed,
    Object? middlePart = freezed,
    Object? rightPart = freezed,
    Object? fullWord = freezed,
  }) {
    return _then(_value.copyWith(
      leftPart: leftPart == freezed
          ? _value.leftPart
          : leftPart // ignore: cast_nullable_to_non_nullable
              as String,
      middlePart: middlePart == freezed
          ? _value.middlePart
          : middlePart // ignore: cast_nullable_to_non_nullable
              as String,
      rightPart: rightPart == freezed
          ? _value.rightPart
          : rightPart // ignore: cast_nullable_to_non_nullable
              as String,
      fullWord: fullWord == freezed
          ? _value.fullWord
          : fullWord // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CurrentWordModelCopyWith<$Res>
    implements $CurrentWordModelCopyWith<$Res> {
  factory _$$_CurrentWordModelCopyWith(
          _$_CurrentWordModel value, $Res Function(_$_CurrentWordModel) then) =
      __$$_CurrentWordModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String leftPart, String middlePart, String rightPart, String fullWord});
}

/// @nodoc
class __$$_CurrentWordModelCopyWithImpl<$Res>
    extends _$CurrentWordModelCopyWithImpl<$Res>
    implements _$$_CurrentWordModelCopyWith<$Res> {
  __$$_CurrentWordModelCopyWithImpl(
      _$_CurrentWordModel _value, $Res Function(_$_CurrentWordModel) _then)
      : super(_value, (v) => _then(v as _$_CurrentWordModel));

  @override
  _$_CurrentWordModel get _value => super._value as _$_CurrentWordModel;

  @override
  $Res call({
    Object? leftPart = freezed,
    Object? middlePart = freezed,
    Object? rightPart = freezed,
    Object? fullWord = freezed,
  }) {
    return _then(_$_CurrentWordModel(
      leftPart: leftPart == freezed
          ? _value.leftPart
          : leftPart // ignore: cast_nullable_to_non_nullable
              as String,
      middlePart: middlePart == freezed
          ? _value.middlePart
          : middlePart // ignore: cast_nullable_to_non_nullable
              as String,
      rightPart: rightPart == freezed
          ? _value.rightPart
          : rightPart // ignore: cast_nullable_to_non_nullable
              as String,
      fullWord: fullWord == freezed
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
      {this.leftPart = '',
      this.middlePart = '',
      this.rightPart = '',
      this.fullWord = ''})
      : super._();

  factory _$_CurrentWordModel.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentWordModelFromJson(json);

  @override
  @JsonKey()
  final String leftPart;
  @override
  @JsonKey()
  final String middlePart;
  @override
  @JsonKey()
  final String rightPart;
  @override
  @JsonKey()
  final String fullWord;

  @override
  String toString() {
    return 'CurrentWordModel(leftPart: $leftPart, middlePart: $middlePart, rightPart: $rightPart, fullWord: $fullWord)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentWordModel &&
            const DeepCollectionEquality().equals(other.leftPart, leftPart) &&
            const DeepCollectionEquality()
                .equals(other.middlePart, middlePart) &&
            const DeepCollectionEquality().equals(other.rightPart, rightPart) &&
            const DeepCollectionEquality().equals(other.fullWord, fullWord));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(leftPart),
      const DeepCollectionEquality().hash(middlePart),
      const DeepCollectionEquality().hash(rightPart),
      const DeepCollectionEquality().hash(fullWord));

  @JsonKey(ignore: true)
  @override
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
      {final String leftPart,
      final String middlePart,
      final String rightPart,
      final String fullWord}) = _$_CurrentWordModel;
  const _CurrentWordModel._() : super._();

  factory _CurrentWordModel.fromJson(Map<String, dynamic> json) =
      _$_CurrentWordModel.fromJson;

  @override
  String get leftPart;
  @override
  String get middlePart;
  @override
  String get rightPart;
  @override
  String get fullWord;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentWordModelCopyWith<_$_CurrentWordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

FuelModel _$FuelModelFromJson(Map<String, dynamic> json) {
  return _FuelModel.fromJson(json);
}

/// @nodoc
mixin _$FuelModel {
  double get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FuelModelCopyWith<FuelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FuelModelCopyWith<$Res> {
  factory $FuelModelCopyWith(FuelModel value, $Res Function(FuelModel) then) =
      _$FuelModelCopyWithImpl<$Res>;
  $Res call({double value});
}

/// @nodoc
class _$FuelModelCopyWithImpl<$Res> implements $FuelModelCopyWith<$Res> {
  _$FuelModelCopyWithImpl(this._value, this._then);

  final FuelModel _value;
  // ignore: unused_field
  final $Res Function(FuelModel) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_FuelModelCopyWith<$Res> implements $FuelModelCopyWith<$Res> {
  factory _$$_FuelModelCopyWith(
          _$_FuelModel value, $Res Function(_$_FuelModel) then) =
      __$$_FuelModelCopyWithImpl<$Res>;
  @override
  $Res call({double value});
}

/// @nodoc
class __$$_FuelModelCopyWithImpl<$Res> extends _$FuelModelCopyWithImpl<$Res>
    implements _$$_FuelModelCopyWith<$Res> {
  __$$_FuelModelCopyWithImpl(
      _$_FuelModel _value, $Res Function(_$_FuelModel) _then)
      : super(_value, (v) => _then(v as _$_FuelModel));

  @override
  _$_FuelModel get _value => super._value as _$_FuelModel;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_FuelModel(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_FuelModel extends _FuelModel {
  const _$_FuelModel({required this.value}) : super._();

  factory _$_FuelModel.fromJson(Map<String, dynamic> json) =>
      _$$_FuelModelFromJson(json);

  @override
  final double value;

  @override
  String toString() {
    return 'FuelModel(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FuelModel &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_FuelModelCopyWith<_$_FuelModel> get copyWith =>
      __$$_FuelModelCopyWithImpl<_$_FuelModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FuelModelToJson(
      this,
    );
  }
}

abstract class _FuelModel extends FuelModel {
  const factory _FuelModel({required final double value}) = _$_FuelModel;
  const _FuelModel._() : super._();

  factory _FuelModel.fromJson(Map<String, dynamic> json) =
      _$_FuelModel.fromJson;

  @override
  double get value;
  @override
  @JsonKey(ignore: true)
  _$$_FuelModelCopyWith<_$_FuelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

FuelStorageModel _$FuelStorageModelFromJson(Map<String, dynamic> json) {
  return _FuelStorageModel.fromJson(json);
}

/// @nodoc
mixin _$FuelStorageModel {
  double get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FuelStorageModelCopyWith<FuelStorageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FuelStorageModelCopyWith<$Res> {
  factory $FuelStorageModelCopyWith(
          FuelStorageModel value, $Res Function(FuelStorageModel) then) =
      _$FuelStorageModelCopyWithImpl<$Res>;
  $Res call({double value});
}

/// @nodoc
class _$FuelStorageModelCopyWithImpl<$Res>
    implements $FuelStorageModelCopyWith<$Res> {
  _$FuelStorageModelCopyWithImpl(this._value, this._then);

  final FuelStorageModel _value;
  // ignore: unused_field
  final $Res Function(FuelStorageModel) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_FuelStorageModelCopyWith<$Res>
    implements $FuelStorageModelCopyWith<$Res> {
  factory _$$_FuelStorageModelCopyWith(
          _$_FuelStorageModel value, $Res Function(_$_FuelStorageModel) then) =
      __$$_FuelStorageModelCopyWithImpl<$Res>;
  @override
  $Res call({double value});
}

/// @nodoc
class __$$_FuelStorageModelCopyWithImpl<$Res>
    extends _$FuelStorageModelCopyWithImpl<$Res>
    implements _$$_FuelStorageModelCopyWith<$Res> {
  __$$_FuelStorageModelCopyWithImpl(
      _$_FuelStorageModel _value, $Res Function(_$_FuelStorageModel) _then)
      : super(_value, (v) => _then(v as _$_FuelStorageModel));

  @override
  _$_FuelStorageModel get _value => super._value as _$_FuelStorageModel;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_FuelStorageModel(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_FuelStorageModel extends _FuelStorageModel {
  const _$_FuelStorageModel({this.value = 100}) : super._();

  factory _$_FuelStorageModel.fromJson(Map<String, dynamic> json) =>
      _$$_FuelStorageModelFromJson(json);

  @override
  @JsonKey()
  final double value;

  @override
  String toString() {
    return 'FuelStorageModel(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FuelStorageModel &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_FuelStorageModelCopyWith<_$_FuelStorageModel> get copyWith =>
      __$$_FuelStorageModelCopyWithImpl<_$_FuelStorageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FuelStorageModelToJson(
      this,
    );
  }
}

abstract class _FuelStorageModel extends FuelStorageModel {
  const factory _FuelStorageModel({final double value}) = _$_FuelStorageModel;
  const _FuelStorageModel._() : super._();

  factory _FuelStorageModel.fromJson(Map<String, dynamic> json) =
      _$_FuelStorageModel.fromJson;

  @override
  double get value;
  @override
  @JsonKey(ignore: true)
  _$$_FuelStorageModelCopyWith<_$_FuelStorageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GameModel _$GameModelFromJson(Map<String, dynamic> json) {
  return _GameModel.fromJson(json);
}

/// @nodoc
mixin _$GameModel {
  String get id => throw _privateConstructorUsedError;

  /// Levels that should be used to create [LevelModel]
  List<TemplateLevelModel> get templateLevels =>
      throw _privateConstructorUsedError;
  String get currentLevelId => throw _privateConstructorUsedError;

  /// Saved level configuration to get player an option to restart a level
  LevelModel? get currentLevel => throw _privateConstructorUsedError;
  GameVersion get version => throw _privateConstructorUsedError;

  /// Levels that player already started
  Map<String, LevelModel> get levels => throw _privateConstructorUsedError;
  WorldDateTimeModel get dateTime => throw _privateConstructorUsedError;
  WorldDateTimeModel get lastDateTime => throw _privateConstructorUsedError;

  /// Global players statistics and data.
  List<PlayerProfileModel> get playersCollection =>
      throw _privateConstructorUsedError;
  List<PlayerCharacterModel> get playersCharacters =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameModelCopyWith<GameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameModelCopyWith<$Res> {
  factory $GameModelCopyWith(GameModel value, $Res Function(GameModel) then) =
      _$GameModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      List<TemplateLevelModel> templateLevels,
      String currentLevelId,
      LevelModel? currentLevel,
      GameVersion version,
      Map<String, LevelModel> levels,
      WorldDateTimeModel dateTime,
      WorldDateTimeModel lastDateTime,
      List<PlayerProfileModel> playersCollection,
      List<PlayerCharacterModel> playersCharacters});

  $LevelModelCopyWith<$Res>? get currentLevel;
  $WorldDateTimeModelCopyWith<$Res> get dateTime;
  $WorldDateTimeModelCopyWith<$Res> get lastDateTime;
}

/// @nodoc
class _$GameModelCopyWithImpl<$Res> implements $GameModelCopyWith<$Res> {
  _$GameModelCopyWithImpl(this._value, this._then);

  final GameModel _value;
  // ignore: unused_field
  final $Res Function(GameModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? templateLevels = freezed,
    Object? currentLevelId = freezed,
    Object? currentLevel = freezed,
    Object? version = freezed,
    Object? levels = freezed,
    Object? dateTime = freezed,
    Object? lastDateTime = freezed,
    Object? playersCollection = freezed,
    Object? playersCharacters = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      templateLevels: templateLevels == freezed
          ? _value.templateLevels
          : templateLevels // ignore: cast_nullable_to_non_nullable
              as List<TemplateLevelModel>,
      currentLevelId: currentLevelId == freezed
          ? _value.currentLevelId
          : currentLevelId // ignore: cast_nullable_to_non_nullable
              as String,
      currentLevel: currentLevel == freezed
          ? _value.currentLevel
          : currentLevel // ignore: cast_nullable_to_non_nullable
              as LevelModel?,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as GameVersion,
      levels: levels == freezed
          ? _value.levels
          : levels // ignore: cast_nullable_to_non_nullable
              as Map<String, LevelModel>,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as WorldDateTimeModel,
      lastDateTime: lastDateTime == freezed
          ? _value.lastDateTime
          : lastDateTime // ignore: cast_nullable_to_non_nullable
              as WorldDateTimeModel,
      playersCollection: playersCollection == freezed
          ? _value.playersCollection
          : playersCollection // ignore: cast_nullable_to_non_nullable
              as List<PlayerProfileModel>,
      playersCharacters: playersCharacters == freezed
          ? _value.playersCharacters
          : playersCharacters // ignore: cast_nullable_to_non_nullable
              as List<PlayerCharacterModel>,
    ));
  }

  @override
  $LevelModelCopyWith<$Res>? get currentLevel {
    if (_value.currentLevel == null) {
      return null;
    }

    return $LevelModelCopyWith<$Res>(_value.currentLevel!, (value) {
      return _then(_value.copyWith(currentLevel: value));
    });
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
abstract class _$$_GameModelCopyWith<$Res> implements $GameModelCopyWith<$Res> {
  factory _$$_GameModelCopyWith(
          _$_GameModel value, $Res Function(_$_GameModel) then) =
      __$$_GameModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      List<TemplateLevelModel> templateLevels,
      String currentLevelId,
      LevelModel? currentLevel,
      GameVersion version,
      Map<String, LevelModel> levels,
      WorldDateTimeModel dateTime,
      WorldDateTimeModel lastDateTime,
      List<PlayerProfileModel> playersCollection,
      List<PlayerCharacterModel> playersCharacters});

  @override
  $LevelModelCopyWith<$Res>? get currentLevel;
  @override
  $WorldDateTimeModelCopyWith<$Res> get dateTime;
  @override
  $WorldDateTimeModelCopyWith<$Res> get lastDateTime;
}

/// @nodoc
class __$$_GameModelCopyWithImpl<$Res> extends _$GameModelCopyWithImpl<$Res>
    implements _$$_GameModelCopyWith<$Res> {
  __$$_GameModelCopyWithImpl(
      _$_GameModel _value, $Res Function(_$_GameModel) _then)
      : super(_value, (v) => _then(v as _$_GameModel));

  @override
  _$_GameModel get _value => super._value as _$_GameModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? templateLevels = freezed,
    Object? currentLevelId = freezed,
    Object? currentLevel = freezed,
    Object? version = freezed,
    Object? levels = freezed,
    Object? dateTime = freezed,
    Object? lastDateTime = freezed,
    Object? playersCollection = freezed,
    Object? playersCharacters = freezed,
  }) {
    return _then(_$_GameModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      templateLevels: templateLevels == freezed
          ? _value._templateLevels
          : templateLevels // ignore: cast_nullable_to_non_nullable
              as List<TemplateLevelModel>,
      currentLevelId: currentLevelId == freezed
          ? _value.currentLevelId
          : currentLevelId // ignore: cast_nullable_to_non_nullable
              as String,
      currentLevel: currentLevel == freezed
          ? _value.currentLevel
          : currentLevel // ignore: cast_nullable_to_non_nullable
              as LevelModel?,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as GameVersion,
      levels: levels == freezed
          ? _value._levels
          : levels // ignore: cast_nullable_to_non_nullable
              as Map<String, LevelModel>,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as WorldDateTimeModel,
      lastDateTime: lastDateTime == freezed
          ? _value.lastDateTime
          : lastDateTime // ignore: cast_nullable_to_non_nullable
              as WorldDateTimeModel,
      playersCollection: playersCollection == freezed
          ? _value._playersCollection
          : playersCollection // ignore: cast_nullable_to_non_nullable
              as List<PlayerProfileModel>,
      playersCharacters: playersCharacters == freezed
          ? _value._playersCharacters
          : playersCharacters // ignore: cast_nullable_to_non_nullable
              as List<PlayerCharacterModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_GameModel extends _GameModel {
  const _$_GameModel(
      {required this.id,
      required final List<TemplateLevelModel> templateLevels,
      required this.currentLevelId,
      this.currentLevel,
      this.version = kPreviousGameVersion,
      final Map<String, LevelModel> levels = const {},
      this.dateTime = const WorldDateTimeModel(),
      this.lastDateTime = const WorldDateTimeModel(),
      final List<PlayerProfileModel> playersCollection = const [],
      final List<PlayerCharacterModel> playersCharacters = const []})
      : _templateLevels = templateLevels,
        _levels = levels,
        _playersCollection = playersCollection,
        _playersCharacters = playersCharacters,
        super._();

  factory _$_GameModel.fromJson(Map<String, dynamic> json) =>
      _$$_GameModelFromJson(json);

  @override
  final String id;

  /// Levels that should be used to create [LevelModel]
  final List<TemplateLevelModel> _templateLevels;

  /// Levels that should be used to create [LevelModel]
  @override
  List<TemplateLevelModel> get templateLevels {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_templateLevels);
  }

  @override
  final String currentLevelId;

  /// Saved level configuration to get player an option to restart a level
  @override
  final LevelModel? currentLevel;
  @override
  @JsonKey()
  final GameVersion version;

  /// Levels that player already started
  final Map<String, LevelModel> _levels;

  /// Levels that player already started
  @override
  @JsonKey()
  Map<String, LevelModel> get levels {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_levels);
  }

  @override
  @JsonKey()
  final WorldDateTimeModel dateTime;
  @override
  @JsonKey()
  final WorldDateTimeModel lastDateTime;

  /// Global players statistics and data.
  final List<PlayerProfileModel> _playersCollection;

  /// Global players statistics and data.
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

  @override
  String toString() {
    return 'GameModel(id: $id, templateLevels: $templateLevels, currentLevelId: $currentLevelId, currentLevel: $currentLevel, version: $version, levels: $levels, dateTime: $dateTime, lastDateTime: $lastDateTime, playersCollection: $playersCollection, playersCharacters: $playersCharacters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other._templateLevels, _templateLevels) &&
            const DeepCollectionEquality()
                .equals(other.currentLevelId, currentLevelId) &&
            const DeepCollectionEquality()
                .equals(other.currentLevel, currentLevel) &&
            const DeepCollectionEquality().equals(other.version, version) &&
            const DeepCollectionEquality().equals(other._levels, _levels) &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime) &&
            const DeepCollectionEquality()
                .equals(other.lastDateTime, lastDateTime) &&
            const DeepCollectionEquality()
                .equals(other._playersCollection, _playersCollection) &&
            const DeepCollectionEquality()
                .equals(other._playersCharacters, _playersCharacters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(_templateLevels),
      const DeepCollectionEquality().hash(currentLevelId),
      const DeepCollectionEquality().hash(currentLevel),
      const DeepCollectionEquality().hash(version),
      const DeepCollectionEquality().hash(_levels),
      const DeepCollectionEquality().hash(dateTime),
      const DeepCollectionEquality().hash(lastDateTime),
      const DeepCollectionEquality().hash(_playersCollection),
      const DeepCollectionEquality().hash(_playersCharacters));

  @JsonKey(ignore: true)
  @override
  _$$_GameModelCopyWith<_$_GameModel> get copyWith =>
      __$$_GameModelCopyWithImpl<_$_GameModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameModelToJson(
      this,
    );
  }
}

abstract class _GameModel extends GameModel {
  const factory _GameModel(
      {required final String id,
      required final List<TemplateLevelModel> templateLevels,
      required final String currentLevelId,
      final LevelModel? currentLevel,
      final GameVersion version,
      final Map<String, LevelModel> levels,
      final WorldDateTimeModel dateTime,
      final WorldDateTimeModel lastDateTime,
      final List<PlayerProfileModel> playersCollection,
      final List<PlayerCharacterModel> playersCharacters}) = _$_GameModel;
  const _GameModel._() : super._();

  factory _GameModel.fromJson(Map<String, dynamic> json) =
      _$_GameModel.fromJson;

  @override
  String get id;
  @override

  /// Levels that should be used to create [LevelModel]
  List<TemplateLevelModel> get templateLevels;
  @override
  String get currentLevelId;
  @override

  /// Saved level configuration to get player an option to restart a level
  LevelModel? get currentLevel;
  @override
  GameVersion get version;
  @override

  /// Levels that player already started
  Map<String, LevelModel> get levels;
  @override
  WorldDateTimeModel get dateTime;
  @override
  WorldDateTimeModel get lastDateTime;
  @override

  /// Global players statistics and data.
  List<PlayerProfileModel> get playersCollection;
  @override
  List<PlayerCharacterModel> get playersCharacters;
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
      _$LevelCharactersModelCopyWithImpl<$Res>;
  $Res call({PlayerCharacterModel playerCharacter});

  $PlayerCharacterModelCopyWith<$Res> get playerCharacter;
}

/// @nodoc
class _$LevelCharactersModelCopyWithImpl<$Res>
    implements $LevelCharactersModelCopyWith<$Res> {
  _$LevelCharactersModelCopyWithImpl(this._value, this._then);

  final LevelCharactersModel _value;
  // ignore: unused_field
  final $Res Function(LevelCharactersModel) _then;

  @override
  $Res call({
    Object? playerCharacter = freezed,
  }) {
    return _then(_value.copyWith(
      playerCharacter: playerCharacter == freezed
          ? _value.playerCharacter
          : playerCharacter // ignore: cast_nullable_to_non_nullable
              as PlayerCharacterModel,
    ));
  }

  @override
  $PlayerCharacterModelCopyWith<$Res> get playerCharacter {
    return $PlayerCharacterModelCopyWith<$Res>(_value.playerCharacter, (value) {
      return _then(_value.copyWith(playerCharacter: value));
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
  $Res call({PlayerCharacterModel playerCharacter});

  @override
  $PlayerCharacterModelCopyWith<$Res> get playerCharacter;
}

/// @nodoc
class __$$_LevelCharactersModelCopyWithImpl<$Res>
    extends _$LevelCharactersModelCopyWithImpl<$Res>
    implements _$$_LevelCharactersModelCopyWith<$Res> {
  __$$_LevelCharactersModelCopyWithImpl(_$_LevelCharactersModel _value,
      $Res Function(_$_LevelCharactersModel) _then)
      : super(_value, (v) => _then(v as _$_LevelCharactersModel));

  @override
  _$_LevelCharactersModel get _value => super._value as _$_LevelCharactersModel;

  @override
  $Res call({
    Object? playerCharacter = freezed,
  }) {
    return _then(_$_LevelCharactersModel(
      playerCharacter: playerCharacter == freezed
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
            const DeepCollectionEquality()
                .equals(other.playerCharacter, playerCharacter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(playerCharacter));

  @JsonKey(ignore: true)
  @override
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
  String get id =>
      throw _privateConstructorUsedError; // TODO(arenukvern): add i18n object
  String get stringName => throw _privateConstructorUsedError;
  LevelPlayersModel get players => throw _privateConstructorUsedError;
  LevelCharactersModel get characters => throw _privateConstructorUsedError;
  ResourcesModel get resources => throw _privateConstructorUsedError;
  CurrentWordModel get currentWord => throw _privateConstructorUsedError;
  Map<String, String> get words => throw _privateConstructorUsedError;
  String get latestWord => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LevelModelCopyWith<LevelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LevelModelCopyWith<$Res> {
  factory $LevelModelCopyWith(
          LevelModel value, $Res Function(LevelModel) then) =
      _$LevelModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String stringName,
      LevelPlayersModel players,
      LevelCharactersModel characters,
      ResourcesModel resources,
      CurrentWordModel currentWord,
      Map<String, String> words,
      String latestWord});

  $LevelPlayersModelCopyWith<$Res> get players;
  $LevelCharactersModelCopyWith<$Res> get characters;
  $ResourcesModelCopyWith<$Res> get resources;
  $CurrentWordModelCopyWith<$Res> get currentWord;
}

/// @nodoc
class _$LevelModelCopyWithImpl<$Res> implements $LevelModelCopyWith<$Res> {
  _$LevelModelCopyWithImpl(this._value, this._then);

  final LevelModel _value;
  // ignore: unused_field
  final $Res Function(LevelModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? stringName = freezed,
    Object? players = freezed,
    Object? characters = freezed,
    Object? resources = freezed,
    Object? currentWord = freezed,
    Object? words = freezed,
    Object? latestWord = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      stringName: stringName == freezed
          ? _value.stringName
          : stringName // ignore: cast_nullable_to_non_nullable
              as String,
      players: players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as LevelPlayersModel,
      characters: characters == freezed
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as LevelCharactersModel,
      resources: resources == freezed
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as ResourcesModel,
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
  $LevelPlayersModelCopyWith<$Res> get players {
    return $LevelPlayersModelCopyWith<$Res>(_value.players, (value) {
      return _then(_value.copyWith(players: value));
    });
  }

  @override
  $LevelCharactersModelCopyWith<$Res> get characters {
    return $LevelCharactersModelCopyWith<$Res>(_value.characters, (value) {
      return _then(_value.copyWith(characters: value));
    });
  }

  @override
  $ResourcesModelCopyWith<$Res> get resources {
    return $ResourcesModelCopyWith<$Res>(_value.resources, (value) {
      return _then(_value.copyWith(resources: value));
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
abstract class _$$_LevelModelCopyWith<$Res>
    implements $LevelModelCopyWith<$Res> {
  factory _$$_LevelModelCopyWith(
          _$_LevelModel value, $Res Function(_$_LevelModel) then) =
      __$$_LevelModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String stringName,
      LevelPlayersModel players,
      LevelCharactersModel characters,
      ResourcesModel resources,
      CurrentWordModel currentWord,
      Map<String, String> words,
      String latestWord});

  @override
  $LevelPlayersModelCopyWith<$Res> get players;
  @override
  $LevelCharactersModelCopyWith<$Res> get characters;
  @override
  $ResourcesModelCopyWith<$Res> get resources;
  @override
  $CurrentWordModelCopyWith<$Res> get currentWord;
}

/// @nodoc
class __$$_LevelModelCopyWithImpl<$Res> extends _$LevelModelCopyWithImpl<$Res>
    implements _$$_LevelModelCopyWith<$Res> {
  __$$_LevelModelCopyWithImpl(
      _$_LevelModel _value, $Res Function(_$_LevelModel) _then)
      : super(_value, (v) => _then(v as _$_LevelModel));

  @override
  _$_LevelModel get _value => super._value as _$_LevelModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? stringName = freezed,
    Object? players = freezed,
    Object? characters = freezed,
    Object? resources = freezed,
    Object? currentWord = freezed,
    Object? words = freezed,
    Object? latestWord = freezed,
  }) {
    return _then(_$_LevelModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      stringName: stringName == freezed
          ? _value.stringName
          : stringName // ignore: cast_nullable_to_non_nullable
              as String,
      players: players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as LevelPlayersModel,
      characters: characters == freezed
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as LevelCharactersModel,
      resources: resources == freezed
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as ResourcesModel,
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
class _$_LevelModel extends _LevelModel {
  const _$_LevelModel(
      {required this.id,
      required this.stringName,
      required this.players,
      required this.characters,
      required this.resources,
      this.currentWord = const CurrentWordModel(),
      final Map<String, String> words = const {},
      this.latestWord = ''})
      : _words = words,
        super._();

  factory _$_LevelModel.fromJson(Map<String, dynamic> json) =>
      _$$_LevelModelFromJson(json);

  @override
  final String id;
// TODO(arenukvern): add i18n object
  @override
  final String stringName;
  @override
  final LevelPlayersModel players;
  @override
  final LevelCharactersModel characters;
  @override
  final ResourcesModel resources;
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
    return 'LevelModel(id: $id, stringName: $stringName, players: $players, characters: $characters, resources: $resources, currentWord: $currentWord, words: $words, latestWord: $latestWord)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LevelModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.stringName, stringName) &&
            const DeepCollectionEquality().equals(other.players, players) &&
            const DeepCollectionEquality()
                .equals(other.characters, characters) &&
            const DeepCollectionEquality().equals(other.resources, resources) &&
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
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(stringName),
      const DeepCollectionEquality().hash(players),
      const DeepCollectionEquality().hash(characters),
      const DeepCollectionEquality().hash(resources),
      const DeepCollectionEquality().hash(currentWord),
      const DeepCollectionEquality().hash(_words),
      const DeepCollectionEquality().hash(latestWord));

  @JsonKey(ignore: true)
  @override
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
      {required final String id,
      required final String stringName,
      required final LevelPlayersModel players,
      required final LevelCharactersModel characters,
      required final ResourcesModel resources,
      final CurrentWordModel currentWord,
      final Map<String, String> words,
      final String latestWord}) = _$_LevelModel;
  const _LevelModel._() : super._();

  factory _LevelModel.fromJson(Map<String, dynamic> json) =
      _$_LevelModel.fromJson;

  @override
  String get id;
  @override // TODO(arenukvern): add i18n object
  String get stringName;
  @override
  LevelPlayersModel get players;
  @override
  LevelCharactersModel get characters;
  @override
  ResourcesModel get resources;
  @override
  CurrentWordModel get currentWord;
  @override
  Map<String, String> get words;
  @override
  String get latestWord;
  @override
  @JsonKey(ignore: true)
  _$$_LevelModelCopyWith<_$_LevelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

TemplateLevelModel _$TemplateLevelModelFromJson(Map<String, dynamic> json) {
  return _TemplateLevelModel.fromJson(json);
}

/// @nodoc
mixin _$TemplateLevelModel {
  String get id =>
      throw _privateConstructorUsedError; // TODO(arenukvern): add i18n object
  String get stringName => throw _privateConstructorUsedError;
  ResourcesModel get resources => throw _privateConstructorUsedError;
  FuelStorageModel get fuelStorage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TemplateLevelModelCopyWith<TemplateLevelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemplateLevelModelCopyWith<$Res> {
  factory $TemplateLevelModelCopyWith(
          TemplateLevelModel value, $Res Function(TemplateLevelModel) then) =
      _$TemplateLevelModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String stringName,
      ResourcesModel resources,
      FuelStorageModel fuelStorage});

  $ResourcesModelCopyWith<$Res> get resources;
  $FuelStorageModelCopyWith<$Res> get fuelStorage;
}

/// @nodoc
class _$TemplateLevelModelCopyWithImpl<$Res>
    implements $TemplateLevelModelCopyWith<$Res> {
  _$TemplateLevelModelCopyWithImpl(this._value, this._then);

  final TemplateLevelModel _value;
  // ignore: unused_field
  final $Res Function(TemplateLevelModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? stringName = freezed,
    Object? resources = freezed,
    Object? fuelStorage = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      stringName: stringName == freezed
          ? _value.stringName
          : stringName // ignore: cast_nullable_to_non_nullable
              as String,
      resources: resources == freezed
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as ResourcesModel,
      fuelStorage: fuelStorage == freezed
          ? _value.fuelStorage
          : fuelStorage // ignore: cast_nullable_to_non_nullable
              as FuelStorageModel,
    ));
  }

  @override
  $ResourcesModelCopyWith<$Res> get resources {
    return $ResourcesModelCopyWith<$Res>(_value.resources, (value) {
      return _then(_value.copyWith(resources: value));
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
abstract class _$$_TemplateLevelModelCopyWith<$Res>
    implements $TemplateLevelModelCopyWith<$Res> {
  factory _$$_TemplateLevelModelCopyWith(_$_TemplateLevelModel value,
          $Res Function(_$_TemplateLevelModel) then) =
      __$$_TemplateLevelModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String stringName,
      ResourcesModel resources,
      FuelStorageModel fuelStorage});

  @override
  $ResourcesModelCopyWith<$Res> get resources;
  @override
  $FuelStorageModelCopyWith<$Res> get fuelStorage;
}

/// @nodoc
class __$$_TemplateLevelModelCopyWithImpl<$Res>
    extends _$TemplateLevelModelCopyWithImpl<$Res>
    implements _$$_TemplateLevelModelCopyWith<$Res> {
  __$$_TemplateLevelModelCopyWithImpl(
      _$_TemplateLevelModel _value, $Res Function(_$_TemplateLevelModel) _then)
      : super(_value, (v) => _then(v as _$_TemplateLevelModel));

  @override
  _$_TemplateLevelModel get _value => super._value as _$_TemplateLevelModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? stringName = freezed,
    Object? resources = freezed,
    Object? fuelStorage = freezed,
  }) {
    return _then(_$_TemplateLevelModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      stringName: stringName == freezed
          ? _value.stringName
          : stringName // ignore: cast_nullable_to_non_nullable
              as String,
      resources: resources == freezed
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as ResourcesModel,
      fuelStorage: fuelStorage == freezed
          ? _value.fuelStorage
          : fuelStorage // ignore: cast_nullable_to_non_nullable
              as FuelStorageModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_TemplateLevelModel extends _TemplateLevelModel {
  const _$_TemplateLevelModel(
      {required this.id,
      required this.stringName,
      required this.resources,
      this.fuelStorage = const FuelStorageModel()})
      : super._();

  factory _$_TemplateLevelModel.fromJson(Map<String, dynamic> json) =>
      _$$_TemplateLevelModelFromJson(json);

  @override
  final String id;
// TODO(arenukvern): add i18n object
  @override
  final String stringName;
  @override
  final ResourcesModel resources;
  @override
  @JsonKey()
  final FuelStorageModel fuelStorage;

  @override
  String toString() {
    return 'TemplateLevelModel(id: $id, stringName: $stringName, resources: $resources, fuelStorage: $fuelStorage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TemplateLevelModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.stringName, stringName) &&
            const DeepCollectionEquality().equals(other.resources, resources) &&
            const DeepCollectionEquality()
                .equals(other.fuelStorage, fuelStorage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(stringName),
      const DeepCollectionEquality().hash(resources),
      const DeepCollectionEquality().hash(fuelStorage));

  @JsonKey(ignore: true)
  @override
  _$$_TemplateLevelModelCopyWith<_$_TemplateLevelModel> get copyWith =>
      __$$_TemplateLevelModelCopyWithImpl<_$_TemplateLevelModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TemplateLevelModelToJson(
      this,
    );
  }
}

abstract class _TemplateLevelModel extends TemplateLevelModel {
  const factory _TemplateLevelModel(
      {required final String id,
      required final String stringName,
      required final ResourcesModel resources,
      final FuelStorageModel fuelStorage}) = _$_TemplateLevelModel;
  const _TemplateLevelModel._() : super._();

  factory _TemplateLevelModel.fromJson(Map<String, dynamic> json) =
      _$_TemplateLevelModel.fromJson;

  @override
  String get id;
  @override // TODO(arenukvern): add i18n object
  String get stringName;
  @override
  ResourcesModel get resources;
  @override
  FuelStorageModel get fuelStorage;
  @override
  @JsonKey(ignore: true)
  _$$_TemplateLevelModelCopyWith<_$_TemplateLevelModel> get copyWith =>
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
      _$LevelPlayersModelCopyWithImpl<$Res>;
  $Res call({List<PlayerProfileModel> players, String currentPlayerId});
}

/// @nodoc
class _$LevelPlayersModelCopyWithImpl<$Res>
    implements $LevelPlayersModelCopyWith<$Res> {
  _$LevelPlayersModelCopyWithImpl(this._value, this._then);

  final LevelPlayersModel _value;
  // ignore: unused_field
  final $Res Function(LevelPlayersModel) _then;

  @override
  $Res call({
    Object? players = freezed,
    Object? currentPlayerId = freezed,
  }) {
    return _then(_value.copyWith(
      players: players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<PlayerProfileModel>,
      currentPlayerId: currentPlayerId == freezed
          ? _value.currentPlayerId
          : currentPlayerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LevelPlayersModelCopyWith<$Res>
    implements $LevelPlayersModelCopyWith<$Res> {
  factory _$$_LevelPlayersModelCopyWith(_$_LevelPlayersModel value,
          $Res Function(_$_LevelPlayersModel) then) =
      __$$_LevelPlayersModelCopyWithImpl<$Res>;
  @override
  $Res call({List<PlayerProfileModel> players, String currentPlayerId});
}

/// @nodoc
class __$$_LevelPlayersModelCopyWithImpl<$Res>
    extends _$LevelPlayersModelCopyWithImpl<$Res>
    implements _$$_LevelPlayersModelCopyWith<$Res> {
  __$$_LevelPlayersModelCopyWithImpl(
      _$_LevelPlayersModel _value, $Res Function(_$_LevelPlayersModel) _then)
      : super(_value, (v) => _then(v as _$_LevelPlayersModel));

  @override
  _$_LevelPlayersModel get _value => super._value as _$_LevelPlayersModel;

  @override
  $Res call({
    Object? players = freezed,
    Object? currentPlayerId = freezed,
  }) {
    return _then(_$_LevelPlayersModel(
      players: players == freezed
          ? _value._players
          : players // ignore: cast_nullable_to_non_nullable
              as List<PlayerProfileModel>,
      currentPlayerId: currentPlayerId == freezed
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
            const DeepCollectionEquality()
                .equals(other.currentPlayerId, currentPlayerId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_players),
      const DeepCollectionEquality().hash(currentPlayerId));

  @JsonKey(ignore: true)
  @override
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
      _$LocalDictionaryModelCopyWithImpl<$Res>;
  $Res call({Set<String> words});
}

/// @nodoc
class _$LocalDictionaryModelCopyWithImpl<$Res>
    implements $LocalDictionaryModelCopyWith<$Res> {
  _$LocalDictionaryModelCopyWithImpl(this._value, this._then);

  final LocalDictionaryModel _value;
  // ignore: unused_field
  final $Res Function(LocalDictionaryModel) _then;

  @override
  $Res call({
    Object? words = freezed,
  }) {
    return _then(_value.copyWith(
      words: words == freezed
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_LocalDictionaryModelCopyWith<$Res>
    implements $LocalDictionaryModelCopyWith<$Res> {
  factory _$$_LocalDictionaryModelCopyWith(_$_LocalDictionaryModel value,
          $Res Function(_$_LocalDictionaryModel) then) =
      __$$_LocalDictionaryModelCopyWithImpl<$Res>;
  @override
  $Res call({Set<String> words});
}

/// @nodoc
class __$$_LocalDictionaryModelCopyWithImpl<$Res>
    extends _$LocalDictionaryModelCopyWithImpl<$Res>
    implements _$$_LocalDictionaryModelCopyWith<$Res> {
  __$$_LocalDictionaryModelCopyWithImpl(_$_LocalDictionaryModel _value,
      $Res Function(_$_LocalDictionaryModel) _then)
      : super(_value, (v) => _then(v as _$_LocalDictionaryModel));

  @override
  _$_LocalDictionaryModel get _value => super._value as _$_LocalDictionaryModel;

  @override
  $Res call({
    Object? words = freezed,
  }) {
    return _then(_$_LocalDictionaryModel(
      words: words == freezed
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
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;
  CharacterAssetModel get asset => throw _privateConstructorUsedError;
  String get characterIcon => throw _privateConstructorUsedError;
  SerializedVector2 get position => throw _privateConstructorUsedError;
  FuelStorageModel get fuel => throw _privateConstructorUsedError;
  double get fuelNormalPower => throw _privateConstructorUsedError;
  double get requiredLiftForce => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerCharacterModelCopyWith<PlayerCharacterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerCharacterModelCopyWith<$Res> {
  factory $PlayerCharacterModelCopyWith(PlayerCharacterModel value,
          $Res Function(PlayerCharacterModel) then) =
      _$PlayerCharacterModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String description,
      int color,
      CharacterAssetModel asset,
      String characterIcon,
      SerializedVector2 position,
      FuelStorageModel fuel,
      double fuelNormalPower,
      double requiredLiftForce});

  $CharacterAssetModelCopyWith<$Res> get asset;
  $SerializedVector2CopyWith<$Res> get position;
  $FuelStorageModelCopyWith<$Res> get fuel;
}

/// @nodoc
class _$PlayerCharacterModelCopyWithImpl<$Res>
    implements $PlayerCharacterModelCopyWith<$Res> {
  _$PlayerCharacterModelCopyWithImpl(this._value, this._then);

  final PlayerCharacterModel _value;
  // ignore: unused_field
  final $Res Function(PlayerCharacterModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? color = freezed,
    Object? asset = freezed,
    Object? characterIcon = freezed,
    Object? position = freezed,
    Object? fuel = freezed,
    Object? fuelNormalPower = freezed,
    Object? requiredLiftForce = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as CharacterAssetModel,
      characterIcon: characterIcon == freezed
          ? _value.characterIcon
          : characterIcon // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as SerializedVector2,
      fuel: fuel == freezed
          ? _value.fuel
          : fuel // ignore: cast_nullable_to_non_nullable
              as FuelStorageModel,
      fuelNormalPower: fuelNormalPower == freezed
          ? _value.fuelNormalPower
          : fuelNormalPower // ignore: cast_nullable_to_non_nullable
              as double,
      requiredLiftForce: requiredLiftForce == freezed
          ? _value.requiredLiftForce
          : requiredLiftForce // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  $CharacterAssetModelCopyWith<$Res> get asset {
    return $CharacterAssetModelCopyWith<$Res>(_value.asset, (value) {
      return _then(_value.copyWith(asset: value));
    });
  }

  @override
  $SerializedVector2CopyWith<$Res> get position {
    return $SerializedVector2CopyWith<$Res>(_value.position, (value) {
      return _then(_value.copyWith(position: value));
    });
  }

  @override
  $FuelStorageModelCopyWith<$Res> get fuel {
    return $FuelStorageModelCopyWith<$Res>(_value.fuel, (value) {
      return _then(_value.copyWith(fuel: value));
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
  $Res call(
      {String id,
      String name,
      String description,
      int color,
      CharacterAssetModel asset,
      String characterIcon,
      SerializedVector2 position,
      FuelStorageModel fuel,
      double fuelNormalPower,
      double requiredLiftForce});

  @override
  $CharacterAssetModelCopyWith<$Res> get asset;
  @override
  $SerializedVector2CopyWith<$Res> get position;
  @override
  $FuelStorageModelCopyWith<$Res> get fuel;
}

/// @nodoc
class __$$_PlayerCharacterModelCopyWithImpl<$Res>
    extends _$PlayerCharacterModelCopyWithImpl<$Res>
    implements _$$_PlayerCharacterModelCopyWith<$Res> {
  __$$_PlayerCharacterModelCopyWithImpl(_$_PlayerCharacterModel _value,
      $Res Function(_$_PlayerCharacterModel) _then)
      : super(_value, (v) => _then(v as _$_PlayerCharacterModel));

  @override
  _$_PlayerCharacterModel get _value => super._value as _$_PlayerCharacterModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? color = freezed,
    Object? asset = freezed,
    Object? characterIcon = freezed,
    Object? position = freezed,
    Object? fuel = freezed,
    Object? fuelNormalPower = freezed,
    Object? requiredLiftForce = freezed,
  }) {
    return _then(_$_PlayerCharacterModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as CharacterAssetModel,
      characterIcon: characterIcon == freezed
          ? _value.characterIcon
          : characterIcon // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as SerializedVector2,
      fuel: fuel == freezed
          ? _value.fuel
          : fuel // ignore: cast_nullable_to_non_nullable
              as FuelStorageModel,
      fuelNormalPower: fuelNormalPower == freezed
          ? _value.fuelNormalPower
          : fuelNormalPower // ignore: cast_nullable_to_non_nullable
              as double,
      requiredLiftForce: requiredLiftForce == freezed
          ? _value.requiredLiftForce
          : requiredLiftForce // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PlayerCharacterModel extends _PlayerCharacterModel {
  const _$_PlayerCharacterModel(
      {required this.id,
      required this.name,
      required this.description,
      required this.color,
      required this.asset,
      this.characterIcon = '',
      this.position = SerializedVector2.zero,
      this.fuel = const FuelStorageModel(value: 150),
      this.fuelNormalPower = 50.5,
      this.requiredLiftForce = 0.5})
      : super._();

  factory _$_PlayerCharacterModel.fromJson(Map<String, dynamic> json) =>
      _$$_PlayerCharacterModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final int color;
  @override
  final CharacterAssetModel asset;
  @override
  @JsonKey()
  final String characterIcon;
  @override
  @JsonKey()
  final SerializedVector2 position;
  @override
  @JsonKey()
  final FuelStorageModel fuel;
  @override
  @JsonKey()
  final double fuelNormalPower;
  @override
  @JsonKey()
  final double requiredLiftForce;

  @override
  String toString() {
    return 'PlayerCharacterModel(id: $id, name: $name, description: $description, color: $color, asset: $asset, characterIcon: $characterIcon, position: $position, fuel: $fuel, fuelNormalPower: $fuelNormalPower, requiredLiftForce: $requiredLiftForce)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayerCharacterModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.asset, asset) &&
            const DeepCollectionEquality()
                .equals(other.characterIcon, characterIcon) &&
            const DeepCollectionEquality().equals(other.position, position) &&
            const DeepCollectionEquality().equals(other.fuel, fuel) &&
            const DeepCollectionEquality()
                .equals(other.fuelNormalPower, fuelNormalPower) &&
            const DeepCollectionEquality()
                .equals(other.requiredLiftForce, requiredLiftForce));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(asset),
      const DeepCollectionEquality().hash(characterIcon),
      const DeepCollectionEquality().hash(position),
      const DeepCollectionEquality().hash(fuel),
      const DeepCollectionEquality().hash(fuelNormalPower),
      const DeepCollectionEquality().hash(requiredLiftForce));

  @JsonKey(ignore: true)
  @override
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
      {required final String id,
      required final String name,
      required final String description,
      required final int color,
      required final CharacterAssetModel asset,
      final String characterIcon,
      final SerializedVector2 position,
      final FuelStorageModel fuel,
      final double fuelNormalPower,
      final double requiredLiftForce}) = _$_PlayerCharacterModel;
  const _PlayerCharacterModel._() : super._();

  factory _PlayerCharacterModel.fromJson(Map<String, dynamic> json) =
      _$_PlayerCharacterModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  int get color;
  @override
  CharacterAssetModel get asset;
  @override
  String get characterIcon;
  @override
  SerializedVector2 get position;
  @override
  FuelStorageModel get fuel;
  @override
  double get fuelNormalPower;
  @override
  double get requiredLiftForce;
  @override
  @JsonKey(ignore: true)
  _$$_PlayerCharacterModelCopyWith<_$_PlayerCharacterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CharacterAssetModel _$CharacterAssetModelFromJson(Map<String, dynamic> json) {
  return _CharacterAssetModel.fromJson(json);
}

/// @nodoc
mixin _$CharacterAssetModel {
  SerializedVector2 get srcPosition => throw _privateConstructorUsedError;
  int get srcSizeX => throw _privateConstructorUsedError;
  int get srcSizeY => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterAssetModelCopyWith<CharacterAssetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterAssetModelCopyWith<$Res> {
  factory $CharacterAssetModelCopyWith(
          CharacterAssetModel value, $Res Function(CharacterAssetModel) then) =
      _$CharacterAssetModelCopyWithImpl<$Res>;
  $Res call({SerializedVector2 srcPosition, int srcSizeX, int srcSizeY});

  $SerializedVector2CopyWith<$Res> get srcPosition;
}

/// @nodoc
class _$CharacterAssetModelCopyWithImpl<$Res>
    implements $CharacterAssetModelCopyWith<$Res> {
  _$CharacterAssetModelCopyWithImpl(this._value, this._then);

  final CharacterAssetModel _value;
  // ignore: unused_field
  final $Res Function(CharacterAssetModel) _then;

  @override
  $Res call({
    Object? srcPosition = freezed,
    Object? srcSizeX = freezed,
    Object? srcSizeY = freezed,
  }) {
    return _then(_value.copyWith(
      srcPosition: srcPosition == freezed
          ? _value.srcPosition
          : srcPosition // ignore: cast_nullable_to_non_nullable
              as SerializedVector2,
      srcSizeX: srcSizeX == freezed
          ? _value.srcSizeX
          : srcSizeX // ignore: cast_nullable_to_non_nullable
              as int,
      srcSizeY: srcSizeY == freezed
          ? _value.srcSizeY
          : srcSizeY // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $SerializedVector2CopyWith<$Res> get srcPosition {
    return $SerializedVector2CopyWith<$Res>(_value.srcPosition, (value) {
      return _then(_value.copyWith(srcPosition: value));
    });
  }
}

/// @nodoc
abstract class _$$_CharacterAssetModelCopyWith<$Res>
    implements $CharacterAssetModelCopyWith<$Res> {
  factory _$$_CharacterAssetModelCopyWith(_$_CharacterAssetModel value,
          $Res Function(_$_CharacterAssetModel) then) =
      __$$_CharacterAssetModelCopyWithImpl<$Res>;
  @override
  $Res call({SerializedVector2 srcPosition, int srcSizeX, int srcSizeY});

  @override
  $SerializedVector2CopyWith<$Res> get srcPosition;
}

/// @nodoc
class __$$_CharacterAssetModelCopyWithImpl<$Res>
    extends _$CharacterAssetModelCopyWithImpl<$Res>
    implements _$$_CharacterAssetModelCopyWith<$Res> {
  __$$_CharacterAssetModelCopyWithImpl(_$_CharacterAssetModel _value,
      $Res Function(_$_CharacterAssetModel) _then)
      : super(_value, (v) => _then(v as _$_CharacterAssetModel));

  @override
  _$_CharacterAssetModel get _value => super._value as _$_CharacterAssetModel;

  @override
  $Res call({
    Object? srcPosition = freezed,
    Object? srcSizeX = freezed,
    Object? srcSizeY = freezed,
  }) {
    return _then(_$_CharacterAssetModel(
      srcPosition: srcPosition == freezed
          ? _value.srcPosition
          : srcPosition // ignore: cast_nullable_to_non_nullable
              as SerializedVector2,
      srcSizeX: srcSizeX == freezed
          ? _value.srcSizeX
          : srcSizeX // ignore: cast_nullable_to_non_nullable
              as int,
      srcSizeY: srcSizeY == freezed
          ? _value.srcSizeY
          : srcSizeY // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CharacterAssetModel extends _CharacterAssetModel {
  const _$_CharacterAssetModel(
      {required this.srcPosition,
      required this.srcSizeX,
      required this.srcSizeY})
      : super._();

  factory _$_CharacterAssetModel.fromJson(Map<String, dynamic> json) =>
      _$$_CharacterAssetModelFromJson(json);

  @override
  final SerializedVector2 srcPosition;
  @override
  final int srcSizeX;
  @override
  final int srcSizeY;

  @override
  String toString() {
    return 'CharacterAssetModel(srcPosition: $srcPosition, srcSizeX: $srcSizeX, srcSizeY: $srcSizeY)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterAssetModel &&
            const DeepCollectionEquality()
                .equals(other.srcPosition, srcPosition) &&
            const DeepCollectionEquality().equals(other.srcSizeX, srcSizeX) &&
            const DeepCollectionEquality().equals(other.srcSizeY, srcSizeY));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(srcPosition),
      const DeepCollectionEquality().hash(srcSizeX),
      const DeepCollectionEquality().hash(srcSizeY));

  @JsonKey(ignore: true)
  @override
  _$$_CharacterAssetModelCopyWith<_$_CharacterAssetModel> get copyWith =>
      __$$_CharacterAssetModelCopyWithImpl<_$_CharacterAssetModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharacterAssetModelToJson(
      this,
    );
  }
}

abstract class _CharacterAssetModel extends CharacterAssetModel {
  const factory _CharacterAssetModel(
      {required final SerializedVector2 srcPosition,
      required final int srcSizeX,
      required final int srcSizeY}) = _$_CharacterAssetModel;
  const _CharacterAssetModel._() : super._();

  factory _CharacterAssetModel.fromJson(Map<String, dynamic> json) =
      _$_CharacterAssetModel.fromJson;

  @override
  SerializedVector2 get srcPosition;
  @override
  int get srcSizeX;
  @override
  int get srcSizeY;
  @override
  @JsonKey(ignore: true)
  _$$_CharacterAssetModelCopyWith<_$_CharacterAssetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

SerializedVector2 _$SerializedVector2FromJson(Map<String, dynamic> json) {
  return _SerializedVector2.fromJson(json);
}

/// @nodoc
mixin _$SerializedVector2 {
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SerializedVector2CopyWith<SerializedVector2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SerializedVector2CopyWith<$Res> {
  factory $SerializedVector2CopyWith(
          SerializedVector2 value, $Res Function(SerializedVector2) then) =
      _$SerializedVector2CopyWithImpl<$Res>;
  $Res call({double x, double y});
}

/// @nodoc
class _$SerializedVector2CopyWithImpl<$Res>
    implements $SerializedVector2CopyWith<$Res> {
  _$SerializedVector2CopyWithImpl(this._value, this._then);

  final SerializedVector2 _value;
  // ignore: unused_field
  final $Res Function(SerializedVector2) _then;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_value.copyWith(
      x: x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_SerializedVector2CopyWith<$Res>
    implements $SerializedVector2CopyWith<$Res> {
  factory _$$_SerializedVector2CopyWith(_$_SerializedVector2 value,
          $Res Function(_$_SerializedVector2) then) =
      __$$_SerializedVector2CopyWithImpl<$Res>;
  @override
  $Res call({double x, double y});
}

/// @nodoc
class __$$_SerializedVector2CopyWithImpl<$Res>
    extends _$SerializedVector2CopyWithImpl<$Res>
    implements _$$_SerializedVector2CopyWith<$Res> {
  __$$_SerializedVector2CopyWithImpl(
      _$_SerializedVector2 _value, $Res Function(_$_SerializedVector2) _then)
      : super(_value, (v) => _then(v as _$_SerializedVector2));

  @override
  _$_SerializedVector2 get _value => super._value as _$_SerializedVector2;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_$_SerializedVector2(
      x: x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: y == freezed
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
            const DeepCollectionEquality().equals(other.x, x) &&
            const DeepCollectionEquality().equals(other.y, y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(x),
      const DeepCollectionEquality().hash(y));

  @JsonKey(ignore: true)
  @override
  _$$_SerializedVector2CopyWith<_$_SerializedVector2> get copyWith =>
      __$$_SerializedVector2CopyWithImpl<_$_SerializedVector2>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SerializedVector2ToJson(
      this,
    );
  }
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
  Map<String, PlayerLevelHighscoreModel> get levelsHighscores =>
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
      _$PlayerProfileModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      int colorValue,
      String name,
      Map<String, PlayerLevelHighscoreModel> levelsHighscores,
      PlayerHighscoreModel highscore});

  $PlayerHighscoreModelCopyWith<$Res> get highscore;
}

/// @nodoc
class _$PlayerProfileModelCopyWithImpl<$Res>
    implements $PlayerProfileModelCopyWith<$Res> {
  _$PlayerProfileModelCopyWithImpl(this._value, this._then);

  final PlayerProfileModel _value;
  // ignore: unused_field
  final $Res Function(PlayerProfileModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? colorValue = freezed,
    Object? name = freezed,
    Object? levelsHighscores = freezed,
    Object? highscore = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      colorValue: colorValue == freezed
          ? _value.colorValue
          : colorValue // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      levelsHighscores: levelsHighscores == freezed
          ? _value.levelsHighscores
          : levelsHighscores // ignore: cast_nullable_to_non_nullable
              as Map<String, PlayerLevelHighscoreModel>,
      highscore: highscore == freezed
          ? _value.highscore
          : highscore // ignore: cast_nullable_to_non_nullable
              as PlayerHighscoreModel,
    ));
  }

  @override
  $PlayerHighscoreModelCopyWith<$Res> get highscore {
    return $PlayerHighscoreModelCopyWith<$Res>(_value.highscore, (value) {
      return _then(_value.copyWith(highscore: value));
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
  $Res call(
      {String id,
      int colorValue,
      String name,
      Map<String, PlayerLevelHighscoreModel> levelsHighscores,
      PlayerHighscoreModel highscore});

  @override
  $PlayerHighscoreModelCopyWith<$Res> get highscore;
}

/// @nodoc
class __$$_PlayerProfileModelCopyWithImpl<$Res>
    extends _$PlayerProfileModelCopyWithImpl<$Res>
    implements _$$_PlayerProfileModelCopyWith<$Res> {
  __$$_PlayerProfileModelCopyWithImpl(
      _$_PlayerProfileModel _value, $Res Function(_$_PlayerProfileModel) _then)
      : super(_value, (v) => _then(v as _$_PlayerProfileModel));

  @override
  _$_PlayerProfileModel get _value => super._value as _$_PlayerProfileModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? colorValue = freezed,
    Object? name = freezed,
    Object? levelsHighscores = freezed,
    Object? highscore = freezed,
  }) {
    return _then(_$_PlayerProfileModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      colorValue: colorValue == freezed
          ? _value.colorValue
          : colorValue // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      levelsHighscores: levelsHighscores == freezed
          ? _value._levelsHighscores
          : levelsHighscores // ignore: cast_nullable_to_non_nullable
              as Map<String, PlayerLevelHighscoreModel>,
      highscore: highscore == freezed
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
      final Map<String, PlayerLevelHighscoreModel> levelsHighscores = const {},
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
  final Map<String, PlayerLevelHighscoreModel> _levelsHighscores;
  @override
  @JsonKey()
  Map<String, PlayerLevelHighscoreModel> get levelsHighscores {
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
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.colorValue, colorValue) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other._levelsHighscores, _levelsHighscores) &&
            const DeepCollectionEquality().equals(other.highscore, highscore));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(colorValue),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(_levelsHighscores),
      const DeepCollectionEquality().hash(highscore));

  @JsonKey(ignore: true)
  @override
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
      final Map<String, PlayerLevelHighscoreModel> levelsHighscores,
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
  Map<String, PlayerLevelHighscoreModel> get levelsHighscores;
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
      _$PlayerHighscoreModelCopyWithImpl<$Res>;
  $Res call(
      {int maxWordsCount,
      int maxLettersCount,
      int totalWordsCount,
      int totalLettersCount,
      ScoreModel score});

  $ScoreModelCopyWith<$Res> get score;
}

/// @nodoc
class _$PlayerHighscoreModelCopyWithImpl<$Res>
    implements $PlayerHighscoreModelCopyWith<$Res> {
  _$PlayerHighscoreModelCopyWithImpl(this._value, this._then);

  final PlayerHighscoreModel _value;
  // ignore: unused_field
  final $Res Function(PlayerHighscoreModel) _then;

  @override
  $Res call({
    Object? maxWordsCount = freezed,
    Object? maxLettersCount = freezed,
    Object? totalWordsCount = freezed,
    Object? totalLettersCount = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      maxWordsCount: maxWordsCount == freezed
          ? _value.maxWordsCount
          : maxWordsCount // ignore: cast_nullable_to_non_nullable
              as int,
      maxLettersCount: maxLettersCount == freezed
          ? _value.maxLettersCount
          : maxLettersCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalWordsCount: totalWordsCount == freezed
          ? _value.totalWordsCount
          : totalWordsCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalLettersCount: totalLettersCount == freezed
          ? _value.totalLettersCount
          : totalLettersCount // ignore: cast_nullable_to_non_nullable
              as int,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as ScoreModel,
    ));
  }

  @override
  $ScoreModelCopyWith<$Res> get score {
    return $ScoreModelCopyWith<$Res>(_value.score, (value) {
      return _then(_value.copyWith(score: value));
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
    extends _$PlayerHighscoreModelCopyWithImpl<$Res>
    implements _$$_PlayerHighscoreModelCopyWith<$Res> {
  __$$_PlayerHighscoreModelCopyWithImpl(_$_PlayerHighscoreModel _value,
      $Res Function(_$_PlayerHighscoreModel) _then)
      : super(_value, (v) => _then(v as _$_PlayerHighscoreModel));

  @override
  _$_PlayerHighscoreModel get _value => super._value as _$_PlayerHighscoreModel;

  @override
  $Res call({
    Object? maxWordsCount = freezed,
    Object? maxLettersCount = freezed,
    Object? totalWordsCount = freezed,
    Object? totalLettersCount = freezed,
    Object? score = freezed,
  }) {
    return _then(_$_PlayerHighscoreModel(
      maxWordsCount: maxWordsCount == freezed
          ? _value.maxWordsCount
          : maxWordsCount // ignore: cast_nullable_to_non_nullable
              as int,
      maxLettersCount: maxLettersCount == freezed
          ? _value.maxLettersCount
          : maxLettersCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalWordsCount: totalWordsCount == freezed
          ? _value.totalWordsCount
          : totalWordsCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalLettersCount: totalLettersCount == freezed
          ? _value.totalLettersCount
          : totalLettersCount // ignore: cast_nullable_to_non_nullable
              as int,
      score: score == freezed
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
            const DeepCollectionEquality()
                .equals(other.maxWordsCount, maxWordsCount) &&
            const DeepCollectionEquality()
                .equals(other.maxLettersCount, maxLettersCount) &&
            const DeepCollectionEquality()
                .equals(other.totalWordsCount, totalWordsCount) &&
            const DeepCollectionEquality()
                .equals(other.totalLettersCount, totalLettersCount) &&
            const DeepCollectionEquality().equals(other.score, score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(maxWordsCount),
      const DeepCollectionEquality().hash(maxLettersCount),
      const DeepCollectionEquality().hash(totalWordsCount),
      const DeepCollectionEquality().hash(totalLettersCount),
      const DeepCollectionEquality().hash(score));

  @JsonKey(ignore: true)
  @override
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
  String get levelId => throw _privateConstructorUsedError;
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
      _$PlayerLevelHighscoreModelCopyWithImpl<$Res>;
  $Res call(
      {String levelId,
      double maxDistance,
      double totalDistance,
      double landingsCount,
      double flightTime});
}

/// @nodoc
class _$PlayerLevelHighscoreModelCopyWithImpl<$Res>
    implements $PlayerLevelHighscoreModelCopyWith<$Res> {
  _$PlayerLevelHighscoreModelCopyWithImpl(this._value, this._then);

  final PlayerLevelHighscoreModel _value;
  // ignore: unused_field
  final $Res Function(PlayerLevelHighscoreModel) _then;

  @override
  $Res call({
    Object? levelId = freezed,
    Object? maxDistance = freezed,
    Object? totalDistance = freezed,
    Object? landingsCount = freezed,
    Object? flightTime = freezed,
  }) {
    return _then(_value.copyWith(
      levelId: levelId == freezed
          ? _value.levelId
          : levelId // ignore: cast_nullable_to_non_nullable
              as String,
      maxDistance: maxDistance == freezed
          ? _value.maxDistance
          : maxDistance // ignore: cast_nullable_to_non_nullable
              as double,
      totalDistance: totalDistance == freezed
          ? _value.totalDistance
          : totalDistance // ignore: cast_nullable_to_non_nullable
              as double,
      landingsCount: landingsCount == freezed
          ? _value.landingsCount
          : landingsCount // ignore: cast_nullable_to_non_nullable
              as double,
      flightTime: flightTime == freezed
          ? _value.flightTime
          : flightTime // ignore: cast_nullable_to_non_nullable
              as double,
    ));
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
  $Res call(
      {String levelId,
      double maxDistance,
      double totalDistance,
      double landingsCount,
      double flightTime});
}

/// @nodoc
class __$$_PlayerLevelHighscoreModelCopyWithImpl<$Res>
    extends _$PlayerLevelHighscoreModelCopyWithImpl<$Res>
    implements _$$_PlayerLevelHighscoreModelCopyWith<$Res> {
  __$$_PlayerLevelHighscoreModelCopyWithImpl(
      _$_PlayerLevelHighscoreModel _value,
      $Res Function(_$_PlayerLevelHighscoreModel) _then)
      : super(_value, (v) => _then(v as _$_PlayerLevelHighscoreModel));

  @override
  _$_PlayerLevelHighscoreModel get _value =>
      super._value as _$_PlayerLevelHighscoreModel;

  @override
  $Res call({
    Object? levelId = freezed,
    Object? maxDistance = freezed,
    Object? totalDistance = freezed,
    Object? landingsCount = freezed,
    Object? flightTime = freezed,
  }) {
    return _then(_$_PlayerLevelHighscoreModel(
      levelId: levelId == freezed
          ? _value.levelId
          : levelId // ignore: cast_nullable_to_non_nullable
              as String,
      maxDistance: maxDistance == freezed
          ? _value.maxDistance
          : maxDistance // ignore: cast_nullable_to_non_nullable
              as double,
      totalDistance: totalDistance == freezed
          ? _value.totalDistance
          : totalDistance // ignore: cast_nullable_to_non_nullable
              as double,
      landingsCount: landingsCount == freezed
          ? _value.landingsCount
          : landingsCount // ignore: cast_nullable_to_non_nullable
              as double,
      flightTime: flightTime == freezed
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
  final String levelId;
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
            const DeepCollectionEquality().equals(other.levelId, levelId) &&
            const DeepCollectionEquality()
                .equals(other.maxDistance, maxDistance) &&
            const DeepCollectionEquality()
                .equals(other.totalDistance, totalDistance) &&
            const DeepCollectionEquality()
                .equals(other.landingsCount, landingsCount) &&
            const DeepCollectionEquality()
                .equals(other.flightTime, flightTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(levelId),
      const DeepCollectionEquality().hash(maxDistance),
      const DeepCollectionEquality().hash(totalDistance),
      const DeepCollectionEquality().hash(landingsCount),
      const DeepCollectionEquality().hash(flightTime));

  @JsonKey(ignore: true)
  @override
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
      {required final String levelId,
      final double maxDistance,
      final double totalDistance,
      final double landingsCount,
      final double flightTime}) = _$_PlayerLevelHighscoreModel;
  const _PlayerLevelHighscoreModel._() : super._();

  factory _PlayerLevelHighscoreModel.fromJson(Map<String, dynamic> json) =
      _$_PlayerLevelHighscoreModel.fromJson;

  @override
  String get levelId;
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

ResourcesModel _$ResourcesModelFromJson(Map<String, dynamic> json) {
  return _ResourcesModel.fromJson(json);
}

/// @nodoc
mixin _$ResourcesModel {
  String get tileMapName => throw _privateConstructorUsedError;
  String get tileMapIcon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResourcesModelCopyWith<ResourcesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourcesModelCopyWith<$Res> {
  factory $ResourcesModelCopyWith(
          ResourcesModel value, $Res Function(ResourcesModel) then) =
      _$ResourcesModelCopyWithImpl<$Res>;
  $Res call({String tileMapName, String tileMapIcon});
}

/// @nodoc
class _$ResourcesModelCopyWithImpl<$Res>
    implements $ResourcesModelCopyWith<$Res> {
  _$ResourcesModelCopyWithImpl(this._value, this._then);

  final ResourcesModel _value;
  // ignore: unused_field
  final $Res Function(ResourcesModel) _then;

  @override
  $Res call({
    Object? tileMapName = freezed,
    Object? tileMapIcon = freezed,
  }) {
    return _then(_value.copyWith(
      tileMapName: tileMapName == freezed
          ? _value.tileMapName
          : tileMapName // ignore: cast_nullable_to_non_nullable
              as String,
      tileMapIcon: tileMapIcon == freezed
          ? _value.tileMapIcon
          : tileMapIcon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ResourcesModelCopyWith<$Res>
    implements $ResourcesModelCopyWith<$Res> {
  factory _$$_ResourcesModelCopyWith(
          _$_ResourcesModel value, $Res Function(_$_ResourcesModel) then) =
      __$$_ResourcesModelCopyWithImpl<$Res>;
  @override
  $Res call({String tileMapName, String tileMapIcon});
}

/// @nodoc
class __$$_ResourcesModelCopyWithImpl<$Res>
    extends _$ResourcesModelCopyWithImpl<$Res>
    implements _$$_ResourcesModelCopyWith<$Res> {
  __$$_ResourcesModelCopyWithImpl(
      _$_ResourcesModel _value, $Res Function(_$_ResourcesModel) _then)
      : super(_value, (v) => _then(v as _$_ResourcesModel));

  @override
  _$_ResourcesModel get _value => super._value as _$_ResourcesModel;

  @override
  $Res call({
    Object? tileMapName = freezed,
    Object? tileMapIcon = freezed,
  }) {
    return _then(_$_ResourcesModel(
      tileMapName: tileMapName == freezed
          ? _value.tileMapName
          : tileMapName // ignore: cast_nullable_to_non_nullable
              as String,
      tileMapIcon: tileMapIcon == freezed
          ? _value.tileMapIcon
          : tileMapIcon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResourcesModel extends _ResourcesModel {
  const _$_ResourcesModel({required this.tileMapName, this.tileMapIcon = ''})
      : super._();

  factory _$_ResourcesModel.fromJson(Map<String, dynamic> json) =>
      _$$_ResourcesModelFromJson(json);

  @override
  final String tileMapName;
  @override
  @JsonKey()
  final String tileMapIcon;

  @override
  String toString() {
    return 'ResourcesModel(tileMapName: $tileMapName, tileMapIcon: $tileMapIcon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResourcesModel &&
            const DeepCollectionEquality()
                .equals(other.tileMapName, tileMapName) &&
            const DeepCollectionEquality()
                .equals(other.tileMapIcon, tileMapIcon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tileMapName),
      const DeepCollectionEquality().hash(tileMapIcon));

  @JsonKey(ignore: true)
  @override
  _$$_ResourcesModelCopyWith<_$_ResourcesModel> get copyWith =>
      __$$_ResourcesModelCopyWithImpl<_$_ResourcesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResourcesModelToJson(
      this,
    );
  }
}

abstract class _ResourcesModel extends ResourcesModel {
  const factory _ResourcesModel(
      {required final String tileMapName,
      final String tileMapIcon}) = _$_ResourcesModel;
  const _ResourcesModel._() : super._();

  factory _ResourcesModel.fromJson(Map<String, dynamic> json) =
      _$_ResourcesModel.fromJson;

  @override
  String get tileMapName;
  @override
  String get tileMapIcon;
  @override
  @JsonKey(ignore: true)
  _$$_ResourcesModelCopyWith<_$_ResourcesModel> get copyWith =>
      throw _privateConstructorUsedError;
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
      _$ScoreModelCopyWithImpl<$Res>;
  $Res call({double value});
}

/// @nodoc
class _$ScoreModelCopyWithImpl<$Res> implements $ScoreModelCopyWith<$Res> {
  _$ScoreModelCopyWithImpl(this._value, this._then);

  final ScoreModel _value;
  // ignore: unused_field
  final $Res Function(ScoreModel) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_ScoreModelCopyWith<$Res>
    implements $ScoreModelCopyWith<$Res> {
  factory _$$_ScoreModelCopyWith(
          _$_ScoreModel value, $Res Function(_$_ScoreModel) then) =
      __$$_ScoreModelCopyWithImpl<$Res>;
  @override
  $Res call({double value});
}

/// @nodoc
class __$$_ScoreModelCopyWithImpl<$Res> extends _$ScoreModelCopyWithImpl<$Res>
    implements _$$_ScoreModelCopyWith<$Res> {
  __$$_ScoreModelCopyWithImpl(
      _$_ScoreModel _value, $Res Function(_$_ScoreModel) _then)
      : super(_value, (v) => _then(v as _$_ScoreModel));

  @override
  _$_ScoreModel get _value => super._value as _$_ScoreModel;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_ScoreModel(
      value: value == freezed
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
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
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
      _$WorldDateTimeModelCopyWithImpl<$Res>;
  $Res call({int second});
}

/// @nodoc
class _$WorldDateTimeModelCopyWithImpl<$Res>
    implements $WorldDateTimeModelCopyWith<$Res> {
  _$WorldDateTimeModelCopyWithImpl(this._value, this._then);

  final WorldDateTimeModel _value;
  // ignore: unused_field
  final $Res Function(WorldDateTimeModel) _then;

  @override
  $Res call({
    Object? second = freezed,
  }) {
    return _then(_value.copyWith(
      second: second == freezed
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_WorldDateTimeCopyWith<$Res>
    implements $WorldDateTimeModelCopyWith<$Res> {
  factory _$$_WorldDateTimeCopyWith(
          _$_WorldDateTime value, $Res Function(_$_WorldDateTime) then) =
      __$$_WorldDateTimeCopyWithImpl<$Res>;
  @override
  $Res call({int second});
}

/// @nodoc
class __$$_WorldDateTimeCopyWithImpl<$Res>
    extends _$WorldDateTimeModelCopyWithImpl<$Res>
    implements _$$_WorldDateTimeCopyWith<$Res> {
  __$$_WorldDateTimeCopyWithImpl(
      _$_WorldDateTime _value, $Res Function(_$_WorldDateTime) _then)
      : super(_value, (v) => _then(v as _$_WorldDateTime));

  @override
  _$_WorldDateTime get _value => super._value as _$_WorldDateTime;

  @override
  $Res call({
    Object? second = freezed,
  }) {
    return _then(_$_WorldDateTime(
      second: second == freezed
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
            const DeepCollectionEquality().equals(other.second, second));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(second));

  @JsonKey(ignore: true)
  @override
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
