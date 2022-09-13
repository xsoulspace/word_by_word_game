// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'level_players_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LiveLevelPlayersBlocState _$LiveLevelPlayersBlocStateFromJson(
    Map<String, dynamic> json) {
  return _LiveLevelPlayersBlocState.fromJson(json);
}

/// @nodoc
mixin _$LiveLevelPlayersBlocState {
  List<PlayerProfileModel> get players => throw _privateConstructorUsedError;
  String get currentPlayerId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LiveLevelPlayersBlocStateCopyWith<LiveLevelPlayersBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveLevelPlayersBlocStateCopyWith<$Res> {
  factory $LiveLevelPlayersBlocStateCopyWith(LiveLevelPlayersBlocState value,
          $Res Function(LiveLevelPlayersBlocState) then) =
      _$LiveLevelPlayersBlocStateCopyWithImpl<$Res>;
  $Res call({List<PlayerProfileModel> players, String currentPlayerId});
}

/// @nodoc
class _$LiveLevelPlayersBlocStateCopyWithImpl<$Res>
    implements $LiveLevelPlayersBlocStateCopyWith<$Res> {
  _$LiveLevelPlayersBlocStateCopyWithImpl(this._value, this._then);

  final LiveLevelPlayersBlocState _value;
  // ignore: unused_field
  final $Res Function(LiveLevelPlayersBlocState) _then;

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
abstract class _$$_LiveLevelPlayersBlocStateCopyWith<$Res>
    implements $LiveLevelPlayersBlocStateCopyWith<$Res> {
  factory _$$_LiveLevelPlayersBlocStateCopyWith(
          _$_LiveLevelPlayersBlocState value,
          $Res Function(_$_LiveLevelPlayersBlocState) then) =
      __$$_LiveLevelPlayersBlocStateCopyWithImpl<$Res>;
  @override
  $Res call({List<PlayerProfileModel> players, String currentPlayerId});
}

/// @nodoc
class __$$_LiveLevelPlayersBlocStateCopyWithImpl<$Res>
    extends _$LiveLevelPlayersBlocStateCopyWithImpl<$Res>
    implements _$$_LiveLevelPlayersBlocStateCopyWith<$Res> {
  __$$_LiveLevelPlayersBlocStateCopyWithImpl(
      _$_LiveLevelPlayersBlocState _value,
      $Res Function(_$_LiveLevelPlayersBlocState) _then)
      : super(_value, (v) => _then(v as _$_LiveLevelPlayersBlocState));

  @override
  _$_LiveLevelPlayersBlocState get _value =>
      super._value as _$_LiveLevelPlayersBlocState;

  @override
  $Res call({
    Object? players = freezed,
    Object? currentPlayerId = freezed,
  }) {
    return _then(_$_LiveLevelPlayersBlocState(
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
class _$_LiveLevelPlayersBlocState extends _LiveLevelPlayersBlocState {
  const _$_LiveLevelPlayersBlocState(
      {required final List<PlayerProfileModel> players,
      required this.currentPlayerId})
      : _players = players,
        super._();

  factory _$_LiveLevelPlayersBlocState.fromJson(Map<String, dynamic> json) =>
      _$$_LiveLevelPlayersBlocStateFromJson(json);

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
    return 'LiveLevelPlayersBlocState(players: $players, currentPlayerId: $currentPlayerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LiveLevelPlayersBlocState &&
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
  _$$_LiveLevelPlayersBlocStateCopyWith<_$_LiveLevelPlayersBlocState>
      get copyWith => __$$_LiveLevelPlayersBlocStateCopyWithImpl<
          _$_LiveLevelPlayersBlocState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LiveLevelPlayersBlocStateToJson(
      this,
    );
  }
}

abstract class _LiveLevelPlayersBlocState extends LiveLevelPlayersBlocState
    implements LevelPlayersBlocState {
  const factory _LiveLevelPlayersBlocState(
      {required final List<PlayerProfileModel> players,
      required final String currentPlayerId}) = _$_LiveLevelPlayersBlocState;
  const _LiveLevelPlayersBlocState._() : super._();

  factory _LiveLevelPlayersBlocState.fromJson(Map<String, dynamic> json) =
      _$_LiveLevelPlayersBlocState.fromJson;

  @override
  List<PlayerProfileModel> get players;
  @override
  String get currentPlayerId;
  @override
  @JsonKey(ignore: true)
  _$$_LiveLevelPlayersBlocStateCopyWith<_$_LiveLevelPlayersBlocState>
      get copyWith => throw _privateConstructorUsedError;
}
