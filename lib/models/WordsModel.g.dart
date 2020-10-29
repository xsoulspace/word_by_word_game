// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WordsModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WordsModel _$WordsModelFromJson(Map<String, dynamic> json) {
  return WordsModel(
    json['newWordBeginning'] as String,
    json['newWordEnding'] as String,
    json['phraseLimit'] as int,
    json['phraseLimitMax'] as int,
    json['wordsIdMax'] as int,
    (json['wordsIdsByPlayerIdMap'] as Map<String, dynamic>)?.map(
      (k, e) =>
          MapEntry(int.parse(k), (e as List)?.map((e) => e as int)?.toList()),
    ),
    (json['allWordsByWordIdMap'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(int.parse(k),
          e == null ? null : Word.fromJson(e as Map<String, dynamic>)),
    ),
  );
}

Map<String, dynamic> _$WordsModelToJson(WordsModel instance) =>
    <String, dynamic>{
      'wordsIdsByPlayerIdMap': instance.wordsIdsByPlayerIdMap
          ?.map((k, e) => MapEntry(k.toString(), e)),
      'allWordsByWordIdMap': instance.allWordsByWordIdMap
          ?.map((k, e) => MapEntry(k.toString(), e)),
      'wordsIdMax': instance.wordsIdMax,
      'phraseLimitMax': instance.phraseLimitMax,
      'phraseLimit': instance.phraseLimit,
      'newWordBeginning': instance.newWordBeginning,
      'newWordEnding': instance.newWordEnding,
    };
