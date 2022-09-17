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

  /// Levels that player already started
  Map<String, LevelModel> get levels => throw _privateConstructorUsedError;
  WorldDateTimeModel get dateTime => throw _privateConstructorUsedError;
  WorldDateTimeModel get lastDateTime => throw _privateConstructorUsedError;
  List<PlayerProfileModel> get playersCollection =>
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
      Map<String, LevelModel> levels,
      WorldDateTimeModel dateTime,
      WorldDateTimeModel lastDateTime,
      List<PlayerProfileModel> playersCollection});

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
    Object? levels = freezed,
    Object? dateTime = freezed,
    Object? lastDateTime = freezed,
    Object? playersCollection = freezed,
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
abstract class _$$_GameModelCopyWith<$Res> implements $GameModelCopyWith<$Res> {
  factory _$$_GameModelCopyWith(
          _$_GameModel value, $Res Function(_$_GameModel) then) =
      __$$_GameModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      List<TemplateLevelModel> templateLevels,
      String currentLevelId,
      Map<String, LevelModel> levels,
      WorldDateTimeModel dateTime,
      WorldDateTimeModel lastDateTime,
      List<PlayerProfileModel> playersCollection});

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
    Object? levels = freezed,
    Object? dateTime = freezed,
    Object? lastDateTime = freezed,
    Object? playersCollection = freezed,
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
      final Map<String, LevelModel> levels = const {},
      this.dateTime = const WorldDateTimeModel(),
      this.lastDateTime = const WorldDateTimeModel(),
      final List<PlayerProfileModel> playersCollection = const []})
      : _templateLevels = templateLevels,
        _levels = levels,
        _playersCollection = playersCollection,
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
  final List<PlayerProfileModel> _playersCollection;
  @override
  @JsonKey()
  List<PlayerProfileModel> get playersCollection {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playersCollection);
  }

  @override
  String toString() {
    return 'GameModel(id: $id, templateLevels: $templateLevels, currentLevelId: $currentLevelId, levels: $levels, dateTime: $dateTime, lastDateTime: $lastDateTime, playersCollection: $playersCollection)';
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
            const DeepCollectionEquality().equals(other._levels, _levels) &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime) &&
            const DeepCollectionEquality()
                .equals(other.lastDateTime, lastDateTime) &&
            const DeepCollectionEquality()
                .equals(other._playersCollection, _playersCollection));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(_templateLevels),
      const DeepCollectionEquality().hash(currentLevelId),
      const DeepCollectionEquality().hash(_levels),
      const DeepCollectionEquality().hash(dateTime),
      const DeepCollectionEquality().hash(lastDateTime),
      const DeepCollectionEquality().hash(_playersCollection));

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
      final Map<String, LevelModel> levels,
      final WorldDateTimeModel dateTime,
      final WorldDateTimeModel lastDateTime,
      final List<PlayerProfileModel> playersCollection}) = _$_GameModel;
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

  /// Levels that player already started
  Map<String, LevelModel> get levels;
  @override
  WorldDateTimeModel get dateTime;
  @override
  WorldDateTimeModel get lastDateTime;
  @override
  List<PlayerProfileModel> get playersCollection;
  @override
  @JsonKey(ignore: true)
  _$$_GameModelCopyWith<_$_GameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

LevelModel _$LevelModelFromJson(Map<String, dynamic> json) {
  return _LevelModel.fromJson(json);
}

/// @nodoc
mixin _$LevelModel {
  String get id => throw _privateConstructorUsedError;
  LevelPlayersModel get players => throw _privateConstructorUsedError;
  CurrentWordModel get currentWord => throw _privateConstructorUsedError;
  Map<String, String> get words => throw _privateConstructorUsedError;
  String get latestWord => throw _privateConstructorUsedError;
  FuelStorageModel get fuelStorage => throw _privateConstructorUsedError;

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
      LevelPlayersModel players,
      CurrentWordModel currentWord,
      Map<String, String> words,
      String latestWord,
      FuelStorageModel fuelStorage});

  $LevelPlayersModelCopyWith<$Res> get players;
  $CurrentWordModelCopyWith<$Res> get currentWord;
  $FuelStorageModelCopyWith<$Res> get fuelStorage;
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
    Object? players = freezed,
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
      players: players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as LevelPlayersModel,
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
  $LevelPlayersModelCopyWith<$Res> get players {
    return $LevelPlayersModelCopyWith<$Res>(_value.players, (value) {
      return _then(_value.copyWith(players: value));
    });
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
abstract class _$$_LevelModelCopyWith<$Res>
    implements $LevelModelCopyWith<$Res> {
  factory _$$_LevelModelCopyWith(
          _$_LevelModel value, $Res Function(_$_LevelModel) then) =
      __$$_LevelModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      LevelPlayersModel players,
      CurrentWordModel currentWord,
      Map<String, String> words,
      String latestWord,
      FuelStorageModel fuelStorage});

  @override
  $LevelPlayersModelCopyWith<$Res> get players;
  @override
  $CurrentWordModelCopyWith<$Res> get currentWord;
  @override
  $FuelStorageModelCopyWith<$Res> get fuelStorage;
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
    Object? players = freezed,
    Object? currentWord = freezed,
    Object? words = freezed,
    Object? latestWord = freezed,
    Object? fuelStorage = freezed,
  }) {
    return _then(_$_LevelModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      players: players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as LevelPlayersModel,
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
class _$_LevelModel extends _LevelModel {
  const _$_LevelModel(
      {required this.id,
      required this.players,
      this.currentWord = const CurrentWordModel(),
      final Map<String, String> words = const {},
      this.latestWord = '',
      this.fuelStorage = const FuelStorageModel()})
      : _words = words,
        super._();

  factory _$_LevelModel.fromJson(Map<String, dynamic> json) =>
      _$$_LevelModelFromJson(json);

  @override
  final String id;
  @override
  final LevelPlayersModel players;
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
    return 'LevelModel(id: $id, players: $players, currentWord: $currentWord, words: $words, latestWord: $latestWord, fuelStorage: $fuelStorage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LevelModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.players, players) &&
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
      const DeepCollectionEquality().hash(players),
      const DeepCollectionEquality().hash(currentWord),
      const DeepCollectionEquality().hash(_words),
      const DeepCollectionEquality().hash(latestWord),
      const DeepCollectionEquality().hash(fuelStorage));

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
      required final LevelPlayersModel players,
      final CurrentWordModel currentWord,
      final Map<String, String> words,
      final String latestWord,
      final FuelStorageModel fuelStorage}) = _$_LevelModel;
  const _LevelModel._() : super._();

  factory _LevelModel.fromJson(Map<String, dynamic> json) =
      _$_LevelModel.fromJson;

  @override
  String get id;
  @override
  LevelPlayersModel get players;
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
  _$$_LevelModelCopyWith<_$_LevelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

