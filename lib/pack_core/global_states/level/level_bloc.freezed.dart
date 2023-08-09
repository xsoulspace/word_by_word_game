// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'level_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LevelBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LevelModel levelModel) init,
    required TResult Function(int timeDeltaInSeconds) consumeTick,
    required TResult Function() hideWarning,
    required TResult Function(CurrentWordModel word) changeCurrentWord,
    required TResult Function(CurrentWordModel? word) acceptNewWord,
    required TResult Function() endTurn,
    required TResult Function(EnergyMultiplierType multiplier)
        selectActionMultiplier,
    required TResult Function() addNewWordToDictionary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LevelModel levelModel)? init,
    TResult? Function(int timeDeltaInSeconds)? consumeTick,
    TResult? Function()? hideWarning,
    TResult? Function(CurrentWordModel word)? changeCurrentWord,
    TResult? Function(CurrentWordModel? word)? acceptNewWord,
    TResult? Function()? endTurn,
    TResult? Function(EnergyMultiplierType multiplier)? selectActionMultiplier,
    TResult? Function()? addNewWordToDictionary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LevelModel levelModel)? init,
    TResult Function(int timeDeltaInSeconds)? consumeTick,
    TResult Function()? hideWarning,
    TResult Function(CurrentWordModel word)? changeCurrentWord,
    TResult Function(CurrentWordModel? word)? acceptNewWord,
    TResult Function()? endTurn,
    TResult Function(EnergyMultiplierType multiplier)? selectActionMultiplier,
    TResult Function()? addNewWordToDictionary,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LevelBlocEventInit value) init,
    required TResult Function(LevelBlocEventConsumeTick value) consumeTick,
    required TResult Function(LevelBlocEventHideWarning value) hideWarning,
    required TResult Function(LevelBlocEventChangeCurrentWord value)
        changeCurrentWord,
    required TResult Function(LevelBlocEventAcceptNewWord value) acceptNewWord,
    required TResult Function(LevelBlocEventEndTurn value) endTurn,
    required TResult Function(LevelBlocEventSelectActionMultiplier value)
        selectActionMultiplier,
    required TResult Function(LevelBlocEventAddNewWordToDictionary value)
        addNewWordToDictionary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LevelBlocEventInit value)? init,
    TResult? Function(LevelBlocEventConsumeTick value)? consumeTick,
    TResult? Function(LevelBlocEventHideWarning value)? hideWarning,
    TResult? Function(LevelBlocEventChangeCurrentWord value)? changeCurrentWord,
    TResult? Function(LevelBlocEventAcceptNewWord value)? acceptNewWord,
    TResult? Function(LevelBlocEventEndTurn value)? endTurn,
    TResult? Function(LevelBlocEventSelectActionMultiplier value)?
        selectActionMultiplier,
    TResult? Function(LevelBlocEventAddNewWordToDictionary value)?
        addNewWordToDictionary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LevelBlocEventInit value)? init,
    TResult Function(LevelBlocEventConsumeTick value)? consumeTick,
    TResult Function(LevelBlocEventHideWarning value)? hideWarning,
    TResult Function(LevelBlocEventChangeCurrentWord value)? changeCurrentWord,
    TResult Function(LevelBlocEventAcceptNewWord value)? acceptNewWord,
    TResult Function(LevelBlocEventEndTurn value)? endTurn,
    TResult Function(LevelBlocEventSelectActionMultiplier value)?
        selectActionMultiplier,
    TResult Function(LevelBlocEventAddNewWordToDictionary value)?
        addNewWordToDictionary,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LevelBlocEventCopyWith<$Res> {
  factory $LevelBlocEventCopyWith(
          LevelBlocEvent value, $Res Function(LevelBlocEvent) then) =
      _$LevelBlocEventCopyWithImpl<$Res, LevelBlocEvent>;
}

