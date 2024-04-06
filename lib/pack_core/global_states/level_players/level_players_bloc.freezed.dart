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
mixin _$LevelPlayerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LevelPlayersModel playersModel,
            LevelCharactersModel charactersModel)
        init,
    required TResult Function() switchToNextPlayer,
    required TResult Function(Vector2 position) changeCharacterPosition,
    required TResult Function(ScoreModel score) refuelStorage,
    required TResult Function(ScoreModel score) researchTechnology,
    required TResult Function(String playerId, ScoreModel score, String? word)
        updatePlayerHighscore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LevelPlayersModel playersModel,
            LevelCharactersModel charactersModel)?
        init,
    TResult? Function()? switchToNextPlayer,
    TResult? Function(Vector2 position)? changeCharacterPosition,
    TResult? Function(ScoreModel score)? refuelStorage,
    TResult? Function(ScoreModel score)? researchTechnology,
    TResult? Function(String playerId, ScoreModel score, String? word)?
        updatePlayerHighscore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LevelPlayersModel playersModel,
            LevelCharactersModel charactersModel)?
        init,
    TResult Function()? switchToNextPlayer,
    TResult Function(Vector2 position)? changeCharacterPosition,
    TResult Function(ScoreModel score)? refuelStorage,
    TResult Function(ScoreModel score)? researchTechnology,
    TResult Function(String playerId, ScoreModel score, String? word)?
        updatePlayerHighscore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitLevelPlayersEvent value) init,
    required TResult Function(SwitchToNextPlayerEvent value) switchToNextPlayer,
    required TResult Function(ChangeCharacterPositionEvent value)
        changeCharacterPosition,
    required TResult Function(RefuelStorageEvent value) refuelStorage,
    required TResult Function(ResearchTechnologyEvent value) researchTechnology,
    required TResult Function(UpdatePlayerHighscoreEvent value)
        updatePlayerHighscore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitLevelPlayersEvent value)? init,
    TResult? Function(SwitchToNextPlayerEvent value)? switchToNextPlayer,
    TResult? Function(ChangeCharacterPositionEvent value)?
        changeCharacterPosition,
    TResult? Function(RefuelStorageEvent value)? refuelStorage,
    TResult? Function(ResearchTechnologyEvent value)? researchTechnology,
    TResult? Function(UpdatePlayerHighscoreEvent value)? updatePlayerHighscore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitLevelPlayersEvent value)? init,
    TResult Function(SwitchToNextPlayerEvent value)? switchToNextPlayer,
    TResult Function(ChangeCharacterPositionEvent value)?
        changeCharacterPosition,
    TResult Function(RefuelStorageEvent value)? refuelStorage,
    TResult Function(ResearchTechnologyEvent value)? researchTechnology,
    TResult Function(UpdatePlayerHighscoreEvent value)? updatePlayerHighscore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LevelPlayerEventCopyWith<$Res> {
  factory $LevelPlayerEventCopyWith(
          LevelPlayerEvent value, $Res Function(LevelPlayerEvent) then) =
      _$LevelPlayerEventCopyWithImpl<$Res, LevelPlayerEvent>;
}

/// @nodoc
class _$LevelPlayerEventCopyWithImpl<$Res, $Val extends LevelPlayerEvent>
    implements $LevelPlayerEventCopyWith<$Res> {
  _$LevelPlayerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitLevelPlayersEventImplCopyWith<$Res> {
  factory _$$InitLevelPlayersEventImplCopyWith(
          _$InitLevelPlayersEventImpl value,
          $Res Function(_$InitLevelPlayersEventImpl) then) =
      __$$InitLevelPlayersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {LevelPlayersModel playersModel, LevelCharactersModel charactersModel});

  $LevelPlayersModelCopyWith<$Res> get playersModel;
  $LevelCharactersModelCopyWith<$Res> get charactersModel;
}

