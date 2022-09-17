// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LevelRouteArgs _$LevelRouteArgsFromJson(Map<String, dynamic> json) {
  return _LevelRouteArgs.fromJson(json);
}

/// @nodoc
mixin _$LevelRouteArgs {
  String get levelId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LevelRouteArgsCopyWith<LevelRouteArgs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LevelRouteArgsCopyWith<$Res> {
  factory $LevelRouteArgsCopyWith(
          LevelRouteArgs value, $Res Function(LevelRouteArgs) then) =
      _$LevelRouteArgsCopyWithImpl<$Res>;
  $Res call({String levelId});
}

/// @nodoc
class _$LevelRouteArgsCopyWithImpl<$Res>
    implements $LevelRouteArgsCopyWith<$Res> {
  _$LevelRouteArgsCopyWithImpl(this._value, this._then);

  final LevelRouteArgs _value;
  // ignore: unused_field
  final $Res Function(LevelRouteArgs) _then;

  @override
  $Res call({
    Object? levelId = freezed,
  }) {
    return _then(_value.copyWith(
      levelId: levelId == freezed
          ? _value.levelId
          : levelId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LevelRouteArgsCopyWith<$Res>
    implements $LevelRouteArgsCopyWith<$Res> {
  factory _$$_LevelRouteArgsCopyWith(
          _$_LevelRouteArgs value, $Res Function(_$_LevelRouteArgs) then) =
      __$$_LevelRouteArgsCopyWithImpl<$Res>;
  @override
  $Res call({String levelId});
}

/// @nodoc
class __$$_LevelRouteArgsCopyWithImpl<$Res>
    extends _$LevelRouteArgsCopyWithImpl<$Res>
    implements _$$_LevelRouteArgsCopyWith<$Res> {
  __$$_LevelRouteArgsCopyWithImpl(
      _$_LevelRouteArgs _value, $Res Function(_$_LevelRouteArgs) _then)
      : super(_value, (v) => _then(v as _$_LevelRouteArgs));

  @override
  _$_LevelRouteArgs get _value => super._value as _$_LevelRouteArgs;

  @override
  $Res call({
    Object? levelId = freezed,
  }) {
    return _then(_$_LevelRouteArgs(
      levelId: levelId == freezed
          ? _value.levelId
          : levelId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_LevelRouteArgs extends _LevelRouteArgs {
  const _$_LevelRouteArgs({this.levelId = ''}) : super._();

  factory _$_LevelRouteArgs.fromJson(Map<String, dynamic> json) =>
      _$$_LevelRouteArgsFromJson(json);

  @override
  @JsonKey()
  final String levelId;

  @override
  String toString() {
    return 'LevelRouteArgs(levelId: $levelId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LevelRouteArgs &&
            const DeepCollectionEquality().equals(other.levelId, levelId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(levelId));

  @JsonKey(ignore: true)
  @override
  _$$_LevelRouteArgsCopyWith<_$_LevelRouteArgs> get copyWith =>
      __$$_LevelRouteArgsCopyWithImpl<_$_LevelRouteArgs>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LevelRouteArgsToJson(
      this,
    );
  }
}

abstract class _LevelRouteArgs extends LevelRouteArgs {
  const factory _LevelRouteArgs({final String levelId}) = _$_LevelRouteArgs;
  const _LevelRouteArgs._() : super._();

  factory _LevelRouteArgs.fromJson(Map<String, dynamic> json) =
      _$_LevelRouteArgs.fromJson;

  @override
  String get levelId;
  @override
  @JsonKey(ignore: true)
  _$$_LevelRouteArgsCopyWith<_$_LevelRouteArgs> get copyWith =>
      throw _privateConstructorUsedError;
}