/// @nodoc
class _$LevelBlocEventCopyWithImpl<$Res, $Val extends LevelBlocEvent>
    implements $LevelBlocEventCopyWith<$Res> {
  _$LevelBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LevelBlocEventInitCopyWith<$Res> {
  factory _$$LevelBlocEventInitCopyWith(_$LevelBlocEventInit value,
          $Res Function(_$LevelBlocEventInit) then) =
      __$$LevelBlocEventInitCopyWithImpl<$Res>;
  @useResult
  $Res call({LevelModel levelModel});

  $LevelModelCopyWith<$Res> get levelModel;
}

/// @nodoc
class __$$LevelBlocEventInitCopyWithImpl<$Res>
    extends _$LevelBlocEventCopyWithImpl<$Res, _$LevelBlocEventInit>
    implements _$$LevelBlocEventInitCopyWith<$Res> {
  __$$LevelBlocEventInitCopyWithImpl(
      _$LevelBlocEventInit _value, $Res Function(_$LevelBlocEventInit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? levelModel = null,
  }) {
    return _then(_$LevelBlocEventInit(
      levelModel: null == levelModel
          ? _value.levelModel
          : levelModel // ignore: cast_nullable_to_non_nullable
              as LevelModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LevelModelCopyWith<$Res> get levelModel {
    return $LevelModelCopyWith<$Res>(_value.levelModel, (value) {
      return _then(_value.copyWith(levelModel: value));
    });
  }
}

/// @nodoc

class _$LevelBlocEventInit implements LevelBlocEventInit {
  const _$LevelBlocEventInit({required this.levelModel});

  @override
  final LevelModel levelModel;

  @override
  String toString() {
    return 'LevelBlocEvent.init(levelModel: $levelModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LevelBlocEventInit &&
            (identical(other.levelModel, levelModel) ||
                other.levelModel == levelModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, levelModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LevelBlocEventInitCopyWith<_$LevelBlocEventInit> get copyWith =>
      __$$LevelBlocEventInitCopyWithImpl<_$LevelBlocEventInit>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LevelModel levelModel) init,
    required TResult Function(int timeDeltaInSeconds) consumeTick,
    required TResult Function() hideWarning,
    required TResult Function(CurrentWordModel word) changeCurrentWord,
    required TResult Function(CurrentWordModel? word) acceptNewWord,
    required TResult Function() endTurn,
    required TResult Function(EnergyMultiplierType multiplier)
        selectActionMultiplier,
    required TResult Function() addNewWordToDictionary,
  }) {
    return init(levelModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LevelModel levelModel)? init,
    TResult? Function(int timeDeltaInSeconds)? consumeTick,
    TResult? Function()? hideWarning,
    TResult? Function(CurrentWordModel word)? changeCurrentWord,
    TResult? Function(CurrentWordModel? word)? acceptNewWord,
    TResult? Function()? endTurn,
    TResult? Function(EnergyMultiplierType multiplier)? selectActionMultiplier,
    TResult? Function()? addNewWordToDictionary,
  }) {
    return init?.call(levelModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LevelModel levelModel)? init,
    TResult Function(int timeDeltaInSeconds)? consumeTick,
    TResult Function()? hideWarning,
    TResult Function(CurrentWordModel word)? changeCurrentWord,
    TResult Function(CurrentWordModel? word)? acceptNewWord,
    TResult Function()? endTurn,
    TResult Function(EnergyMultiplierType multiplier)? selectActionMultiplier,
    TResult Function()? addNewWordToDictionary,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(levelModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LevelBlocEventInit value) init,
    required TResult Function(LevelBlocEventConsumeTick value) consumeTick,
    required TResult Function(LevelBlocEventHideWarning value) hideWarning,
    required TResult Function(LevelBlocEventChangeCurrentWord value)
        changeCurrentWord,
    required TResult Function(LevelBlocEventAcceptNewWord value) acceptNewWord,
    required TResult Function(LevelBlocEventEndTurn value) endTurn,
    required TResult Function(LevelBlocEventSelectActionMultiplier value)
        selectActionMultiplier,
    required TResult Function(LevelBlocEventAddNewWordToDictionary value)
        addNewWordToDictionary,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LevelBlocEventInit value)? init,
    TResult? Function(LevelBlocEventConsumeTick value)? consumeTick,
    TResult? Function(LevelBlocEventHideWarning value)? hideWarning,
    TResult? Function(LevelBlocEventChangeCurrentWord value)? changeCurrentWord,
    TResult? Function(LevelBlocEventAcceptNewWord value)? acceptNewWord,
    TResult? Function(LevelBlocEventEndTurn value)? endTurn,
    TResult? Function(LevelBlocEventSelectActionMultiplier value)?
        selectActionMultiplier,
    TResult? Function(LevelBlocEventAddNewWordToDictionary value)?
        addNewWordToDictionary,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LevelBlocEventInit value)? init,
    TResult Function(LevelBlocEventConsumeTick value)? consumeTick,
    TResult Function(LevelBlocEventHideWarning value)? hideWarning,
    TResult Function(LevelBlocEventChangeCurrentWord value)? changeCurrentWord,
    TResult Function(LevelBlocEventAcceptNewWord value)? acceptNewWord,
    TResult Function(LevelBlocEventEndTurn value)? endTurn,
    TResult Function(LevelBlocEventSelectActionMultiplier value)?
        selectActionMultiplier,
    TResult Function(LevelBlocEventAddNewWordToDictionary value)?
        addNewWordToDictionary,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class LevelBlocEventInit implements LevelBlocEvent {
  const factory LevelBlocEventInit({required final LevelModel levelModel}) =
      _$LevelBlocEventInit;

  LevelModel get levelModel;
  @JsonKey(ignore: true)
  _$$LevelBlocEventInitCopyWith<_$LevelBlocEventInit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LevelBlocEventConsumeTickCopyWith<$Res> {
  factory _$$LevelBlocEventConsumeTickCopyWith(
          _$LevelBlocEventConsumeTick value,
          $Res Function(_$LevelBlocEventConsumeTick) then) =
      __$$LevelBlocEventConsumeTickCopyWithImpl<$Res>;
  @useResult
  $Res call({int timeDeltaInSeconds});
}

/// @nodoc
class __$$LevelBlocEventConsumeTickCopyWithImpl<$Res>
    extends _$LevelBlocEventCopyWithImpl<$Res, _$LevelBlocEventConsumeTick>
    implements _$$LevelBlocEventConsumeTickCopyWith<$Res> {
  __$$LevelBlocEventConsumeTickCopyWithImpl(_$LevelBlocEventConsumeTick _value,
      $Res Function(_$LevelBlocEventConsumeTick) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeDeltaInSeconds = null,
  }) {
    return _then(_$LevelBlocEventConsumeTick(
      timeDeltaInSeconds: null == timeDeltaInSeconds
          ? _value.timeDeltaInSeconds
          : timeDeltaInSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LevelBlocEventConsumeTick implements LevelBlocEventConsumeTick {
  const _$LevelBlocEventConsumeTick({required this.timeDeltaInSeconds});

  /// How many seconds was from the last tick
  @override
  final int timeDeltaInSeconds;

  @override
  String toString() {
    return 'LevelBlocEvent.consumeTick(timeDeltaInSeconds: $timeDeltaInSeconds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LevelBlocEventConsumeTick &&
            (identical(other.timeDeltaInSeconds, timeDeltaInSeconds) ||
                other.timeDeltaInSeconds == timeDeltaInSeconds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timeDeltaInSeconds);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LevelBlocEventConsumeTickCopyWith<_$LevelBlocEventConsumeTick>
      get copyWith => __$$LevelBlocEventConsumeTickCopyWithImpl<
          _$LevelBlocEventConsumeTick>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LevelModel levelModel) init,
    required TResult Function(int timeDeltaInSeconds) consumeTick,
    required TResult Function() hideWarning,
    required TResult Function(CurrentWordModel word) changeCurrentWord,
    required TResult Function(CurrentWordModel? word) acceptNewWord,
    required TResult Function() endTurn,
    required TResult Function(EnergyMultiplierType multiplier)
        selectActionMultiplier,
    required TResult Function() addNewWordToDictionary,
  }) {
    return consumeTick(timeDeltaInSeconds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LevelModel levelModel)? init,
    TResult? Function(int timeDeltaInSeconds)? consumeTick,
    TResult? Function()? hideWarning,
    TResult? Function(CurrentWordModel word)? changeCurrentWord,
    TResult? Function(CurrentWordModel? word)? acceptNewWord,
    TResult? Function()? endTurn,
    TResult? Function(EnergyMultiplierType multiplier)? selectActionMultiplier,
    TResult? Function()? addNewWordToDictionary,
  }) {
    return consumeTick?.call(timeDeltaInSeconds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LevelModel levelModel)? init,
    TResult Function(int timeDeltaInSeconds)? consumeTick,
    TResult Function()? hideWarning,
    TResult Function(CurrentWordModel word)? changeCurrentWord,
    TResult Function(CurrentWordModel? word)? acceptNewWord,
    TResult Function()? endTurn,
    TResult Function(EnergyMultiplierType multiplier)? selectActionMultiplier,
    TResult Function()? addNewWordToDictionary,
    required TResult orElse(),
  }) {
    if (consumeTick != null) {
      return consumeTick(timeDeltaInSeconds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LevelBlocEventInit value) init,
    required TResult Function(LevelBlocEventConsumeTick value) consumeTick,
    required TResult Function(LevelBlocEventHideWarning value) hideWarning,
    required TResult Function(LevelBlocEventChangeCurrentWord value)
        changeCurrentWord,
    required TResult Function(LevelBlocEventAcceptNewWord value) acceptNewWord,
    required TResult Function(LevelBlocEventEndTurn value) endTurn,
    required TResult Function(LevelBlocEventSelectActionMultiplier value)
        selectActionMultiplier,
    required TResult Function(LevelBlocEventAddNewWordToDictionary value)
        addNewWordToDictionary,
  }) {
    return consumeTick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LevelBlocEventInit value)? init,
    TResult? Function(LevelBlocEventConsumeTick value)? consumeTick,
    TResult? Function(LevelBlocEventHideWarning value)? hideWarning,
    TResult? Function(LevelBlocEventChangeCurrentWord value)? changeCurrentWord,
    TResult? Function(LevelBlocEventAcceptNewWord value)? acceptNewWord,
    TResult? Function(LevelBlocEventEndTurn value)? endTurn,
    TResult? Function(LevelBlocEventSelectActionMultiplier value)?
        selectActionMultiplier,
    TResult? Function(LevelBlocEventAddNewWordToDictionary value)?
        addNewWordToDictionary,
  }) {
    return consumeTick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LevelBlocEventInit value)? init,
    TResult Function(LevelBlocEventConsumeTick value)? consumeTick,
    TResult Function(LevelBlocEventHideWarning value)? hideWarning,
    TResult Function(LevelBlocEventChangeCurrentWord value)? changeCurrentWord,
    TResult Function(LevelBlocEventAcceptNewWord value)? acceptNewWord,
    TResult Function(LevelBlocEventEndTurn value)? endTurn,
    TResult Function(LevelBlocEventSelectActionMultiplier value)?
        selectActionMultiplier,
    TResult Function(LevelBlocEventAddNewWordToDictionary value)?
        addNewWordToDictionary,
    required TResult orElse(),
  }) {
    if (consumeTick != null) {
      return consumeTick(this);
    }
    return orElse();
  }
}

