// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherCubitState {
  /// idea that current weather always first.
  /// With weather completed, [weathers] first element should be removed
  List<WeatherModel> get weathers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherCubitStateCopyWith<WeatherCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCubitStateCopyWith<$Res> {
  factory $WeatherCubitStateCopyWith(
          WeatherCubitState value, $Res Function(WeatherCubitState) then) =
      _$WeatherCubitStateCopyWithImpl<$Res, WeatherCubitState>;
  @useResult
  $Res call({List<WeatherModel> weathers});
}

/// @nodoc
class _$WeatherCubitStateCopyWithImpl<$Res, $Val extends WeatherCubitState>
    implements $WeatherCubitStateCopyWith<$Res> {
  _$WeatherCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weathers = null,
  }) {
    return _then(_value.copyWith(
      weathers: null == weathers
          ? _value.weathers
          : weathers // ignore: cast_nullable_to_non_nullable
              as List<WeatherModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherCubitStateCopyWith<$Res>
    implements $WeatherCubitStateCopyWith<$Res> {
  factory _$$_WeatherCubitStateCopyWith(_$_WeatherCubitState value,
          $Res Function(_$_WeatherCubitState) then) =
      __$$_WeatherCubitStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WeatherModel> weathers});
}

/// @nodoc
class __$$_WeatherCubitStateCopyWithImpl<$Res>
    extends _$WeatherCubitStateCopyWithImpl<$Res, _$_WeatherCubitState>
    implements _$$_WeatherCubitStateCopyWith<$Res> {
  __$$_WeatherCubitStateCopyWithImpl(
      _$_WeatherCubitState _value, $Res Function(_$_WeatherCubitState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weathers = null,
  }) {
    return _then(_$_WeatherCubitState(
      weathers: null == weathers
          ? _value._weathers
          : weathers // ignore: cast_nullable_to_non_nullable
              as List<WeatherModel>,
    ));
  }
}

/// @nodoc

class _$_WeatherCubitState extends _WeatherCubitState {
  const _$_WeatherCubitState({final List<WeatherModel> weathers = const []})
      : _weathers = weathers,
        super._();

  /// idea that current weather always first.
  /// With weather completed, [weathers] first element should be removed
  final List<WeatherModel> _weathers;

  /// idea that current weather always first.
  /// With weather completed, [weathers] first element should be removed
  @override
  @JsonKey()
  List<WeatherModel> get weathers {
    if (_weathers is EqualUnmodifiableListView) return _weathers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weathers);
  }

  @override
  String toString() {
    return 'WeatherCubitState(weathers: $weathers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherCubitState &&
            const DeepCollectionEquality().equals(other._weathers, _weathers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_weathers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherCubitStateCopyWith<_$_WeatherCubitState> get copyWith =>
      __$$_WeatherCubitStateCopyWithImpl<_$_WeatherCubitState>(
          this, _$identity);
}

abstract class _WeatherCubitState extends WeatherCubitState {
  const factory _WeatherCubitState({final List<WeatherModel> weathers}) =
      _$_WeatherCubitState;
  const _WeatherCubitState._() : super._();

  @override

  /// idea that current weather always first.
  /// With weather completed, [weathers] first element should be removed
  List<WeatherModel> get weathers;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherCubitStateCopyWith<_$_WeatherCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}