/// @nodoc
class __$$InitLevelPlayersEventImplCopyWithImpl<$Res>
    extends _$LevelPlayerEventCopyWithImpl<$Res, _$InitLevelPlayersEventImpl>
    implements _$$InitLevelPlayersEventImplCopyWith<$Res> {
  __$$InitLevelPlayersEventImplCopyWithImpl(_$InitLevelPlayersEventImpl _value,
      $Res Function(_$InitLevelPlayersEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playersModel = null,
    Object? charactersModel = null,
  }) {
    return _then(_$InitLevelPlayersEventImpl(
      playersModel: null == playersModel
          ? _value.playersModel
          : playersModel // ignore: cast_nullable_to_non_nullable
              as LevelPlayersModel,
      charactersModel: null == charactersModel
          ? _value.charactersModel
          : charactersModel // ignore: cast_nullable_to_non_nullable
              as LevelCharactersModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LevelPlayersModelCopyWith<$Res> get playersModel {
    return $LevelPlayersModelCopyWith<$Res>(_value.playersModel, (value) {
      return _then(_value.copyWith(playersModel: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LevelCharactersModelCopyWith<$Res> get charactersModel {
    return $LevelCharactersModelCopyWith<$Res>(_value.charactersModel, (value) {
      return _then(_value.copyWith(charactersModel: value));
    });
  }
}

/// @nodoc

class _$InitLevelPlayersEventImpl implements InitLevelPlayersEvent {
  const _$InitLevelPlayersEventImpl(
      {required this.playersModel, required this.charactersModel});

  @override
  final LevelPlayersModel playersModel;
  @override
  final LevelCharactersModel charactersModel;

  @override
  String toString() {
    return 'LevelPlayerEvent.init(playersModel: $playersModel, charactersModel: $charactersModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitLevelPlayersEventImpl &&
            (identical(other.playersModel, playersModel) ||
                other.playersModel == playersModel) &&
            (identical(other.charactersModel, charactersModel) ||
                other.charactersModel == charactersModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playersModel, charactersModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitLevelPlayersEventImplCopyWith<_$InitLevelPlayersEventImpl>
      get copyWith => __$$InitLevelPlayersEventImplCopyWithImpl<
          _$InitLevelPlayersEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LevelPlayersModel playersModel,
            LevelCharactersModel charactersModel)
        init,
    required TResult Function() switchToNextPlayer,
    required TResult Function(Vector2 position) changeCharacterPosition,
    required TResult Function(ScoreModel score) refuelStorage,
    required TResult Function(ScoreModel score) researchTechnology,
    required TResult Function(String playerId, ScoreModel score, String? word)
        updatePlayerHighscore,
  }) {
    return init(playersModel, charactersModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LevelPlayersModel playersModel,
            LevelCharactersModel charactersModel)?
        init,
    TResult? Function()? switchToNextPlayer,
    TResult? Function(Vector2 position)? changeCharacterPosition,
    TResult? Function(ScoreModel score)? refuelStorage,
    TResult? Function(ScoreModel score)? researchTechnology,
    TResult? Function(String playerId, ScoreModel score, String? word)?
        updatePlayerHighscore,
  }) {
    return init?.call(playersModel, charactersModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LevelPlayersModel playersModel,
            LevelCharactersModel charactersModel)?
        init,
    TResult Function()? switchToNextPlayer,
    TResult Function(Vector2 position)? changeCharacterPosition,
    TResult Function(ScoreModel score)? refuelStorage,
    TResult Function(ScoreModel score)? researchTechnology,
    TResult Function(String playerId, ScoreModel score, String? word)?
        updatePlayerHighscore,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(playersModel, charactersModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitLevelPlayersEvent value) init,
    required TResult Function(SwitchToNextPlayerEvent value) switchToNextPlayer,
    required TResult Function(ChangeCharacterPositionEvent value)
        changeCharacterPosition,
    required TResult Function(RefuelStorageEvent value) refuelStorage,
    required TResult Function(ResearchTechnologyEvent value) researchTechnology,
    required TResult Function(UpdatePlayerHighscoreEvent value)
        updatePlayerHighscore,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitLevelPlayersEvent value)? init,
    TResult? Function(SwitchToNextPlayerEvent value)? switchToNextPlayer,
    TResult? Function(ChangeCharacterPositionEvent value)?
        changeCharacterPosition,
    TResult? Function(RefuelStorageEvent value)? refuelStorage,
    TResult? Function(ResearchTechnologyEvent value)? researchTechnology,
    TResult? Function(UpdatePlayerHighscoreEvent value)? updatePlayerHighscore,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitLevelPlayersEvent value)? init,
    TResult Function(SwitchToNextPlayerEvent value)? switchToNextPlayer,
    TResult Function(ChangeCharacterPositionEvent value)?
        changeCharacterPosition,
    TResult Function(RefuelStorageEvent value)? refuelStorage,
    TResult Function(ResearchTechnologyEvent value)? researchTechnology,
    TResult Function(UpdatePlayerHighscoreEvent value)? updatePlayerHighscore,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitLevelPlayersEvent implements LevelPlayerEvent {
  const factory InitLevelPlayersEvent(
          {required final LevelPlayersModel playersModel,
          required final LevelCharactersModel charactersModel}) =
      _$InitLevelPlayersEventImpl;

  LevelPlayersModel get playersModel;
  LevelCharactersModel get charactersModel;
  @JsonKey(ignore: true)
  _$$InitLevelPlayersEventImplCopyWith<_$InitLevelPlayersEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SwitchToNextPlayerEventImplCopyWith<$Res> {
  factory _$$SwitchToNextPlayerEventImplCopyWith(
          _$SwitchToNextPlayerEventImpl value,
          $Res Function(_$SwitchToNextPlayerEventImpl) then) =
      __$$SwitchToNextPlayerEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SwitchToNextPlayerEventImplCopyWithImpl<$Res>
    extends _$LevelPlayerEventCopyWithImpl<$Res, _$SwitchToNextPlayerEventImpl>
    implements _$$SwitchToNextPlayerEventImplCopyWith<$Res> {
  __$$SwitchToNextPlayerEventImplCopyWithImpl(
      _$SwitchToNextPlayerEventImpl _value,
      $Res Function(_$SwitchToNextPlayerEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SwitchToNextPlayerEventImpl implements SwitchToNextPlayerEvent {
  const _$SwitchToNextPlayerEventImpl();

  @override
  String toString() {
    return 'LevelPlayerEvent.switchToNextPlayer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwitchToNextPlayerEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LevelPlayersModel playersModel,
            LevelCharactersModel charactersModel)
        init,
    required TResult Function() switchToNextPlayer,
    required TResult Function(Vector2 position) changeCharacterPosition,
    required TResult Function(ScoreModel score) refuelStorage,
    required TResult Function(ScoreModel score) researchTechnology,
    required TResult Function(String playerId, ScoreModel score, String? word)
        updatePlayerHighscore,
  }) {
    return switchToNextPlayer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LevelPlayersModel playersModel,
            LevelCharactersModel charactersModel)?
        init,
    TResult? Function()? switchToNextPlayer,
    TResult? Function(Vector2 position)? changeCharacterPosition,
    TResult? Function(ScoreModel score)? refuelStorage,
    TResult? Function(ScoreModel score)? researchTechnology,
    TResult? Function(String playerId, ScoreModel score, String? word)?
        updatePlayerHighscore,
  }) {
    return switchToNextPlayer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LevelPlayersModel playersModel,
            LevelCharactersModel charactersModel)?
        init,
    TResult Function()? switchToNextPlayer,
    TResult Function(Vector2 position)? changeCharacterPosition,
    TResult Function(ScoreModel score)? refuelStorage,
    TResult Function(ScoreModel score)? researchTechnology,
    TResult Function(String playerId, ScoreModel score, String? word)?
        updatePlayerHighscore,
    required TResult orElse(),
  }) {
    if (switchToNextPlayer != null) {
      return switchToNextPlayer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitLevelPlayersEvent value) init,
    required TResult Function(SwitchToNextPlayerEvent value) switchToNextPlayer,
    required TResult Function(ChangeCharacterPositionEvent value)
        changeCharacterPosition,
    required TResult Function(RefuelStorageEvent value) refuelStorage,
    required TResult Function(ResearchTechnologyEvent value) researchTechnology,
    required TResult Function(UpdatePlayerHighscoreEvent value)
        updatePlayerHighscore,
  }) {
    return switchToNextPlayer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitLevelPlayersEvent value)? init,
    TResult? Function(SwitchToNextPlayerEvent value)? switchToNextPlayer,
    TResult? Function(ChangeCharacterPositionEvent value)?
        changeCharacterPosition,
    TResult? Function(RefuelStorageEvent value)? refuelStorage,
    TResult? Function(ResearchTechnologyEvent value)? researchTechnology,
    TResult? Function(UpdatePlayerHighscoreEvent value)? updatePlayerHighscore,
  }) {
    return switchToNextPlayer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitLevelPlayersEvent value)? init,
    TResult Function(SwitchToNextPlayerEvent value)? switchToNextPlayer,
    TResult Function(ChangeCharacterPositionEvent value)?
        changeCharacterPosition,
    TResult Function(RefuelStorageEvent value)? refuelStorage,
    TResult Function(ResearchTechnologyEvent value)? researchTechnology,
    TResult Function(UpdatePlayerHighscoreEvent value)? updatePlayerHighscore,
    required TResult orElse(),
  }) {
    if (switchToNextPlayer != null) {
      return switchToNextPlayer(this);
    }
    return orElse();
  }
}

