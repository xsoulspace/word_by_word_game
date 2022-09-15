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
  String get id => throw _privateConstructorUsedError;
  String get currentLevelId => throw _privateConstructorUsedError;
  WorldDateTimeModel get dateTime => throw _privateConstructorUsedError;
  WorldDateTimeModel get lastDateTime => throw _privateConstructorUsedError;
  int get dateTimeDelta => throw _privateConstructorUsedError;

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
      int dateTimeDelta});

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
    Object? dateTimeDelta = freezed,
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
      dateTimeDelta: dateTimeDelta == freezed
          ? _value.dateTimeDelta
          : dateTimeDelta // ignore: cast_nullable_to_non_nullable
              as int,
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
      int dateTimeDelta});

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
    Object? dateTimeDelta = freezed,
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
      dateTimeDelta: dateTimeDelta == freezed
          ? _value.dateTimeDelta
          : dateTimeDelta // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_LiveGlobalGameBlocState extends _LiveGlobalGameBlocState {
  const _$_LiveGlobalGameBlocState(
      {required this.id,
      required this.currentLevelId,
      this.dateTime = const WorldDateTimeModel(),
      this.lastDateTime = const WorldDateTimeModel(),
      this.dateTimeDelta = 0})
      : super._();

  factory _$_LiveGlobalGameBlocState.fromJson(Map<String, dynamic> json) =>
      _$$_LiveGlobalGameBlocStateFromJson(json);

  @override
  final String id;
  @override
  final String currentLevelId;
  @override
  @JsonKey()
  final WorldDateTimeModel dateTime;
  @override
  @JsonKey()
  final WorldDateTimeModel lastDateTime;
  @override
  @JsonKey()
  final int dateTimeDelta;

  @override
  String toString() {
    return 'LiveGlobalGameBlocState(id: $id, currentLevelId: $currentLevelId, dateTime: $dateTime, lastDateTime: $lastDateTime, dateTimeDelta: $dateTimeDelta)';
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
            const DeepCollectionEquality()
                .equals(other.dateTimeDelta, dateTimeDelta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(currentLevelId),
      const DeepCollectionEquality().hash(dateTime),
      const DeepCollectionEquality().hash(lastDateTime),
      const DeepCollectionEquality().hash(dateTimeDelta));

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
      required final String currentLevelId,
      final WorldDateTimeModel dateTime,
      final WorldDateTimeModel lastDateTime,
      final int dateTimeDelta}) = _$_LiveGlobalGameBlocState;
  const _LiveGlobalGameBlocState._() : super._();

  factory _LiveGlobalGameBlocState.fromJson(Map<String, dynamic> json) =
      _$_LiveGlobalGameBlocState.fromJson;

  @override
  String get id;
  @override
  String get currentLevelId;
  @override
  WorldDateTimeModel get dateTime;
  @override
  WorldDateTimeModel get lastDateTime;
  @override
  int get dateTimeDelta;
  @override
  @JsonKey(ignore: true)
  _$$_LiveGlobalGameBlocStateCopyWith<_$_LiveGlobalGameBlocState>
      get copyWith => throw _privateConstructorUsedError;
}
