// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'router.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedRoute {
  /// The current path location without query parameters. (/book/123)
  String get path => throw _privateConstructorUsedError;

  /// The path template (/book/:id)
  String get pathTemplate => throw _privateConstructorUsedError;

  /// The path parameters ({id: 123})
  Map<String, String> get parameters => throw _privateConstructorUsedError;

  /// The query parameters ({search: abc})
  Map<String, String> get queryParameters => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParsedRouteCopyWith<ParsedRoute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedRouteCopyWith<$Res> {
  factory $ParsedRouteCopyWith(
          ParsedRoute value, $Res Function(ParsedRoute) then) =
      _$ParsedRouteCopyWithImpl<$Res, ParsedRoute>;
  @useResult
  $Res call(
      {String path,
      String pathTemplate,
      Map<String, String> parameters,
      Map<String, String> queryParameters});
}

/// @nodoc
class _$ParsedRouteCopyWithImpl<$Res, $Val extends ParsedRoute>
    implements $ParsedRouteCopyWith<$Res> {
  _$ParsedRouteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? pathTemplate = null,
    Object? parameters = null,
    Object? queryParameters = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      pathTemplate: null == pathTemplate
          ? _value.pathTemplate
          : pathTemplate // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      queryParameters: null == queryParameters
          ? _value.queryParameters
          : queryParameters // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParsedRouteImplCopyWith<$Res>
    implements $ParsedRouteCopyWith<$Res> {
  factory _$$ParsedRouteImplCopyWith(
          _$ParsedRouteImpl value, $Res Function(_$ParsedRouteImpl) then) =
      __$$ParsedRouteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String path,
      String pathTemplate,
      Map<String, String> parameters,
      Map<String, String> queryParameters});
}

/// @nodoc
class __$$ParsedRouteImplCopyWithImpl<$Res>
    extends _$ParsedRouteCopyWithImpl<$Res, _$ParsedRouteImpl>
    implements _$$ParsedRouteImplCopyWith<$Res> {
  __$$ParsedRouteImplCopyWithImpl(
      _$ParsedRouteImpl _value, $Res Function(_$ParsedRouteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? pathTemplate = null,
    Object? parameters = null,
    Object? queryParameters = null,
  }) {
    return _then(_$ParsedRouteImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      pathTemplate: null == pathTemplate
          ? _value.pathTemplate
          : pathTemplate // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      queryParameters: null == queryParameters
          ? _value._queryParameters
          : queryParameters // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ParsedRouteImpl extends _ParsedRoute with DiagnosticableTreeMixin {
  const _$ParsedRouteImpl(
      {required this.path,
      required this.pathTemplate,
      required final Map<String, String> parameters,
      required final Map<String, String> queryParameters})
      : _parameters = parameters,
        _queryParameters = queryParameters,
        super._();

  /// The current path location without query parameters. (/book/123)
  @override
  final String path;

  /// The path template (/book/:id)
  @override
  final String pathTemplate;

  /// The path parameters ({id: 123})
  final Map<String, String> _parameters;

  /// The path parameters ({id: 123})
  @override
  Map<String, String> get parameters {
    if (_parameters is EqualUnmodifiableMapView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_parameters);
  }

  /// The query parameters ({search: abc})
  final Map<String, String> _queryParameters;

  /// The query parameters ({search: abc})
  @override
  Map<String, String> get queryParameters {
    if (_queryParameters is EqualUnmodifiableMapView) return _queryParameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_queryParameters);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParsedRoute(path: $path, pathTemplate: $pathTemplate, parameters: $parameters, queryParameters: $queryParameters)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ParsedRoute'))
      ..add(DiagnosticsProperty('path', path))
      ..add(DiagnosticsProperty('pathTemplate', pathTemplate))
      ..add(DiagnosticsProperty('parameters', parameters))
      ..add(DiagnosticsProperty('queryParameters', queryParameters));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedRouteImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.pathTemplate, pathTemplate) ||
                other.pathTemplate == pathTemplate) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            const DeepCollectionEquality()
                .equals(other._queryParameters, _queryParameters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      path,
      pathTemplate,
      const DeepCollectionEquality().hash(_parameters),
      const DeepCollectionEquality().hash(_queryParameters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedRouteImplCopyWith<_$ParsedRouteImpl> get copyWith =>
      __$$ParsedRouteImplCopyWithImpl<_$ParsedRouteImpl>(this, _$identity);
}

abstract class _ParsedRoute extends ParsedRoute {
  const factory _ParsedRoute(
      {required final String path,
      required final String pathTemplate,
      required final Map<String, String> parameters,
      required final Map<String, String> queryParameters}) = _$ParsedRouteImpl;
  const _ParsedRoute._() : super._();

  @override

  /// The current path location without query parameters. (/book/123)
  String get path;
  @override

  /// The path template (/book/:id)
  String get pathTemplate;
  @override

  /// The path parameters ({id: 123})
  Map<String, String> get parameters;
  @override

  /// The query parameters ({search: abc})
  Map<String, String> get queryParameters;
  @override
  @JsonKey(ignore: true)
  _$$ParsedRouteImplCopyWith<_$ParsedRouteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
