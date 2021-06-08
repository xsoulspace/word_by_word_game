// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Word.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Word _$WordFromJson(Map<String, dynamic> json) {
  return Word(
    id: json['id'] as int,
    value: json['value'] as String,
  );
}

Map<String, dynamic> _$WordToJson(Word instance) => <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
    };
