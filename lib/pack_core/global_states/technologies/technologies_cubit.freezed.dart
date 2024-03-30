// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'technologies_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TechnologiesCubitState {
  /// all available technologies in level
  Map<TechnologyModelId, TechnologyModel> get technologies =>
      throw _privateConstructorUsedError;
  TechnologyTreeProgressModel get progress =>
      throw _privateConstructorUsedError;

  /// when user is starting a game
  /// he may want to start simple game, without
  /// any "adventure" features, as technologies
  bool get isTechnologiesFeatureEnabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TechnologiesCubitStateCopyWith<TechnologiesCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TechnologiesCubitStateCopyWith<$Res> {
  factory $TechnologiesCubitStateCopyWith(TechnologiesCubitState value,
          $Res Function(TechnologiesCubitState) then) =
      _$TechnologiesCubitStateCopyWithImpl<$Res, TechnologiesCubitState>;
  @useResult
  $Res call(
      {Map<TechnologyModelId, TechnologyModel> technologies,
      TechnologyTreeProgressModel progress,
      bool isTechnologiesFeatureEnabled});

  $TechnologyTreeProgressModelCopyWith<$Res> get progress;
}

/// @nodoc
class _$TechnologiesCubitStateCopyWithImpl<$Res,
        $Val extends TechnologiesCubitState>
    implements $TechnologiesCubitStateCopyWith<$Res> {
  _$TechnologiesCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? technologies = null,
    Object? progress = null,
    Object? isTechnologiesFeatureEnabled = null,
  }) {
    return _then(_value.copyWith(
      technologies: null == technologies
          ? _value.technologies
          : technologies // ignore: cast_nullable_to_non_nullable
              as Map<TechnologyModelId, TechnologyModel>,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as TechnologyTreeProgressModel,
      isTechnologiesFeatureEnabled: null == isTechnologiesFeatureEnabled
          ? _value.isTechnologiesFeatureEnabled
          : isTechnologiesFeatureEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TechnologyTreeProgressModelCopyWith<$Res> get progress {
    return $TechnologyTreeProgressModelCopyWith<$Res>(_value.progress, (value) {
      return _then(_value.copyWith(progress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TechnologiesCubitStateImplCopyWith<$Res>
    implements $TechnologiesCubitStateCopyWith<$Res> {
  factory _$$TechnologiesCubitStateImplCopyWith(
          _$TechnologiesCubitStateImpl value,
          $Res Function(_$TechnologiesCubitStateImpl) then) =
      __$$TechnologiesCubitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<TechnologyModelId, TechnologyModel> technologies,
      TechnologyTreeProgressModel progress,
      bool isTechnologiesFeatureEnabled});

  @override
  $TechnologyTreeProgressModelCopyWith<$Res> get progress;
}

/// @nodoc
class __$$TechnologiesCubitStateImplCopyWithImpl<$Res>
    extends _$TechnologiesCubitStateCopyWithImpl<$Res,
        _$TechnologiesCubitStateImpl>
    implements _$$TechnologiesCubitStateImplCopyWith<$Res> {
  __$$TechnologiesCubitStateImplCopyWithImpl(
      _$TechnologiesCubitStateImpl _value,
      $Res Function(_$TechnologiesCubitStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? technologies = null,
    Object? progress = null,
    Object? isTechnologiesFeatureEnabled = null,
  }) {
    return _then(_$TechnologiesCubitStateImpl(
      technologies: null == technologies
          ? _value._technologies
          : technologies // ignore: cast_nullable_to_non_nullable
              as Map<TechnologyModelId, TechnologyModel>,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as TechnologyTreeProgressModel,
      isTechnologiesFeatureEnabled: null == isTechnologiesFeatureEnabled
          ? _value.isTechnologiesFeatureEnabled
          : isTechnologiesFeatureEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TechnologiesCubitStateImpl extends _TechnologiesCubitState {
  const _$TechnologiesCubitStateImpl(
      {final Map<TechnologyModelId, TechnologyModel> technologies = const {},
      this.progress = TechnologyTreeProgressModel.empty,
      this.isTechnologiesFeatureEnabled = false})
      : _technologies = technologies,
        super._();

  /// all available technologies in level
  final Map<TechnologyModelId, TechnologyModel> _technologies;

  /// all available technologies in level
  @override
  @JsonKey()
  Map<TechnologyModelId, TechnologyModel> get technologies {
    if (_technologies is EqualUnmodifiableMapView) return _technologies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_technologies);
  }

  @override
  @JsonKey()
  final TechnologyTreeProgressModel progress;

  /// when user is starting a game
  /// he may want to start simple game, without
  /// any "adventure" features, as technologies
  @override
  @JsonKey()
  final bool isTechnologiesFeatureEnabled;

  @override
  String toString() {
    return 'TechnologiesCubitState(technologies: $technologies, progress: $progress, isTechnologiesFeatureEnabled: $isTechnologiesFeatureEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TechnologiesCubitStateImpl &&
            const DeepCollectionEquality()
                .equals(other._technologies, _technologies) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.isTechnologiesFeatureEnabled,
                    isTechnologiesFeatureEnabled) ||
                other.isTechnologiesFeatureEnabled ==
                    isTechnologiesFeatureEnabled));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_technologies),
      progress,
      isTechnologiesFeatureEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TechnologiesCubitStateImplCopyWith<_$TechnologiesCubitStateImpl>
      get copyWith => __$$TechnologiesCubitStateImplCopyWithImpl<
          _$TechnologiesCubitStateImpl>(this, _$identity);
}

abstract class _TechnologiesCubitState extends TechnologiesCubitState {
  const factory _TechnologiesCubitState(
      {final Map<TechnologyModelId, TechnologyModel> technologies,
      final TechnologyTreeProgressModel progress,
      final bool isTechnologiesFeatureEnabled}) = _$TechnologiesCubitStateImpl;
  const _TechnologiesCubitState._() : super._();

  @override

  /// all available technologies in level
  Map<TechnologyModelId, TechnologyModel> get technologies;
  @override
  TechnologyTreeProgressModel get progress;
  @override

  /// when user is starting a game
  /// he may want to start simple game, without
  /// any "adventure" features, as technologies
  bool get isTechnologiesFeatureEnabled;
  @override
  @JsonKey(ignore: true)
  _$$TechnologiesCubitStateImplCopyWith<_$TechnologiesCubitStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
