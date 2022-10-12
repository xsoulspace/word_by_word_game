// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'localization.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocalizedMap _$LocalizedMapFromJson(Map<String, dynamic> json) {
  return _LocalizedMap.fromJson(json);
}

/// @nodoc
mixin _$LocalizedMap {
  @JsonKey(fromJson: localeValueFromMap, toJson: localeValueToMap)
  Map<Languages, String> get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalizedMapCopyWith<LocalizedMap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizedMapCopyWith<$Res> {
  factory $LocalizedMapCopyWith(
          LocalizedMap value, $Res Function(LocalizedMap) then) =
      _$LocalizedMapCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(fromJson: localeValueFromMap, toJson: localeValueToMap)
          Map<Languages, String> value});
}

/// @nodoc
class _$LocalizedMapCopyWithImpl<$Res> implements $LocalizedMapCopyWith<$Res> {
  _$LocalizedMapCopyWithImpl(this._value, this._then);

  final LocalizedMap _value;
  // ignore: unused_field
  final $Res Function(LocalizedMap) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Map<Languages, String>,
    ));
  }
}

/// @nodoc
abstract class _$$_LocalizedMapCopyWith<$Res>
    implements $LocalizedMapCopyWith<$Res> {
  factory _$$_LocalizedMapCopyWith(
          _$_LocalizedMap value, $Res Function(_$_LocalizedMap) then) =
      __$$_LocalizedMapCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(fromJson: localeValueFromMap, toJson: localeValueToMap)
          Map<Languages, String> value});
}

/// @nodoc
class __$$_LocalizedMapCopyWithImpl<$Res>
    extends _$LocalizedMapCopyWithImpl<$Res>
    implements _$$_LocalizedMapCopyWith<$Res> {
  __$$_LocalizedMapCopyWithImpl(
      _$_LocalizedMap _value, $Res Function(_$_LocalizedMap) _then)
      : super(_value, (v) => _then(v as _$_LocalizedMap));

  @override
  _$_LocalizedMap get _value => super._value as _$_LocalizedMap;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_LocalizedMap(
      value: value == freezed
          ? _value._value
          : value // ignore: cast_nullable_to_non_nullable
              as Map<Languages, String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_LocalizedMap extends _LocalizedMap {
  const _$_LocalizedMap(
      {@JsonKey(fromJson: localeValueFromMap, toJson: localeValueToMap)
          required final Map<Languages, String> value})
      : _value = value,
        super._();

  factory _$_LocalizedMap.fromJson(Map<String, dynamic> json) =>
      _$$_LocalizedMapFromJson(json);

  final Map<Languages, String> _value;
  @override
  @JsonKey(fromJson: localeValueFromMap, toJson: localeValueToMap)
  Map<Languages, String> get value {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_value);
  }

  @override
  String toString() {
    return 'LocalizedMap(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalizedMap &&
            const DeepCollectionEquality().equals(other._value, _value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_value));

  @JsonKey(ignore: true)
  @override
  _$$_LocalizedMapCopyWith<_$_LocalizedMap> get copyWith =>
      __$$_LocalizedMapCopyWithImpl<_$_LocalizedMap>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocalizedMapToJson(
      this,
    );
  }
}

abstract class _LocalizedMap extends LocalizedMap {
  const factory _LocalizedMap(
      {@JsonKey(fromJson: localeValueFromMap, toJson: localeValueToMap)
          required final Map<Languages, String> value}) = _$_LocalizedMap;
  const _LocalizedMap._() : super._();

  factory _LocalizedMap.fromJson(Map<String, dynamic> json) =
      _$_LocalizedMap.fromJson;

  @override
  @JsonKey(fromJson: localeValueFromMap, toJson: localeValueToMap)
  Map<Languages, String> get value;
  @override
  @JsonKey(ignore: true)
  _$$_LocalizedMapCopyWith<_$_LocalizedMap> get copyWith =>
      throw _privateConstructorUsedError;
}