abstract class LevelBlocEventConsumeTick implements LevelBlocEvent {
  const factory LevelBlocEventConsumeTick(
      {required final int timeDeltaInSeconds}) = _$LevelBlocEventConsumeTick;

  /// How many seconds was from the last tick
  int get timeDeltaInSeconds;
  @JsonKey(ignore: true)
  _$$LevelBlocEventConsumeTickCopyWith<_$LevelBlocEventConsumeTick>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LevelBlocEventHideWarningCopyWith<$Res> {
  factory _$$LevelBlocEventHideWarningCopyWith(
          _$LevelBlocEventHideWarning value,
          $Res Function(_$LevelBlocEventHideWarning) then) =
      __$$LevelBlocEventHideWarningCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LevelBlocEventHideWarningCopyWithImpl<$Res>
    extends _$LevelBlocEventCopyWithImpl<$Res, _$LevelBlocEventHideWarning>
    implements _$$LevelBlocEventHideWarningCopyWith<$Res> {
  __$$LevelBlocEventHideWarningCopyWithImpl(_$LevelBlocEventHideWarning _value,
      $Res Function(_$LevelBlocEventHideWarning) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LevelBlocEventHideWarning implements LevelBlocEventHideWarning {
  const _$LevelBlocEventHideWarning();

  @override
  String toString() {
    return 'LevelBlocEvent.hideWarning()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LevelBlocEventHideWarning);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LevelModel levelModel) init,
    required TResult Function(int timeDeltaInSeconds) consumeTick,
    required TResult Function() hideWarning,
    required TResult Function(CurrentWordModel word) changeCurrentWord,
    required TResult Function(CurrentWordModel? word) acceptNewWord,
    required TResult Function() endTurn,
    required TResult Function(EnergyMultiplierType multiplier)
        selectActionMultiplier,
    required TResult Function() addNewWordToDictionary,
  }) {
    return hideWarning();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LevelModel levelModel)? init,
    TResult? Function(int timeDeltaInSeconds)? consumeTick,
    TResult? Function()? hideWarning,
    TResult? Function(CurrentWordModel word)? changeCurrentWord,
    TResult? Function(CurrentWordModel? word)? acceptNewWord,
    TResult? Function()? endTurn,
    TResult? Function(EnergyMultiplierType multiplier)? selectActionMultiplier,
    TResult? Function()? addNewWordToDictionary,
  }) {
    return hideWarning?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LevelModel levelModel)? init,
    TResult Function(int timeDeltaInSeconds)? consumeTick,
    TResult Function()? hideWarning,
    TResult Function(CurrentWordModel word)? changeCurrentWord,
    TResult Function(CurrentWordModel? word)? acceptNewWord,
    TResult Function()? endTurn,
    TResult Function(EnergyMultiplierType multiplier)? selectActionMultiplier,
    TResult Function()? addNewWordToDictionary,
    required TResult orElse(),
  }) {
    if (hideWarning != null) {
      return hideWarning();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LevelBlocEventInit value) init,
    required TResult Function(LevelBlocEventConsumeTick value) consumeTick,
    required TResult Function(LevelBlocEventHideWarning value) hideWarning,
    required TResult Function(LevelBlocEventChangeCurrentWord value)
        changeCurrentWord,
    required TResult Function(LevelBlocEventAcceptNewWord value) acceptNewWord,
    required TResult Function(LevelBlocEventEndTurn value) endTurn,
    required TResult Function(LevelBlocEventSelectActionMultiplier value)
        selectActionMultiplier,
    required TResult Function(LevelBlocEventAddNewWordToDictionary value)
        addNewWordToDictionary,
  }) {
    return hideWarning(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LevelBlocEventInit value)? init,
    TResult? Function(LevelBlocEventConsumeTick value)? consumeTick,
    TResult? Function(LevelBlocEventHideWarning value)? hideWarning,
    TResult? Function(LevelBlocEventChangeCurrentWord value)? changeCurrentWord,
    TResult? Function(LevelBlocEventAcceptNewWord value)? acceptNewWord,
    TResult? Function(LevelBlocEventEndTurn value)? endTurn,
    TResult? Function(LevelBlocEventSelectActionMultiplier value)?
        selectActionMultiplier,
    TResult? Function(LevelBlocEventAddNewWordToDictionary value)?
        addNewWordToDictionary,
  }) {
    return hideWarning?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LevelBlocEventInit value)? init,
    TResult Function(LevelBlocEventConsumeTick value)? consumeTick,
    TResult Function(LevelBlocEventHideWarning value)? hideWarning,
    TResult Function(LevelBlocEventChangeCurrentWord value)? changeCurrentWord,
    TResult Function(LevelBlocEventAcceptNewWord value)? acceptNewWord,
    TResult Function(LevelBlocEventEndTurn value)? endTurn,
    TResult Function(LevelBlocEventSelectActionMultiplier value)?
        selectActionMultiplier,
    TResult Function(LevelBlocEventAddNewWordToDictionary value)?
        addNewWordToDictionary,
    required TResult orElse(),
  }) {
    if (hideWarning != null) {
      return hideWarning(this);
    }
    return orElse();
  }
}

abstract class LevelBlocEventHideWarning implements LevelBlocEvent {
  const factory LevelBlocEventHideWarning() = _$LevelBlocEventHideWarning;
}

/// @nodoc
abstract class _$$LevelBlocEventChangeCurrentWordCopyWith<$Res> {
  factory _$$LevelBlocEventChangeCurrentWordCopyWith(
          _$LevelBlocEventChangeCurrentWord value,
          $Res Function(_$LevelBlocEventChangeCurrentWord) then) =
      __$$LevelBlocEventChangeCurrentWordCopyWithImpl<$Res>;
  @useResult
  $Res call({CurrentWordModel word});

