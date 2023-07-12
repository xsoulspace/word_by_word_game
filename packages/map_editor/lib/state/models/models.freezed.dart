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

TileDataModel _$TileDataModelFromJson(Map<String, dynamic> json) {
  return _TileDataModel.fromJson(json);
}

/// @nodoc
mixin _$TileDataModel {
  TileStyle get style => throw _privateConstructorUsedError;
  TileStyle? get menu => throw _privateConstructorUsedError;
  @JsonKey(name: 'menu_surf')
  String get menuSurface => throw _privateConstructorUsedError;
  String get preview => throw _privateConstructorUsedError;
  String get graphics => throw _privateConstructorUsedError;
  TileType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TileDataModelCopyWith<TileDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TileDataModelCopyWith<$Res> {
  factory $TileDataModelCopyWith(
          TileDataModel value, $Res Function(TileDataModel) then) =
      _$TileDataModelCopyWithImpl<$Res, TileDataModel>;
  @useResult
  $Res call(
      {TileStyle style,
      TileStyle? menu,
      @JsonKey(name: 'menu_surf') String menuSurface,
      String preview,
      String graphics,
      TileType type});
}

/// @nodoc
class _$TileDataModelCopyWithImpl<$Res, $Val extends TileDataModel>
    implements $TileDataModelCopyWith<$Res> {
  _$TileDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? style = null,
    Object? menu = freezed,
    Object? menuSurface = null,
    Object? preview = null,
    Object? graphics = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as TileStyle,
      menu: freezed == menu
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as TileStyle?,
      menuSurface: null == menuSurface
          ? _value.menuSurface
          : menuSurface // ignore: cast_nullable_to_non_nullable
              as String,
      preview: null == preview
          ? _value.preview
          : preview // ignore: cast_nullable_to_non_nullable
              as String,
      graphics: null == graphics
          ? _value.graphics
          : graphics // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TileType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TileDataModelCopyWith<$Res>
    implements $TileDataModelCopyWith<$Res> {
  factory _$$_TileDataModelCopyWith(
          _$_TileDataModel value, $Res Function(_$_TileDataModel) then) =
      __$$_TileDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TileStyle style,
      TileStyle? menu,
      @JsonKey(name: 'menu_surf') String menuSurface,
      String preview,
      String graphics,
      TileType type});
}

/// @nodoc
class __$$_TileDataModelCopyWithImpl<$Res>
    extends _$TileDataModelCopyWithImpl<$Res, _$_TileDataModel>
    implements _$$_TileDataModelCopyWith<$Res> {
  __$$_TileDataModelCopyWithImpl(
      _$_TileDataModel _value, $Res Function(_$_TileDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? style = null,
    Object? menu = freezed,
    Object? menuSurface = null,
    Object? preview = null,
    Object? graphics = null,
    Object? type = null,
  }) {
    return _then(_$_TileDataModel(
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as TileStyle,
      menu: freezed == menu
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as TileStyle?,
      menuSurface: null == menuSurface
          ? _value.menuSurface
          : menuSurface // ignore: cast_nullable_to_non_nullable
              as String,
      preview: null == preview
          ? _value.preview
          : preview // ignore: cast_nullable_to_non_nullable
              as String,
      graphics: null == graphics
          ? _value.graphics
          : graphics // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TileType,
    ));
  }
}

/// @nodoc

@Deprecated('')
@JsonSerializable(explicitToJson: true)
class _$_TileDataModel implements _TileDataModel {
  const _$_TileDataModel(
      {required this.style,
      this.menu,
      @JsonKey(name: 'menu_surf') this.menuSurface = '',
      this.preview = '',
      this.graphics = '',
      this.type = TileType.autotile});

  factory _$_TileDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_TileDataModelFromJson(json);

  @override
  final TileStyle style;
  @override
  final TileStyle? menu;
  @override
  @JsonKey(name: 'menu_surf')
  final String menuSurface;
  @override
  @JsonKey()
  final String preview;
  @override
  @JsonKey()
  final String graphics;
  @override
  @JsonKey()
  final TileType type;

  @override
  String toString() {
    return 'TileDataModel(style: $style, menu: $menu, menuSurface: $menuSurface, preview: $preview, graphics: $graphics, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TileDataModel &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.menu, menu) || other.menu == menu) &&
            (identical(other.menuSurface, menuSurface) ||
                other.menuSurface == menuSurface) &&
            (identical(other.preview, preview) || other.preview == preview) &&
            (identical(other.graphics, graphics) ||
                other.graphics == graphics) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, style, menu, menuSurface, preview, graphics, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TileDataModelCopyWith<_$_TileDataModel> get copyWith =>
      __$$_TileDataModelCopyWithImpl<_$_TileDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TileDataModelToJson(
      this,
    );
  }
}

abstract class _TileDataModel implements TileDataModel {
  const factory _TileDataModel(
      {required final TileStyle style,
      final TileStyle? menu,
      @JsonKey(name: 'menu_surf') final String menuSurface,
      final String preview,
      final String graphics,
      final TileType type}) = _$_TileDataModel;

  factory _TileDataModel.fromJson(Map<String, dynamic> json) =
      _$_TileDataModel.fromJson;

  @override
  TileStyle get style;
  @override
  TileStyle? get menu;
  @override
  @JsonKey(name: 'menu_surf')
  String get menuSurface;
  @override
  String get preview;
  @override
  String get graphics;
  @override
  TileType get type;
  @override
  @JsonKey(ignore: true)
  _$$_TileDataModelCopyWith<_$_TileDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
