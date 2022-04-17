// GENERATED CODE - DO NOT MODIFY BY HAND

part of abstract;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocalizedText _$LocalizedTextFromJson(Map<String, dynamic> json) =>
    LocalizedText(
      en: json['en'] as String,
      ru: json['ru'] as String,
      it: json['it'] as String?,
      ga: json['ga'] as String?,
    );

Map<String, dynamic> _$LocalizedTextToJson(LocalizedText instance) =>
    <String, dynamic>{
      'ru': instance.ru,
      'en': instance.en,
      'it': instance.it,
      'ga': instance.ga,
    };
