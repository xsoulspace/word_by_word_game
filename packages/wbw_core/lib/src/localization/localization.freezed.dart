// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$LocalizedMapCopyWithImpl<$Res, LocalizedMap>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: localeValueFromMap, toJson: localeValueToMap)
      Map<Languages, String> value});
}

/// @nodoc
class _$LocalizedMapCopyWithImpl<$Res, $Val extends LocalizedMap>
    implements $LocalizedMapCopyWith<$Res> {
  _$LocalizedMapCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Map<Languages, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalizedMapImplCopyWith<$Res>
    implements $LocalizedMapCopyWith<$Res> {
  factory _$$LocalizedMapImplCopyWith(
          _$LocalizedMapImpl value, $Res Function(_$LocalizedMapImpl) then) =
      __$$LocalizedMapImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: localeValueFromMap, toJson: localeValueToMap)
      Map<Languages, String> value});
}

/// @nodoc
class __$$LocalizedMapImplCopyWithImpl<$Res>
    extends _$LocalizedMapCopyWithImpl<$Res, _$LocalizedMapImpl>
    implements _$$LocalizedMapImplCopyWith<$Res> {
  __$$LocalizedMapImplCopyWithImpl(
      _$LocalizedMapImpl _value, $Res Function(_$LocalizedMapImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$LocalizedMapImpl(
      value: null == value
          ? _value._value
          : value // ignore: cast_nullable_to_non_nullable
              as Map<Languages, String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$LocalizedMapImpl extends _LocalizedMap {
  const _$LocalizedMapImpl(
      {@JsonKey(fromJson: localeValueFromMap, toJson: localeValueToMap)
      required final Map<Languages, String> value})
      : _value = value,
        super._();

  factory _$LocalizedMapImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalizedMapImplFromJson(json);

  final Map<Languages, String> _value;
  @override
  @JsonKey(fromJson: localeValueFromMap, toJson: localeValueToMap)
  Map<Languages, String> get value {
    if (_value is EqualUnmodifiableMapView) return _value;
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
            other is _$LocalizedMapImpl &&
            const DeepCollectionEquality().equals(other._value, _value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalizedMapImplCopyWith<_$LocalizedMapImpl> get copyWith =>
      __$$LocalizedMapImplCopyWithImpl<_$LocalizedMapImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalizedMapImplToJson(
      this,
    );
  }
}

abstract class _LocalizedMap extends LocalizedMap {
  const factory _LocalizedMap(
      {@JsonKey(fromJson: localeValueFromMap, toJson: localeValueToMap)
      required final Map<Languages, String> value}) = _$LocalizedMapImpl;
  const _LocalizedMap._() : super._();

  factory _LocalizedMap.fromJson(Map<String, dynamic> json) =
      _$LocalizedMapImpl.fromJson;

  @override
  @JsonKey(fromJson: localeValueFromMap, toJson: localeValueToMap)
  Map<Languages, String> get value;
  @override
  @JsonKey(ignore: true)
  _$$LocalizedMapImplCopyWith<_$LocalizedMapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