abstract class SwitchToNextPlayerEvent implements LevelPlayerEvent {
  const factory SwitchToNextPlayerEvent() = _$SwitchToNextPlayerEventImpl;
}

/// @nodoc
abstract class _$$ChangeCharacterPositionEventImplCopyWith<$Res> {
  factory _$$ChangeCharacterPositionEventImplCopyWith(
          _$ChangeCharacterPositionEventImpl value,
          $Res Function(_$ChangeCharacterPositionEventImpl) then) =
      __$$ChangeCharacterPositionEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Vector2 position});
}

/// @nodoc
class __$$ChangeCharacterPositionEventImplCopyWithImpl<$Res>
    extends _$LevelPlayerEventCopyWithImpl<$Res,
        _$ChangeCharacterPositionEventImpl>
    implements _$$ChangeCharacterPositionEventImplCopyWith<$Res> {
  __$$ChangeCharacterPositionEventImplCopyWithImpl(
      _$ChangeCharacterPositionEventImpl _value,
      $Res Function(_$ChangeCharacterPositionEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
  }) {
    return _then(_$ChangeCharacterPositionEventImpl(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Vector2,
    ));
  }
}

/// @nodoc

class _$ChangeCharacterPositionEventImpl
    implements ChangeCharacterPositionEvent {
  const _$ChangeCharacterPositionEventImpl({required this.position});

  @override
  final Vector2 position;

  @override
  String toString() {
    return 'LevelPlayerEvent.changeCharacterPosition(position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeCharacterPositionEventImpl &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeCharacterPositionEventImplCopyWith<
          _$ChangeCharacterPositionEventImpl>
      get copyWith => __$$ChangeCharacterPositionEventImplCopyWithImpl<
          _$ChangeCharacterPositionEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LevelPlayersModel playersModel,
            LevelCharactersModel charactersModel)
        init,
    required TResult Function() switchToNextPlayer,
    required TResult Function(Vector2 position) changeCharacterPosition,
    required TResult Function(ScoreModel score) refuelStorage,
    required TResult Function(ScoreModel score) researchTechnology,
    required TResult Function(String playerId, ScoreModel score, String? word)
        updatePlayerHighscore,
  }) {
    return changeCharacterPosition(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LevelPlayersModel playersModel,
            LevelCharactersModel charactersModel)?
        init,
    TResult? Function()? switchToNextPlayer,
    TResult? Function(Vector2 position)? changeCharacterPosition,
    TResult? Function(ScoreModel score)? refuelStorage,
    TResult? Function(ScoreModel score)? researchTechnology,
    TResult? Function(String playerId, ScoreModel score, String? word)?
        updatePlayerHighscore,
  }) {
    return changeCharacterPosition?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LevelPlayersModel playersModel,
            LevelCharactersModel charactersModel)?
        init,
    TResult Function()? switchToNextPlayer,
    TResult Function(Vector2 position)? changeCharacterPosition,
    TResult Function(ScoreModel score)? refuelStorage,
    TResult Function(ScoreModel score)? researchTechnology,
    TResult Function(String playerId, ScoreModel score, String? word)?
        updatePlayerHighscore,
    required TResult orElse(),
  }) {
    if (changeCharacterPosition != null) {
      return changeCharacterPosition(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitLevelPlayersEvent value) init,
    required TResult Function(SwitchToNextPlayerEvent value) switchToNextPlayer,
    required TResult Function(ChangeCharacterPositionEvent value)
        changeCharacterPosition,
    required TResult Function(RefuelStorageEvent value) refuelStorage,
    required TResult Function(ResearchTechnologyEvent value) researchTechnology,
    required TResult Function(UpdatePlayerHighscoreEvent value)
        updatePlayerHighscore,
  }) {
    return changeCharacterPosition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitLevelPlayersEvent value)? init,
    TResult? Function(SwitchToNextPlayerEvent value)? switchToNextPlayer,
    TResult? Function(ChangeCharacterPositionEvent value)?
        changeCharacterPosition,
    TResult? Function(RefuelStorageEvent value)? refuelStorage,
    TResult? Function(ResearchTechnologyEvent value)? researchTechnology,
    TResult? Function(UpdatePlayerHighscoreEvent value)? updatePlayerHighscore,
  }) {
    return changeCharacterPosition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitLevelPlayersEvent value)? init,
    TResult Function(SwitchToNextPlayerEvent value)? switchToNextPlayer,
    TResult Function(ChangeCharacterPositionEvent value)?
        changeCharacterPosition,
    TResult Function(RefuelStorageEvent value)? refuelStorage,
    TResult Function(ResearchTechnologyEvent value)? researchTechnology,
    TResult Function(UpdatePlayerHighscoreEvent value)? updatePlayerHighscore,
    required TResult orElse(),
  }) {
    if (changeCharacterPosition != null) {
      return changeCharacterPosition(this);
    }
    return orElse();
  }
}