TemplateLevelModel _$TemplateLevelModelFromJson(Map<String, dynamic> json) {
  return _TemplateLevelModel.fromJson(json);
}

/// @nodoc
mixin _$TemplateLevelModel {
  String get id => throw _privateConstructorUsedError;
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
  $Res call({String id, FuelStorageModel fuelStorage});

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
    Object? fuelStorage = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fuelStorage: fuelStorage == freezed
          ? _value.fuelStorage
          : fuelStorage // ignore: cast_nullable_to_non_nullable
              as FuelStorageModel,
    ));
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
  $Res call({String id, FuelStorageModel fuelStorage});

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
    Object? fuelStorage = freezed,
  }) {
    return _then(_$_TemplateLevelModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
class _$_TemplateLevelModel extends _TemplateLevelModel {
  const _$_TemplateLevelModel(
      {required this.id, this.fuelStorage = const FuelStorageModel()})
      : super._();

  factory _$_TemplateLevelModel.fromJson(Map<String, dynamic> json) =>
      _$$_TemplateLevelModelFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final FuelStorageModel fuelStorage;

  @override
  String toString() {
    return 'TemplateLevelModel(id: $id, fuelStorage: $fuelStorage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TemplateLevelModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.fuelStorage, fuelStorage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
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
      final FuelStorageModel fuelStorage}) = _$_TemplateLevelModel;
  const _TemplateLevelModel._() : super._();

  factory _TemplateLevelModel.fromJson(Map<String, dynamic> json) =
      _$_TemplateLevelModel.fromJson;

  @override
  String get id;
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

PlayerProfileModel _$PlayerProfileModelFromJson(Map<String, dynamic> json) {
  return _PlayerProfileModel.fromJson(json);
}

/// @nodoc
mixin _$PlayerProfileModel {
  String get id => throw _privateConstructorUsedError;
  int get colorValue => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// TODO(arenukvern): maybe should be removed
  Set<String> get playedGames => throw _privateConstructorUsedError;

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
  $Res call({String id, int colorValue, String name, Set<String> playedGames});
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
    Object? playedGames = freezed,
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
      playedGames: playedGames == freezed
          ? _value.playedGames
          : playedGames // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_PlayerProfileModelCopyWith<$Res>
    implements $PlayerProfileModelCopyWith<$Res> {
  factory _$$_PlayerProfileModelCopyWith(_$_PlayerProfileModel value,
          $Res Function(_$_PlayerProfileModel) then) =
      __$$_PlayerProfileModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, int colorValue, String name, Set<String> playedGames});
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
    Object? playedGames = freezed,
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
      playedGames: playedGames == freezed
          ? _value._playedGames
          : playedGames // ignore: cast_nullable_to_non_nullable
              as Set<String>,
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
      required final Set<String> playedGames})
      : _playedGames = playedGames,
        super._();

  factory _$_PlayerProfileModel.fromJson(Map<String, dynamic> json) =>
      _$$_PlayerProfileModelFromJson(json);

  @override
  final String id;
  @override
  final int colorValue;
  @override
  final String name;

  /// TODO(arenukvern): maybe should be removed
  final Set<String> _playedGames;

  /// TODO(arenukvern): maybe should be removed
  @override
  Set<String> get playedGames {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_playedGames);
  }

  @override
  String toString() {
    return 'PlayerProfileModel(id: $id, colorValue: $colorValue, name: $name, playedGames: $playedGames)';
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
                .equals(other._playedGames, _playedGames));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(colorValue),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(_playedGames));

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
      required final Set<String> playedGames}) = _$_PlayerProfileModel;
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

  /// TODO(arenukvern): maybe should be removed
  Set<String> get playedGames;
  @override
  @JsonKey(ignore: true)
  _$$_PlayerProfileModelCopyWith<_$_PlayerProfileModel> get copyWith =>
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