  $CurrentWordModelCopyWith<$Res> get word;
}

/// @nodoc
class __$$LevelBlocEventChangeCurrentWordCopyWithImpl<$Res>
    extends _$LevelBlocEventCopyWithImpl<$Res,
        _$LevelBlocEventChangeCurrentWord>
    implements _$$LevelBlocEventChangeCurrentWordCopyWith<$Res> {
  __$$LevelBlocEventChangeCurrentWordCopyWithImpl(
      _$LevelBlocEventChangeCurrentWord _value,
      $Res Function(_$LevelBlocEventChangeCurrentWord) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
  }) {
    return _then(_$LevelBlocEventChangeCurrentWord(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as CurrentWordModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentWordModelCopyWith<$Res> get word {
    return $CurrentWordModelCopyWith<$Res>(_value.word, (value) {
      return _then(_value.copyWith(word: value));
    });
  }
}

/// @nodoc

class _$LevelBlocEventChangeCurrentWord
    implements LevelBlocEventChangeCurrentWord {
  const _$LevelBlocEventChangeCurrentWord({required this.word});

  @override
  final CurrentWordModel word;

  @override
  String toString() {
    return 'LevelBlocEvent.changeCurrentWord(word: $word)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LevelBlocEventChangeCurrentWord &&
            (identical(other.word, word) || other.word == word));
  }

  @override
  int get hashCode => Object.hash(runtimeType, word);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LevelBlocEventChangeCurrentWordCopyWith<_$LevelBlocEventChangeCurrentWord>
      get copyWith => __$$LevelBlocEventChangeCurrentWordCopyWithImpl<
          _$LevelBlocEventChangeCurrentWord>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LevelModel levelModel) init,
    required TResult Function(int timeDeltaInSeconds) consumeTick,
    required TResult Function() hideWarning,
    required TResult Function(CurrentWordModel word) changeCurrentWord,
    required TResult Function(CurrentWordModel? word) acceptNewWord,
    required TResult Function() endTurn,
    required TResult Function(EnergyMultiplierType multiplier)
        selectActionMultiplier,
    required TResult Function() addNewWordToDictionary,
  }) {
    return changeCurrentWord(word);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LevelModel levelModel)? init,
    TResult? Function(int timeDeltaInSeconds)? consumeTick,
    TResult? Function()? hideWarning,
    TResult? Function(CurrentWordModel word)? changeCurrentWord,
    TResult? Function(CurrentWordModel? word)? acceptNewWord,
    TResult? Function()? endTurn,
    TResult? Function(EnergyMultiplierType multiplier)? selectActionMultiplier,
    TResult? Function()? addNewWordToDictionary,
  }) {
    return changeCurrentWord?.call(word);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LevelModel levelModel)? init,
    TResult Function(int timeDeltaInSeconds)? consumeTick,
    TResult Function()? hideWarning,
    TResult Function(CurrentWordModel word)? changeCurrentWord,
    TResult Function(CurrentWordModel? word)? acceptNewWord,
    TResult Function()? endTurn,
    TResult Function(EnergyMultiplierType multiplier)? selectActionMultiplier,
    TResult Function()? addNewWordToDictionary,
    required TResult orElse(),
  }) {
    if (changeCurrentWord != null) {
      return changeCurrentWord(word);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LevelBlocEventInit value) init,
    required TResult Function(LevelBlocEventConsumeTick value) consumeTick,
    required TResult Function(LevelBlocEventHideWarning value) hideWarning,
    required TResult Function(LevelBlocEventChangeCurrentWord value)
        changeCurrentWord,
    required TResult Function(LevelBlocEventAcceptNewWord value) acceptNewWord,
    required TResult Function(LevelBlocEventEndTurn value) endTurn,
    required TResult Function(LevelBlocEventSelectActionMultiplier value)
        selectActionMultiplier,
    required TResult Function(LevelBlocEventAddNewWordToDictionary value)
        addNewWordToDictionary,
  }) {
    return changeCurrentWord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LevelBlocEventInit value)? init,
    TResult? Function(LevelBlocEventConsumeTick value)? consumeTick,
    TResult? Function(LevelBlocEventHideWarning value)? hideWarning,
    TResult? Function(LevelBlocEventChangeCurrentWord value)? changeCurrentWord,
    TResult? Function(LevelBlocEventAcceptNewWord value)? acceptNewWord,
    TResult? Function(LevelBlocEventEndTurn value)? endTurn,
    TResult? Function(LevelBlocEventSelectActionMultiplier value)?
        selectActionMultiplier,
    TResult? Function(LevelBlocEventAddNewWordToDictionary value)?
        addNewWordToDictionary,
  }) {
    return changeCurrentWord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LevelBlocEventInit value)? init,
    TResult Function(LevelBlocEventConsumeTick value)? consumeTick,
    TResult Function(LevelBlocEventHideWarning value)? hideWarning,
    TResult Function(LevelBlocEventChangeCurrentWord value)? changeCurrentWord,
    TResult Function(LevelBlocEventAcceptNewWord value)? acceptNewWord,
    TResult Function(LevelBlocEventEndTurn value)? endTurn,
    TResult Function(LevelBlocEventSelectActionMultiplier value)?
        selectActionMultiplier,
    TResult Function(LevelBlocEventAddNewWordToDictionary value)?
        addNewWordToDictionary,
    required TResult orElse(),
  }) {
    if (changeCurrentWord != null) {
      return changeCurrentWord(this);
    }
    return orElse();
  }
}

abstract class LevelBlocEventChangeCurrentWord implements LevelBlocEvent {
  const factory LevelBlocEventChangeCurrentWord(
          {required final CurrentWordModel word}) =
      _$LevelBlocEventChangeCurrentWord;

