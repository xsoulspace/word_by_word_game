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
    required TResult Function(int index) decreaseMiddlePart,
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
    TResult? Function(int index)? decreaseMiddlePart,
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
    TResult Function(int index)? decreaseMiddlePart,
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
    required TResult Function(LevelBlocEventDecreaseMiddlePart value)
        decreaseMiddlePart,
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
    TResult? Function(LevelBlocEventDecreaseMiddlePart value)?
        decreaseMiddlePart,
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
    TResult Function(LevelBlocEventDecreaseMiddlePart value)?
        decreaseMiddlePart,
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
    required TResult Function(int index) decreaseMiddlePart,
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
    TResult? Function(int index)? decreaseMiddlePart,
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
    TResult Function(int index)? decreaseMiddlePart,
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
    required TResult Function(LevelBlocEventDecreaseMiddlePart value)
        decreaseMiddlePart,
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
    TResult? Function(LevelBlocEventDecreaseMiddlePart value)?
        decreaseMiddlePart,
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
    TResult Function(LevelBlocEventDecreaseMiddlePart value)?
        decreaseMiddlePart,
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
    required TResult Function(int index) decreaseMiddlePart,
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
    TResult? Function(int index)? decreaseMiddlePart,
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
    TResult Function(int index)? decreaseMiddlePart,
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
    required TResult Function(LevelBlocEventDecreaseMiddlePart value)
        decreaseMiddlePart,
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
    TResult? Function(LevelBlocEventDecreaseMiddlePart value)?
        decreaseMiddlePart,
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
    TResult Function(LevelBlocEventDecreaseMiddlePart value)?
        decreaseMiddlePart,
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
    required TResult Function(int index) decreaseMiddlePart,
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
    TResult? Function(int index)? decreaseMiddlePart,
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
    TResult Function(int index)? decreaseMiddlePart,
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
    required TResult Function(LevelBlocEventDecreaseMiddlePart value)
        decreaseMiddlePart,
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
    TResult? Function(LevelBlocEventDecreaseMiddlePart value)?
        decreaseMiddlePart,
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
    TResult Function(LevelBlocEventDecreaseMiddlePart value)?
        decreaseMiddlePart,
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
    required TResult Function(int index) decreaseMiddlePart,
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
    TResult? Function(int index)? decreaseMiddlePart,
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
    TResult Function(int index)? decreaseMiddlePart,
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
    required TResult Function(LevelBlocEventDecreaseMiddlePart value)
        decreaseMiddlePart,
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
    TResult? Function(LevelBlocEventDecreaseMiddlePart value)?
        decreaseMiddlePart,
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
    TResult Function(LevelBlocEventDecreaseMiddlePart value)?
        decreaseMiddlePart,
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
    required TResult Function(int index) decreaseMiddlePart,
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
    TResult? Function(int index)? decreaseMiddlePart,
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
    TResult Function(int index)? decreaseMiddlePart,
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
    required TResult Function(LevelBlocEventDecreaseMiddlePart value)
        decreaseMiddlePart,
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
    TResult? Function(LevelBlocEventDecreaseMiddlePart value)?
        decreaseMiddlePart,
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
    TResult Function(LevelBlocEventDecreaseMiddlePart value)?
        decreaseMiddlePart,
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
    required TResult Function(int index) decreaseMiddlePart,
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
    TResult? Function(int index)? decreaseMiddlePart,
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
    TResult Function(int index)? decreaseMiddlePart,
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
    required TResult Function(LevelBlocEventDecreaseMiddlePart value)
        decreaseMiddlePart,
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
    TResult? Function(LevelBlocEventDecreaseMiddlePart value)?
        decreaseMiddlePart,
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
    TResult Function(LevelBlocEventDecreaseMiddlePart value)?
        decreaseMiddlePart,
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
    required TResult Function(int index) decreaseMiddlePart,
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
    TResult? Function(int index)? decreaseMiddlePart,
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
    TResult Function(int index)? decreaseMiddlePart,
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
    required TResult Function(LevelBlocEventDecreaseMiddlePart value)
        decreaseMiddlePart,
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
    TResult? Function(LevelBlocEventDecreaseMiddlePart value)?
        decreaseMiddlePart,
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
    TResult Function(LevelBlocEventDecreaseMiddlePart value)?
        decreaseMiddlePart,
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
    required TResult Function(int index) decreaseMiddlePart,
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
    TResult? Function(int index)? decreaseMiddlePart,
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
    TResult Function(int index)? decreaseMiddlePart,
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
    required TResult Function(LevelBlocEventDecreaseMiddlePart value)
        decreaseMiddlePart,
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
    TResult? Function(LevelBlocEventDecreaseMiddlePart value)?
        decreaseMiddlePart,
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
    TResult Function(LevelBlocEventDecreaseMiddlePart value)?
        decreaseMiddlePart,
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
abstract class _$$LevelBlocEventDecreaseMiddlePartCopyWith<$Res> {
  factory _$$LevelBlocEventDecreaseMiddlePartCopyWith(
          _$LevelBlocEventDecreaseMiddlePart value,
          $Res Function(_$LevelBlocEventDecreaseMiddlePart) then) =
      __$$LevelBlocEventDecreaseMiddlePartCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$LevelBlocEventDecreaseMiddlePartCopyWithImpl<$Res>
    extends _$LevelBlocEventCopyWithImpl<$Res,
        _$LevelBlocEventDecreaseMiddlePart>
    implements _$$LevelBlocEventDecreaseMiddlePartCopyWith<$Res> {
  __$$LevelBlocEventDecreaseMiddlePartCopyWithImpl(
      _$LevelBlocEventDecreaseMiddlePart _value,
      $Res Function(_$LevelBlocEventDecreaseMiddlePart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$LevelBlocEventDecreaseMiddlePart(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LevelBlocEventDecreaseMiddlePart
    implements LevelBlocEventDecreaseMiddlePart {
  const _$LevelBlocEventDecreaseMiddlePart({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'LevelBlocEvent.decreaseMiddlePart(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LevelBlocEventDecreaseMiddlePart &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LevelBlocEventDecreaseMiddlePartCopyWith<
          _$LevelBlocEventDecreaseMiddlePart>
      get copyWith => __$$LevelBlocEventDecreaseMiddlePartCopyWithImpl<
          _$LevelBlocEventDecreaseMiddlePart>(this, _$identity);

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
    required TResult Function(int index) decreaseMiddlePart,
  }) {
    return decreaseMiddlePart(index);
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
    TResult? Function(int index)? decreaseMiddlePart,
  }) {
    return decreaseMiddlePart?.call(index);
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
    TResult Function(int index)? decreaseMiddlePart,
    required TResult orElse(),
  }) {
    if (decreaseMiddlePart != null) {
      return decreaseMiddlePart(index);
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
    required TResult Function(LevelBlocEventDecreaseMiddlePart value)
        decreaseMiddlePart,
  }) {
    return decreaseMiddlePart(this);
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
    TResult? Function(LevelBlocEventDecreaseMiddlePart value)?
        decreaseMiddlePart,
  }) {
    return decreaseMiddlePart?.call(this);
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
    TResult Function(LevelBlocEventDecreaseMiddlePart value)?
        decreaseMiddlePart,
    required TResult orElse(),
  }) {
    if (decreaseMiddlePart != null) {
      return decreaseMiddlePart(this);
    }
    return orElse();
  }
}

abstract class LevelBlocEventDecreaseMiddlePart implements LevelBlocEvent {
  const factory LevelBlocEventDecreaseMiddlePart({required final int index}) =
      _$LevelBlocEventDecreaseMiddlePart;