abstract class ChangeCharacterPositionEvent implements LevelPlayerEvent {
  const factory ChangeCharacterPositionEvent(
      {required final Vector2 position}) = _$ChangeCharacterPositionEventImpl;

  Vector2 get position;
  @JsonKey(ignore: true)
  _$$ChangeCharacterPositionEventImplCopyWith<
          _$ChangeCharacterPositionEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefuelStorageEventImplCopyWith<$Res> {
  factory _$$RefuelStorageEventImplCopyWith(_$RefuelStorageEventImpl value,
          $Res Function(_$RefuelStorageEventImpl) then) =
      __$$RefuelStorageEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ScoreModel score});

  $ScoreModelCopyWith<$Res> get score;
}

/// @nodoc
class __$$RefuelStorageEventImplCopyWithImpl<$Res>
    extends _$LevelPlayerEventCopyWithImpl<$Res, _$RefuelStorageEventImpl>
    implements _$$RefuelStorageEventImplCopyWith<$Res> {
  __$$RefuelStorageEventImplCopyWithImpl(_$RefuelStorageEventImpl _value,
      $Res Function(_$RefuelStorageEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
  }) {
    return _then(_$RefuelStorageEventImpl(
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as ScoreModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ScoreModelCopyWith<$Res> get score {
    return $ScoreModelCopyWith<$Res>(_value.score, (value) {
      return _then(_value.copyWith(score: value));
    });
  }
}

/// @nodoc

class _$RefuelStorageEventImpl implements RefuelStorageEvent {
  const _$RefuelStorageEventImpl({required this.score});

  @override
  final ScoreModel score;

  @override
  String toString() {
    return 'LevelPlayerEvent.refuelStorage(score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefuelStorageEventImpl &&
            (identical(other.score, score) || other.score == score));
  }

  @override
  int get hashCode => Object.hash(runtimeType, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RefuelStorageEventImplCopyWith<_$RefuelStorageEventImpl> get copyWith =>
      __$$RefuelStorageEventImplCopyWithImpl<_$RefuelStorageEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LevelPlayersModel playersModel,
            LevelCharactersModel charactersModel)
        init,
    required TResult Function() switchToNextPlayer,
    required TResult Function(Vector2 position) changeCharacterPosition,
    required TResult Function(ScoreModel score) refuelStorage,
    required TResult Function(ScoreModel score) researchTechnology,
    required TResult Function(String playerId, ScoreModel score, String? word)
        updatePlayerHighscore,
  }) {
    return refuelStorage(score);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LevelPlayersModel playersModel,
            LevelCharactersModel charactersModel)?
        init,
    TResult? Function()? switchToNextPlayer,
    TResult? Function(Vector2 position)? changeCharacterPosition,
    TResult? Function(ScoreModel score)? refuelStorage,
    TResult? Function(ScoreModel score)? researchTechnology,
    TResult? Function(String playerId, ScoreModel score, String? word)?
        updatePlayerHighscore,
  }) {
    return refuelStorage?.call(score);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LevelPlayersModel playersModel,
            LevelCharactersModel charactersModel)?
        init,
    TResult Function()? switchToNextPlayer,
    TResult Function(Vector2 position)? changeCharacterPosition,
    TResult Function(ScoreModel score)? refuelStorage,
    TResult Function(ScoreModel score)? researchTechnology,
    TResult Function(String playerId, ScoreModel score, String? word)?
        updatePlayerHighscore,
    required TResult orElse(),
  }) {
    if (refuelStorage != null) {
      return refuelStorage(score);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitLevelPlayersEvent value) init,
    required TResult Function(SwitchToNextPlayerEvent value) switchToNextPlayer,
    required TResult Function(ChangeCharacterPositionEvent value)
        changeCharacterPosition,
    required TResult Function(RefuelStorageEvent value) refuelStorage,
    required TResult Function(ResearchTechnologyEvent value) researchTechnology,
    required TResult Function(UpdatePlayerHighscoreEvent value)
        updatePlayerHighscore,
  }) {
    return refuelStorage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitLevelPlayersEvent value)? init,
    TResult? Function(SwitchToNextPlayerEvent value)? switchToNextPlayer,
    TResult? Function(ChangeCharacterPositionEvent value)?
        changeCharacterPosition,
    TResult? Function(RefuelStorageEvent value)? refuelStorage,
    TResult? Function(ResearchTechnologyEvent value)? researchTechnology,
    TResult? Function(UpdatePlayerHighscoreEvent value)? updatePlayerHighscore,
  }) {
    return refuelStorage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitLevelPlayersEvent value)? init,
    TResult Function(SwitchToNextPlayerEvent value)? switchToNextPlayer,
    TResult Function(ChangeCharacterPositionEvent value)?
        changeCharacterPosition,
    TResult Function(RefuelStorageEvent value)? refuelStorage,
    TResult Function(ResearchTechnologyEvent value)? researchTechnology,
    TResult Function(UpdatePlayerHighscoreEvent value)? updatePlayerHighscore,
    required TResult orElse(),
  }) {
    if (refuelStorage != null) {
      return refuelStorage(this);
    }
    return orElse();
  }
}

