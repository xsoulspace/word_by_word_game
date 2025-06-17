// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$UiThemeScheme {
  UiTextTheme get text => throw _privateConstructorUsedError;
  UiCustomizableFormFactors get customizableFormFactors =>
      throw _privateConstructorUsedError;

  /// Create a copy of UiThemeScheme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UiThemeSchemeCopyWith<UiThemeScheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UiThemeSchemeCopyWith<$Res> {
  factory $UiThemeSchemeCopyWith(
    UiThemeScheme value,
    $Res Function(UiThemeScheme) then,
  ) = _$UiThemeSchemeCopyWithImpl<$Res, UiThemeScheme>;
  @useResult
  $Res call({
    UiTextTheme text,
    UiCustomizableFormFactors customizableFormFactors,
  });

  $UiCustomizableFormFactorsCopyWith<$Res> get customizableFormFactors;
}

/// @nodoc
class _$UiThemeSchemeCopyWithImpl<$Res, $Val extends UiThemeScheme>
    implements $UiThemeSchemeCopyWith<$Res> {
  _$UiThemeSchemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UiThemeScheme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? text = null, Object? customizableFormFactors = null}) {
    return _then(
      _value.copyWith(
            text: null == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                      as UiTextTheme,
            customizableFormFactors: null == customizableFormFactors
                ? _value.customizableFormFactors
                : customizableFormFactors // ignore: cast_nullable_to_non_nullable
                      as UiCustomizableFormFactors,
          )
          as $Val,
    );
  }

  /// Create a copy of UiThemeScheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UiCustomizableFormFactorsCopyWith<$Res> get customizableFormFactors {
    return $UiCustomizableFormFactorsCopyWith<$Res>(
      _value.customizableFormFactors,
      (value) {
        return _then(_value.copyWith(customizableFormFactors: value) as $Val);
      },
    );
  }
}

/// @nodoc
abstract class _$$UiThemeSchemeImplCopyWith<$Res>
    implements $UiThemeSchemeCopyWith<$Res> {
  factory _$$UiThemeSchemeImplCopyWith(
    _$UiThemeSchemeImpl value,
    $Res Function(_$UiThemeSchemeImpl) then,
  ) = __$$UiThemeSchemeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    UiTextTheme text,
    UiCustomizableFormFactors customizableFormFactors,
  });

  @override
  $UiCustomizableFormFactorsCopyWith<$Res> get customizableFormFactors;
}

/// @nodoc
class __$$UiThemeSchemeImplCopyWithImpl<$Res>
    extends _$UiThemeSchemeCopyWithImpl<$Res, _$UiThemeSchemeImpl>
    implements _$$UiThemeSchemeImplCopyWith<$Res> {
  __$$UiThemeSchemeImplCopyWithImpl(
    _$UiThemeSchemeImpl _value,
    $Res Function(_$UiThemeSchemeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UiThemeScheme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? text = null, Object? customizableFormFactors = null}) {
    return _then(
      _$UiThemeSchemeImpl(
        text: null == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                  as UiTextTheme,
        customizableFormFactors: null == customizableFormFactors
            ? _value.customizableFormFactors
            : customizableFormFactors // ignore: cast_nullable_to_non_nullable
                  as UiCustomizableFormFactors,
      ),
    );
  }
}

/// @nodoc

class _$UiThemeSchemeImpl extends _UiThemeScheme with DiagnosticableTreeMixin {
  const _$UiThemeSchemeImpl({
    required this.text,
    required this.customizableFormFactors,
  }) : super._();

  @override
  final UiTextTheme text;
  @override
  final UiCustomizableFormFactors customizableFormFactors;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UiThemeScheme(text: $text, customizableFormFactors: $customizableFormFactors)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UiThemeScheme'))
      ..add(DiagnosticsProperty('text', text))
      ..add(
        DiagnosticsProperty('customizableFormFactors', customizableFormFactors),
      );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UiThemeSchemeImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(
                  other.customizableFormFactors,
                  customizableFormFactors,
                ) ||
                other.customizableFormFactors == customizableFormFactors));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, customizableFormFactors);

  /// Create a copy of UiThemeScheme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UiThemeSchemeImplCopyWith<_$UiThemeSchemeImpl> get copyWith =>
      __$$UiThemeSchemeImplCopyWithImpl<_$UiThemeSchemeImpl>(this, _$identity);
}

abstract class _UiThemeScheme extends UiThemeScheme {
  const factory _UiThemeScheme({
    required final UiTextTheme text,
    required final UiCustomizableFormFactors customizableFormFactors,
  }) = _$UiThemeSchemeImpl;
  const _UiThemeScheme._() : super._();

  @override
  UiTextTheme get text;
  @override
  UiCustomizableFormFactors get customizableFormFactors;

  /// Create a copy of UiThemeScheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UiThemeSchemeImplCopyWith<_$UiThemeSchemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UiPersistentFormFactors {
  WidthFormFactor get width => throw _privateConstructorUsedError;
  DeviceWindowFormFactor get deviceWindow => throw _privateConstructorUsedError;
  Size get screenSize => throw _privateConstructorUsedError;