  int get index;
  @JsonKey(ignore: true)
  _$$LevelBlocEventDecreaseMiddlePartCopyWith<
          _$LevelBlocEventDecreaseMiddlePart>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LevelBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            String id,
            LocalizedMap name,
            CurrentWordModel currentWord,
            Map<String, String> words,
            String latestWord,
            GamePhaseType phaseType,
            EnergyMultiplierType actionMultiplier,
            WordWarning wordWarning)
        live,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            String id,
            LocalizedMap name,
            CurrentWordModel currentWord,
            Map<String, String> words,
            String latestWord,
            GamePhaseType phaseType,
            EnergyMultiplierType actionMultiplier,
            WordWarning wordWarning)?
        live,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            String id,
            LocalizedMap name,
            CurrentWordModel currentWord,
            Map<String, String> words,
            String latestWord,
            GamePhaseType phaseType,
            EnergyMultiplierType actionMultiplier,
            WordWarning wordWarning)?
        live,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyLevelBlocState value) empty,
    required TResult Function(LiveLevelBlocState value) live,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyLevelBlocState value)? empty,
    TResult? Function(LiveLevelBlocState value)? live,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyLevelBlocState value)? empty,
    TResult Function(LiveLevelBlocState value)? live,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LevelBlocStateCopyWith<$Res> {
  factory $LevelBlocStateCopyWith(
          LevelBlocState value, $Res Function(LevelBlocState) then) =
      _$LevelBlocStateCopyWithImpl<$Res, LevelBlocState>;
}

