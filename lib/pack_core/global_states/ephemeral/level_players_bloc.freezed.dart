// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'level_players_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LiveLevelPlayersBlocState {
  List<PlayerProfileModel> get players => throw _privateConstructorUsedError;
  String get currentPlayerId => throw _privateConstructorUsedError;
  PlayerCharacterModel get playerCharacter =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LiveLevelPlayersBlocStateCopyWith<LiveLevelPlayersBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveLevelPlayersBlocStateCopyWith<$Res> {
  factory $LiveLevelPlayersBlocStateCopyWith(LiveLevelPlayersBlocState value,
          $Res Function(LiveLevelPlayersBlocState) then) =
      _$LiveLevelPlayersBlocStateCopyWithImpl<$Res, LiveLevelPlayersBlocState>;
  @useResult
  $Res call(
      {List<PlayerProfileModel> players,
      String currentPlayerId,
      PlayerCharacterModel playerCharacter});

  $PlayerCharacterModelCopyWith<$Res> get playerCharacter;
}

/// @nodoc
class _$LiveLevelPlayersBlocStateCopyWithImpl<$Res,
        $Val extends LiveLevelPlayersBlocState>
    implements $LiveLevelPlayersBlocStateCopyWith<$Res> {
  _$LiveLevelPlayersBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? players = null,
    Object? currentPlayerId = null,
    Object? playerCharacter = null,
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
abstract class _$$_LiveLevelPlayersBlocStateCopyWith<$Res>
    implements $LiveLevelPlayersBlocStateCopyWith<$Res> {
  factory _$$_LiveLevelPlayersBlocStateCopyWith(
          _$_LiveLevelPlayersBlocState value,
          $Res Function(_$_LiveLevelPlayersBlocState) then) =
      __$$_LiveLevelPlayersBlocStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PlayerProfileModel> players,
      String currentPlayerId,
      PlayerCharacterModel playerCharacter});

  @override
  $PlayerCharacterModelCopyWith<$Res> get playerCharacter;
}

/// @nodoc
class __$$_LiveLevelPlayersBlocStateCopyWithImpl<$Res>
    extends _$LiveLevelPlayersBlocStateCopyWithImpl<$Res,
        _$_LiveLevelPlayersBlocState>
    implements _$$_LiveLevelPlayersBlocStateCopyWith<$Res> {
  __$$_LiveLevelPlayersBlocStateCopyWithImpl(
      _$_LiveLevelPlayersBlocState _value,
      $Res Function(_$_LiveLevelPlayersBlocState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? players = null,
    Object? currentPlayerId = null,
    Object? playerCharacter = null,
  }) {
    return _then(_$_LiveLevelPlayersBlocState(
      players: null == players
          ? _value._players
          : players // ignore: cast_nullable_to_non_nullable
              as List<PlayerProfileModel>,
      currentPlayerId: null == currentPlayerId
          ? _value.currentPlayerId
          : currentPlayerId // ignore: cast_nullable_to_non_nullable
              as String,
      playerCharacter: null == playerCharacter
          ? _value.playerCharacter
          : playerCharacter // ignore: cast_nullable_to_non_nullable
              as PlayerCharacterModel,
    ));
  }
}

/// @nodoc

class _$_LiveLevelPlayersBlocState extends _LiveLevelPlayersBlocState {
  const _$_LiveLevelPlayersBlocState(
      {required final List<PlayerProfileModel> players,
      required this.currentPlayerId,
      required this.playerCharacter})
      : _players = players,
        super._();

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
  final PlayerCharacterModel playerCharacter;

  @override
  String toString() {
    return 'LiveLevelPlayersBlocState(players: $players, currentPlayerId: $currentPlayerId, playerCharacter: $playerCharacter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LiveLevelPlayersBlocState &&
            const DeepCollectionEquality().equals(other._players, _players) &&
            (identical(other.currentPlayerId, currentPlayerId) ||
                other.currentPlayerId == currentPlayerId) &&
            (identical(other.playerCharacter, playerCharacter) ||
                other.playerCharacter == playerCharacter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_players),
      currentPlayerId,
      playerCharacter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LiveLevelPlayersBlocStateCopyWith<_$_LiveLevelPlayersBlocState>
      get copyWith => __$$_LiveLevelPlayersBlocStateCopyWithImpl<
          _$_LiveLevelPlayersBlocState>(this, _$identity);
}

abstract class _LiveLevelPlayersBlocState extends LiveLevelPlayersBlocState
    implements LevelPlayersBlocState {
  const factory _LiveLevelPlayersBlocState(
          {required final List<PlayerProfileModel> players,
          required final String currentPlayerId,
          required final PlayerCharacterModel playerCharacter}) =
      _$_LiveLevelPlayersBlocState;
  const _LiveLevelPlayersBlocState._() : super._();

  @override
  List<PlayerProfileModel> get players;
  @override
  String get currentPlayerId;
  @override
  PlayerCharacterModel get playerCharacter;
  @override
  @JsonKey(ignore: true)
  _$$_LiveLevelPlayersBlocStateCopyWith<_$_LiveLevelPlayersBlocState>
      get copyWith => throw _privateConstructorUsedError;
}