abstract class RefuelStorageEvent implements LevelPlayerEvent {
  const factory RefuelStorageEvent({required final ScoreModel score}) =
      _$RefuelStorageEventImpl;

  ScoreModel get score;
  @JsonKey(ignore: true)
  _$$RefuelStorageEventImplCopyWith<_$RefuelStorageEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResearchTechnologyEventImplCopyWith<$Res> {
  factory _$$ResearchTechnologyEventImplCopyWith(
          _$ResearchTechnologyEventImpl value,
          $Res Function(_$ResearchTechnologyEventImpl) then) =
      __$$ResearchTechnologyEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ScoreModel score});

  $ScoreModelCopyWith<$Res> get score;
}

/// @nodoc
class __$$ResearchTechnologyEventImplCopyWithImpl<$Res>
    extends _$LevelPlayerEventCopyWithImpl<$Res, _$ResearchTechnologyEventImpl>
    implements _$$ResearchTechnologyEventImplCopyWith<$Res> {
  __$$ResearchTechnologyEventImplCopyWithImpl(
      _$ResearchTechnologyEventImpl _value,
      $Res Function(_$ResearchTechnologyEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
  }) {
    return _then(_$ResearchTechnologyEventImpl(
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as ScoreModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ScoreModelCopyWith<$Res> get score {
    return $ScoreModelCopyWith<$Res>(_value.score, (value) {
      return _then(_value.copyWith(score: value));
    });
  }
}

/// @nodoc

class _$ResearchTechnologyEventImpl implements ResearchTechnologyEvent {
  const _$ResearchTechnologyEventImpl({required this.score});

  @override
  final ScoreModel score;

  @override
  String toString() {
    return 'LevelPlayerEvent.researchTechnology(score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResearchTechnologyEventImpl &&
            (identical(other.score, score) || other.score == score));
  }

  @override
  int get hashCode => Object.hash(runtimeType, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResearchTechnologyEventImplCopyWith<_$ResearchTechnologyEventImpl>
      get copyWith => __$$ResearchTechnologyEventImplCopyWithImpl<
          _$ResearchTechnologyEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LevelPlayersModel playersModel,
            LevelCharactersModel charactersModel)
        init,
    required TResult Function() switchToNextPlayer,
    required TResult Function(Vector2 position) changeCharacterPosition,
    required TResult Function(ScoreModel score) refuelStorage,
    required TResult Function(ScoreModel score) researchTechnology,
    required TResult Function(String playerId, ScoreModel score, String? word)
        updatePlayerHighscore,
  }) {
    return researchTechnology(score);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LevelPlayersModel playersModel,
            LevelCharactersModel charactersModel)?
        init,
    TResult? Function()? switchToNextPlayer,
    TResult? Function(Vector2 position)? changeCharacterPosition,
    TResult? Function(ScoreModel score)? refuelStorage,
    TResult? Function(ScoreModel score)? researchTechnology,
    TResult? Function(String playerId, ScoreModel score, String? word)?
        updatePlayerHighscore,
  }) {
    return researchTechnology?.call(score);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LevelPlayersModel playersModel,
            LevelCharactersModel charactersModel)?
        init,
    TResult Function()? switchToNextPlayer,
    TResult Function(Vector2 position)? changeCharacterPosition,
    TResult Function(ScoreModel score)? refuelStorage,
    TResult Function(ScoreModel score)? researchTechnology,
    TResult Function(String playerId, ScoreModel score, String? word)?
        updatePlayerHighscore,
    required TResult orElse(),
  }) {
    if (researchTechnology != null) {
      return researchTechnology(score);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitLevelPlayersEvent value) init,
    required TResult Function(SwitchToNextPlayerEvent value) switchToNextPlayer,
    required TResult Function(ChangeCharacterPositionEvent value)
        changeCharacterPosition,
    required TResult Function(RefuelStorageEvent value) refuelStorage,
    required TResult Function(ResearchTechnologyEvent value) researchTechnology,
    required TResult Function(UpdatePlayerHighscoreEvent value)
        updatePlayerHighscore,
  }) {
    return researchTechnology(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitLevelPlayersEvent value)? init,
    TResult? Function(SwitchToNextPlayerEvent value)? switchToNextPlayer,
    TResult? Function(ChangeCharacterPositionEvent value)?
        changeCharacterPosition,
    TResult? Function(RefuelStorageEvent value)? refuelStorage,
    TResult? Function(ResearchTechnologyEvent value)? researchTechnology,
    TResult? Function(UpdatePlayerHighscoreEvent value)? updatePlayerHighscore,
  }) {
    return researchTechnology?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitLevelPlayersEvent value)? init,
    TResult Function(SwitchToNextPlayerEvent value)? switchToNextPlayer,
    TResult Function(ChangeCharacterPositionEvent value)?
        changeCharacterPosition,
    TResult Function(RefuelStorageEvent value)? refuelStorage,
    TResult Function(ResearchTechnologyEvent value)? researchTechnology,
    TResult Function(UpdatePlayerHighscoreEvent value)? updatePlayerHighscore,
    required TResult orElse(),
  }) {
    if (researchTechnology != null) {
      return researchTechnology(this);
    }
    return orElse();
  }
}

