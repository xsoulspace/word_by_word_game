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
mixin _$LevelPlayersBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<PlayerProfileModel> players,
            String currentPlayerId, PlayerCharacterModel playerCharacter)
        live,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(List<PlayerProfileModel> players, String currentPlayerId,
            PlayerCharacterModel playerCharacter)?
        live,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<PlayerProfileModel> players, String currentPlayerId,
            PlayerCharacterModel playerCharacter)?
        live,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyLevelPlayersBlocState value) empty,
    required TResult Function(LiveLevelPlayersBlocState value) live,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyLevelPlayersBlocState value)? empty,
    TResult? Function(LiveLevelPlayersBlocState value)? live,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyLevelPlayersBlocState value)? empty,
    TResult Function(LiveLevelPlayersBlocState value)? live,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LevelPlayersBlocStateCopyWith<$Res> {
  factory $LevelPlayersBlocStateCopyWith(LevelPlayersBlocState value,
          $Res Function(LevelPlayersBlocState) then) =
      _$LevelPlayersBlocStateCopyWithImpl<$Res, LevelPlayersBlocState>;
}

/// @nodoc
class _$LevelPlayersBlocStateCopyWithImpl<$Res,
        $Val extends LevelPlayersBlocState>
    implements $LevelPlayersBlocStateCopyWith<$Res> {
  _$LevelPlayersBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmptyLevelPlayersBlocStateCopyWith<$Res> {
  factory _$$EmptyLevelPlayersBlocStateCopyWith(
          _$EmptyLevelPlayersBlocState value,
          $Res Function(_$EmptyLevelPlayersBlocState) then) =
      __$$EmptyLevelPlayersBlocStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyLevelPlayersBlocStateCopyWithImpl<$Res>
    extends _$LevelPlayersBlocStateCopyWithImpl<$Res,
        _$EmptyLevelPlayersBlocState>
    implements _$$EmptyLevelPlayersBlocStateCopyWith<$Res> {
  __$$EmptyLevelPlayersBlocStateCopyWithImpl(
      _$EmptyLevelPlayersBlocState _value,
      $Res Function(_$EmptyLevelPlayersBlocState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyLevelPlayersBlocState implements EmptyLevelPlayersBlocState {
  const _$EmptyLevelPlayersBlocState();

  @override
  String toString() {
    return 'LevelPlayersBlocState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyLevelPlayersBlocState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<PlayerProfileModel> players,
            String currentPlayerId, PlayerCharacterModel playerCharacter)
        live,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(List<PlayerProfileModel> players, String currentPlayerId,
            PlayerCharacterModel playerCharacter)?
        live,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<PlayerProfileModel> players, String currentPlayerId,
            PlayerCharacterModel playerCharacter)?
        live,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyLevelPlayersBlocState value) empty,
    required TResult Function(LiveLevelPlayersBlocState value) live,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyLevelPlayersBlocState value)? empty,
    TResult? Function(LiveLevelPlayersBlocState value)? live,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyLevelPlayersBlocState value)? empty,
    TResult Function(LiveLevelPlayersBlocState value)? live,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyLevelPlayersBlocState implements LevelPlayersBlocState {
  const factory EmptyLevelPlayersBlocState() = _$EmptyLevelPlayersBlocState;
}

/// @nodoc
abstract class _$$LiveLevelPlayersBlocStateCopyWith<$Res> {
  factory _$$LiveLevelPlayersBlocStateCopyWith(
          _$LiveLevelPlayersBlocState value,
          $Res Function(_$LiveLevelPlayersBlocState) then) =
      __$$LiveLevelPlayersBlocStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<PlayerProfileModel> players,
      String currentPlayerId,
      PlayerCharacterModel playerCharacter});

  $PlayerCharacterModelCopyWith<$Res> get playerCharacter;
}

/// @nodoc
class __$$LiveLevelPlayersBlocStateCopyWithImpl<$Res>
    extends _$LevelPlayersBlocStateCopyWithImpl<$Res,
        _$LiveLevelPlayersBlocState>
    implements _$$LiveLevelPlayersBlocStateCopyWith<$Res> {
  __$$LiveLevelPlayersBlocStateCopyWithImpl(_$LiveLevelPlayersBlocState _value,
      $Res Function(_$LiveLevelPlayersBlocState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? players = null,
    Object? currentPlayerId = null,
    Object? playerCharacter = null,
  }) {
    return _then(_$LiveLevelPlayersBlocState(
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

  @override
  @pragma('vm:prefer-inline')
  $PlayerCharacterModelCopyWith<$Res> get playerCharacter {
    return $PlayerCharacterModelCopyWith<$Res>(_value.playerCharacter, (value) {
      return _then(_value.copyWith(playerCharacter: value));
    });
  }
}

/// @nodoc

class _$LiveLevelPlayersBlocState implements LiveLevelPlayersBlocState {
  const _$LiveLevelPlayersBlocState(
      {required final List<PlayerProfileModel> players,
      required this.currentPlayerId,
      required this.playerCharacter})
      : _players = players;

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
    return 'LevelPlayersBlocState.live(players: $players, currentPlayerId: $currentPlayerId, playerCharacter: $playerCharacter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LiveLevelPlayersBlocState &&
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
  _$$LiveLevelPlayersBlocStateCopyWith<_$LiveLevelPlayersBlocState>
      get copyWith => __$$LiveLevelPlayersBlocStateCopyWithImpl<
          _$LiveLevelPlayersBlocState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<PlayerProfileModel> players,
            String currentPlayerId, PlayerCharacterModel playerCharacter)
        live,
  }) {
    return live(players, currentPlayerId, playerCharacter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(List<PlayerProfileModel> players, String currentPlayerId,
            PlayerCharacterModel playerCharacter)?
        live,
  }) {
    return live?.call(players, currentPlayerId, playerCharacter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<PlayerProfileModel> players, String currentPlayerId,
            PlayerCharacterModel playerCharacter)?
        live,
    required TResult orElse(),
  }) {
    if (live != null) {
      return live(players, currentPlayerId, playerCharacter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyLevelPlayersBlocState value) empty,
    required TResult Function(LiveLevelPlayersBlocState value) live,
  }) {
    return live(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyLevelPlayersBlocState value)? empty,
    TResult? Function(LiveLevelPlayersBlocState value)? live,
  }) {
    return live?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyLevelPlayersBlocState value)? empty,
    TResult Function(LiveLevelPlayersBlocState value)? live,
    required TResult orElse(),
  }) {
    if (live != null) {
      return live(this);
    }
    return orElse();
  }
}

abstract class LiveLevelPlayersBlocState implements LevelPlayersBlocState {
  const factory LiveLevelPlayersBlocState(
          {required final List<PlayerProfileModel> players,
          required final String currentPlayerId,
          required final PlayerCharacterModel playerCharacter}) =
      _$LiveLevelPlayersBlocState;

  List<PlayerProfileModel> get players;
  String get currentPlayerId;
  PlayerCharacterModel get playerCharacter;
  @JsonKey(ignore: true)
  _$$LiveLevelPlayersBlocStateCopyWith<_$LiveLevelPlayersBlocState>
      get copyWith => throw _privateConstructorUsedError;
}
