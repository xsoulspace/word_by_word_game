// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParsedRouteImpl _$$ParsedRouteImplFromJson(Map<String, dynamic> json) =>
    _$ParsedRouteImpl(
      path: json['path'] as String,
      pathTemplate: json['pathTemplate'] as String,
      parameters: Map<String, String>.from(json['parameters'] as Map),
      queryParameters: Map<String, String>.from(json['queryParameters'] as Map),
    );

Map<String, dynamic> _$$ParsedRouteImplToJson(_$ParsedRouteImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'pathTemplate': instance.pathTemplate,
      'parameters': instance.parameters,
      'queryParameters': instance.queryParameters,
    };