abstract class ResearchTechnologyEvent implements LevelPlayerEvent {
  const factory ResearchTechnologyEvent({required final ScoreModel score}) =
      _$ResearchTechnologyEventImpl;

  ScoreModel get score;
  @JsonKey(ignore: true)
  _$$ResearchTechnologyEventImplCopyWith<_$ResearchTechnologyEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePlayerHighscoreEventImplCopyWith<$Res> {
  factory _$$UpdatePlayerHighscoreEventImplCopyWith(
          _$UpdatePlayerHighscoreEventImpl value,
          $Res Function(_$UpdatePlayerHighscoreEventImpl) then) =
      __$$UpdatePlayerHighscoreEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String playerId, ScoreModel score, String? word});

  $ScoreModelCopyWith<$Res> get score;
}

/// @nodoc
class __$$UpdatePlayerHighscoreEventImplCopyWithImpl<$Res>
    extends _$LevelPlayerEventCopyWithImpl<$Res,
        _$UpdatePlayerHighscoreEventImpl>
    implements _$$UpdatePlayerHighscoreEventImplCopyWith<$Res> {
  __$$UpdatePlayerHighscoreEventImplCopyWithImpl(
      _$UpdatePlayerHighscoreEventImpl _value,
      $Res Function(_$UpdatePlayerHighscoreEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerId = null,
    Object? score = null,
    Object? word = freezed,
  }) {
    return _then(_$UpdatePlayerHighscoreEventImpl(
      playerId: null == playerId
          ? _value.playerId
          : playerId // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as ScoreModel,
      word: freezed == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ScoreModelCopyWith<$Res> get score {
    return $ScoreModelCopyWith<$Res>(_value.score, (value) {
      return _then(_value.copyWith(score: value));
    });
  }
}

/// @nodoc

class _$UpdatePlayerHighscoreEventImpl implements UpdatePlayerHighscoreEvent {
  const _$UpdatePlayerHighscoreEventImpl(
      {required this.playerId, required this.score, this.word});

  @override
  final String playerId;
  @override
  final ScoreModel score;
  @override
  final String? word;

  @override
  String toString() {
    return 'LevelPlayerEvent.updatePlayerHighscore(playerId: $playerId, score: $score, word: $word)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePlayerHighscoreEventImpl &&
            (identical(other.playerId, playerId) ||
                other.playerId == playerId) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.word, word) || other.word == word));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playerId, score, word);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePlayerHighscoreEventImplCopyWith<_$UpdatePlayerHighscoreEventImpl>
      get copyWith => __$$UpdatePlayerHighscoreEventImplCopyWithImpl<
          _$UpdatePlayerHighscoreEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LevelPlayersModel playersModel,
            LevelCharactersModel charactersModel)
        init,
    required TResult Function() switchToNextPlayer,
    required TResult Function(Vector2 position) changeCharacterPosition,
    required TResult Function(ScoreModel score) refuelStorage,
    required TResult Function(ScoreModel score) researchTechnology,
    required TResult Function(String playerId, ScoreModel score, String? word)
        updatePlayerHighscore,
  }) {
    return updatePlayerHighscore(playerId, score, word);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LevelPlayersModel playersModel,
            LevelCharactersModel charactersModel)?
        init,
    TResult? Function()? switchToNextPlayer,
    TResult? Function(Vector2 position)? changeCharacterPosition,
    TResult? Function(ScoreModel score)? refuelStorage,
    TResult? Function(ScoreModel score)? researchTechnology,
    TResult? Function(String playerId, ScoreModel score, String? word)?
        updatePlayerHighscore,
  }) {
    return updatePlayerHighscore?.call(playerId, score, word);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LevelPlayersModel playersModel,
            LevelCharactersModel charactersModel)?
        init,
    TResult Function()? switchToNextPlayer,
    TResult Function(Vector2 position)? changeCharacterPosition,
    TResult Function(ScoreModel score)? refuelStorage,
    TResult Function(ScoreModel score)? researchTechnology,
    TResult Function(String playerId, ScoreModel score, String? word)?
        updatePlayerHighscore,
    required TResult orElse(),
  }) {
    if (updatePlayerHighscore != null) {
      return updatePlayerHighscore(playerId, score, word);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitLevelPlayersEvent value) init,
    required TResult Function(SwitchToNextPlayerEvent value) switchToNextPlayer,
    required TResult Function(ChangeCharacterPositionEvent value)
        changeCharacterPosition,
    required TResult Function(RefuelStorageEvent value) refuelStorage,
    required TResult Function(ResearchTechnologyEvent value) researchTechnology,
    required TResult Function(UpdatePlayerHighscoreEvent value)
        updatePlayerHighscore,
  }) {
    return updatePlayerHighscore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitLevelPlayersEvent value)? init,
    TResult? Function(SwitchToNextPlayerEvent value)? switchToNextPlayer,
    TResult? Function(ChangeCharacterPositionEvent value)?
        changeCharacterPosition,
    TResult? Function(RefuelStorageEvent value)? refuelStorage,
    TResult? Function(ResearchTechnologyEvent value)? researchTechnology,
    TResult? Function(UpdatePlayerHighscoreEvent value)? updatePlayerHighscore,
  }) {
    return updatePlayerHighscore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitLevelPlayersEvent value)? init,
    TResult Function(SwitchToNextPlayerEvent value)? switchToNextPlayer,
    TResult Function(ChangeCharacterPositionEvent value)?
        changeCharacterPosition,
    TResult Function(RefuelStorageEvent value)? refuelStorage,
    TResult Function(ResearchTechnologyEvent value)? researchTechnology,
    TResult Function(UpdatePlayerHighscoreEvent value)? updatePlayerHighscore,
    required TResult orElse(),
  }) {
    if (updatePlayerHighscore != null) {
      return updatePlayerHighscore(this);
    }
    return orElse();
  }
}