/// @nodoc
class _$LevelBlocStateCopyWithImpl<$Res, $Val extends LevelBlocState>
    implements $LevelBlocStateCopyWith<$Res> {
  _$LevelBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmptyLevelBlocStateCopyWith<$Res> {
  factory _$$EmptyLevelBlocStateCopyWith(_$EmptyLevelBlocState value,
          $Res Function(_$EmptyLevelBlocState) then) =
      __$$EmptyLevelBlocStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyLevelBlocStateCopyWithImpl<$Res>
    extends _$LevelBlocStateCopyWithImpl<$Res, _$EmptyLevelBlocState>
    implements _$$EmptyLevelBlocStateCopyWith<$Res> {
  __$$EmptyLevelBlocStateCopyWithImpl(
      _$EmptyLevelBlocState _value, $Res Function(_$EmptyLevelBlocState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyLevelBlocState implements EmptyLevelBlocState {
  const _$EmptyLevelBlocState();

  @override
  String toString() {
    return 'LevelBlocState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyLevelBlocState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            String id,
            LocalizedMap name,
            CurrentWordModel currentWord,
            Map<String, String> words,
            String latestWord,
            GamePhaseType phaseType,
            EnergyMultiplierType actionMultiplier,
            WordWarning wordWarning)
        live,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            String id,
            LocalizedMap name,
            CurrentWordModel currentWord,
            Map<String, String> words,
            String latestWord,
            GamePhaseType phaseType,
            EnergyMultiplierType actionMultiplier,
            WordWarning wordWarning)?
        live,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            String id,
            LocalizedMap name,
            CurrentWordModel currentWord,
            Map<String, String> words,
            String latestWord,
            GamePhaseType phaseType,
            EnergyMultiplierType actionMultiplier,
            WordWarning wordWarning)?
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
    required TResult Function(EmptyLevelBlocState value) empty,
    required TResult Function(LiveLevelBlocState value) live,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyLevelBlocState value)? empty,
    TResult? Function(LiveLevelBlocState value)? live,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyLevelBlocState value)? empty,
    TResult Function(LiveLevelBlocState value)? live,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyLevelBlocState implements LevelBlocState {
  const factory EmptyLevelBlocState() = _$EmptyLevelBlocState;
}

/// @nodoc
abstract class _$$LiveLevelBlocStateCopyWith<$Res> {
  factory _$$LiveLevelBlocStateCopyWith(_$LiveLevelBlocState value,
          $Res Function(_$LiveLevelBlocState) then) =
      __$$LiveLevelBlocStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String id,
      LocalizedMap name,
      CurrentWordModel currentWord,
      Map<String, String> words,
      String latestWord,
      GamePhaseType phaseType,
      EnergyMultiplierType actionMultiplier,
      WordWarning wordWarning});

  $LocalizedMapCopyWith<$Res> get name;
  $CurrentWordModelCopyWith<$Res> get currentWord;
}

