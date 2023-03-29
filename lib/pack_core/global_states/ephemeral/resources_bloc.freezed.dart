// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resources_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LiveResourcesBlocState {
  String get tileMapName => throw _privateConstructorUsedError;
  String get tileMapIcon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LiveResourcesBlocStateCopyWith<LiveResourcesBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveResourcesBlocStateCopyWith<$Res> {
  factory $LiveResourcesBlocStateCopyWith(LiveResourcesBlocState value,
          $Res Function(LiveResourcesBlocState) then) =
      _$LiveResourcesBlocStateCopyWithImpl<$Res, LiveResourcesBlocState>;
  @useResult
  $Res call({String tileMapName, String tileMapIcon});
}

/// @nodoc
class _$LiveResourcesBlocStateCopyWithImpl<$Res,
        $Val extends LiveResourcesBlocState>
    implements $LiveResourcesBlocStateCopyWith<$Res> {
  _$LiveResourcesBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tileMapName = null,
    Object? tileMapIcon = null,
  }) {
    return _then(_value.copyWith(
      tileMapName: null == tileMapName
          ? _value.tileMapName
          : tileMapName // ignore: cast_nullable_to_non_nullable
              as String,
      tileMapIcon: null == tileMapIcon
          ? _value.tileMapIcon
          : tileMapIcon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LiveResourcesBlocStateCopyWith<$Res>
    implements $LiveResourcesBlocStateCopyWith<$Res> {
  factory _$$_LiveResourcesBlocStateCopyWith(_$_LiveResourcesBlocState value,
          $Res Function(_$_LiveResourcesBlocState) then) =
      __$$_LiveResourcesBlocStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String tileMapName, String tileMapIcon});
}

/// @nodoc
class __$$_LiveResourcesBlocStateCopyWithImpl<$Res>
    extends _$LiveResourcesBlocStateCopyWithImpl<$Res,
        _$_LiveResourcesBlocState>
    implements _$$_LiveResourcesBlocStateCopyWith<$Res> {
  __$$_LiveResourcesBlocStateCopyWithImpl(_$_LiveResourcesBlocState _value,
      $Res Function(_$_LiveResourcesBlocState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tileMapName = null,
    Object? tileMapIcon = null,
  }) {
    return _then(_$_LiveResourcesBlocState(
      tileMapName: null == tileMapName
          ? _value.tileMapName
          : tileMapName // ignore: cast_nullable_to_non_nullable
              as String,
      tileMapIcon: null == tileMapIcon
          ? _value.tileMapIcon
          : tileMapIcon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LiveResourcesBlocState extends _LiveResourcesBlocState {
  const _$_LiveResourcesBlocState(
      {required this.tileMapName, required this.tileMapIcon})
      : super._();

  @override
  final String tileMapName;
  @override
  final String tileMapIcon;

  @override
  String toString() {
    return 'LiveResourcesBlocState(tileMapName: $tileMapName, tileMapIcon: $tileMapIcon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LiveResourcesBlocState &&
            (identical(other.tileMapName, tileMapName) ||
                other.tileMapName == tileMapName) &&
            (identical(other.tileMapIcon, tileMapIcon) ||
                other.tileMapIcon == tileMapIcon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tileMapName, tileMapIcon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LiveResourcesBlocStateCopyWith<_$_LiveResourcesBlocState> get copyWith =>
      __$$_LiveResourcesBlocStateCopyWithImpl<_$_LiveResourcesBlocState>(
          this, _$identity);
}

abstract class _LiveResourcesBlocState extends LiveResourcesBlocState
    implements ResourcesBlocState {
  const factory _LiveResourcesBlocState(
      {required final String tileMapName,
      required final String tileMapIcon}) = _$_LiveResourcesBlocState;
  const _LiveResourcesBlocState._() : super._();

  @override
  String get tileMapName;
  @override
  String get tileMapIcon;
  @override
  @JsonKey(ignore: true)
  _$$_LiveResourcesBlocStateCopyWith<_$_LiveResourcesBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}