  /// Create a copy of UiPersistentFormFactors
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UiPersistentFormFactorsCopyWith<UiPersistentFormFactors> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UiPersistentFormFactorsCopyWith<$Res> {
  factory $UiPersistentFormFactorsCopyWith(
    UiPersistentFormFactors value,
    $Res Function(UiPersistentFormFactors) then,
  ) = _$UiPersistentFormFactorsCopyWithImpl<$Res, UiPersistentFormFactors>;
  @useResult
  $Res call({
    WidthFormFactor width,
    DeviceWindowFormFactor deviceWindow,
    Size screenSize,
  });
}

/// @nodoc
class _$UiPersistentFormFactorsCopyWithImpl<
  $Res,
  $Val extends UiPersistentFormFactors
>
    implements $UiPersistentFormFactorsCopyWith<$Res> {
  _$UiPersistentFormFactorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UiPersistentFormFactors
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? deviceWindow = null,
    Object? screenSize = null,
  }) {
    return _then(
      _value.copyWith(
            width: null == width
                ? _value.width
                : width // ignore: cast_nullable_to_non_nullable
                      as WidthFormFactor,
            deviceWindow: null == deviceWindow
                ? _value.deviceWindow
                : deviceWindow // ignore: cast_nullable_to_non_nullable
                      as DeviceWindowFormFactor,
            screenSize: null == screenSize
                ? _value.screenSize
                : screenSize // ignore: cast_nullable_to_non_nullable
                      as Size,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UiPersistentFormFactorsImplCopyWith<$Res>
    implements $UiPersistentFormFactorsCopyWith<$Res> {
  factory _$$UiPersistentFormFactorsImplCopyWith(
    _$UiPersistentFormFactorsImpl value,
    $Res Function(_$UiPersistentFormFactorsImpl) then,
  ) = __$$UiPersistentFormFactorsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    WidthFormFactor width,
    DeviceWindowFormFactor deviceWindow,
    Size screenSize,
  });
}

/// @nodoc
class __$$UiPersistentFormFactorsImplCopyWithImpl<$Res>
    extends
        _$UiPersistentFormFactorsCopyWithImpl<
          $Res,
          _$UiPersistentFormFactorsImpl
        >
    implements _$$UiPersistentFormFactorsImplCopyWith<$Res> {
  __$$UiPersistentFormFactorsImplCopyWithImpl(
    _$UiPersistentFormFactorsImpl _value,
    $Res Function(_$UiPersistentFormFactorsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UiPersistentFormFactors
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? deviceWindow = null,
    Object? screenSize = null,
  }) {
    return _then(
      _$UiPersistentFormFactorsImpl(
        width: null == width
            ? _value.width
            : width // ignore: cast_nullable_to_non_nullable
                  as WidthFormFactor,
        deviceWindow: null == deviceWindow
            ? _value.deviceWindow
            : deviceWindow // ignore: cast_nullable_to_non_nullable
                  as DeviceWindowFormFactor,
        screenSize: null == screenSize
            ? _value.screenSize
            : screenSize // ignore: cast_nullable_to_non_nullable
                  as Size,
      ),
    );
  }
}

/// @nodoc

class _$UiPersistentFormFactorsImpl extends _UiPersistentFormFactors
    with DiagnosticableTreeMixin {
  const _$UiPersistentFormFactorsImpl({
    required this.width,
    required this.deviceWindow,
    required this.screenSize,
  }) : super._();

  @override
  final WidthFormFactor width;
  @override
  final DeviceWindowFormFactor deviceWindow;
  @override
  final Size screenSize;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UiPersistentFormFactors(width: $width, deviceWindow: $deviceWindow, screenSize: $screenSize)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UiPersistentFormFactors'))
      ..add(DiagnosticsProperty('width', width))
      ..add(DiagnosticsProperty('deviceWindow', deviceWindow))
      ..add(DiagnosticsProperty('screenSize', screenSize));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UiPersistentFormFactorsImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.deviceWindow, deviceWindow) ||
                other.deviceWindow == deviceWindow) &&
            (identical(other.screenSize, screenSize) ||
                other.screenSize == screenSize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, width, deviceWindow, screenSize);

  /// Create a copy of UiPersistentFormFactors
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UiPersistentFormFactorsImplCopyWith<_$UiPersistentFormFactorsImpl>
  get copyWith =>
      __$$UiPersistentFormFactorsImplCopyWithImpl<
        _$UiPersistentFormFactorsImpl
      >(this, _$identity);
}

abstract class _UiPersistentFormFactors extends UiPersistentFormFactors {
  const factory _UiPersistentFormFactors({
    required final WidthFormFactor width,
    required final DeviceWindowFormFactor deviceWindow,
    required final Size screenSize,
  }) = _$UiPersistentFormFactorsImpl;
  const _UiPersistentFormFactors._() : super._();

