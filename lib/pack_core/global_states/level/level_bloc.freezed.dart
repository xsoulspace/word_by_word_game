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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LevelBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LevelModel levelModel) init,
    required TResult Function(int timeDeltaInSeconds) consumeTick,
    required TResult Function() hideWarning,
    required TResult Function(CurrentWordModel word) changeCurrentWord,
    required TResult Function(EnergyApplicationType energyApplicationType)
        endTurn,
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
    TResult? Function(EnergyApplicationType energyApplicationType)? endTurn,
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
    TResult Function(EnergyApplicationType energyApplicationType)? endTurn,
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
abstract class _$$LevelBlocEventInitImplCopyWith<$Res> {
  factory _$$LevelBlocEventInitImplCopyWith(_$LevelBlocEventInitImpl value,
          $Res Function(_$LevelBlocEventInitImpl) then) =
      __$$LevelBlocEventInitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LevelModel levelModel});

  $LevelModelCopyWith<$Res> get levelModel;
}

/// @nodoc
class __$$LevelBlocEventInitImplCopyWithImpl<$Res>
    extends _$LevelBlocEventCopyWithImpl<$Res, _$LevelBlocEventInitImpl>
    implements _$$LevelBlocEventInitImplCopyWith<$Res> {
  __$$LevelBlocEventInitImplCopyWithImpl(_$LevelBlocEventInitImpl _value,
      $Res Function(_$LevelBlocEventInitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? levelModel = null,
  }) {
    return _then(_$LevelBlocEventInitImpl(
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

class _$LevelBlocEventInitImpl implements LevelBlocEventInit {
  const _$LevelBlocEventInitImpl({required this.levelModel});

  @override
  final LevelModel levelModel;

  @override
  String toString() {
    return 'LevelBlocEvent.init(levelModel: $levelModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LevelBlocEventInitImpl &&
            (identical(other.levelModel, levelModel) ||
                other.levelModel == levelModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, levelModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LevelBlocEventInitImplCopyWith<_$LevelBlocEventInitImpl> get copyWith =>
      __$$LevelBlocEventInitImplCopyWithImpl<_$LevelBlocEventInitImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LevelModel levelModel) init,
    required TResult Function(int timeDeltaInSeconds) consumeTick,
    required TResult Function() hideWarning,
    required TResult Function(CurrentWordModel word) changeCurrentWord,
    required TResult Function(EnergyApplicationType energyApplicationType)
        endTurn,
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
    TResult? Function(EnergyApplicationType energyApplicationType)? endTurn,
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
    TResult Function(EnergyApplicationType energyApplicationType)? endTurn,
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
      _$LevelBlocEventInitImpl;

  LevelModel get levelModel;
  @JsonKey(ignore: true)
  _$$LevelBlocEventInitImplCopyWith<_$LevelBlocEventInitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LevelBlocEventConsumeTickImplCopyWith<$Res> {
  factory _$$LevelBlocEventConsumeTickImplCopyWith(
          _$LevelBlocEventConsumeTickImpl value,
          $Res Function(_$LevelBlocEventConsumeTickImpl) then) =
      __$$LevelBlocEventConsumeTickImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int timeDeltaInSeconds});
}

/// @nodoc
class __$$LevelBlocEventConsumeTickImplCopyWithImpl<$Res>
    extends _$LevelBlocEventCopyWithImpl<$Res, _$LevelBlocEventConsumeTickImpl>
    implements _$$LevelBlocEventConsumeTickImplCopyWith<$Res> {
  __$$LevelBlocEventConsumeTickImplCopyWithImpl(
      _$LevelBlocEventConsumeTickImpl _value,
      $Res Function(_$LevelBlocEventConsumeTickImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeDeltaInSeconds = null,
  }) {
    return _then(_$LevelBlocEventConsumeTickImpl(
      timeDeltaInSeconds: null == timeDeltaInSeconds
          ? _value.timeDeltaInSeconds
          : timeDeltaInSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LevelBlocEventConsumeTickImpl implements LevelBlocEventConsumeTick {
  const _$LevelBlocEventConsumeTickImpl({required this.timeDeltaInSeconds});

  /// How many seconds was from the last tick
  @override
  final int timeDeltaInSeconds;

  @override
  String toString() {
    return 'LevelBlocEvent.consumeTick(timeDeltaInSeconds: $timeDeltaInSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LevelBlocEventConsumeTickImpl &&
            (identical(other.timeDeltaInSeconds, timeDeltaInSeconds) ||
                other.timeDeltaInSeconds == timeDeltaInSeconds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timeDeltaInSeconds);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LevelBlocEventConsumeTickImplCopyWith<_$LevelBlocEventConsumeTickImpl>
      get copyWith => __$$LevelBlocEventConsumeTickImplCopyWithImpl<
          _$LevelBlocEventConsumeTickImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LevelModel levelModel) init,
    required TResult Function(int timeDeltaInSeconds) consumeTick,
    required TResult Function() hideWarning,
    required TResult Function(CurrentWordModel word) changeCurrentWord,
    required TResult Function(EnergyApplicationType energyApplicationType)
        endTurn,
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
    TResult? Function(EnergyApplicationType energyApplicationType)? endTurn,
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
    TResult Function(EnergyApplicationType energyApplicationType)? endTurn,
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
          {required final int timeDeltaInSeconds}) =
      _$LevelBlocEventConsumeTickImpl;

  /// How many seconds was from the last tick
  int get timeDeltaInSeconds;
  @JsonKey(ignore: true)
  _$$LevelBlocEventConsumeTickImplCopyWith<_$LevelBlocEventConsumeTickImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LevelBlocEventHideWarningImplCopyWith<$Res> {
  factory _$$LevelBlocEventHideWarningImplCopyWith(
          _$LevelBlocEventHideWarningImpl value,
          $Res Function(_$LevelBlocEventHideWarningImpl) then) =
      __$$LevelBlocEventHideWarningImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LevelBlocEventHideWarningImplCopyWithImpl<$Res>
    extends _$LevelBlocEventCopyWithImpl<$Res, _$LevelBlocEventHideWarningImpl>
    implements _$$LevelBlocEventHideWarningImplCopyWith<$Res> {
  __$$LevelBlocEventHideWarningImplCopyWithImpl(
      _$LevelBlocEventHideWarningImpl _value,
      $Res Function(_$LevelBlocEventHideWarningImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LevelBlocEventHideWarningImpl implements LevelBlocEventHideWarning {
  const _$LevelBlocEventHideWarningImpl();

  @override
  String toString() {
    return 'LevelBlocEvent.hideWarning()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LevelBlocEventHideWarningImpl);
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
    required TResult Function(EnergyApplicationType energyApplicationType)
        endTurn,
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
    TResult? Function(EnergyApplicationType energyApplicationType)? endTurn,
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
    TResult Function(EnergyApplicationType energyApplicationType)? endTurn,
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
  const factory LevelBlocEventHideWarning() = _$LevelBlocEventHideWarningImpl;
}

/// @nodoc
abstract class _$$LevelBlocEventChangeCurrentWordImplCopyWith<$Res> {
  factory _$$LevelBlocEventChangeCurrentWordImplCopyWith(
          _$LevelBlocEventChangeCurrentWordImpl value,
          $Res Function(_$LevelBlocEventChangeCurrentWordImpl) then) =
      __$$LevelBlocEventChangeCurrentWordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CurrentWordModel word});

  $CurrentWordModelCopyWith<$Res> get word;
}

/// @nodoc
class __$$LevelBlocEventChangeCurrentWordImplCopyWithImpl<$Res>
    extends _$LevelBlocEventCopyWithImpl<$Res,
        _$LevelBlocEventChangeCurrentWordImpl>
    implements _$$LevelBlocEventChangeCurrentWordImplCopyWith<$Res> {
  __$$LevelBlocEventChangeCurrentWordImplCopyWithImpl(
      _$LevelBlocEventChangeCurrentWordImpl _value,
      $Res Function(_$LevelBlocEventChangeCurrentWordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
  }) {
    return _then(_$LevelBlocEventChangeCurrentWordImpl(
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

class _$LevelBlocEventChangeCurrentWordImpl
    implements LevelBlocEventChangeCurrentWord {
  const _$LevelBlocEventChangeCurrentWordImpl({required this.word});

  @override
  final CurrentWordModel word;

  @override
  String toString() {
    return 'LevelBlocEvent.changeCurrentWord(word: $word)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LevelBlocEventChangeCurrentWordImpl &&
            (identical(other.word, word) || other.word == word));
  }

  @override
  int get hashCode => Object.hash(runtimeType, word);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LevelBlocEventChangeCurrentWordImplCopyWith<
          _$LevelBlocEventChangeCurrentWordImpl>
      get copyWith => __$$LevelBlocEventChangeCurrentWordImplCopyWithImpl<
          _$LevelBlocEventChangeCurrentWordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LevelModel levelModel) init,
    required TResult Function(int timeDeltaInSeconds) consumeTick,
    required TResult Function() hideWarning,
    required TResult Function(CurrentWordModel word) changeCurrentWord,
    required TResult Function(EnergyApplicationType energyApplicationType)
        endTurn,
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
    TResult? Function(EnergyApplicationType energyApplicationType)? endTurn,
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
    TResult Function(EnergyApplicationType energyApplicationType)? endTurn,
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
      _$LevelBlocEventChangeCurrentWordImpl;

  CurrentWordModel get word;
  @JsonKey(ignore: true)
  _$$LevelBlocEventChangeCurrentWordImplCopyWith<
          _$LevelBlocEventChangeCurrentWordImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LevelBlocEventEndTurnImplCopyWith<$Res> {
  factory _$$LevelBlocEventEndTurnImplCopyWith(
          _$LevelBlocEventEndTurnImpl value,
          $Res Function(_$LevelBlocEventEndTurnImpl) then) =
      __$$LevelBlocEventEndTurnImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EnergyApplicationType energyApplicationType});
}

/// @nodoc
class __$$LevelBlocEventEndTurnImplCopyWithImpl<$Res>
    extends _$LevelBlocEventCopyWithImpl<$Res, _$LevelBlocEventEndTurnImpl>
    implements _$$LevelBlocEventEndTurnImplCopyWith<$Res> {
  __$$LevelBlocEventEndTurnImplCopyWithImpl(_$LevelBlocEventEndTurnImpl _value,
      $Res Function(_$LevelBlocEventEndTurnImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? energyApplicationType = null,
  }) {
    return _then(_$LevelBlocEventEndTurnImpl(
      energyApplicationType: null == energyApplicationType
          ? _value.energyApplicationType
          : energyApplicationType // ignore: cast_nullable_to_non_nullable
              as EnergyApplicationType,
    ));
  }
}

/// @nodoc

class _$LevelBlocEventEndTurnImpl implements LevelBlocEventEndTurn {
  const _$LevelBlocEventEndTurnImpl(
      {this.energyApplicationType = EnergyApplicationType.noop});

  @override
  @JsonKey()
  final EnergyApplicationType energyApplicationType;

  @override
  String toString() {
    return 'LevelBlocEvent.endTurn(energyApplicationType: $energyApplicationType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LevelBlocEventEndTurnImpl &&
            (identical(other.energyApplicationType, energyApplicationType) ||
                other.energyApplicationType == energyApplicationType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, energyApplicationType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LevelBlocEventEndTurnImplCopyWith<_$LevelBlocEventEndTurnImpl>
      get copyWith => __$$LevelBlocEventEndTurnImplCopyWithImpl<
          _$LevelBlocEventEndTurnImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LevelModel levelModel) init,
    required TResult Function(int timeDeltaInSeconds) consumeTick,
    required TResult Function() hideWarning,
    required TResult Function(CurrentWordModel word) changeCurrentWord,
    required TResult Function(EnergyApplicationType energyApplicationType)
        endTurn,
    required TResult Function(EnergyMultiplierType multiplier)
        selectActionMultiplier,
    required TResult Function() addNewWordToDictionary,
  }) {
    return endTurn(energyApplicationType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LevelModel levelModel)? init,
    TResult? Function(int timeDeltaInSeconds)? consumeTick,
    TResult? Function()? hideWarning,
    TResult? Function(CurrentWordModel word)? changeCurrentWord,
    TResult? Function(EnergyApplicationType energyApplicationType)? endTurn,
    TResult? Function(EnergyMultiplierType multiplier)? selectActionMultiplier,
    TResult? Function()? addNewWordToDictionary,
  }) {
    return endTurn?.call(energyApplicationType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LevelModel levelModel)? init,
    TResult Function(int timeDeltaInSeconds)? consumeTick,
    TResult Function()? hideWarning,
    TResult Function(CurrentWordModel word)? changeCurrentWord,
    TResult Function(EnergyApplicationType energyApplicationType)? endTurn,
    TResult Function(EnergyMultiplierType multiplier)? selectActionMultiplier,
    TResult Function()? addNewWordToDictionary,
    required TResult orElse(),
  }) {
    if (endTurn != null) {
      return endTurn(energyApplicationType);
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
  const factory LevelBlocEventEndTurn(
          {final EnergyApplicationType energyApplicationType}) =
      _$LevelBlocEventEndTurnImpl;

  EnergyApplicationType get energyApplicationType;
  @JsonKey(ignore: true)
  _$$LevelBlocEventEndTurnImplCopyWith<_$LevelBlocEventEndTurnImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LevelBlocEventSelectActionMultiplierImplCopyWith<$Res> {
  factory _$$LevelBlocEventSelectActionMultiplierImplCopyWith(
          _$LevelBlocEventSelectActionMultiplierImpl value,
          $Res Function(_$LevelBlocEventSelectActionMultiplierImpl) then) =
      __$$LevelBlocEventSelectActionMultiplierImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EnergyMultiplierType multiplier});
}

/// @nodoc
class __$$LevelBlocEventSelectActionMultiplierImplCopyWithImpl<$Res>
    extends _$LevelBlocEventCopyWithImpl<$Res,
        _$LevelBlocEventSelectActionMultiplierImpl>
    implements _$$LevelBlocEventSelectActionMultiplierImplCopyWith<$Res> {
  __$$LevelBlocEventSelectActionMultiplierImplCopyWithImpl(
      _$LevelBlocEventSelectActionMultiplierImpl _value,
      $Res Function(_$LevelBlocEventSelectActionMultiplierImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? multiplier = null,
  }) {
    return _then(_$LevelBlocEventSelectActionMultiplierImpl(
      multiplier: null == multiplier
          ? _value.multiplier
          : multiplier // ignore: cast_nullable_to_non_nullable
              as EnergyMultiplierType,
    ));
  }
}

/// @nodoc

class _$LevelBlocEventSelectActionMultiplierImpl
    implements LevelBlocEventSelectActionMultiplier {
  const _$LevelBlocEventSelectActionMultiplierImpl({required this.multiplier});

  @override
  final EnergyMultiplierType multiplier;

  @override
  String toString() {
    return 'LevelBlocEvent.selectActionMultiplier(multiplier: $multiplier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LevelBlocEventSelectActionMultiplierImpl &&
            (identical(other.multiplier, multiplier) ||
                other.multiplier == multiplier));
  }

  @override
  int get hashCode => Object.hash(runtimeType, multiplier);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LevelBlocEventSelectActionMultiplierImplCopyWith<
          _$LevelBlocEventSelectActionMultiplierImpl>
      get copyWith => __$$LevelBlocEventSelectActionMultiplierImplCopyWithImpl<
          _$LevelBlocEventSelectActionMultiplierImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LevelModel levelModel) init,
    required TResult Function(int timeDeltaInSeconds) consumeTick,
    required TResult Function() hideWarning,
    required TResult Function(CurrentWordModel word) changeCurrentWord,
    required TResult Function(EnergyApplicationType energyApplicationType)
        endTurn,
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
    TResult? Function(EnergyApplicationType energyApplicationType)? endTurn,
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
    TResult Function(EnergyApplicationType energyApplicationType)? endTurn,
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
      _$LevelBlocEventSelectActionMultiplierImpl;

  EnergyMultiplierType get multiplier;
  @JsonKey(ignore: true)
  _$$LevelBlocEventSelectActionMultiplierImplCopyWith<
          _$LevelBlocEventSelectActionMultiplierImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LevelBlocEventAddNewWordToDictionaryImplCopyWith<$Res> {
  factory _$$LevelBlocEventAddNewWordToDictionaryImplCopyWith(
          _$LevelBlocEventAddNewWordToDictionaryImpl value,
          $Res Function(_$LevelBlocEventAddNewWordToDictionaryImpl) then) =
      __$$LevelBlocEventAddNewWordToDictionaryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LevelBlocEventAddNewWordToDictionaryImplCopyWithImpl<$Res>
    extends _$LevelBlocEventCopyWithImpl<$Res,
        _$LevelBlocEventAddNewWordToDictionaryImpl>
    implements _$$LevelBlocEventAddNewWordToDictionaryImplCopyWith<$Res> {
  __$$LevelBlocEventAddNewWordToDictionaryImplCopyWithImpl(
      _$LevelBlocEventAddNewWordToDictionaryImpl _value,
      $Res Function(_$LevelBlocEventAddNewWordToDictionaryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LevelBlocEventAddNewWordToDictionaryImpl
    implements LevelBlocEventAddNewWordToDictionary {
  const _$LevelBlocEventAddNewWordToDictionaryImpl();

  @override
  String toString() {
    return 'LevelBlocEvent.addNewWordToDictionary()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LevelBlocEventAddNewWordToDictionaryImpl);
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
    required TResult Function(EnergyApplicationType energyApplicationType)
        endTurn,
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
    TResult? Function(EnergyApplicationType energyApplicationType)? endTurn,
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
    TResult Function(EnergyApplicationType energyApplicationType)? endTurn,
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
      _$LevelBlocEventAddNewWordToDictionaryImpl;
}

/// @nodoc
mixin _$LevelBlocState {
  CanvasDataModelId get id => throw _privateConstructorUsedError;
  CurrentWordModel get currentWord => throw _privateConstructorUsedError;
  Map<String, String> get words => throw _privateConstructorUsedError;
  String get latestWord => throw _privateConstructorUsedError;
  GamePhaseType get phaseType => throw _privateConstructorUsedError;
  EnergyMultiplierType get energyMultiplier =>
      throw _privateConstructorUsedError;

  /// ********************************************
  /// *      NON PERSISTENT
  /// ********************************************
  WordWarning get wordWarning => throw _privateConstructorUsedError;
  LevelFeaturesSettingsModel get featuresSettings =>
      throw _privateConstructorUsedError;

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
      EnergyMultiplierType energyMultiplier,
      WordWarning wordWarning,
      LevelFeaturesSettingsModel featuresSettings});

  $CanvasDataModelIdCopyWith<$Res> get id;
  $CurrentWordModelCopyWith<$Res> get currentWord;
  $LevelFeaturesSettingsModelCopyWith<$Res> get featuresSettings;
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
    Object? energyMultiplier = null,
    Object? wordWarning = null,
    Object? featuresSettings = null,
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
      energyMultiplier: null == energyMultiplier
          ? _value.energyMultiplier
          : energyMultiplier // ignore: cast_nullable_to_non_nullable
              as EnergyMultiplierType,
      wordWarning: null == wordWarning
          ? _value.wordWarning
          : wordWarning // ignore: cast_nullable_to_non_nullable
              as WordWarning,
      featuresSettings: null == featuresSettings
          ? _value.featuresSettings
          : featuresSettings // ignore: cast_nullable_to_non_nullable
              as LevelFeaturesSettingsModel,
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

  @override
  @pragma('vm:prefer-inline')
  $LevelFeaturesSettingsModelCopyWith<$Res> get featuresSettings {
    return $LevelFeaturesSettingsModelCopyWith<$Res>(_value.featuresSettings,
        (value) {
      return _then(_value.copyWith(featuresSettings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LevelBlocStateImplCopyWith<$Res>
    implements $LevelBlocStateCopyWith<$Res> {
  factory _$$LevelBlocStateImplCopyWith(_$LevelBlocStateImpl value,
          $Res Function(_$LevelBlocStateImpl) then) =
      __$$LevelBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CanvasDataModelId id,
      CurrentWordModel currentWord,
      Map<String, String> words,
      String latestWord,
      GamePhaseType phaseType,
      EnergyMultiplierType energyMultiplier,
      WordWarning wordWarning,
      LevelFeaturesSettingsModel featuresSettings});

  @override
  $CanvasDataModelIdCopyWith<$Res> get id;
  @override
  $CurrentWordModelCopyWith<$Res> get currentWord;
  @override
  $LevelFeaturesSettingsModelCopyWith<$Res> get featuresSettings;
}

/// @nodoc
class __$$LevelBlocStateImplCopyWithImpl<$Res>
    extends _$LevelBlocStateCopyWithImpl<$Res, _$LevelBlocStateImpl>
    implements _$$LevelBlocStateImplCopyWith<$Res> {
  __$$LevelBlocStateImplCopyWithImpl(
      _$LevelBlocStateImpl _value, $Res Function(_$LevelBlocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? currentWord = null,
    Object? words = null,
    Object? latestWord = null,
    Object? phaseType = null,
    Object? energyMultiplier = null,
    Object? wordWarning = null,
    Object? featuresSettings = null,
  }) {
    return _then(_$LevelBlocStateImpl(
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
      energyMultiplier: null == energyMultiplier
          ? _value.energyMultiplier
          : energyMultiplier // ignore: cast_nullable_to_non_nullable
              as EnergyMultiplierType,
      wordWarning: null == wordWarning
          ? _value.wordWarning
          : wordWarning // ignore: cast_nullable_to_non_nullable
              as WordWarning,
      featuresSettings: null == featuresSettings
          ? _value.featuresSettings
          : featuresSettings // ignore: cast_nullable_to_non_nullable
              as LevelFeaturesSettingsModel,
    ));
  }
}

/// @nodoc

class _$LevelBlocStateImpl implements _LevelBlocState {
  const _$LevelBlocStateImpl(
      {this.id = CanvasDataModelId.empty,
      this.currentWord = const CurrentWordModel(),
      final Map<String, String> words = const {},
      this.latestWord = '',
      this.phaseType = GamePhaseType.entryWord,
      this.energyMultiplier = EnergyMultiplierType.m1,
      this.wordWarning = WordWarning.none,
      this.featuresSettings = LevelFeaturesSettingsModel.empty})
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
  final EnergyMultiplierType energyMultiplier;

  /// ********************************************
  /// *      NON PERSISTENT
  /// ********************************************
  @override
  @JsonKey()
  final WordWarning wordWarning;
  @override
  @JsonKey()
  final LevelFeaturesSettingsModel featuresSettings;

  @override
  String toString() {
    return 'LevelBlocState(id: $id, currentWord: $currentWord, words: $words, latestWord: $latestWord, phaseType: $phaseType, energyMultiplier: $energyMultiplier, wordWarning: $wordWarning, featuresSettings: $featuresSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LevelBlocStateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.currentWord, currentWord) ||
                other.currentWord == currentWord) &&
            const DeepCollectionEquality().equals(other._words, _words) &&
            (identical(other.latestWord, latestWord) ||
                other.latestWord == latestWord) &&
            (identical(other.phaseType, phaseType) ||
                other.phaseType == phaseType) &&
            (identical(other.energyMultiplier, energyMultiplier) ||
                other.energyMultiplier == energyMultiplier) &&
            (identical(other.wordWarning, wordWarning) ||
                other.wordWarning == wordWarning) &&
            (identical(other.featuresSettings, featuresSettings) ||
                other.featuresSettings == featuresSettings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      currentWord,
      const DeepCollectionEquality().hash(_words),
      latestWord,
      phaseType,
      energyMultiplier,
      wordWarning,
      featuresSettings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LevelBlocStateImplCopyWith<_$LevelBlocStateImpl> get copyWith =>
      __$$LevelBlocStateImplCopyWithImpl<_$LevelBlocStateImpl>(
          this, _$identity);
}

abstract class _LevelBlocState implements LevelBlocState {
  const factory _LevelBlocState(
          {final CanvasDataModelId id,
          final CurrentWordModel currentWord,
          final Map<String, String> words,
          final String latestWord,
          final GamePhaseType phaseType,
          final EnergyMultiplierType energyMultiplier,
          final WordWarning wordWarning,
          final LevelFeaturesSettingsModel featuresSettings}) =
      _$LevelBlocStateImpl;

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
  EnergyMultiplierType get energyMultiplier;
  @override

  /// ********************************************
  /// *      NON PERSISTENT
  /// ********************************************
  WordWarning get wordWarning;
  @override
  LevelFeaturesSettingsModel get featuresSettings;
  @override
  @JsonKey(ignore: true)
  _$$LevelBlocStateImplCopyWith<_$LevelBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