  CurrentWordModel get word;
  @JsonKey(ignore: true)
  _$$LevelBlocEventChangeCurrentWordCopyWith<_$LevelBlocEventChangeCurrentWord>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LevelBlocEventAcceptNewWordCopyWith<$Res> {
  factory _$$LevelBlocEventAcceptNewWordCopyWith(
          _$LevelBlocEventAcceptNewWord value,
          $Res Function(_$LevelBlocEventAcceptNewWord) then) =
      __$$LevelBlocEventAcceptNewWordCopyWithImpl<$Res>;
  @useResult
  $Res call({CurrentWordModel? word});

  $CurrentWordModelCopyWith<$Res>? get word;
}

/// @nodoc
class __$$LevelBlocEventAcceptNewWordCopyWithImpl<$Res>
    extends _$LevelBlocEventCopyWithImpl<$Res, _$LevelBlocEventAcceptNewWord>
    implements _$$LevelBlocEventAcceptNewWordCopyWith<$Res> {
  __$$LevelBlocEventAcceptNewWordCopyWithImpl(
      _$LevelBlocEventAcceptNewWord _value,
      $Res Function(_$LevelBlocEventAcceptNewWord) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = freezed,
  }) {
    return _then(_$LevelBlocEventAcceptNewWord(
      word: freezed == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as CurrentWordModel?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentWordModelCopyWith<$Res>? get word {
    if (_value.word == null) {
      return null;
    }

    return $CurrentWordModelCopyWith<$Res>(_value.word!, (value) {
      return _then(_value.copyWith(word: value));
    });
  }
}

/// @nodoc

class _$LevelBlocEventAcceptNewWord implements LevelBlocEventAcceptNewWord {
  const _$LevelBlocEventAcceptNewWord({required this.word});

  @override
  final CurrentWordModel? word;

  @override
  String toString() {
    return 'LevelBlocEvent.acceptNewWord(word: $word)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LevelBlocEventAcceptNewWord &&
            (identical(other.word, word) || other.word == word));
  }

  @override
  int get hashCode => Object.hash(runtimeType, word);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LevelBlocEventAcceptNewWordCopyWith<_$LevelBlocEventAcceptNewWord>
      get copyWith => __$$LevelBlocEventAcceptNewWordCopyWithImpl<
          _$LevelBlocEventAcceptNewWord>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LevelModel levelModel) init,
    required TResult Function(int timeDeltaInSeconds) consumeTick,
    required TResult Function() hideWarning,
    required TResult Function(CurrentWordModel word) changeCurrentWord,
    required TResult Function(CurrentWordModel? word) acceptNewWord,
    required TResult Function() endTurn,
    required TResult Function(EnergyMultiplierType multiplier)
        selectActionMultiplier,
    required TResult Function() addNewWordToDictionary,
  }) {
    return acceptNewWord(word);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LevelModel levelModel)? init,
    TResult? Function(int timeDeltaInSeconds)? consumeTick,
    TResult? Function()? hideWarning,
    TResult? Function(CurrentWordModel word)? changeCurrentWord,
    TResult? Function(CurrentWordModel? word)? acceptNewWord,
    TResult? Function()? endTurn,
    TResult? Function(EnergyMultiplierType multiplier)? selectActionMultiplier,
    TResult? Function()? addNewWordToDictionary,
  }) {
    return acceptNewWord?.call(word);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LevelModel levelModel)? init,
    TResult Function(int timeDeltaInSeconds)? consumeTick,
    TResult Function()? hideWarning,
    TResult Function(CurrentWordModel word)? changeCurrentWord,
    TResult Function(CurrentWordModel? word)? acceptNewWord,
    TResult Function()? endTurn,
    TResult Function(EnergyMultiplierType multiplier)? selectActionMultiplier,
    TResult Function()? addNewWordToDictionary,
    required TResult orElse(),
  }) {
    if (acceptNewWord != null) {
      return acceptNewWord(word);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LevelBlocEventInit value) init,
    required TResult Function(LevelBlocEventConsumeTick value) consumeTick,
    required TResult Function(LevelBlocEventHideWarning value) hideWarning,
    required TResult Function(LevelBlocEventChangeCurrentWord value)
        changeCurrentWord,
    required TResult Function(LevelBlocEventAcceptNewWord value) acceptNewWord,
    required TResult Function(LevelBlocEventEndTurn value) endTurn,
    required TResult Function(LevelBlocEventSelectActionMultiplier value)
        selectActionMultiplier,
    required TResult Function(LevelBlocEventAddNewWordToDictionary value)
        addNewWordToDictionary,
  }) {
    return acceptNewWord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LevelBlocEventInit value)? init,
    TResult? Function(LevelBlocEventConsumeTick value)? consumeTick,
    TResult? Function(LevelBlocEventHideWarning value)? hideWarning,
    TResult? Function(LevelBlocEventChangeCurrentWord value)? changeCurrentWord,
    TResult? Function(LevelBlocEventAcceptNewWord value)? acceptNewWord,
    TResult? Function(LevelBlocEventEndTurn value)? endTurn,
    TResult? Function(LevelBlocEventSelectActionMultiplier value)?
        selectActionMultiplier,
    TResult? Function(LevelBlocEventAddNewWordToDictionary value)?
        addNewWordToDictionary,
  }) {
    return acceptNewWord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LevelBlocEventInit value)? init,
    TResult Function(LevelBlocEventConsumeTick value)? consumeTick,
    TResult Function(LevelBlocEventHideWarning value)? hideWarning,
    TResult Function(LevelBlocEventChangeCurrentWord value)? changeCurrentWord,
    TResult Function(LevelBlocEventAcceptNewWord value)? acceptNewWord,
    TResult Function(LevelBlocEventEndTurn value)? endTurn,
    TResult Function(LevelBlocEventSelectActionMultiplier value)?
        selectActionMultiplier,
    TResult Function(LevelBlocEventAddNewWordToDictionary value)?
        addNewWordToDictionary,
    required TResult orElse(),
  }) {
    if (acceptNewWord != null) {
      return acceptNewWord(this);
    }
    return orElse();
  }
}

abstract class LevelBlocEventAcceptNewWord implements LevelBlocEvent {
  const factory LevelBlocEventAcceptNewWord(
      {required final CurrentWordModel? word}) = _$LevelBlocEventAcceptNewWord;

