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
@JsonSerializable()
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