abstract class UpdatePlayerHighscoreEvent implements LevelPlayerEvent {
  const factory UpdatePlayerHighscoreEvent(
      {required final String playerId,
      required final ScoreModel score,
      final String? word}) = _$UpdatePlayerHighscoreEventImpl;

  String get playerId;
  ScoreModel get score;
  String? get word;
  @JsonKey(ignore: true)
  _$$UpdatePlayerHighscoreEventImplCopyWith<_$UpdatePlayerHighscoreEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LevelPlayersBlocState {
  List<PlayerProfileModel> get players => throw _privateConstructorUsedError;
  String get currentPlayerId => throw _privateConstructorUsedError;
  PlayerCharacterModel get playerCharacter =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LevelPlayersBlocStateCopyWith<LevelPlayersBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LevelPlayersBlocStateCopyWith<$Res> {
  factory $LevelPlayersBlocStateCopyWith(LevelPlayersBlocState value,
          $Res Function(LevelPlayersBlocState) then) =
      _$LevelPlayersBlocStateCopyWithImpl<$Res, LevelPlayersBlocState>;
  @useResult
  $Res call(
      {List<PlayerProfileModel> players,
      String currentPlayerId,
      PlayerCharacterModel playerCharacter});

  $PlayerCharacterModelCopyWith<$Res> get playerCharacter;
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
abstract class _$$LevelPlayersBlocStateImplCopyWith<$Res>
    implements $LevelPlayersBlocStateCopyWith<$Res> {
  factory _$$LevelPlayersBlocStateImplCopyWith(
          _$LevelPlayersBlocStateImpl value,
          $Res Function(_$LevelPlayersBlocStateImpl) then) =
      __$$LevelPlayersBlocStateImplCopyWithImpl<$Res>;
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
class __$$LevelPlayersBlocStateImplCopyWithImpl<$Res>
    extends _$LevelPlayersBlocStateCopyWithImpl<$Res,
        _$LevelPlayersBlocStateImpl>
    implements _$$LevelPlayersBlocStateImplCopyWith<$Res> {
  __$$LevelPlayersBlocStateImplCopyWithImpl(_$LevelPlayersBlocStateImpl _value,
      $Res Function(_$LevelPlayersBlocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? players = null,
    Object? currentPlayerId = null,
    Object? playerCharacter = null,
  }) {
    return _then(_$LevelPlayersBlocStateImpl(
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

class _$LevelPlayersBlocStateImpl extends _LevelPlayersBlocState {
  const _$LevelPlayersBlocStateImpl(
      {final List<PlayerProfileModel> players = const [],
      this.currentPlayerId = '',
      this.playerCharacter = PlayerCharacterModel.empty})
      : _players = players,
        super._();

  final List<PlayerProfileModel> _players;
  @override
  @JsonKey()
  List<PlayerProfileModel> get players {
    if (_players is EqualUnmodifiableListView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_players);
  }

  @override
  @JsonKey()
  final String currentPlayerId;
  @override
  @JsonKey()
  final PlayerCharacterModel playerCharacter;

  @override
  String toString() {
    return 'LevelPlayersBlocState(players: $players, currentPlayerId: $currentPlayerId, playerCharacter: $playerCharacter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LevelPlayersBlocStateImpl &&
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
  _$$LevelPlayersBlocStateImplCopyWith<_$LevelPlayersBlocStateImpl>
      get copyWith => __$$LevelPlayersBlocStateImplCopyWithImpl<
          _$LevelPlayersBlocStateImpl>(this, _$identity);
}

abstract class _LevelPlayersBlocState extends LevelPlayersBlocState {
  const factory _LevelPlayersBlocState(
          {final List<PlayerProfileModel> players,
          final String currentPlayerId,
          final PlayerCharacterModel playerCharacter}) =
      _$LevelPlayersBlocStateImpl;
  const _LevelPlayersBlocState._() : super._();

  @override
  List<PlayerProfileModel> get players;
  @override
  String get currentPlayerId;
  @override
  PlayerCharacterModel get playerCharacter;
  @override
  @JsonKey(ignore: true)
  _$$LevelPlayersBlocStateImplCopyWith<_$LevelPlayersBlocStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
