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
      _$LevelRouteArgsCopyWithImpl<$Res, LevelRouteArgs>;
  @useResult
  $Res call({String levelId});
}

/// @nodoc
class _$LevelRouteArgsCopyWithImpl<$Res, $Val extends LevelRouteArgs>
    implements $LevelRouteArgsCopyWith<$Res> {
  _$LevelRouteArgsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? levelId = null,
  }) {
    return _then(_value.copyWith(
      levelId: null == levelId
          ? _value.levelId
          : levelId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LevelRouteArgsImplCopyWith<$Res>
    implements $LevelRouteArgsCopyWith<$Res> {
  factory _$$LevelRouteArgsImplCopyWith(_$LevelRouteArgsImpl value,
          $Res Function(_$LevelRouteArgsImpl) then) =
      __$$LevelRouteArgsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String levelId});
}

/// @nodoc
class __$$LevelRouteArgsImplCopyWithImpl<$Res>
    extends _$LevelRouteArgsCopyWithImpl<$Res, _$LevelRouteArgsImpl>
    implements _$$LevelRouteArgsImplCopyWith<$Res> {
  __$$LevelRouteArgsImplCopyWithImpl(
      _$LevelRouteArgsImpl _value, $Res Function(_$LevelRouteArgsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? levelId = null,
  }) {
    return _then(_$LevelRouteArgsImpl(
      levelId: null == levelId
          ? _value.levelId
          : levelId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$LevelRouteArgsImpl extends _LevelRouteArgs {
  const _$LevelRouteArgsImpl({this.levelId = ''}) : super._();

  factory _$LevelRouteArgsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LevelRouteArgsImplFromJson(json);

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
            other is _$LevelRouteArgsImpl &&
            (identical(other.levelId, levelId) || other.levelId == levelId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, levelId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LevelRouteArgsImplCopyWith<_$LevelRouteArgsImpl> get copyWith =>
      __$$LevelRouteArgsImplCopyWithImpl<_$LevelRouteArgsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LevelRouteArgsImplToJson(
      this,
    );
  }
}

abstract class _LevelRouteArgs extends LevelRouteArgs {
  const factory _LevelRouteArgs({final String levelId}) = _$LevelRouteArgsImpl;
  const _LevelRouteArgs._() : super._();

  factory _LevelRouteArgs.fromJson(Map<String, dynamic> json) =
      _$LevelRouteArgsImpl.fromJson;

  @override
  String get levelId;
  @override
  @JsonKey(ignore: true)
  _$$LevelRouteArgsImplCopyWith<_$LevelRouteArgsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
