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
mixin _$TileMenuItem {
  int get index => throw _privateConstructorUsedError;
  TileDataModel get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TileMenuItemCopyWith<TileMenuItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TileMenuItemCopyWith<$Res> {
  factory $TileMenuItemCopyWith(
          TileMenuItem value, $Res Function(TileMenuItem) then) =
      _$TileMenuItemCopyWithImpl<$Res, TileMenuItem>;
  @useResult
  $Res call({int index, TileDataModel data});

  $TileDataModelCopyWith<$Res> get data;
}

/// @nodoc
class _$TileMenuItemCopyWithImpl<$Res, $Val extends TileMenuItem>
    implements $TileMenuItemCopyWith<$Res> {
  _$TileMenuItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TileDataModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TileDataModelCopyWith<$Res> get data {
    return $TileDataModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TileMenuItemCopyWith<$Res>
    implements $TileMenuItemCopyWith<$Res> {
  factory _$$_TileMenuItemCopyWith(
          _$_TileMenuItem value, $Res Function(_$_TileMenuItem) then) =
      __$$_TileMenuItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, TileDataModel data});

  @override
  $TileDataModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$_TileMenuItemCopyWithImpl<$Res>
    extends _$TileMenuItemCopyWithImpl<$Res, _$_TileMenuItem>
    implements _$$_TileMenuItemCopyWith<$Res> {
  __$$_TileMenuItemCopyWithImpl(
      _$_TileMenuItem _value, $Res Function(_$_TileMenuItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? data = null,
  }) {
    return _then(_$_TileMenuItem(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TileDataModel,
    ));
  }
}

/// @nodoc

class _$_TileMenuItem implements _TileMenuItem {
  const _$_TileMenuItem({required this.index, required this.data});

  @override
  final int index;
  @override
  final TileDataModel data;

  @override
  String toString() {
    return 'TileMenuItem(index: $index, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TileMenuItem &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TileMenuItemCopyWith<_$_TileMenuItem> get copyWith =>
      __$$_TileMenuItemCopyWithImpl<_$_TileMenuItem>(this, _$identity);
}

abstract class _TileMenuItem implements TileMenuItem {
  const factory _TileMenuItem(
      {required final int index,
      required final TileDataModel data}) = _$_TileMenuItem;

  @override
  int get index;
  @override
  TileDataModel get data;
  @override
  @JsonKey(ignore: true)
  _$$_TileMenuItemCopyWith<_$_TileMenuItem> get copyWith =>
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
  GameObjectType get type => throw _privateConstructorUsedError;

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
      GameObjectType type});
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
              as GameObjectType,
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
      GameObjectType type});
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
              as GameObjectType,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_TileDataModel implements _TileDataModel {
  const _$_TileDataModel(
      {required this.style,
      this.menu,
      @JsonKey(name: 'menu_surf') this.menuSurface = '',
      this.preview = '',
      this.graphics = '',
      this.type = GameObjectType.tile});

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
  final GameObjectType type;

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
      final GameObjectType type}) = _$_TileDataModel;

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
  GameObjectType get type;
  @override
  @JsonKey(ignore: true)
  _$$_TileDataModelCopyWith<_$_TileDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
