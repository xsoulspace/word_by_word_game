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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnimationEntryModel {
  double get frameIndex => throw _privateConstructorUsedError;
  int get framesLength => throw _privateConstructorUsedError;
  List<String> get framesPaths => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnimationEntryModelCopyWith<AnimationEntryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimationEntryModelCopyWith<$Res> {
  factory $AnimationEntryModelCopyWith(
          AnimationEntryModel value, $Res Function(AnimationEntryModel) then) =
      _$AnimationEntryModelCopyWithImpl<$Res, AnimationEntryModel>;
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frameIndex = null,
    Object? framesLength = null,
    Object? framesPaths = null,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnimationEntryModelCopyWith<$Res>
    implements $AnimationEntryModelCopyWith<$Res> {
  factory _$$_AnimationEntryModelCopyWith(_$_AnimationEntryModel value,
          $Res Function(_$_AnimationEntryModel) then) =
      __$$_AnimationEntryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double frameIndex, int framesLength, List<String> framesPaths});
}

/// @nodoc
class __$$_AnimationEntryModelCopyWithImpl<$Res>
    extends _$AnimationEntryModelCopyWithImpl<$Res, _$_AnimationEntryModel>
    implements _$$_AnimationEntryModelCopyWith<$Res> {
  __$$_AnimationEntryModelCopyWithImpl(_$_AnimationEntryModel _value,
      $Res Function(_$_AnimationEntryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frameIndex = null,
    Object? framesLength = null,
    Object? framesPaths = null,
  }) {
    return _then(_$_AnimationEntryModel(
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
    ));
  }
}

/// @nodoc

class _$_AnimationEntryModel extends _AnimationEntryModel {
  const _$_AnimationEntryModel(
      {this.frameIndex = 0,
      this.framesLength = 0,
      final List<String> framesPaths = const []})
      : _framesPaths = framesPaths,
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnimationEntryModel &&
            (identical(other.frameIndex, frameIndex) ||
                other.frameIndex == frameIndex) &&
            (identical(other.framesLength, framesLength) ||
                other.framesLength == framesLength) &&
            const DeepCollectionEquality()
                .equals(other._framesPaths, _framesPaths));
  }

  @override
  int get hashCode => Object.hash(runtimeType, frameIndex, framesLength,
      const DeepCollectionEquality().hash(_framesPaths));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnimationEntryModelCopyWith<_$_AnimationEntryModel> get copyWith =>
      __$$_AnimationEntryModelCopyWithImpl<_$_AnimationEntryModel>(
          this, _$identity);
}

abstract class _AnimationEntryModel extends AnimationEntryModel {
  const factory _AnimationEntryModel(
      {final double frameIndex,
      final int framesLength,
      final List<String> framesPaths}) = _$_AnimationEntryModel;
  const _AnimationEntryModel._() : super._();

  @override
  double get frameIndex;
  @override
  int get framesLength;
  @override
  List<String> get framesPaths;
  @override
  @JsonKey(ignore: true)
  _$$_AnimationEntryModelCopyWith<_$_AnimationEntryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameRendererConfig {
  int get animationSpeed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameRendererConfigCopyWith<GameRendererConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameRendererConfigCopyWith<$Res> {
  factory $GameRendererConfigCopyWith(
          GameRendererConfig value, $Res Function(GameRendererConfig) then) =
      _$GameRendererConfigCopyWithImpl<$Res, GameRendererConfig>;
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? animationSpeed = null,
  }) {
    return _then(_value.copyWith(
      animationSpeed: null == animationSpeed
          ? _value.animationSpeed
          : animationSpeed // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GameRendererConfigCopyWith<$Res>
    implements $GameRendererConfigCopyWith<$Res> {
  factory _$$_GameRendererConfigCopyWith(_$_GameRendererConfig value,
          $Res Function(_$_GameRendererConfig) then) =
      __$$_GameRendererConfigCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int animationSpeed});
}

/// @nodoc
class __$$_GameRendererConfigCopyWithImpl<$Res>
    extends _$GameRendererConfigCopyWithImpl<$Res, _$_GameRendererConfig>
    implements _$$_GameRendererConfigCopyWith<$Res> {
  __$$_GameRendererConfigCopyWithImpl(
      _$_GameRendererConfig _value, $Res Function(_$_GameRendererConfig) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? animationSpeed = null,
  }) {
    return _then(_$_GameRendererConfig(
      animationSpeed: null == animationSpeed
          ? _value.animationSpeed
          : animationSpeed // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GameRendererConfig implements _GameRendererConfig {
  const _$_GameRendererConfig({this.animationSpeed = 8});

  @override
  @JsonKey()
  final int animationSpeed;

  @override
  String toString() {
    return 'GameRendererConfig(animationSpeed: $animationSpeed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameRendererConfig &&
            (identical(other.animationSpeed, animationSpeed) ||
                other.animationSpeed == animationSpeed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, animationSpeed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameRendererConfigCopyWith<_$_GameRendererConfig> get copyWith =>
      __$$_GameRendererConfigCopyWithImpl<_$_GameRendererConfig>(
          this, _$identity);
}

abstract class _GameRendererConfig implements GameRendererConfig {
  const factory _GameRendererConfig({final int animationSpeed}) =
      _$_GameRendererConfig;

  @override
  int get animationSpeed;
  @override
  @JsonKey(ignore: true)
  _$$_GameRendererConfigCopyWith<_$_GameRendererConfig> get copyWith =>
      throw _privateConstructorUsedError;
}
