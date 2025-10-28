// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'router.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ParsedRoute implements DiagnosticableTreeMixin {

/// The current path location without query parameters. (/book/123)
 String get path;/// The path template (/book/:id)
 String get pathTemplate;/// The path parameters ({id: 123})
 Map<String, String> get parameters;/// The query parameters ({search: abc})
 Map<String, String> get queryParameters;
/// Create a copy of ParsedRoute
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParsedRouteCopyWith<ParsedRoute> get copyWith => _$ParsedRouteCopyWithImpl<ParsedRoute>(this as ParsedRoute, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ParsedRoute'))
    ..add(DiagnosticsProperty('path', path))..add(DiagnosticsProperty('pathTemplate', pathTemplate))..add(DiagnosticsProperty('parameters', parameters))..add(DiagnosticsProperty('queryParameters', queryParameters));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParsedRoute&&(identical(other.path, path) || other.path == path)&&(identical(other.pathTemplate, pathTemplate) || other.pathTemplate == pathTemplate)&&const DeepCollectionEquality().equals(other.parameters, parameters)&&const DeepCollectionEquality().equals(other.queryParameters, queryParameters));
}


@override
int get hashCode => Object.hash(runtimeType,path,pathTemplate,const DeepCollectionEquality().hash(parameters),const DeepCollectionEquality().hash(queryParameters));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ParsedRoute(path: $path, pathTemplate: $pathTemplate, parameters: $parameters, queryParameters: $queryParameters)';
}


}

/// @nodoc
abstract mixin class $ParsedRouteCopyWith<$Res>  {
  factory $ParsedRouteCopyWith(ParsedRoute value, $Res Function(ParsedRoute) _then) = _$ParsedRouteCopyWithImpl;
@useResult
$Res call({
 String path, String pathTemplate, Map<String, String> parameters, Map<String, String> queryParameters
});




}
/// @nodoc
class _$ParsedRouteCopyWithImpl<$Res>
    implements $ParsedRouteCopyWith<$Res> {
  _$ParsedRouteCopyWithImpl(this._self, this._then);

  final ParsedRoute _self;
  final $Res Function(ParsedRoute) _then;

/// Create a copy of ParsedRoute
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? path = null,Object? pathTemplate = null,Object? parameters = null,Object? queryParameters = null,}) {
  return _then(_self.copyWith(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,pathTemplate: null == pathTemplate ? _self.pathTemplate : pathTemplate // ignore: cast_nullable_to_non_nullable
as String,parameters: null == parameters ? _self.parameters : parameters // ignore: cast_nullable_to_non_nullable
as Map<String, String>,queryParameters: null == queryParameters ? _self.queryParameters : queryParameters // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}

}


/// Adds pattern-matching-related methods to [ParsedRoute].
extension ParsedRoutePatterns on ParsedRoute {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParsedRoute value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParsedRoute() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParsedRoute value)  $default,){
final _that = this;
switch (_that) {
case _ParsedRoute():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParsedRoute value)?  $default,){
final _that = this;
switch (_that) {
case _ParsedRoute() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String path,  String pathTemplate,  Map<String, String> parameters,  Map<String, String> queryParameters)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParsedRoute() when $default != null:
return $default(_that.path,_that.pathTemplate,_that.parameters,_that.queryParameters);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String path,  String pathTemplate,  Map<String, String> parameters,  Map<String, String> queryParameters)  $default,) {final _that = this;
switch (_that) {
case _ParsedRoute():
return $default(_that.path,_that.pathTemplate,_that.parameters,_that.queryParameters);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String path,  String pathTemplate,  Map<String, String> parameters,  Map<String, String> queryParameters)?  $default,) {final _that = this;
switch (_that) {
case _ParsedRoute() when $default != null:
return $default(_that.path,_that.pathTemplate,_that.parameters,_that.queryParameters);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _ParsedRoute extends ParsedRoute with DiagnosticableTreeMixin {
  const _ParsedRoute({required this.path, required this.pathTemplate, required final  Map<String, String> parameters, required final  Map<String, String> queryParameters}): _parameters = parameters,_queryParameters = queryParameters,super._();
  

/// The current path location without query parameters. (/book/123)
@override final  String path;
/// The path template (/book/:id)
@override final  String pathTemplate;
/// The path parameters ({id: 123})
 final  Map<String, String> _parameters;
/// The path parameters ({id: 123})
@override Map<String, String> get parameters {
  if (_parameters is EqualUnmodifiableMapView) return _parameters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_parameters);
}

/// The query parameters ({search: abc})
 final  Map<String, String> _queryParameters;
/// The query parameters ({search: abc})
@override Map<String, String> get queryParameters {
  if (_queryParameters is EqualUnmodifiableMapView) return _queryParameters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_queryParameters);
}


/// Create a copy of ParsedRoute
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParsedRouteCopyWith<_ParsedRoute> get copyWith => __$ParsedRouteCopyWithImpl<_ParsedRoute>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ParsedRoute'))
    ..add(DiagnosticsProperty('path', path))..add(DiagnosticsProperty('pathTemplate', pathTemplate))..add(DiagnosticsProperty('parameters', parameters))..add(DiagnosticsProperty('queryParameters', queryParameters));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParsedRoute&&(identical(other.path, path) || other.path == path)&&(identical(other.pathTemplate, pathTemplate) || other.pathTemplate == pathTemplate)&&const DeepCollectionEquality().equals(other._parameters, _parameters)&&const DeepCollectionEquality().equals(other._queryParameters, _queryParameters));
}


@override
int get hashCode => Object.hash(runtimeType,path,pathTemplate,const DeepCollectionEquality().hash(_parameters),const DeepCollectionEquality().hash(_queryParameters));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ParsedRoute(path: $path, pathTemplate: $pathTemplate, parameters: $parameters, queryParameters: $queryParameters)';
}


}

/// @nodoc
abstract mixin class _$ParsedRouteCopyWith<$Res> implements $ParsedRouteCopyWith<$Res> {
  factory _$ParsedRouteCopyWith(_ParsedRoute value, $Res Function(_ParsedRoute) _then) = __$ParsedRouteCopyWithImpl;
@override @useResult
$Res call({
 String path, String pathTemplate, Map<String, String> parameters, Map<String, String> queryParameters
});




}
/// @nodoc
class __$ParsedRouteCopyWithImpl<$Res>
    implements _$ParsedRouteCopyWith<$Res> {
  __$ParsedRouteCopyWithImpl(this._self, this._then);

  final _ParsedRoute _self;
  final $Res Function(_ParsedRoute) _then;

/// Create a copy of ParsedRoute
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? path = null,Object? pathTemplate = null,Object? parameters = null,Object? queryParameters = null,}) {
  return _then(_ParsedRoute(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,pathTemplate: null == pathTemplate ? _self.pathTemplate : pathTemplate // ignore: cast_nullable_to_non_nullable
as String,parameters: null == parameters ? _self._parameters : parameters // ignore: cast_nullable_to_non_nullable
as Map<String, String>,queryParameters: null == queryParameters ? _self._queryParameters : queryParameters // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}


}

// dart format on