/// @nodoc
class __$$LiveLevelBlocStateCopyWithImpl<$Res>
    extends _$LevelBlocStateCopyWithImpl<$Res, _$LiveLevelBlocState>
    implements _$$LiveLevelBlocStateCopyWith<$Res> {
  __$$LiveLevelBlocStateCopyWithImpl(
      _$LiveLevelBlocState _value, $Res Function(_$LiveLevelBlocState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? currentWord = null,
    Object? words = null,
    Object? latestWord = null,
    Object? phaseType = null,
    Object? actionMultiplier = null,
    Object? wordWarning = null,
  }) {
    return _then(_$LiveLevelBlocState(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as LocalizedMap,
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

  @override
  @pragma('vm:prefer-inline')
  $LocalizedMapCopyWith<$Res> get name {
    return $LocalizedMapCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentWordModelCopyWith<$Res> get currentWord {
    return $CurrentWordModelCopyWith<$Res>(_value.currentWord, (value) {
      return _then(_value.copyWith(currentWord: value));
    });
  }
}

/// @nodoc

class _$LiveLevelBlocState implements LiveLevelBlocState {
  const _$LiveLevelBlocState(
      {required this.id,
      this.name = LocalizedMap.empty,
      this.currentWord = const CurrentWordModel(),
      final Map<String, String> words = const {},
      this.latestWord = '',
      this.phaseType = GamePhaseType.entryWord,
      this.actionMultiplier = EnergyMultiplierType.m1,
      this.wordWarning = WordWarning.none})
      : _words = words;

  @override
  final String id;
  @override
  @JsonKey()
  final LocalizedMap name;
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
    return 'LevelBlocState.live(id: $id, name: $name, currentWord: $currentWord, words: $words, latestWord: $latestWord, phaseType: $phaseType, actionMultiplier: $actionMultiplier, wordWarning: $wordWarning)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LiveLevelBlocState &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
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
      name,
      currentWord,
      const DeepCollectionEquality().hash(_words),
      latestWord,
      phaseType,
      actionMultiplier,
      wordWarning);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LiveLevelBlocStateCopyWith<_$LiveLevelBlocState> get copyWith =>
      __$$LiveLevelBlocStateCopyWithImpl<_$LiveLevelBlocState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            String id,
            LocalizedMap name,
            CurrentWordModel currentWord,
            Map<String, String> words,
            String latestWord,
            GamePhaseType phaseType,
            EnergyMultiplierType actionMultiplier,
            WordWarning wordWarning)
        live,
  }) {
    return live(id, name, currentWord, words, latestWord, phaseType,
        actionMultiplier, wordWarning);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            String id,
            LocalizedMap name,
            CurrentWordModel currentWord,
            Map<String, String> words,
            String latestWord,
            GamePhaseType phaseType,
            EnergyMultiplierType actionMultiplier,
            WordWarning wordWarning)?
        live,
  }) {
    return live?.call(id, name, currentWord, words, latestWord, phaseType,
        actionMultiplier, wordWarning);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            String id,
            LocalizedMap name,
            CurrentWordModel currentWord,
            Map<String, String> words,
            String latestWord,
            GamePhaseType phaseType,
            EnergyMultiplierType actionMultiplier,
            WordWarning wordWarning)?
        live,
    required TResult orElse(),
  }) {
    if (live != null) {
      return live(id, name, currentWord, words, latestWord, phaseType,
          actionMultiplier, wordWarning);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyLevelBlocState value) empty,
    required TResult Function(LiveLevelBlocState value) live,
  }) {
    return live(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyLevelBlocState value)? empty,
    TResult? Function(LiveLevelBlocState value)? live,
  }) {
    return live?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyLevelBlocState value)? empty,
    TResult Function(LiveLevelBlocState value)? live,
    required TResult orElse(),
  }) {
    if (live != null) {
      return live(this);
    }
    return orElse();
  }
}

abstract class LiveLevelBlocState implements LevelBlocState {
  const factory LiveLevelBlocState(
      {required final String id,
      final LocalizedMap name,
      final CurrentWordModel currentWord,
      final Map<String, String> words,
      final String latestWord,
      final GamePhaseType phaseType,
      final EnergyMultiplierType actionMultiplier,
      final WordWarning wordWarning}) = _$LiveLevelBlocState;

  String get id;
  LocalizedMap get name;
  CurrentWordModel get currentWord;
  Map<String, String> get words;
  String get latestWord;
  GamePhaseType get phaseType;
  EnergyMultiplierType get actionMultiplier;

  /// ********************************************
  /// *      NON PERSISTENT
  /// ********************************************
  WordWarning get wordWarning;
  @JsonKey(ignore: true)
  _$$LiveLevelBlocStateCopyWith<_$LiveLevelBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}