  CurrentWordModel? get word;
  @JsonKey(ignore: true)
  _$$LevelBlocEventAcceptNewWordCopyWith<_$LevelBlocEventAcceptNewWord>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LevelBlocEventEndTurnCopyWith<$Res> {
  factory _$$LevelBlocEventEndTurnCopyWith(_$LevelBlocEventEndTurn value,
          $Res Function(_$LevelBlocEventEndTurn) then) =
      __$$LevelBlocEventEndTurnCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LevelBlocEventEndTurnCopyWithImpl<$Res>
    extends _$LevelBlocEventCopyWithImpl<$Res, _$LevelBlocEventEndTurn>
    implements _$$LevelBlocEventEndTurnCopyWith<$Res> {
  __$$LevelBlocEventEndTurnCopyWithImpl(_$LevelBlocEventEndTurn _value,
      $Res Function(_$LevelBlocEventEndTurn) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LevelBlocEventEndTurn implements LevelBlocEventEndTurn {
  const _$LevelBlocEventEndTurn();

  @override
  String toString() {
    return 'LevelBlocEvent.endTurn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LevelBlocEventEndTurn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LevelModel levelModel) init,
    required TResult Function(int timeDeltaInSeconds) consumeTick,
    required TResult Function() hideWarning,
    required TResult Function(CurrentWordModel word) changeCurrentWord,
    required TResult Function(CurrentWordModel? word) acceptNewWord,
    required TResult Function() endTurn,
    required TResult Function(EnergyMultiplierType multiplier)
        selectActionMultiplier,
    required TResult Function() addNewWordToDictionary,
  }) {
    return endTurn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LevelModel levelModel)? init,
    TResult? Function(int timeDeltaInSeconds)? consumeTick,
    TResult? Function()? hideWarning,
    TResult? Function(CurrentWordModel word)? changeCurrentWord,
    TResult? Function(CurrentWordModel? word)? acceptNewWord,
    TResult? Function()? endTurn,
    TResult? Function(EnergyMultiplierType multiplier)? selectActionMultiplier,
    TResult? Function()? addNewWordToDictionary,
  }) {
    return endTurn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LevelModel levelModel)? init,
    TResult Function(int timeDeltaInSeconds)? consumeTick,
    TResult Function()? hideWarning,
    TResult Function(CurrentWordModel word)? changeCurrentWord,
    TResult Function(CurrentWordModel? word)? acceptNewWord,
    TResult Function()? endTurn,
    TResult Function(EnergyMultiplierType multiplier)? selectActionMultiplier,
    TResult Function()? addNewWordToDictionary,
    required TResult orElse(),
  }) {
    if (endTurn != null) {
      return endTurn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LevelBlocEventInit value) init,
    required TResult Function(LevelBlocEventConsumeTick value) consumeTick,
    required TResult Function(LevelBlocEventHideWarning value) hideWarning,
    required TResult Function(LevelBlocEventChangeCurrentWord value)
        changeCurrentWord,
    required TResult Function(LevelBlocEventAcceptNewWord value) acceptNewWord,
    required TResult Function(LevelBlocEventEndTurn value) endTurn,
    required TResult Function(LevelBlocEventSelectActionMultiplier value)
        selectActionMultiplier,
    required TResult Function(LevelBlocEventAddNewWordToDictionary value)
        addNewWordToDictionary,
  }) {
    return endTurn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LevelBlocEventInit value)? init,
    TResult? Function(LevelBlocEventConsumeTick value)? consumeTick,
    TResult? Function(LevelBlocEventHideWarning value)? hideWarning,
    TResult? Function(LevelBlocEventChangeCurrentWord value)? changeCurrentWord,
    TResult? Function(LevelBlocEventAcceptNewWord value)? acceptNewWord,
    TResult? Function(LevelBlocEventEndTurn value)? endTurn,
    TResult? Function(LevelBlocEventSelectActionMultiplier value)?
        selectActionMultiplier,
    TResult? Function(LevelBlocEventAddNewWordToDictionary value)?
        addNewWordToDictionary,
  }) {
    return endTurn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LevelBlocEventInit value)? init,
    TResult Function(LevelBlocEventConsumeTick value)? consumeTick,
    TResult Function(LevelBlocEventHideWarning value)? hideWarning,
    TResult Function(LevelBlocEventChangeCurrentWord value)? changeCurrentWord,
    TResult Function(LevelBlocEventAcceptNewWord value)? acceptNewWord,
    TResult Function(LevelBlocEventEndTurn value)? endTurn,
    TResult Function(LevelBlocEventSelectActionMultiplier value)?
        selectActionMultiplier,
    TResult Function(LevelBlocEventAddNewWordToDictionary value)?
        addNewWordToDictionary,
    required TResult orElse(),
  }) {
    if (endTurn != null) {
      return endTurn(this);
    }
    return orElse();
  }
}

abstract class LevelBlocEventEndTurn implements LevelBlocEvent {
  const factory LevelBlocEventEndTurn() = _$LevelBlocEventEndTurn;
}

/// @nodoc
abstract class _$$LevelBlocEventSelectActionMultiplierCopyWith<$Res> {
  factory _$$LevelBlocEventSelectActionMultiplierCopyWith(
          _$LevelBlocEventSelectActionMultiplier value,
          $Res Function(_$LevelBlocEventSelectActionMultiplier) then) =
      __$$LevelBlocEventSelectActionMultiplierCopyWithImpl<$Res>;
  @useResult
  $Res call({EnergyMultiplierType multiplier});
}

/// @nodoc
class __$$LevelBlocEventSelectActionMultiplierCopyWithImpl<$Res>
    extends _$LevelBlocEventCopyWithImpl<$Res,
        _$LevelBlocEventSelectActionMultiplier>
    implements _$$LevelBlocEventSelectActionMultiplierCopyWith<$Res> {
  __$$LevelBlocEventSelectActionMultiplierCopyWithImpl(
      _$LevelBlocEventSelectActionMultiplier _value,
      $Res Function(_$LevelBlocEventSelectActionMultiplier) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? multiplier = null,
  }) {
    return _then(_$LevelBlocEventSelectActionMultiplier(
      multiplier: null == multiplier
          ? _value.multiplier
          : multiplier // ignore: cast_nullable_to_non_nullable
              as EnergyMultiplierType,
    ));
  }
}

/// @nodoc

class _$LevelBlocEventSelectActionMultiplier
    implements LevelBlocEventSelectActionMultiplier {
  const _$LevelBlocEventSelectActionMultiplier({required this.multiplier});

  @override
  final EnergyMultiplierType multiplier;

  @override
  String toString() {
    return 'LevelBlocEvent.selectActionMultiplier(multiplier: $multiplier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LevelBlocEventSelectActionMultiplier &&
            (identical(other.multiplier, multiplier) ||
                other.multiplier == multiplier));
  }

  @override
  int get hashCode => Object.hash(runtimeType, multiplier);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LevelBlocEventSelectActionMultiplierCopyWith<
          _$LevelBlocEventSelectActionMultiplier>
      get copyWith => __$$LevelBlocEventSelectActionMultiplierCopyWithImpl<
          _$LevelBlocEventSelectActionMultiplier>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LevelModel levelModel) init,
    required TResult Function(int timeDeltaInSeconds) consumeTick,
    required TResult Function() hideWarning,
    required TResult Function(CurrentWordModel word) changeCurrentWord,
    required TResult Function(CurrentWordModel? word) acceptNewWord,
    required TResult Function() endTurn,
    required TResult Function(EnergyMultiplierType multiplier)
        selectActionMultiplier,
    required TResult Function() addNewWordToDictionary,
  }) {
    return selectActionMultiplier(multiplier);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LevelModel levelModel)? init,
    TResult? Function(int timeDeltaInSeconds)? consumeTick,
    TResult? Function()? hideWarning,
    TResult? Function(CurrentWordModel word)? changeCurrentWord,
    TResult? Function(CurrentWordModel? word)? acceptNewWord,
    TResult? Function()? endTurn,
    TResult? Function(EnergyMultiplierType multiplier)? selectActionMultiplier,
    TResult? Function()? addNewWordToDictionary,
  }) {
    return selectActionMultiplier?.call(multiplier);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LevelModel levelModel)? init,
    TResult Function(int timeDeltaInSeconds)? consumeTick,
    TResult Function()? hideWarning,
    TResult Function(CurrentWordModel word)? changeCurrentWord,
    TResult Function(CurrentWordModel? word)? acceptNewWord,
    TResult Function()? endTurn,
    TResult Function(EnergyMultiplierType multiplier)? selectActionMultiplier,
    TResult Function()? addNewWordToDictionary,
    required TResult orElse(),
  }) {
    if (selectActionMultiplier != null) {
      return selectActionMultiplier(multiplier);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LevelBlocEventInit value) init,
    required TResult Function(LevelBlocEventConsumeTick value) consumeTick,
    required TResult Function(LevelBlocEventHideWarning value) hideWarning,
    required TResult Function(LevelBlocEventChangeCurrentWord value)
        changeCurrentWord,
    required TResult Function(LevelBlocEventAcceptNewWord value) acceptNewWord,
    required TResult Function(LevelBlocEventEndTurn value) endTurn,
    required TResult Function(LevelBlocEventSelectActionMultiplier value)
        selectActionMultiplier,
    required TResult Function(LevelBlocEventAddNewWordToDictionary value)
        addNewWordToDictionary,
  }) {
    return selectActionMultiplier(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LevelBlocEventInit value)? init,
    TResult? Function(LevelBlocEventConsumeTick value)? consumeTick,
    TResult? Function(LevelBlocEventHideWarning value)? hideWarning,
    TResult? Function(LevelBlocEventChangeCurrentWord value)? changeCurrentWord,
    TResult? Function(LevelBlocEventAcceptNewWord value)? acceptNewWord,
    TResult? Function(LevelBlocEventEndTurn value)? endTurn,
    TResult? Function(LevelBlocEventSelectActionMultiplier value)?
        selectActionMultiplier,
    TResult? Function(LevelBlocEventAddNewWordToDictionary value)?
        addNewWordToDictionary,
  }) {
    return selectActionMultiplier?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LevelBlocEventInit value)? init,
    TResult Function(LevelBlocEventConsumeTick value)? consumeTick,
    TResult Function(LevelBlocEventHideWarning value)? hideWarning,
    TResult Function(LevelBlocEventChangeCurrentWord value)? changeCurrentWord,
    TResult Function(LevelBlocEventAcceptNewWord value)? acceptNewWord,
    TResult Function(LevelBlocEventEndTurn value)? endTurn,
    TResult Function(LevelBlocEventSelectActionMultiplier value)?
        selectActionMultiplier,
    TResult Function(LevelBlocEventAddNewWordToDictionary value)?
        addNewWordToDictionary,
    required TResult orElse(),
  }) {
    if (selectActionMultiplier != null) {
      return selectActionMultiplier(this);
    }
    return orElse();
  }
}