  @override
  WidthFormFactor get width;
  @override
  DeviceWindowFormFactor get deviceWindow;
  @override
  Size get screenSize;

  /// Create a copy of UiPersistentFormFactors
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UiPersistentFormFactorsImplCopyWith<_$UiPersistentFormFactorsImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UiCustomizableFormFactors {
  PerformanceFormFactor get performance => throw _privateConstructorUsedError;
  ControlsFormFactor get controls => throw _privateConstructorUsedError;

  /// Create a copy of UiCustomizableFormFactors
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UiCustomizableFormFactorsCopyWith<UiCustomizableFormFactors> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UiCustomizableFormFactorsCopyWith<$Res> {
  factory $UiCustomizableFormFactorsCopyWith(
    UiCustomizableFormFactors value,
    $Res Function(UiCustomizableFormFactors) then,
  ) = _$UiCustomizableFormFactorsCopyWithImpl<$Res, UiCustomizableFormFactors>;
  @useResult
  $Res call({PerformanceFormFactor performance, ControlsFormFactor controls});
}

/// @nodoc
class _$UiCustomizableFormFactorsCopyWithImpl<
  $Res,
  $Val extends UiCustomizableFormFactors
>
    implements $UiCustomizableFormFactorsCopyWith<$Res> {
  _$UiCustomizableFormFactorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UiCustomizableFormFactors
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? performance = null, Object? controls = null}) {
    return _then(
      _value.copyWith(
            performance: null == performance
                ? _value.performance
                : performance // ignore: cast_nullable_to_non_nullable
                      as PerformanceFormFactor,
            controls: null == controls
                ? _value.controls
                : controls // ignore: cast_nullable_to_non_nullable
                      as ControlsFormFactor,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UiCustomizableFormFactorsImplCopyWith<$Res>
    implements $UiCustomizableFormFactorsCopyWith<$Res> {
  factory _$$UiCustomizableFormFactorsImplCopyWith(
    _$UiCustomizableFormFactorsImpl value,
    $Res Function(_$UiCustomizableFormFactorsImpl) then,
  ) = __$$UiCustomizableFormFactorsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PerformanceFormFactor performance, ControlsFormFactor controls});
}

/// @nodoc
class __$$UiCustomizableFormFactorsImplCopyWithImpl<$Res>
    extends
        _$UiCustomizableFormFactorsCopyWithImpl<
          $Res,
          _$UiCustomizableFormFactorsImpl
        >
    implements _$$UiCustomizableFormFactorsImplCopyWith<$Res> {
  __$$UiCustomizableFormFactorsImplCopyWithImpl(
    _$UiCustomizableFormFactorsImpl _value,
    $Res Function(_$UiCustomizableFormFactorsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UiCustomizableFormFactors
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? performance = null, Object? controls = null}) {
    return _then(
      _$UiCustomizableFormFactorsImpl(
        performance: null == performance
            ? _value.performance
            : performance // ignore: cast_nullable_to_non_nullable
                  as PerformanceFormFactor,
        controls: null == controls
            ? _value.controls
            : controls // ignore: cast_nullable_to_non_nullable
                  as ControlsFormFactor,
      ),
    );
  }
}

/// @nodoc

class _$UiCustomizableFormFactorsImpl extends _UiCustomizableFormFactors
    with DiagnosticableTreeMixin {
  const _$UiCustomizableFormFactorsImpl({
    required this.performance,
    required this.controls,
  }) : super._();

  @override
  final PerformanceFormFactor performance;
  @override
  final ControlsFormFactor controls;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UiCustomizableFormFactors(performance: $performance, controls: $controls)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UiCustomizableFormFactors'))
      ..add(DiagnosticsProperty('performance', performance))
      ..add(DiagnosticsProperty('controls', controls));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UiCustomizableFormFactorsImpl &&
            (identical(other.performance, performance) ||
                other.performance == performance) &&
            (identical(other.controls, controls) ||
                other.controls == controls));
  }

  @override
  int get hashCode => Object.hash(runtimeType, performance, controls);

  /// Create a copy of UiCustomizableFormFactors
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UiCustomizableFormFactorsImplCopyWith<_$UiCustomizableFormFactorsImpl>
  get copyWith =>
      __$$UiCustomizableFormFactorsImplCopyWithImpl<
        _$UiCustomizableFormFactorsImpl
      >(this, _$identity);
}

abstract class _UiCustomizableFormFactors extends UiCustomizableFormFactors {
  const factory _UiCustomizableFormFactors({
    required final PerformanceFormFactor performance,
    required final ControlsFormFactor controls,
  }) = _$UiCustomizableFormFactorsImpl;
  const _UiCustomizableFormFactors._() : super._();

  @override
  PerformanceFormFactor get performance;
  @override
  ControlsFormFactor get controls;

  /// Create a copy of UiCustomizableFormFactors
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UiCustomizableFormFactorsImplCopyWith<_$UiCustomizableFormFactorsImpl>
  get copyWith => throw _privateConstructorUsedError;
}
