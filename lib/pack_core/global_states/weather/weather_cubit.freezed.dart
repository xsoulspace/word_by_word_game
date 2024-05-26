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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherCubitState {
  /// idea that current weather always first.
  /// With weather completed, [weathers] first element should be removed
  List<WeatherModel> get weathers => throw _privateConstructorUsedError;
  WindModel get wind => throw _privateConstructorUsedError;

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
  $Res call({List<WeatherModel> weathers, WindModel wind});
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
    Object? wind = freezed,
  }) {
    return _then(_value.copyWith(
      weathers: null == weathers
          ? _value.weathers
          : weathers // ignore: cast_nullable_to_non_nullable
              as List<WeatherModel>,
      wind: freezed == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WindModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherCubitStateImplCopyWith<$Res>
    implements $WeatherCubitStateCopyWith<$Res> {
  factory _$$WeatherCubitStateImplCopyWith(_$WeatherCubitStateImpl value,
          $Res Function(_$WeatherCubitStateImpl) then) =
      __$$WeatherCubitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WeatherModel> weathers, WindModel wind});
}

/// @nodoc
class __$$WeatherCubitStateImplCopyWithImpl<$Res>
    extends _$WeatherCubitStateCopyWithImpl<$Res, _$WeatherCubitStateImpl>
    implements _$$WeatherCubitStateImplCopyWith<$Res> {
  __$$WeatherCubitStateImplCopyWithImpl(_$WeatherCubitStateImpl _value,
      $Res Function(_$WeatherCubitStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weathers = null,
    Object? wind = freezed,
  }) {
    return _then(_$WeatherCubitStateImpl(
      weathers: null == weathers
          ? _value._weathers
          : weathers // ignore: cast_nullable_to_non_nullable
              as List<WeatherModel>,
      wind: freezed == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WindModel,
    ));
  }
}

/// @nodoc

class _$WeatherCubitStateImpl extends _WeatherCubitState
    with DiagnosticableTreeMixin {
  const _$WeatherCubitStateImpl(
      {final List<WeatherModel> weathers = const [],
      this.wind = WindModel.zero})
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
  @JsonKey()
  final WindModel wind;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeatherCubitState(weathers: $weathers, wind: $wind)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WeatherCubitState'))
      ..add(DiagnosticsProperty('weathers', weathers))
      ..add(DiagnosticsProperty('wind', wind));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherCubitStateImpl &&
            const DeepCollectionEquality().equals(other._weathers, _weathers) &&
            const DeepCollectionEquality().equals(other.wind, wind));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_weathers),
      const DeepCollectionEquality().hash(wind));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherCubitStateImplCopyWith<_$WeatherCubitStateImpl> get copyWith =>
      __$$WeatherCubitStateImplCopyWithImpl<_$WeatherCubitStateImpl>(
          this, _$identity);
}

abstract class _WeatherCubitState extends WeatherCubitState {
  const factory _WeatherCubitState(
      {final List<WeatherModel> weathers,
      final WindModel wind}) = _$WeatherCubitStateImpl;
  const _WeatherCubitState._() : super._();

  @override

  /// idea that current weather always first.
  /// With weather completed, [weathers] first element should be removed
  List<WeatherModel> get weathers;
  @override
  WindModel get wind;
  @override
  @JsonKey(ignore: true)
  _$$WeatherCubitStateImplCopyWith<_$WeatherCubitStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