abstract class LevelBlocEventSelectActionMultiplier implements LevelBlocEvent {
  const factory LevelBlocEventSelectActionMultiplier(
          {required final EnergyMultiplierType multiplier}) =
      _$LevelBlocEventSelectActionMultiplier;

  EnergyMultiplierType get multiplier;
  @JsonKey(ignore: true)
  _$$LevelBlocEventSelectActionMultiplierCopyWith<
          _$LevelBlocEventSelectActionMultiplier>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LevelBlocEventAddNewWordToDictionaryCopyWith<$Res> {
  factory _$$LevelBlocEventAddNewWordToDictionaryCopyWith(
          _$LevelBlocEventAddNewWordToDictionary value,
          $Res Function(_$LevelBlocEventAddNewWordToDictionary) then) =
      __$$LevelBlocEventAddNewWordToDictionaryCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LevelBlocEventAddNewWordToDictionaryCopyWithImpl<$Res>
    extends _$LevelBlocEventCopyWithImpl<$Res,
        _$LevelBlocEventAddNewWordToDictionary>
    implements _$$LevelBlocEventAddNewWordToDictionaryCopyWith<$Res> {
  __$$LevelBlocEventAddNewWordToDictionaryCopyWithImpl(
      _$LevelBlocEventAddNewWordToDictionary _value,
      $Res Function(_$LevelBlocEventAddNewWordToDictionary) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LevelBlocEventAddNewWordToDictionary
    implements LevelBlocEventAddNewWordToDictionary {
  const _$LevelBlocEventAddNewWordToDictionary();

  @override
  String toString() {
    return 'LevelBlocEvent.addNewWordToDictionary()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LevelBlocEventAddNewWordToDictionary);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LevelModel levelModel) init,
    required TResult Function(int timeDeltaInSeconds) consumeTick,
    required TResult Function() hideWarning,
    required TResult Function(CurrentWordModel word) changeCurrentWord,
    required TResult Function(CurrentWordModel? word) acceptNewWord,
    required TResult Function() endTurn,
    required TResult Function(EnergyMultiplierType multiplier)
        selectActionMultiplier,
    required TResult Function() addNewWordToDictionary,
  }) {
    return addNewWordToDictionary();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LevelModel levelModel)? init,
    TResult? Function(int timeDeltaInSeconds)? consumeTick,
    TResult? Function()? hideWarning,
    TResult? Function(CurrentWordModel word)? changeCurrentWord,
    TResult? Function(CurrentWordModel? word)? acceptNewWord,
    TResult? Function()? endTurn,
    TResult? Function(EnergyMultiplierType multiplier)? selectActionMultiplier,
    TResult? Function()? addNewWordToDictionary,
  }) {
    return addNewWordToDictionary?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LevelModel levelModel)? init,
    TResult Function(int timeDeltaInSeconds)? consumeTick,
    TResult Function()? hideWarning,
    TResult Function(CurrentWordModel word)? changeCurrentWord,
    TResult Function(CurrentWordModel? word)? acceptNewWord,
    TResult Function()? endTurn,
    TResult Function(EnergyMultiplierType multiplier)? selectActionMultiplier,
    TResult Function()? addNewWordToDictionary,
    required TResult orElse(),
  }) {
    if (addNewWordToDictionary != null) {
      return addNewWordToDictionary();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LevelBlocEventInit value) init,
    required TResult Function(LevelBlocEventConsumeTick value) consumeTick,
    required TResult Function(LevelBlocEventHideWarning value) hideWarning,
    required TResult Function(LevelBlocEventChangeCurrentWord value)
        changeCurrentWord,
    required TResult Function(LevelBlocEventAcceptNewWord value) acceptNewWord,
    required TResult Function(LevelBlocEventEndTurn value) endTurn,
    required TResult Function(LevelBlocEventSelectActionMultiplier value)
        selectActionMultiplier,
    required TResult Function(LevelBlocEventAddNewWordToDictionary value)
        addNewWordToDictionary,
  }) {
    return addNewWordToDictionary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LevelBlocEventInit value)? init,
    TResult? Function(LevelBlocEventConsumeTick value)? consumeTick,
    TResult? Function(LevelBlocEventHideWarning value)? hideWarning,
    TResult? Function(LevelBlocEventChangeCurrentWord value)? changeCurrentWord,
    TResult? Function(LevelBlocEventAcceptNewWord value)? acceptNewWord,
    TResult? Function(LevelBlocEventEndTurn value)? endTurn,
    TResult? Function(LevelBlocEventSelectActionMultiplier value)?
        selectActionMultiplier,
    TResult? Function(LevelBlocEventAddNewWordToDictionary value)?
        addNewWordToDictionary,
  }) {
    return addNewWordToDictionary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LevelBlocEventInit value)? init,
    TResult Function(LevelBlocEventConsumeTick value)? consumeTick,
    TResult Function(LevelBlocEventHideWarning value)? hideWarning,
    TResult Function(LevelBlocEventChangeCurrentWord value)? changeCurrentWord,
    TResult Function(LevelBlocEventAcceptNewWord value)? acceptNewWord,
    TResult Function(LevelBlocEventEndTurn value)? endTurn,
    TResult Function(LevelBlocEventSelectActionMultiplier value)?
        selectActionMultiplier,
    TResult Function(LevelBlocEventAddNewWordToDictionary value)?
        addNewWordToDictionary,
    required TResult orElse(),
  }) {
    if (addNewWordToDictionary != null) {
      return addNewWordToDictionary(this);
    }
    return orElse();
  }
}

