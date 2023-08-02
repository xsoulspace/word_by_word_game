// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'states_statuses_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StatesStatusesCubitState {
  /// global statuses
  /// - loading
  /// -- level
  /// -- players
  /// -- resources
  /// - playing
  /// - paused
  Set<LevelPartName> get loadedLevelParts => throw _privateConstructorUsedError;
  LevelStateStatus get levelStateStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StatesStatusesCubitStateCopyWith<StatesStatusesCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatesStatusesCubitStateCopyWith<$Res> {
  factory $StatesStatusesCubitStateCopyWith(StatesStatusesCubitState value,
          $Res Function(StatesStatusesCubitState) then) =
      _$StatesStatusesCubitStateCopyWithImpl<$Res, StatesStatusesCubitState>;
  @useResult
  $Res call(
      {Set<LevelPartName> loadedLevelParts, LevelStateStatus levelStateStatus});
}

/// @nodoc
class _$StatesStatusesCubitStateCopyWithImpl<$Res,
        $Val extends StatesStatusesCubitState>
    implements $StatesStatusesCubitStateCopyWith<$Res> {
  _$StatesStatusesCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadedLevelParts = null,
    Object? levelStateStatus = null,
  }) {
    return _then(_value.copyWith(
      loadedLevelParts: null == loadedLevelParts
          ? _value.loadedLevelParts
          : loadedLevelParts // ignore: cast_nullable_to_non_nullable
              as Set<LevelPartName>,
      levelStateStatus: null == levelStateStatus
          ? _value.levelStateStatus
          : levelStateStatus // ignore: cast_nullable_to_non_nullable
              as LevelStateStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StatesStatusesCubitStateCopyWith<$Res>
    implements $StatesStatusesCubitStateCopyWith<$Res> {
  factory _$$_StatesStatusesCubitStateCopyWith(
          _$_StatesStatusesCubitState value,
          $Res Function(_$_StatesStatusesCubitState) then) =
      __$$_StatesStatusesCubitStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Set<LevelPartName> loadedLevelParts, LevelStateStatus levelStateStatus});
}

/// @nodoc
class __$$_StatesStatusesCubitStateCopyWithImpl<$Res>
    extends _$StatesStatusesCubitStateCopyWithImpl<$Res,
        _$_StatesStatusesCubitState>
    implements _$$_StatesStatusesCubitStateCopyWith<$Res> {
  __$$_StatesStatusesCubitStateCopyWithImpl(_$_StatesStatusesCubitState _value,
      $Res Function(_$_StatesStatusesCubitState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadedLevelParts = null,
    Object? levelStateStatus = null,
  }) {
    return _then(_$_StatesStatusesCubitState(
      loadedLevelParts: null == loadedLevelParts
          ? _value._loadedLevelParts
          : loadedLevelParts // ignore: cast_nullable_to_non_nullable
              as Set<LevelPartName>,
      levelStateStatus: null == levelStateStatus
          ? _value.levelStateStatus
          : levelStateStatus // ignore: cast_nullable_to_non_nullable
              as LevelStateStatus,
    ));
  }
}

/// @nodoc

class _$_StatesStatusesCubitState implements _StatesStatusesCubitState {
  const _$_StatesStatusesCubitState(
      {final Set<LevelPartName> loadedLevelParts = const {},
      this.levelStateStatus = LevelStateStatus.loading})
      : _loadedLevelParts = loadedLevelParts;

  /// global statuses
  /// - loading
  /// -- level
  /// -- players
  /// -- resources
  /// - playing
  /// - paused
  final Set<LevelPartName> _loadedLevelParts;

  /// global statuses
  /// - loading
  /// -- level
  /// -- players
  /// -- resources
  /// - playing
  /// - paused
  @override
  @JsonKey()
  Set<LevelPartName> get loadedLevelParts {
    if (_loadedLevelParts is EqualUnmodifiableSetView) return _loadedLevelParts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_loadedLevelParts);
  }

  @override
  @JsonKey()
  final LevelStateStatus levelStateStatus;

  @override
  String toString() {
    return 'StatesStatusesCubitState(loadedLevelParts: $loadedLevelParts, levelStateStatus: $levelStateStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatesStatusesCubitState &&
            const DeepCollectionEquality()
                .equals(other._loadedLevelParts, _loadedLevelParts) &&
            (identical(other.levelStateStatus, levelStateStatus) ||
                other.levelStateStatus == levelStateStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_loadedLevelParts), levelStateStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatesStatusesCubitStateCopyWith<_$_StatesStatusesCubitState>
      get copyWith => __$$_StatesStatusesCubitStateCopyWithImpl<
          _$_StatesStatusesCubitState>(this, _$identity);
}

abstract class _StatesStatusesCubitState implements StatesStatusesCubitState {
  const factory _StatesStatusesCubitState(
      {final Set<LevelPartName> loadedLevelParts,
      final LevelStateStatus levelStateStatus}) = _$_StatesStatusesCubitState;

  @override

  /// global statuses
  /// - loading
  /// -- level
  /// -- players
  /// -- resources
  /// - playing
  /// - paused
  Set<LevelPartName> get loadedLevelParts;
  @override
  LevelStateStatus get levelStateStatus;
  @override
  @JsonKey(ignore: true)
  _$$_StatesStatusesCubitStateCopyWith<_$_StatesStatusesCubitState>
      get copyWith => throw _privateConstructorUsedError;
}
