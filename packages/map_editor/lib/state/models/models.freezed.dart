// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AnimationEntryModel {
  double get frameIndex => throw _privateConstructorUsedError;
  int get framesLength => throw _privateConstructorUsedError;
  List<String> get framesPaths => throw _privateConstructorUsedError;

  /// Create a copy of AnimationEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnimationEntryModelCopyWith<AnimationEntryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimationEntryModelCopyWith<$Res> {
  factory $AnimationEntryModelCopyWith(
    AnimationEntryModel value,
    $Res Function(AnimationEntryModel) then,
  ) = _$AnimationEntryModelCopyWithImpl<$Res, AnimationEntryModel>;
  @useResult
  $Res call({double frameIndex, int framesLength, List<String> framesPaths});
}

/// @nodoc
class _$AnimationEntryModelCopyWithImpl<$Res, $Val extends AnimationEntryModel>
    implements $AnimationEntryModelCopyWith<$Res> {
  _$AnimationEntryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnimationEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frameIndex = null,
    Object? framesLength = null,
    Object? framesPaths = null,
  }) {
    return _then(
      _value.copyWith(
            frameIndex: null == frameIndex
                ? _value.frameIndex
                : frameIndex // ignore: cast_nullable_to_non_nullable
                      as double,
            framesLength: null == framesLength
                ? _value.framesLength
                : framesLength // ignore: cast_nullable_to_non_nullable
                      as int,
            framesPaths: null == framesPaths
                ? _value.framesPaths
                : framesPaths // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AnimationEntryModelImplCopyWith<$Res>
    implements $AnimationEntryModelCopyWith<$Res> {
  factory _$$AnimationEntryModelImplCopyWith(
    _$AnimationEntryModelImpl value,
    $Res Function(_$AnimationEntryModelImpl) then,
  ) = __$$AnimationEntryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double frameIndex, int framesLength, List<String> framesPaths});
}

/// @nodoc
class __$$AnimationEntryModelImplCopyWithImpl<$Res>
    extends _$AnimationEntryModelCopyWithImpl<$Res, _$AnimationEntryModelImpl>
    implements _$$AnimationEntryModelImplCopyWith<$Res> {
  __$$AnimationEntryModelImplCopyWithImpl(
    _$AnimationEntryModelImpl _value,
    $Res Function(_$AnimationEntryModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AnimationEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frameIndex = null,
    Object? framesLength = null,
    Object? framesPaths = null,
  }) {
    return _then(
      _$AnimationEntryModelImpl(
        frameIndex: null == frameIndex
            ? _value.frameIndex
            : frameIndex // ignore: cast_nullable_to_non_nullable
                  as double,
        framesLength: null == framesLength
            ? _value.framesLength
            : framesLength // ignore: cast_nullable_to_non_nullable
                  as int,
        framesPaths: null == framesPaths
            ? _value._framesPaths
            : framesPaths // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc

class _$AnimationEntryModelImpl extends _AnimationEntryModel {
  const _$AnimationEntryModelImpl({
    this.frameIndex = 0,
    this.framesLength = 0,
    final List<String> framesPaths = const [],
  }) : _framesPaths = framesPaths,
       super._();

  @override
  @JsonKey()
  final double frameIndex;
  @override
  @JsonKey()
  final int framesLength;
  final List<String> _framesPaths;
  @override
  @JsonKey()
  List<String> get framesPaths {
    if (_framesPaths is EqualUnmodifiableListView) return _framesPaths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_framesPaths);
  }

  @override
  String toString() {
    return 'AnimationEntryModel(frameIndex: $frameIndex, framesLength: $framesLength, framesPaths: $framesPaths)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnimationEntryModelImpl &&
            (identical(other.frameIndex, frameIndex) ||
                other.frameIndex == frameIndex) &&
            (identical(other.framesLength, framesLength) ||
                other.framesLength == framesLength) &&
            const DeepCollectionEquality().equals(
              other._framesPaths,
              _framesPaths,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    frameIndex,
    framesLength,
    const DeepCollectionEquality().hash(_framesPaths),
  );

  /// Create a copy of AnimationEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnimationEntryModelImplCopyWith<_$AnimationEntryModelImpl> get copyWith =>
      __$$AnimationEntryModelImplCopyWithImpl<_$AnimationEntryModelImpl>(
        this,
        _$identity,
      );
}

abstract class _AnimationEntryModel extends AnimationEntryModel {
  const factory _AnimationEntryModel({
    final double frameIndex,
    final int framesLength,
    final List<String> framesPaths,
  }) = _$AnimationEntryModelImpl;
  const _AnimationEntryModel._() : super._();

  @override
  double get frameIndex;
  @override
  int get framesLength;
  @override
  List<String> get framesPaths;

  /// Create a copy of AnimationEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnimationEntryModelImplCopyWith<_$AnimationEntryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameRendererConfig {
  int get animationSpeed => throw _privateConstructorUsedError;

  /// Create a copy of GameRendererConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameRendererConfigCopyWith<GameRendererConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameRendererConfigCopyWith<$Res> {
  factory $GameRendererConfigCopyWith(
    GameRendererConfig value,
    $Res Function(GameRendererConfig) then,
  ) = _$GameRendererConfigCopyWithImpl<$Res, GameRendererConfig>;
  @useResult
  $Res call({int animationSpeed});
}

/// @nodoc
class _$GameRendererConfigCopyWithImpl<$Res, $Val extends GameRendererConfig>
    implements $GameRendererConfigCopyWith<$Res> {
  _$GameRendererConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameRendererConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? animationSpeed = null}) {
    return _then(
      _value.copyWith(
            animationSpeed: null == animationSpeed
                ? _value.animationSpeed
                : animationSpeed // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GameRendererConfigImplCopyWith<$Res>
    implements $GameRendererConfigCopyWith<$Res> {
  factory _$$GameRendererConfigImplCopyWith(
    _$GameRendererConfigImpl value,
    $Res Function(_$GameRendererConfigImpl) then,
  ) = __$$GameRendererConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int animationSpeed});
}

/// @nodoc
class __$$GameRendererConfigImplCopyWithImpl<$Res>
    extends _$GameRendererConfigCopyWithImpl<$Res, _$GameRendererConfigImpl>
    implements _$$GameRendererConfigImplCopyWith<$Res> {
  __$$GameRendererConfigImplCopyWithImpl(
    _$GameRendererConfigImpl _value,
    $Res Function(_$GameRendererConfigImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameRendererConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? animationSpeed = null}) {
    return _then(
      _$GameRendererConfigImpl(
        animationSpeed: null == animationSpeed
            ? _value.animationSpeed
            : animationSpeed // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$GameRendererConfigImpl implements _GameRendererConfig {
  const _$GameRendererConfigImpl({this.animationSpeed = 8});

  @override
  @JsonKey()
  final int animationSpeed;

  @override
  String toString() {
    return 'GameRendererConfig(animationSpeed: $animationSpeed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameRendererConfigImpl &&
            (identical(other.animationSpeed, animationSpeed) ||
                other.animationSpeed == animationSpeed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, animationSpeed);

  /// Create a copy of GameRendererConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameRendererConfigImplCopyWith<_$GameRendererConfigImpl> get copyWith =>
      __$$GameRendererConfigImplCopyWithImpl<_$GameRendererConfigImpl>(
        this,
        _$identity,
      );
}

abstract class _GameRendererConfig implements GameRendererConfig {
  const factory _GameRendererConfig({final int animationSpeed}) =
      _$GameRendererConfigImpl;

  @override
  int get animationSpeed;

  /// Create a copy of GameRendererConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameRendererConfigImplCopyWith<_$GameRendererConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