abstract class LevelBlocEventAddNewWordToDictionary implements LevelBlocEvent {
  const factory LevelBlocEventAddNewWordToDictionary() =
      _$LevelBlocEventAddNewWordToDictionary;
}

/// @nodoc
mixin _$LevelBlocState {
  CanvasDataModelId get id => throw _privateConstructorUsedError;
  CurrentWordModel get currentWord => throw _privateConstructorUsedError;
  Map<String, String> get words => throw _privateConstructorUsedError;
  String get latestWord => throw _privateConstructorUsedError;
  GamePhaseType get phaseType => throw _privateConstructorUsedError;
  EnergyMultiplierType get actionMultiplier =>
      throw _privateConstructorUsedError;

  /// ********************************************
  /// *      NON PERSISTENT
  /// ********************************************
  WordWarning get wordWarning => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LevelBlocStateCopyWith<LevelBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LevelBlocStateCopyWith<$Res> {
  factory $LevelBlocStateCopyWith(
          LevelBlocState value, $Res Function(LevelBlocState) then) =
      _$LevelBlocStateCopyWithImpl<$Res, LevelBlocState>;
  @useResult
  $Res call(
      {CanvasDataModelId id,
      CurrentWordModel currentWord,
      Map<String, String> words,
      String latestWord,
      GamePhaseType phaseType,
      EnergyMultiplierType actionMultiplier,
      WordWarning wordWarning});

  $CanvasDataModelIdCopyWith<$Res> get id;
  $CurrentWordModelCopyWith<$Res> get currentWord;
}

/// @nodoc
class _$LevelBlocStateCopyWithImpl<$Res, $Val extends LevelBlocState>
    implements $LevelBlocStateCopyWith<$Res> {
  _$LevelBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? currentWord = null,
    Object? words = null,
    Object? latestWord = null,
    Object? phaseType = null,
    Object? actionMultiplier = null,
    Object? wordWarning = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      wordWarning: null == wordWarning
          ? _value.wordWarning
          : wordWarning // ignore: cast_nullable_to_non_nullable
              as WordWarning,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CanvasDataModelIdCopyWith<$Res> get id {
    return $CanvasDataModelIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentWordModelCopyWith<$Res> get currentWord {
    return $CurrentWordModelCopyWith<$Res>(_value.currentWord, (value) {
      return _then(_value.copyWith(currentWord: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LevelBlocStateCopyWith<$Res>
    implements $LevelBlocStateCopyWith<$Res> {
  factory _$$_LevelBlocStateCopyWith(
          _$_LevelBlocState value, $Res Function(_$_LevelBlocState) then) =
      __$$_LevelBlocStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CanvasDataModelId id,
      CurrentWordModel currentWord,
      Map<String, String> words,
      String latestWord,
      GamePhaseType phaseType,
      EnergyMultiplierType actionMultiplier,
      WordWarning wordWarning});

  @override
  $CanvasDataModelIdCopyWith<$Res> get id;
  @override
  $CurrentWordModelCopyWith<$Res> get currentWord;
}

/// @nodoc
class __$$_LevelBlocStateCopyWithImpl<$Res>
    extends _$LevelBlocStateCopyWithImpl<$Res, _$_LevelBlocState>
    implements _$$_LevelBlocStateCopyWith<$Res> {
  __$$_LevelBlocStateCopyWithImpl(
      _$_LevelBlocState _value, $Res Function(_$_LevelBlocState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? currentWord = null,
    Object? words = null,
    Object? latestWord = null,
    Object? phaseType = null,
    Object? actionMultiplier = null,
    Object? wordWarning = null,
  }) {
    return _then(_$_LevelBlocState(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      wordWarning: null == wordWarning
          ? _value.wordWarning
          : wordWarning // ignore: cast_nullable_to_non_nullable
              as WordWarning,
    ));
  }
}

/// @nodoc

class _$_LevelBlocState implements _LevelBlocState {
  const _$_LevelBlocState(
      {this.id = CanvasDataModelId.empty,
      this.currentWord = const CurrentWordModel(),
      final Map<String, String> words = const {},
      this.latestWord = '',
      this.phaseType = GamePhaseType.entryWord,
      this.actionMultiplier = EnergyMultiplierType.m1,
      this.wordWarning = WordWarning.none})
      : _words = words;

  @override
  @JsonKey()
  final CanvasDataModelId id;
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

  /// ********************************************
  /// *      NON PERSISTENT
  /// ********************************************
  @override
  @JsonKey()
  final WordWarning wordWarning;

  @override
  String toString() {
    return 'LevelBlocState(id: $id, currentWord: $currentWord, words: $words, latestWord: $latestWord, phaseType: $phaseType, actionMultiplier: $actionMultiplier, wordWarning: $wordWarning)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LevelBlocState &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.currentWord, currentWord) ||
                other.currentWord == currentWord) &&
            const DeepCollectionEquality().equals(other._words, _words) &&
            (identical(other.latestWord, latestWord) ||
                other.latestWord == latestWord) &&
            (identical(other.phaseType, phaseType) ||
                other.phaseType == phaseType) &&
            (identical(other.actionMultiplier, actionMultiplier) ||
                other.actionMultiplier == actionMultiplier) &&
            (identical(other.wordWarning, wordWarning) ||
                other.wordWarning == wordWarning));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      currentWord,
      const DeepCollectionEquality().hash(_words),
      latestWord,
      phaseType,
      actionMultiplier,
      wordWarning);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LevelBlocStateCopyWith<_$_LevelBlocState> get copyWith =>
      __$$_LevelBlocStateCopyWithImpl<_$_LevelBlocState>(this, _$identity);
}

abstract class _LevelBlocState implements LevelBlocState {
  const factory _LevelBlocState(
      {final CanvasDataModelId id,
      final CurrentWordModel currentWord,
      final Map<String, String> words,
      final String latestWord,
      final GamePhaseType phaseType,
      final EnergyMultiplierType actionMultiplier,
      final WordWarning wordWarning}) = _$_LevelBlocState;

  @override
  CanvasDataModelId get id;
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

  /// ********************************************
  /// *      NON PERSISTENT
  /// ********************************************
  WordWarning get wordWarning;
  @override
  @JsonKey(ignore: true)
  _$$_LevelBlocStateCopyWith<_$_LevelBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}
