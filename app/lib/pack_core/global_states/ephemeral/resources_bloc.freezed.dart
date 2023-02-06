// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'resources_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LiveResourcesBlocState _$LiveResourcesBlocStateFromJson(
    Map<String, dynamic> json) {
  return _LiveResourcesBlocState.fromJson(json);
}

/// @nodoc
mixin _$LiveResourcesBlocState {
  String get tileMapName => throw _privateConstructorUsedError;
  String get tileMapIcon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LiveResourcesBlocStateCopyWith<LiveResourcesBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveResourcesBlocStateCopyWith<$Res> {
  factory $LiveResourcesBlocStateCopyWith(LiveResourcesBlocState value,
          $Res Function(LiveResourcesBlocState) then) =
      _$LiveResourcesBlocStateCopyWithImpl<$Res>;
  $Res call({String tileMapName, String tileMapIcon});
}

/// @nodoc
class _$LiveResourcesBlocStateCopyWithImpl<$Res>
    implements $LiveResourcesBlocStateCopyWith<$Res> {
  _$LiveResourcesBlocStateCopyWithImpl(this._value, this._then);

  final LiveResourcesBlocState _value;
  // ignore: unused_field
  final $Res Function(LiveResourcesBlocState) _then;

  @override
  $Res call({
    Object? tileMapName = freezed,
    Object? tileMapIcon = freezed,
  }) {
    return _then(_value.copyWith(
      tileMapName: tileMapName == freezed
          ? _value.tileMapName
          : tileMapName // ignore: cast_nullable_to_non_nullable
              as String,
      tileMapIcon: tileMapIcon == freezed
          ? _value.tileMapIcon
          : tileMapIcon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LiveResourcesBlocStateCopyWith<$Res>
    implements $LiveResourcesBlocStateCopyWith<$Res> {
  factory _$$_LiveResourcesBlocStateCopyWith(_$_LiveResourcesBlocState value,
          $Res Function(_$_LiveResourcesBlocState) then) =
      __$$_LiveResourcesBlocStateCopyWithImpl<$Res>;
  @override
  $Res call({String tileMapName, String tileMapIcon});
}

/// @nodoc
class __$$_LiveResourcesBlocStateCopyWithImpl<$Res>
    extends _$LiveResourcesBlocStateCopyWithImpl<$Res>
    implements _$$_LiveResourcesBlocStateCopyWith<$Res> {
  __$$_LiveResourcesBlocStateCopyWithImpl(_$_LiveResourcesBlocState _value,
      $Res Function(_$_LiveResourcesBlocState) _then)
      : super(_value, (v) => _then(v as _$_LiveResourcesBlocState));

  @override
  _$_LiveResourcesBlocState get _value =>
      super._value as _$_LiveResourcesBlocState;

  @override
  $Res call({
    Object? tileMapName = freezed,
    Object? tileMapIcon = freezed,
  }) {
    return _then(_$_LiveResourcesBlocState(
      tileMapName: tileMapName == freezed
          ? _value.tileMapName
          : tileMapName // ignore: cast_nullable_to_non_nullable
              as String,
      tileMapIcon: tileMapIcon == freezed
          ? _value.tileMapIcon
          : tileMapIcon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_LiveResourcesBlocState extends _LiveResourcesBlocState {
  const _$_LiveResourcesBlocState(
      {required this.tileMapName, required this.tileMapIcon})
      : super._();

  factory _$_LiveResourcesBlocState.fromJson(Map<String, dynamic> json) =>
      _$$_LiveResourcesBlocStateFromJson(json);

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
            const DeepCollectionEquality()
                .equals(other.tileMapName, tileMapName) &&
            const DeepCollectionEquality()
                .equals(other.tileMapIcon, tileMapIcon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tileMapName),
      const DeepCollectionEquality().hash(tileMapIcon));

  @JsonKey(ignore: true)
  @override
  _$$_LiveResourcesBlocStateCopyWith<_$_LiveResourcesBlocState> get copyWith =>
      __$$_LiveResourcesBlocStateCopyWithImpl<_$_LiveResourcesBlocState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LiveResourcesBlocStateToJson(
      this,
    );
  }
}

abstract class _LiveResourcesBlocState extends LiveResourcesBlocState
    implements ResourcesBlocState {
  const factory _LiveResourcesBlocState(
      {required final String tileMapName,
      required final String tileMapIcon}) = _$_LiveResourcesBlocState;
  const _LiveResourcesBlocState._() : super._();

  factory _LiveResourcesBlocState.fromJson(Map<String, dynamic> json) =
      _$_LiveResourcesBlocState.fromJson;

  @override
  String get tileMapName;
  @override
  String get tileMapIcon;
  @override
  @JsonKey(ignore: true)
  _$$_LiveResourcesBlocStateCopyWith<_$_LiveResourcesBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}
