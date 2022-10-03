// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LocalDictionaryModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocalDictionaryModel _$LocalDictionaryModelFromJson(Map<String, dynamic> json) {
  return LocalDictionaryModel(
    words: (json['words'] as List)?.map((e) => e as String)?.toSet(),
  );
}

Map<String, dynamic> _$LocalDictionaryModelToJson(
        LocalDictionaryModel instance) =>
    <String, dynamic>{
      'words': instance.words?.toList(),
    };
